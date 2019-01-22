
# Style Transfer

As an example of the kind of things you'll be building with deep learning models, here is a really fun project,  [fast style transfer](https://github.com/lengstrom/fast-style-transfer). Style transfer allows you to take famous paintings, and recreate your own images in their styles! The network learns the underlying techniques of those paintings and figures out how to apply them on its own. This model was trained on the styles of famous paintings and is able to transfer those styles to other images and  [even videos](https://www.youtube.com/watch?v=xVJwwWQlQ1o)!

I used it to style my cat Chihiro in the style of  [Hokusai](https://en.wikipedia.org/wiki/Hokusai)'s  [_The Great Wave Off Kanagawa_](https://en.wikipedia.org/wiki/The_Great_Wave_off_Kanagawa).

[](https://classroom.udacity.com/nanodegrees/nd101/parts/09023a41-74e1-4df6-8404-5020a0c94369/modules/42cdd3bf-267c-4ad1-8c0c-0c3357569e8a/lessons/27585811-c026-40a0-afb4-b1b9ef03d97f/concepts/7991da18-bbd0-4606-83e5-3bc5ce558e70#)

![](https://d17h27t6h515a5.cloudfront.net/topher/2017/January/587d0443_chi-waves/chi-waves.png)

To try it out yourself, you can find the code in the  [fast-style-transfer GitHub repo](https://github.com/lengstrom/fast-style-transfer). Either use  `git`  to clone the repository, or you can download the whole thing as a Zip archive and extract it.

The network has been trained on a few different styles ([here](https://github.com/lengstrom/fast-style-transfer/tree/master/examples/style)) and saved into  [checkpoint files](https://drive.google.com/drive/folders/0B9jhaT37ydSyRk9UX0wwX3BpMzQ). Checkpoint files contain all the information about the trained network to apply styles to new images.

## Dependencies

The easiest way to install all the packages needed to run this code is with  [Miniconda](http://conda.pydata.org/miniconda.html), a smaller version of  [Anaconda](https://www.continuum.io/downloads). Miniconda comes with Conda, a package and environment manager built specifically for data science. Install the Python 3 version of Miniconda appropriate for your operating system.

If you haven't used Conda before, please quickly run through the Anaconda lesson (Lesson 3 on this part).

### Windows

For Windows, you'll need to install TensorFlow 0.12.1, Python 3.5, Pillow 3.4.2, scipy 0.18.1, and numpy 1.11.2. After installing Miniconda, open your command prompt. In there, enter these commands line by line:

```
conda create -n style-transfer python=3
activate style-transfer
conda install tensorflow scipy pillow
pip install moviepy
python -c "import imageio; imageio.plugins.ffmpeg.download()"

```

### OS X and Linux

For OS X and Linux, you'll need to install TensorFlow 0.11.0, Python 2.7.9, Pillow 3.4.2, scipy 0.18.1, and numpy 1.11.2.

In your terminal, enter this commands line by line:

```
conda create -n style-transfer python=3
activate style-transfer
conda install tensorflow scipy pillow
pip install moviepy
python -c "import imageio; imageio.plugins.ffmpeg.download()"

```

Let’s take a quick look at what these commands do. The first line in both sets of instructions, creates a new environment with Python 3. This environment will hold all the packages you need for the style transfer code. The next line enters the environment. Next, we install TensorFlow, SciPy, Pillow (which is an image processing library), and moviepy. The last line here installs ffmpeg, an application for converting images and videos.

## Transferring styles

1.  Download the Zip archive from the  [fast-style-transfer](https://github.com/lengstrom/fast-style-transfer)  repository and extract it. You can download it by clicking on the bright green button on the right.
2.  Download the Rain Princess checkpoint from  [here](https://d17h27t6h515a5.cloudfront.net/topher/2017/January/587d1865_rain-princess/rain-princess.ckpt). Put it in the fast-style-transfer folder. A checkpoint file is a model that already has tuned parameters. By using this checkpoint file, we won't need to train the model and can get straight to applying it.
3.  Copy the image you want to style into the fast-style-transfer folder.
4.  Enter the Conda environment you created above, if you aren't still in it.

Finally, in your terminal, navigate to the fast-style-transfer folder and enter

```
python evaluate.py --checkpoint ./rain-princess.ckpt --in-path <path_to_input_file> --out-path ./output_image.jpg

```

> **Note:**  Your checkpoint file might be named  `rain_princess.ckpt`, notice the underscore, it's not the dash from above.

You can get more checkpoint files at the bottom of this page. Try them all!

Share what you create in the  [forums](https://discussions.udacity.com/)  or on the  [Slack](https://nd101.slack.com/)  channel #neural-networks. We'd love to see what you come up with. Also, feel free to train the network on your own images, you can find instructions in the repository (although it does take some powerful hardware).

> **Note:**  Be careful with the size of the input image. The style transfer can take quite a while to run on larger images.

### Style Transfer Checklist

Task List

-   Apply style transfer to an image of yourself or something personal to you.
    
-   Share your image on Twitter using the hashtag #MadeWithUdacity
    

The checkpoints were trained on the following paintings:

-   Rain Princesss, by  [Leonid Afremov](https://afremov.com/Leonid-Afremov-bio.html)
-   La Muse, by  [Pablo Picasso](https://en.wikipedia.org/wiki/Pablo_Picasso)
-   Udnie by  [Francis Picabia](https://en.wikipedia.org/wiki/Francis_Picabia)
-   Scream, by  [Edvard Munch](https://en.wikipedia.org/wiki/Edvard_Munch)
-   The Great Wave off Kanagawa, by  [Hokusai](https://en.wikipedia.org/wiki/Hokusai)
-   The Shipwreck of the Minotaur, by  [J.M.W. Turner](https://en.wikipedia.org/wiki/J._M._W._Turner)

#### Material de apoyo

[Rain Princess checkpoint](http://video.udacity-data.com.s3.amazonaws.com/topher/2017/January/587d1865_rain-princess/rain-princess.ckpt)

[La Muse checkpoint](http://video.udacity-data.com.s3.amazonaws.com/topher/2017/January/588aa800_la-muse/la-muse.ckpt)

[Udnie checkpoint](http://video.udacity-data.com.s3.amazonaws.com/topher/2017/January/588aa846_udnie/udnie.ckpt)

[Scream checkpoint](http://video.udacity-data.com.s3.amazonaws.com/topher/2017/January/588aa883_scream/scream.ckpt)

[Wave checkpoint](http://video.udacity-data.com.s3.amazonaws.com/topher/2017/January/588aa89d_wave/wave.ckpt)

[Wreck checkpoint](http://video.udacity-data.com.s3.amazonaws.com/topher/2017/January/588aa8b6_wreck/wreck.ckpt)
