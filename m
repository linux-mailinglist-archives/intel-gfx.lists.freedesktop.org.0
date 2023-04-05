Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E37086D7A5D
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 12:52:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80E7410E8C6;
	Wed,  5 Apr 2023 10:52:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 900D910E8CF
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 10:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680691935;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=NfR8hG4BSK2oH+JXo1qpSLt59Iy4pE0E8Ty+5V6Q3Kw=;
 b=YNUC3e77IxeHR4bEbhmBOzxcotQmoawgFhG6+3G+BHtA25I7+YONBz6mt4JCJIdajETFLX
 KPrLix+GIwUs9H5OFM620NaahnpLRxPWvR6uSxLG+p50lmveMSlREZ57kvXxZUlOKgR2Td
 tiiyH5Xkjwv5hjGHQTqdzX01oJ165YI=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-504-VAu1YADEOHCWkeDNp8eh4Q-1; Wed, 05 Apr 2023 06:52:14 -0400
X-MC-Unique: VAu1YADEOHCWkeDNp8eh4Q-1
Received: by mail-wm1-f71.google.com with SMTP id
 j14-20020a05600c1c0e00b003f066d2638aso256870wms.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 03:52:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680691933;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NfR8hG4BSK2oH+JXo1qpSLt59Iy4pE0E8Ty+5V6Q3Kw=;
 b=W8D1oI9493LvpZkkNdagIKFIMbqXSuIDtpLxV+WbVQRTY/0n24xWXbn5r6NhLx1b1S
 2VZDxIh8EsoDsisPHksq5BBA/pzAI+SkgH1qrwbat3tnUWJptkmstFtILAe/+K7CHTHB
 143hisYvd3xKhCbcRm8xmON2nuULP/APZm6BupxaL7e8c0hDNVFznZX+k8vtQy+Y7PNY
 wJfrl6fI5SSrDTy1a58CQAWruo0PaegpiCyV2KzIwv7/GpgQR/yMfPw240NeLYDVWFPs
 LJ2FDZPIE94QE294fu8heH7cB43o21MZv2LEKDs8qSsMqg1cvnmHzYsLaHMlK0nYJKNf
 cZpQ==
X-Gm-Message-State: AAQBX9elgUyAIXe+Zn1f3VW0zHsim4/RGoMAe3Ry4GPpp1UaK0MxTU5/
 VOAlmJdTvMJy0VxY32w9EEjbosF5DmtLC/jkM24toSEqwCeK5hKdjJAWaLAl2cIdrHpK0QHx3cu
 uTp0dap+A+fGG0HRYNQTVVxNSfpn7
X-Received: by 2002:a1c:4b06:0:b0:3ed:f9d3:f95c with SMTP id
 y6-20020a1c4b06000000b003edf9d3f95cmr4280203wma.19.1680691933424; 
 Wed, 05 Apr 2023 03:52:13 -0700 (PDT)
X-Google-Smtp-Source: AKy350YypFChNMSRr5cyT8L+ZHxrWjZZcWglGlfHwGA/7CQvNRB/z1vBRfsxOT+I+/Bpq7WCzao0YA==
X-Received: by 2002:a1c:4b06:0:b0:3ed:f9d3:f95c with SMTP id
 y6-20020a1c4b06000000b003edf9d3f95cmr4280186wma.19.1680691933147; 
 Wed, 05 Apr 2023 03:52:13 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 h7-20020a5d4307000000b002e707102a02sm11892008wrq.101.2023.04.05.03.52.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 03:52:12 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, DRI Development
 <dri-devel@lists.freedesktop.org>
In-Reply-To: <20230404194038.472803-3-daniel.vetter@ffwll.ch>
References: <20230404194038.472803-1-daniel.vetter@ffwll.ch>
 <20230404194038.472803-3-daniel.vetter@ffwll.ch>
Date: Wed, 05 Apr 2023 12:52:12 +0200
Message-ID: <87a5zmd2jn.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/fb-helper: fix input validation
 gaps in check_var
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Daniel Vetter <daniel.vetter@ffwll.ch> writes:

> Apparently drivers need to check all this stuff themselves, which for
> most things makes sense I guess. And for everything else we luck out,
> because modern distros stopped supporting any other fbdev drivers than
> drm ones and I really don't want to argue anymore about who needs to
> check stuff. Therefore fixing all this just for drm fbdev emulation is
> good enough.
>

Agreed.

> Note that var->active is not set or validated. This is just control
> flow for fbmem.c and needs to be validated in there as needed.
>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> ---

[...]

>  
> +static void __fill_var(struct fb_var_screeninfo *var,
> +		       struct drm_framebuffer *fb)
> +{
> +	int i;
> +
> +	var->xres_virtual = fb->width;
> +	var->yres_virtual = fb->height;
> +	var->accel_flags = FB_ACCELF_TEXT;
> +	var->bits_per_pixel = drm_format_info_bpp(fb->format, 0);
> +
> +	var->height = var->width = 0;
> +	var->left_margin = var->right_margin = 0;
> +	var->upper_margin = var->lower_margin = 0;
> +	var->hsync_len = var->vsync_len = 0;
> +	var->sync = var->vmode = 0;
> +	var->rotate = 0;
> +	var->colorspace = 0;
> +	for (i = 0; i < 4; i++)
> +		var->reserved[i] = 0;
> +}
> +
>  /**
>   * drm_fb_helper_check_var - implementation for &fb_ops.fb_check_var
>   * @var: screeninfo to check
> @@ -1595,8 +1616,22 @@ int drm_fb_helper_check_var(struct fb_var_screeninfo *var,
>  		return -EINVAL;
>  	}
>  
> -	var->xres_virtual = fb->width;
> -	var->yres_virtual = fb->height;
> +	__fill_var(var, fb);
> +

[...]

There is the following here (in latest drm-misc/drm-misc-next at least):

	/*
	 * Changes struct fb_var_screeninfo are currently not pushed back
	 * to KMS, hence fail if different settings are requested.
	 */
	bpp = drm_format_info_bpp(format, 0);
	if (var->bits_per_pixel > bpp ||
	    var->xres > fb->width || var->yres > fb->height ||
	    var->xres_virtual > fb->width || var->yres_virtual > fb->height) {
		drm_dbg_kms(dev, "fb requested width/height/bpp can't fit in current fb "
			  "request %dx%d-%d (virtual %dx%d) > %dx%d-%d\n",
			  var->xres, var->yres, var->bits_per_pixel,
			  var->xres_virtual, var->yres_virtual,
			  fb->width, fb->height, bpp);
		return -EINVAL;
	}

but only the 'var->xres > fb->width || var->yres > fb->height' from the
conditions checked could be false after your __fill_var() call above.

You should drop the 'var->bits_per_pixel > bpp', 'var->xres_virtual >
fb->width' and 'var->yres_virtual > fb->height' checks I believe since
those will always be true.

> +	/*
> +	 * fb_pan_display() validates this, but fb_set_par() doesn't and just
> +	 * falls over. Note that __fill_var above adjusts y/res_virtual.
> +	 */
> +	if (var->yoffset > var->yres_virtual - var->yres ||
> +	    var->xoffset > var->xres_virtual - var->xres)
> +		return -EINVAL;
> +
> +	/* We neither support grayscale nor FOURCC (also stored in here). */
> +	if (var->grayscale > 0)
> +		return -EINVAL;
> +
> +	if (var->nonstd)
> +		return -EINVAL;
>  
>  	/*
>  	 * Workaround for SDL 1.2, which is known to be setting all pixel format
> @@ -1612,11 +1647,6 @@ int drm_fb_helper_check_var(struct fb_var_screeninfo *var,
>  		drm_fb_helper_fill_pixel_fmt(var, format);
>  	}
>  

Other than what I mentioned, the patch makes sense to me.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

