import numpy as np
import tensorflow as tf
import matplotlib.pyplot as plt
from dotenv import load_dotenv
import os 


load_dotenv()

DATABASE = os.getenv("DATABASE")
PREVIOUS = os.getenv("PREVIOUS")

DADO = [float(x) for x in DATABASE.split(",")]
DADO2 = [float(x) for x in PREVIOUS.split(",")]


X = np.array(DADO, dtype=np.float32)
y = np.array(DADO2, dtype=np.float32)

class LinearRegressionModel:
    def __init__(self):
        self.W = tf.Variable(np.random.randn(), name="weight")
        self.b = tf.Variable(np.random.randn(), name="bias")

    def predict(self, x):
        return self.W * x + self.b

    def get_weights(self):
        return self.W, self.b

class Trainer:
    def __init__(self, model, learning_rate=0.01):
        self.model = model
        self.optimizer = tf.optimizers.SGD(learning_rate)

    def train_step(self, x, y):
        with tf.GradientTape() as tape:
            y_pred = self.model.predict(x)
            loss = tf.reduce_mean(tf.square(y - y_pred))
        gradients = tape.gradient(loss, self.model.get_weights())
        self.optimizer.apply_gradients(zip(gradients, self.model.get_weights()))
        return loss

    def train(self, X, y, num_epochs=1000):
        for epoch in range(num_epochs):
            loss = self.train_step(X, y)
            if (epoch+1) % 100 == 0:
                print(f'Epoch [{epoch+1}/{num_epochs}], Loss: {loss.numpy():.4f}')

class Visualizer:
    def plot_results(self, X, y, y_pred):
        plt.scatter(X, y, color='blue', label='Dados Reais')
        plt.plot(X, y_pred, color='red', label='Previsões')
        plt.xlabel(' ')
        plt.ylabel(' ')
        plt.legend()
        plt.show()

model = LinearRegressionModel()
trainer = Trainer(model)
trainer.train(X, y)

visualizer = Visualizer()
y_pred = model.predict(X)
visualizer.plot_results(X, y, y_pred)
