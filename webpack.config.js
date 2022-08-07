const path = require('path');

module.exports = {
    mode: "development",
    module: {
        rules: [
            {
            test: /\.glsl$/,
            loader: 'webpack-glsl-loader'
            },
            {
            test: /\.css$/i,
            use: ['style-loader', 'css-loader'],
        },
        ],
    },
    devServer: {
        static: {
            directory: path.join(__dirname, '/dist')
        }
    },
    entry: './src/script.js',
    output: {
        filename: 'bundle.js',
        path: path.resolve(__dirname, 'dist'),
    },
};