Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26236189E31
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 15:45:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8655589C9C;
	Wed, 18 Mar 2020 14:45:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8BC789C9C
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 14:45:17 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id s1so9013989wrv.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 07:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Ogl7J4MjGRd2YP7H/cd5i1h4uMTARMYjDNeOROaiWHA=;
 b=C0f1g1kOprEZb/lPCzhKCQoltjAXtkWdxrbyFcQu79ZaA4JCGZL6p/L6/PSOCF1hxu
 f/aOXRpK/MWdQ9iXt2EHAcgLFh7SodjB28d1icke0ydoqKPnkjrlJcnKIowun3szMUyO
 TsEgA5Yt7BdKD2tcsPosdOummf2MXbDPY5p0yDtQdtehFZRdnIkCR3NWmzkzCRPmW1YZ
 4Ow4ygaQZ1ko0Eipn8RNdB+W+whrle6iK+iqyWy090f5Y3HkKylOeCkHBEuyRTBoV79T
 v6nzS71BShY4bMX1RxppLNuEI5JAJ2rJ4K45CJC5yAJIR14XhwG1aWgQaP581KmPNK+q
 cWPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Ogl7J4MjGRd2YP7H/cd5i1h4uMTARMYjDNeOROaiWHA=;
 b=KfJD1WeUtWg9JSrIvzn4dFIXPyO5cJ0WP1YkGNUAylsXksgEW/Ys830c6E4aNIH9GA
 4UMzMK2/Gae9RhRhJxbj4W9L5SM9VX372vjEmnjhHakboo7+cr0MOO2oxBDgUkrasefb
 DbrSBC2fFi+PwdXLUOFcp2XJ0rHlipW+qzfY64GiVMnYQ4injuZu1fo8lDKJ1KTeEEP0
 dLkOai/iPYlx1t3mraHgE5fTrjcxeuXVMMVrO2uC9ZTnxm5L/WDhEBG3BLViWyhrLj4u
 MX7Z0z7HMbNZd/Wl0tnRlAZQEeOdwnV3qGeE9MUMiAPpuKUgzhemT9a4xY7MR4x1RQ5J
 sKVA==
X-Gm-Message-State: ANhLgQ1Eop+/zxaP4WsyYuriLWwiE9FwExgMyQDgVk9zFzpEY4DyooWn
 XUTfeulzGqTzjjGQmiw0XODcoe9I
X-Google-Smtp-Source: ADFU+vsAPfWViXvfWqWjYgKFTyx8R6WR28q8sZlsPt128NWdWqJHAw+U8M545T6aV5wwXSZWy/YSKQ==
X-Received: by 2002:a5d:6910:: with SMTP id t16mr5801608wru.209.1584542716463; 
 Wed, 18 Mar 2020 07:45:16 -0700 (PDT)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id b12sm9529062wro.66.2020.03.18.07.45.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2020 07:45:15 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Wed, 18 Mar 2020 17:45:12 +0300 (EAT)
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <7081a49d20cc46b1b1144c83a4e21294d121d8a7.1583766715.git.jani.nikula@intel.com>
Message-ID: <alpine.LNX.2.21.99999.375.2003181744260.41254@wambui>
References: <cover.1583766715.git.jani.nikula@intel.com>
 <7081a49d20cc46b1b1144c83a4e21294d121d8a7.1583766715.git.jani.nikula@intel.com>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/10] drm/i915/fbdev: convert to drm_device
 based logging.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On Tue, 10 Mar 2020, Jani Nikula wrote:

> From: Wambui Karuga <wambui.karugax@gmail.com>
>
> Convert various instances of printk based drm logging macros to the
> struct drm_device based logging macros in i915/display/intel_fbdev.c.
> This also involves extracting the drm_i915_private device from various
> intel types.
>
> v2 by Jani:
> - fix the final one too
>
> Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Wambui Karuga <wambui.karugax@gmail.com>
> ---
> drivers/gpu/drm/i915/display/intel_fbdev.c | 96 +++++++++++++---------
> 1 file changed, 55 insertions(+), 41 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 3bc804212a99..bd39eb6a21b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -146,7 +146,7 @@ static int intelfb_alloc(struct drm_fb_helper *helper,
> 	if (IS_ERR(obj))
> 		obj = i915_gem_object_create_shmem(dev_priv, size);
> 	if (IS_ERR(obj)) {
> -		DRM_ERROR("failed to allocate framebuffer\n");
> +		drm_err(&dev_priv->drm, "failed to allocate framebuffer\n");
> 		return PTR_ERR(obj);
> 	}
>
> @@ -183,21 +183,23 @@ static int intelfb_create(struct drm_fb_helper *helper,
> 	if (intel_fb &&
> 	    (sizes->fb_width > intel_fb->base.width ||
> 	     sizes->fb_height > intel_fb->base.height)) {
> -		DRM_DEBUG_KMS("BIOS fb too small (%dx%d), we require (%dx%d),"
> -			      " releasing it\n",
> -			      intel_fb->base.width, intel_fb->base.height,
> -			      sizes->fb_width, sizes->fb_height);
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "BIOS fb too small (%dx%d), we require (%dx%d),"
> +			    " releasing it\n",
> +			    intel_fb->base.width, intel_fb->base.height,
> +			    sizes->fb_width, sizes->fb_height);
> 		drm_framebuffer_put(&intel_fb->base);
> 		intel_fb = ifbdev->fb = NULL;
> 	}
> 	if (!intel_fb || drm_WARN_ON(dev, !intel_fb_obj(&intel_fb->base))) {
> -		DRM_DEBUG_KMS("no BIOS fb, allocating a new one\n");
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "no BIOS fb, allocating a new one\n");
> 		ret = intelfb_alloc(helper, sizes);
> 		if (ret)
> 			return ret;
> 		intel_fb = ifbdev->fb;
> 	} else {
> -		DRM_DEBUG_KMS("re-using BIOS fb\n");
> +		drm_dbg_kms(&dev_priv->drm, "re-using BIOS fb\n");
> 		prealloc = true;
> 		sizes->fb_width = intel_fb->base.width;
> 		sizes->fb_height = intel_fb->base.height;
> @@ -220,7 +222,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
>
> 	info = drm_fb_helper_alloc_fbi(helper);
> 	if (IS_ERR(info)) {
> -		DRM_ERROR("Failed to allocate fb_info\n");
> +		drm_err(&dev_priv->drm, "Failed to allocate fb_info\n");
> 		ret = PTR_ERR(info);
> 		goto out_unpin;
> 	}
> @@ -240,7 +242,8 @@ static int intelfb_create(struct drm_fb_helper *helper,
>
> 	vaddr = i915_vma_pin_iomap(vma);
> 	if (IS_ERR(vaddr)) {
> -		DRM_ERROR("Failed to remap framebuffer into virtual memory\n");
> +		drm_err(&dev_priv->drm,
> +			"Failed to remap framebuffer into virtual memory\n");
> 		ret = PTR_ERR(vaddr);
> 		goto out_unpin;
> 	}
> @@ -258,9 +261,9 @@ static int intelfb_create(struct drm_fb_helper *helper,
>
> 	/* Use default scratch pixmap (info->pixmap.flags = FB_PIXMAP_SYSTEM) */
>
> -	DRM_DEBUG_KMS("allocated %dx%d fb: 0x%08x\n",
> -		      ifbdev->fb->base.width, ifbdev->fb->base.height,
> -		      i915_ggtt_offset(vma));
> +	drm_dbg_kms(&dev_priv->drm, "allocated %dx%d fb: 0x%08x\n",
> +		    ifbdev->fb->base.width, ifbdev->fb->base.height,
> +		    i915_ggtt_offset(vma));
> 	ifbdev->vma = vma;
> 	ifbdev->vma_flags = flags;
>
> @@ -309,6 +312,7 @@ static void intel_fbdev_destroy(struct intel_fbdev *ifbdev)
> static bool intel_fbdev_init_bios(struct drm_device *dev,
> 				 struct intel_fbdev *ifbdev)
> {
> +	struct drm_i915_private *i915 = to_i915(dev);
> 	struct intel_framebuffer *fb = NULL;
> 	struct drm_crtc *crtc;
> 	struct intel_crtc *intel_crtc;
> @@ -321,21 +325,24 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
> 		intel_crtc = to_intel_crtc(crtc);
>
> 		if (!crtc->state->active || !obj) {
> -			DRM_DEBUG_KMS("pipe %c not active or no fb, skipping\n",
> -				      pipe_name(intel_crtc->pipe));
> +			drm_dbg_kms(&i915->drm,
> +				    "pipe %c not active or no fb, skipping\n",
> +				    pipe_name(intel_crtc->pipe));
> 			continue;
> 		}
>
> 		if (obj->base.size > max_size) {
> -			DRM_DEBUG_KMS("found possible fb from plane %c\n",
> -				      pipe_name(intel_crtc->pipe));
> +			drm_dbg_kms(&i915->drm,
> +				    "found possible fb from plane %c\n",
> +				    pipe_name(intel_crtc->pipe));
> 			fb = to_intel_framebuffer(crtc->primary->state->fb);
> 			max_size = obj->base.size;
> 		}
> 	}
>
> 	if (!fb) {
> -		DRM_DEBUG_KMS("no active fbs found, not using BIOS config\n");
> +		drm_dbg_kms(&i915->drm,
> +			    "no active fbs found, not using BIOS config\n");
> 		goto out;
> 	}
>
> @@ -346,13 +353,14 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
> 		intel_crtc = to_intel_crtc(crtc);
>
> 		if (!crtc->state->active) {
> -			DRM_DEBUG_KMS("pipe %c not active, skipping\n",
> -				      pipe_name(intel_crtc->pipe));
> +			drm_dbg_kms(&i915->drm,
> +				    "pipe %c not active, skipping\n",
> +				    pipe_name(intel_crtc->pipe));
> 			continue;
> 		}
>
> -		DRM_DEBUG_KMS("checking plane %c for BIOS fb\n",
> -			      pipe_name(intel_crtc->pipe));
> +		drm_dbg_kms(&i915->drm, "checking plane %c for BIOS fb\n",
> +			    pipe_name(intel_crtc->pipe));
>
> 		/*
> 		 * See if the plane fb we found above will fit on this
> @@ -362,9 +370,10 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
> 		cur_size = crtc->state->adjusted_mode.crtc_hdisplay;
> 		cur_size = cur_size * fb->base.format->cpp[0];
> 		if (fb->base.pitches[0] < cur_size) {
> -			DRM_DEBUG_KMS("fb not wide enough for plane %c (%d vs %d)\n",
> -				      pipe_name(intel_crtc->pipe),
> -				      cur_size, fb->base.pitches[0]);
> +			drm_dbg_kms(&i915->drm,
> +				    "fb not wide enough for plane %c (%d vs %d)\n",
> +				    pipe_name(intel_crtc->pipe),
> +				    cur_size, fb->base.pitches[0]);
> 			fb = NULL;
> 			break;
> 		}
> @@ -372,28 +381,32 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
> 		cur_size = crtc->state->adjusted_mode.crtc_vdisplay;
> 		cur_size = intel_fb_align_height(&fb->base, 0, cur_size);
> 		cur_size *= fb->base.pitches[0];
> -		DRM_DEBUG_KMS("pipe %c area: %dx%d, bpp: %d, size: %d\n",
> -			      pipe_name(intel_crtc->pipe),
> -			      crtc->state->adjusted_mode.crtc_hdisplay,
> -			      crtc->state->adjusted_mode.crtc_vdisplay,
> -			      fb->base.format->cpp[0] * 8,
> -			      cur_size);
> +		drm_dbg_kms(&i915->drm,
> +			    "pipe %c area: %dx%d, bpp: %d, size: %d\n",
> +			    pipe_name(intel_crtc->pipe),
> +			    crtc->state->adjusted_mode.crtc_hdisplay,
> +			    crtc->state->adjusted_mode.crtc_vdisplay,
> +			    fb->base.format->cpp[0] * 8,
> +			    cur_size);
>
> 		if (cur_size > max_size) {
> -			DRM_DEBUG_KMS("fb not big enough for plane %c (%d vs %d)\n",
> -				      pipe_name(intel_crtc->pipe),
> -				      cur_size, max_size);
> +			drm_dbg_kms(&i915->drm,
> +				    "fb not big enough for plane %c (%d vs %d)\n",
> +				    pipe_name(intel_crtc->pipe),
> +				    cur_size, max_size);
> 			fb = NULL;
> 			break;
> 		}
>
> -		DRM_DEBUG_KMS("fb big enough for plane %c (%d >= %d)\n",
> -			      pipe_name(intel_crtc->pipe),
> -			      max_size, cur_size);
> +		drm_dbg_kms(&i915->drm,
> +			    "fb big enough for plane %c (%d >= %d)\n",
> +			    pipe_name(intel_crtc->pipe),
> +			    max_size, cur_size);
> 	}
>
> 	if (!fb) {
> -		DRM_DEBUG_KMS("BIOS fb not suitable for all pipes, not using\n");
> +		drm_dbg_kms(&i915->drm,
> +			    "BIOS fb not suitable for all pipes, not using\n");
> 		goto out;
> 	}
>
> @@ -415,7 +428,7 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
> 	}
>
>
> -	DRM_DEBUG_KMS("using BIOS fb for initial console\n");
> +	drm_dbg_kms(&i915->drm, "using BIOS fb for initial console\n");
> 	return true;
>
> out:
> @@ -522,8 +535,9 @@ void intel_fbdev_fini(struct drm_i915_private *dev_priv)
>  * processing, fbdev will perform a full connector reprobe if a hotplug event
>  * was received while HPD was suspended.
>  */
> -static void intel_fbdev_hpd_set_suspend(struct intel_fbdev *ifbdev, int state)
> +static void intel_fbdev_hpd_set_suspend(struct drm_i915_private *i915, int state)
> {
> +	struct intel_fbdev *ifbdev = i915->fbdev;
> 	bool send_hpd = false;
>
> 	mutex_lock(&ifbdev->hpd_lock);
> @@ -533,7 +547,7 @@ static void intel_fbdev_hpd_set_suspend(struct intel_fbdev *ifbdev, int state)
> 	mutex_unlock(&ifbdev->hpd_lock);
>
> 	if (send_hpd) {
> -		DRM_DEBUG_KMS("Handling delayed fbcon HPD event\n");
> +		drm_dbg_kms(&i915->drm, "Handling delayed fbcon HPD event\n");
> 		drm_fb_helper_hotplug_event(&ifbdev->helper);
> 	}
> }
> @@ -588,7 +602,7 @@ void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous
> 	drm_fb_helper_set_suspend(&ifbdev->helper, state);
> 	console_unlock();
>
> -	intel_fbdev_hpd_set_suspend(ifbdev, state);
> +	intel_fbdev_hpd_set_suspend(dev_priv, state);
> }
>
> void intel_fbdev_output_poll_changed(struct drm_device *dev)
> -- 
> 2.20.1
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
