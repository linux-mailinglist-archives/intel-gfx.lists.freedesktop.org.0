Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9073158DAB0
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Aug 2022 17:04:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F088FD9F82;
	Tue,  9 Aug 2022 15:04:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 060CED9F11
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Aug 2022 15:03:39 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id z12so14625995wrs.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Aug 2022 08:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc;
 bh=AGiaX9NeWf238gAHp955bAPTnPld9aDNZglcj3xFyvg=;
 b=N0DBsw+9bafLpDrRj2GG36q40MJzXccy4HV2/c3FQYT5g8aFU4/ylcuIq8upcoQ2go
 EYuNWkvlA2I/8UAuT5mS4mPgDhx/8m5/Lquo8ACCB4dlcvA9vZSprrRGjtsepFTazfIM
 zEzXCkYdhm1dcTfVOQXI17SSFaXW4MA4YXP2k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc;
 bh=AGiaX9NeWf238gAHp955bAPTnPld9aDNZglcj3xFyvg=;
 b=W58tFLFW/Q3NGot3sbWCMavnhIdylgsl/+Ds3diUiEcLrjek3Apq9Qr2tJV90/ZBAu
 vN52WUSUOtjlz6waCBcq8B37zZ4Wcd889QNQFqW3whbTZYIFkiWmaIS4SGVAaUEjzKTl
 A4MYRabceAqz7cW66PT34jI9euUVKwohsaVvSv5v34+BIsijq70pfs9+CJFI6/KqsaSH
 AT8rP81UQ5TE4H9gl/6vC/RQ7P3uJtKsKnj2oTz5q+G8pOLehHSnNb4wVXAi7tVxVX2/
 ZNC4JeceEc9LITYrOISjUzX238Kn99ueZ/CLny33hjwP7oyEb3Oh/V6WHEG6hzi9ZQxU
 27/Q==
X-Gm-Message-State: ACgBeo1ieNMEpAYJI0/VxCGO7DLvefAlHoIC6wxTYsw5YEA7VL1LFPwH
 hlhxhSMQlfBC3AvRr1Me7mQtJg==
X-Google-Smtp-Source: AA6agR5C2r+adNw5NtQz1Y5+CKrAVMHNSyZarBrNnKQL6mAcNe1IuSFJBc+uGQqs94/k132aUBYxhw==
X-Received: by 2002:a05:6000:1188:b0:220:6c20:fbf6 with SMTP id
 g8-20020a056000118800b002206c20fbf6mr14995297wrx.372.1660057418197; 
 Tue, 09 Aug 2022 08:03:38 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 b2-20020a5d4d82000000b0021f73c66198sm13696056wru.1.2022.08.09.08.03.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Aug 2022 08:03:37 -0700 (PDT)
Date: Tue, 9 Aug 2022 17:03:35 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Helge Deller <deller@gmx.de>
Message-ID: <YvJ3R2HnTSXDF7lx@phenom.ffwll.local>
Mail-Followup-To: Helge Deller <deller@gmx.de>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@linux.ie>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Tomi Valkeinen <tomba@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220629105658.1373770-1-geert@linux-m68k.org>
 <d27c08a3-0f2f-c0f2-143f-482a33a6a4ce@gmx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d27c08a3-0f2f-c0f2-143f-482a33a6a4ce@gmx.de>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/fb-helper: Remove helpers to change
 frame buffer config
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: linux-fbdev@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Tomi Valkeinen <tomba@kernel.org>, David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Jul 02, 2022 at 08:05:54PM +0200, Helge Deller wrote:
> On 6/29/22 12:56, Geert Uytterhoeven wrote:
> > The DRM fbdev emulation layer does not support pushing back
> > changes to fb_var_screeninfo to KMS.
> >
> > However, drm_fb_helper still implements the fb_ops.fb_check_var() and
> > fb_ops.fb_set_par() callbacks, but the former fails to validate various
> > parameters passed from userspace.  Hence unsanitized and possible
> > invaled values are passed up through the fbdev, fbcon, and console
> > stack, which has become an endless source of security issues reported
> > against fbdev.
> >
> > Fix this by not populating the fb_ops.fb_check_var() and
> > fb_ops.fb_set_par() callbacks, as there is no point in providing them if
> > the frame buffer config cannot be changed anyway.  This makes the fbdev
> > core aware that making changes to the frame buffer config is not
> > supported, so it will always return the current config.
> >
> > Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> 
> It's unfortunate that DRM currently isn't able to switch resolutions
> at runtime.
> 
> With that in mind I agree with Geert that it's probably better to
> disable (or drop) that code until DRM can cope with fbdev's
> interface to switch resolutions.
> 
> Furthermore, with the upcoming patches to fbcon (which prevents crashes on
> invalid userspace input), you will face a kernel WARNING if you call fbset
> to switch screen resolutions with DRM drivers.
> 
> So, from my side (although I'd prefer a better fix for DRM):
> 
> Acked-by: Helge Deller <deller@gmx.de>

So maybe I'm missing something, but I think this breaks a lot of stuff.
The issue is that fbdev is only a subordinate owner of the kms device, if
there's a real drm kms owner around that wins.

Which means when you switch back then set_par needs to restore the fbdev
framebuffer. So that might break some recovery/use-cases.

The other thing is that I think this also breaks the scanout offset, and
people do use that for double-buffering on top of fbdev on top of drm
drivers. So we can't just nuke it completely.

For better or worse I think we need to keep playing the whack-a-mole game.
Or do I miss something here?
-Daniel

> 
> Helge
> 
> > ---
> > The only remaining DRM driver that implements fb_ops.fb_check_var() is
> > also broken, as it fails to validate various parameters passed from
> > userspace.  So vmw_fb_check_var() should either be fixed, or removed.
> > ---
> >  drivers/gpu/drm/drm_fb_helper.c            | 180 ++-------------------
> >  drivers/gpu/drm/i915/display/intel_fbdev.c |  15 --
> >  drivers/gpu/drm/omapdrm/omap_fbdev.c       |   2 -
> >  include/drm/drm_fb_helper.h                |  16 --
> >  4 files changed, 13 insertions(+), 200 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/drm_fb_helper.c b/drivers/gpu/drm/drm_fb_helper.c
> > index 2d4cee6a10ffffe7..1041a11c410d7967 100644
> > --- a/drivers/gpu/drm/drm_fb_helper.c
> > +++ b/drivers/gpu/drm/drm_fb_helper.c
> > @@ -228,9 +228,18 @@ int drm_fb_helper_debug_leave(struct fb_info *info)
> >  }
> >  EXPORT_SYMBOL(drm_fb_helper_debug_leave);
> >
> > -static int
> > -__drm_fb_helper_restore_fbdev_mode_unlocked(struct drm_fb_helper *fb_helper,
> > -					    bool force)
> > +/**
> > + * drm_fb_helper_restore_fbdev_mode_unlocked - restore fbdev configuration
> > + * @fb_helper: driver-allocated fbdev helper, can be NULL
> > + *
> > + * This should be called from driver's drm &drm_driver.lastclose callback
> > + * when implementing an fbcon on top of kms using this helper. This ensures that
> > + * the user isn't greeted with a black screen when e.g. X dies.
> > + *
> > + * RETURNS:
> > + * Zero if everything went ok, negative error code otherwise.
> > + */
> > +int drm_fb_helper_restore_fbdev_mode_unlocked(struct drm_fb_helper *fb_helper)
> >  {
> >  	bool do_delayed;
> >  	int ret;
> > @@ -242,16 +251,7 @@ __drm_fb_helper_restore_fbdev_mode_unlocked(struct drm_fb_helper *fb_helper,
> >  		return 0;
> >
> >  	mutex_lock(&fb_helper->lock);
> > -	if (force) {
> > -		/*
> > -		 * Yes this is the _locked version which expects the master lock
> > -		 * to be held. But for forced restores we're intentionally
> > -		 * racing here, see drm_fb_helper_set_par().
> > -		 */
> > -		ret = drm_client_modeset_commit_locked(&fb_helper->client);
> > -	} else {
> > -		ret = drm_client_modeset_commit(&fb_helper->client);
> > -	}
> > +	ret = drm_client_modeset_commit(&fb_helper->client);
> >
> >  	do_delayed = fb_helper->delayed_hotplug;
> >  	if (do_delayed)
> > @@ -263,22 +263,6 @@ __drm_fb_helper_restore_fbdev_mode_unlocked(struct drm_fb_helper *fb_helper,
> >
> >  	return ret;
> >  }
> > -
> > -/**
> > - * drm_fb_helper_restore_fbdev_mode_unlocked - restore fbdev configuration
> > - * @fb_helper: driver-allocated fbdev helper, can be NULL
> > - *
> > - * This should be called from driver's drm &drm_driver.lastclose callback
> > - * when implementing an fbcon on top of kms using this helper. This ensures that
> > - * the user isn't greeted with a black screen when e.g. X dies.
> > - *
> > - * RETURNS:
> > - * Zero if everything went ok, negative error code otherwise.
> > - */
> > -int drm_fb_helper_restore_fbdev_mode_unlocked(struct drm_fb_helper *fb_helper)
> > -{
> > -	return __drm_fb_helper_restore_fbdev_mode_unlocked(fb_helper, false);
> > -}
> >  EXPORT_SYMBOL(drm_fb_helper_restore_fbdev_mode_unlocked);
> >
> >  #ifdef CONFIG_MAGIC_SYSRQ
> > @@ -1254,25 +1238,6 @@ int drm_fb_helper_ioctl(struct fb_info *info, unsigned int cmd,
> >  }
> >  EXPORT_SYMBOL(drm_fb_helper_ioctl);
> >
> > -static bool drm_fb_pixel_format_equal(const struct fb_var_screeninfo *var_1,
> > -				      const struct fb_var_screeninfo *var_2)
> > -{
> > -	return var_1->bits_per_pixel == var_2->bits_per_pixel &&
> > -	       var_1->grayscale == var_2->grayscale &&
> > -	       var_1->red.offset == var_2->red.offset &&
> > -	       var_1->red.length == var_2->red.length &&
> > -	       var_1->red.msb_right == var_2->red.msb_right &&
> > -	       var_1->green.offset == var_2->green.offset &&
> > -	       var_1->green.length == var_2->green.length &&
> > -	       var_1->green.msb_right == var_2->green.msb_right &&
> > -	       var_1->blue.offset == var_2->blue.offset &&
> > -	       var_1->blue.length == var_2->blue.length &&
> > -	       var_1->blue.msb_right == var_2->blue.msb_right &&
> > -	       var_1->transp.offset == var_2->transp.offset &&
> > -	       var_1->transp.length == var_2->transp.length &&
> > -	       var_1->transp.msb_right == var_2->transp.msb_right;
> > -}
> > -
> >  static void drm_fb_helper_fill_pixel_fmt(struct fb_var_screeninfo *var,
> >  					 u8 depth)
> >  {
> > @@ -1331,123 +1296,6 @@ static void drm_fb_helper_fill_pixel_fmt(struct fb_var_screeninfo *var,
> >  	}
> >  }
> >
> > -/**
> > - * drm_fb_helper_check_var - implementation for &fb_ops.fb_check_var
> > - * @var: screeninfo to check
> > - * @info: fbdev registered by the helper
> > - */
> > -int drm_fb_helper_check_var(struct fb_var_screeninfo *var,
> > -			    struct fb_info *info)
> > -{
> > -	struct drm_fb_helper *fb_helper = info->par;
> > -	struct drm_framebuffer *fb = fb_helper->fb;
> > -	struct drm_device *dev = fb_helper->dev;
> > -
> > -	if (in_dbg_master())
> > -		return -EINVAL;
> > -
> > -	if (var->pixclock != 0) {
> > -		drm_dbg_kms(dev, "fbdev emulation doesn't support changing the pixel clock, value of pixclock is ignored\n");
> > -		var->pixclock = 0;
> > -	}
> > -
> > -	if ((drm_format_info_block_width(fb->format, 0) > 1) ||
> > -	    (drm_format_info_block_height(fb->format, 0) > 1))
> > -		return -EINVAL;
> > -
> > -	/*
> > -	 * Changes struct fb_var_screeninfo are currently not pushed back
> > -	 * to KMS, hence fail if different settings are requested.
> > -	 */
> > -	if (var->bits_per_pixel > fb->format->cpp[0] * 8 ||
> > -	    var->xres > fb->width || var->yres > fb->height ||
> > -	    var->xres_virtual > fb->width || var->yres_virtual > fb->height) {
> > -		drm_dbg_kms(dev, "fb requested width/height/bpp can't fit in current fb "
> > -			  "request %dx%d-%d (virtual %dx%d) > %dx%d-%d\n",
> > -			  var->xres, var->yres, var->bits_per_pixel,
> > -			  var->xres_virtual, var->yres_virtual,
> > -			  fb->width, fb->height, fb->format->cpp[0] * 8);
> > -		return -EINVAL;
> > -	}
> > -
> > -	/*
> > -	 * Workaround for SDL 1.2, which is known to be setting all pixel format
> > -	 * fields values to zero in some cases. We treat this situation as a
> > -	 * kind of "use some reasonable autodetected values".
> > -	 */
> > -	if (!var->red.offset     && !var->green.offset    &&
> > -	    !var->blue.offset    && !var->transp.offset   &&
> > -	    !var->red.length     && !var->green.length    &&
> > -	    !var->blue.length    && !var->transp.length   &&
> > -	    !var->red.msb_right  && !var->green.msb_right &&
> > -	    !var->blue.msb_right && !var->transp.msb_right) {
> > -		drm_fb_helper_fill_pixel_fmt(var, fb->format->depth);
> > -	}
> > -
> > -	/*
> > -	 * Likewise, bits_per_pixel should be rounded up to a supported value.
> > -	 */
> > -	var->bits_per_pixel = fb->format->cpp[0] * 8;
> > -
> > -	/*
> > -	 * drm fbdev emulation doesn't support changing the pixel format at all,
> > -	 * so reject all pixel format changing requests.
> > -	 */
> > -	if (!drm_fb_pixel_format_equal(var, &info->var)) {
> > -		drm_dbg_kms(dev, "fbdev emulation doesn't support changing the pixel format\n");
> > -		return -EINVAL;
> > -	}
> > -
> > -	return 0;
> > -}
> > -EXPORT_SYMBOL(drm_fb_helper_check_var);
> > -
> > -/**
> > - * drm_fb_helper_set_par - implementation for &fb_ops.fb_set_par
> > - * @info: fbdev registered by the helper
> > - *
> > - * This will let fbcon do the mode init and is called at initialization time by
> > - * the fbdev core when registering the driver, and later on through the hotplug
> > - * callback.
> > - */
> > -int drm_fb_helper_set_par(struct fb_info *info)
> > -{
> > -	struct drm_fb_helper *fb_helper = info->par;
> > -	struct fb_var_screeninfo *var = &info->var;
> > -	bool force;
> > -
> > -	if (oops_in_progress)
> > -		return -EBUSY;
> > -
> > -	if (var->pixclock != 0) {
> > -		drm_err(fb_helper->dev, "PIXEL CLOCK SET\n");
> > -		return -EINVAL;
> > -	}
> > -
> > -	/*
> > -	 * Normally we want to make sure that a kms master takes precedence over
> > -	 * fbdev, to avoid fbdev flickering and occasionally stealing the
> > -	 * display status. But Xorg first sets the vt back to text mode using
> > -	 * the KDSET IOCTL with KD_TEXT, and only after that drops the master
> > -	 * status when exiting.
> > -	 *
> > -	 * In the past this was caught by drm_fb_helper_lastclose(), but on
> > -	 * modern systems where logind always keeps a drm fd open to orchestrate
> > -	 * the vt switching, this doesn't work.
> > -	 *
> > -	 * To not break the userspace ABI we have this special case here, which
> > -	 * is only used for the above case. Everything else uses the normal
> > -	 * commit function, which ensures that we never steal the display from
> > -	 * an active drm master.
> > -	 */
> > -	force = var->activate & FB_ACTIVATE_KD_TEXT;
> > -
> > -	__drm_fb_helper_restore_fbdev_mode_unlocked(fb_helper, force);
> > -
> > -	return 0;
> > -}
> > -EXPORT_SYMBOL(drm_fb_helper_set_par);
> > -
> >  static void pan_set(struct drm_fb_helper *fb_helper, int x, int y)
> >  {
> >  	struct drm_mode_set *mode_set;
> > @@ -2028,8 +1876,6 @@ int drm_fb_helper_hotplug_event(struct drm_fb_helper *fb_helper)
> >  	drm_setup_crtcs_fb(fb_helper);
> >  	mutex_unlock(&fb_helper->lock);
> >
> > -	drm_fb_helper_set_par(fb_helper->fbdev);
> > -
> >  	return 0;
> >  }
> >  EXPORT_SYMBOL(drm_fb_helper_hotplug_event);
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> > index 221336178991f04f..26dbe9487c79ae1b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> > @@ -77,20 +77,6 @@ static void intel_fbdev_invalidate(struct intel_fbdev *ifbdev)
> >  	intel_frontbuffer_invalidate(to_frontbuffer(ifbdev), ORIGIN_CPU);
> >  }
> >
> > -static int intel_fbdev_set_par(struct fb_info *info)
> > -{
> > -	struct drm_fb_helper *fb_helper = info->par;
> > -	struct intel_fbdev *ifbdev =
> > -		container_of(fb_helper, struct intel_fbdev, helper);
> > -	int ret;
> > -
> > -	ret = drm_fb_helper_set_par(info);
> > -	if (ret == 0)
> > -		intel_fbdev_invalidate(ifbdev);
> > -
> > -	return ret;
> > -}
> > -
> >  static int intel_fbdev_blank(int blank, struct fb_info *info)
> >  {
> >  	struct drm_fb_helper *fb_helper = info->par;
> > @@ -123,7 +109,6 @@ static int intel_fbdev_pan_display(struct fb_var_screeninfo *var,
> >  static const struct fb_ops intelfb_ops = {
> >  	.owner = THIS_MODULE,
> >  	DRM_FB_HELPER_DEFAULT_OPS,
> > -	.fb_set_par = intel_fbdev_set_par,
> >  	.fb_fillrect = drm_fb_helper_cfb_fillrect,
> >  	.fb_copyarea = drm_fb_helper_cfb_copyarea,
> >  	.fb_imageblit = drm_fb_helper_cfb_imageblit,
> > diff --git a/drivers/gpu/drm/omapdrm/omap_fbdev.c b/drivers/gpu/drm/omapdrm/omap_fbdev.c
> > index 40706c5aad7b5c9b..2df8875baaca10b6 100644
> > --- a/drivers/gpu/drm/omapdrm/omap_fbdev.c
> > +++ b/drivers/gpu/drm/omapdrm/omap_fbdev.c
> > @@ -74,8 +74,6 @@ static int omap_fbdev_pan_display(struct fb_var_screeninfo *var,
> >  static const struct fb_ops omap_fb_ops = {
> >  	.owner = THIS_MODULE,
> >
> > -	.fb_check_var	= drm_fb_helper_check_var,
> > -	.fb_set_par	= drm_fb_helper_set_par,
> >  	.fb_setcmap	= drm_fb_helper_setcmap,
> >  	.fb_blank	= drm_fb_helper_blank,
> >  	.fb_pan_display = omap_fbdev_pan_display,
> > diff --git a/include/drm/drm_fb_helper.h b/include/drm/drm_fb_helper.h
> > index 329607ca65c06684..19b40adc156295a1 100644
> > --- a/include/drm/drm_fb_helper.h
> > +++ b/include/drm/drm_fb_helper.h
> > @@ -200,8 +200,6 @@ drm_fb_helper_from_client(struct drm_client_dev *client)
> >   * functions. To be used in struct fb_ops of drm drivers.
> >   */
> >  #define DRM_FB_HELPER_DEFAULT_OPS \
> > -	.fb_check_var	= drm_fb_helper_check_var, \
> > -	.fb_set_par	= drm_fb_helper_set_par, \
> >  	.fb_setcmap	= drm_fb_helper_setcmap, \
> >  	.fb_blank	= drm_fb_helper_blank, \
> >  	.fb_pan_display	= drm_fb_helper_pan_display, \
> > @@ -217,9 +215,6 @@ void drm_fb_helper_fini(struct drm_fb_helper *helper);
> >  int drm_fb_helper_blank(int blank, struct fb_info *info);
> >  int drm_fb_helper_pan_display(struct fb_var_screeninfo *var,
> >  			      struct fb_info *info);
> > -int drm_fb_helper_set_par(struct fb_info *info);
> > -int drm_fb_helper_check_var(struct fb_var_screeninfo *var,
> > -			    struct fb_info *info);
> >
> >  int drm_fb_helper_restore_fbdev_mode_unlocked(struct drm_fb_helper *fb_helper);
> >
> > @@ -303,17 +298,6 @@ static inline int drm_fb_helper_pan_display(struct fb_var_screeninfo *var,
> >  	return 0;
> >  }
> >
> > -static inline int drm_fb_helper_set_par(struct fb_info *info)
> > -{
> > -	return 0;
> > -}
> > -
> > -static inline int drm_fb_helper_check_var(struct fb_var_screeninfo *var,
> > -					  struct fb_info *info)
> > -{
> > -	return 0;
> > -}
> > -
> >  static inline int
> >  drm_fb_helper_restore_fbdev_mode_unlocked(struct drm_fb_helper *fb_helper)
> >  {
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
