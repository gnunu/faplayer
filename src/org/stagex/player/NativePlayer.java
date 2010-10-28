package org.stagex.player;

import android.view.SurfaceHolder;

interface NativePlayer {

	public static final int VIDEO_MODE_NONE = 0;
	public static final int VIDEO_MODE_FILL = 1;
	public static final int VIDEO_MODE_FIT = 2;

	public abstract int open(String file);

	public abstract void close();

	public abstract int play(double start, int ast, int vst, int sst);

	public abstract void pause();

	public abstract void resume();

	public abstract int seek(double time);

	public abstract int getAudioStreamCount();

	public abstract int getVideoStreamCount();

	public abstract int getSubtitleStreamCount();

	public abstract int setVideoMode(int mode);

	public abstract int getVideoWidth();

	public abstract int getVideoHeight();

	public abstract int getDuration();

	public abstract double getCurrentTime();

	public abstract boolean isPlaying();

	public abstract int attach(SurfaceHolder holder, int width, int height);

	public abstract void detach();

}