Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DD1843125
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 00:25:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13812113713;
	Tue, 30 Jan 2024 23:25:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com
 [209.85.219.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34CAF113711
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 23:25:04 +0000 (UTC)
Received: by mail-qv1-f52.google.com with SMTP id
 6a1803df08f44-68c4fb9e7daso12658236d6.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 15:25:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1706657043; x=1707261843;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=NM6xvlcaQ0jI6Wvj4RgnU9sq68bt+oSksmkv5ihn650=;
 b=JBFBVcQudrPKnjSqSq5GkikRKcfuiTq722Gr/sODfWhZPgzn851PtpX6+Ug//mUenT
 5XsSsS6Hn2u5jB0Ke4JyTzLfJ4LGX8661HhNj+cY8iK1PJCvPpSu3V/bk0ebMeE9q96q
 VYBXo3if849y4FVHXoc6LFe4c54Vh4Wrbkw9w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706657043; x=1707261843;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NM6xvlcaQ0jI6Wvj4RgnU9sq68bt+oSksmkv5ihn650=;
 b=HCiKwm7vkvshhvEtMbOh6XBBwZp1LNqeSxfGScxfl5jxiOqex1Sy1Tw9bUwDuyrxFe
 Gf86kJdgfPJakMJ8iLs0pPbaY7F+D9+uAbOEWKtSHKmZcUMVvSi8/3Ejof/qPKrYGwF+
 bltU8GCn6BhXU03W0EtLh7r4TRav3T8MloiXYu4+kwZYn2gUXgCOyB1QQNIye/3b13wH
 mFuuDjcDbBCBSS1+8nJvuGOWO6o0DUewmZ82XVtH5nTfrALqDvylVeTvXOXMHqfo/vzT
 xhDADrAd7PHqvgJqzhULthAY5HfgYE16ZZy4zTsPUueAo2pODoei17FdTTJV1LWjFKU3
 LauQ==
X-Gm-Message-State: AOJu0YySJfmTiSonE6PbbXe9Gy55OxklC+7B+ooLMNOVSQwNn0hTraEW
 kULBz1G20oMPfBzPgm1xgJwq57NL2dR7MZLIhs1Ud7F3b0T0qB7OuKE8GUPhNQ==
X-Google-Smtp-Source: AGHT+IE3D+EhVzItIszQMlc/gqxWJi5boDZbMMh61NP31LpFZpSg0P/lY5YpgKKvUXztSXWexd3hcQ==
X-Received: by 2002:a05:6214:2a4d:b0:68c:46b9:13d8 with SMTP id
 jf13-20020a0562142a4d00b0068c46b913d8mr54953qvb.10.1706657043126; 
 Tue, 30 Jan 2024 15:24:03 -0800 (PST)
Received: from google.com (240.157.150.34.bc.googleusercontent.com.
 [34.150.157.240]) by smtp.gmail.com with ESMTPSA id
 kr27-20020a0562142b9b00b0068c60d00412sm1109235qvb.57.2024.01.30.15.24.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jan 2024 15:24:02 -0800 (PST)
Date: Tue, 30 Jan 2024 23:24:01 +0000
From: Paz Zcharya <pazz@chromium.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3 12/16] drm/i915: Simplify intel_initial_plane_config()
 calling convention
Message-ID: <ZbmFEeZbNTihhxon@google.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-13-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240116075636.6121-13-ville.syrjala@linux.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 16, 2024 at 09:56:32AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> There's no reason the caller of intel_initial_plane_config() should
> have to loop over the CRTCs. Pull the loop into the function to
> make life simpler for the caller.
> 
> Cc: Paz Zcharya <pazz@chromium.org>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Hi Ville,

Thank you so much for this incredible series.
It solves the issue regarding MTL initial plane readout
that Andrzej Hajda and I worked on in
https://patchwork.freedesktop.org/patch/570811/?series=127130&rev=2
In addition, it solved the issue with the new GOP.

I tested it on two different devices with Meteor Lake and it worked perfectly:
no i915 errors, no flickers or observable issues.

Tested-by: Paz Zcharya <pazz@chromium.org>

> ---
>  .../drm/i915/display/intel_display_driver.c   |  7 +---
>  .../drm/i915/display/intel_plane_initial.c    | 40 +++++++++++--------
>  .../drm/i915/display/intel_plane_initial.h    |  4 +-
>  3 files changed, 26 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index ecf9cb74734b..f3fe1743243b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -415,7 +415,6 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
>  {
>  	struct drm_device *dev = &i915->drm;
>  	enum pipe pipe;
> -	struct intel_crtc *crtc;
>  	int ret;
>  
>  	if (!HAS_DISPLAY(i915))
> @@ -467,11 +466,7 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
>  	intel_acpi_assign_connector_fwnodes(i915);
>  	drm_modeset_unlock_all(dev);
>  
> -	for_each_intel_crtc(dev, crtc) {
> -		if (!to_intel_crtc_state(crtc->base.state)->uapi.active)
> -			continue;
> -		intel_crtc_initial_plane_config(crtc);
> -	}
> +	intel_initial_plane_config(i915);
>  
>  	/*
>  	 * Make sure hardware watermarks really match the state we read out.
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> index 78bff6181ceb..b7e12b60d68b 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> @@ -357,25 +357,31 @@ static void plane_config_fini(struct intel_initial_plane_config *plane_config)
>  		i915_vma_put(plane_config->vma);
>  }
>  
> -void intel_crtc_initial_plane_config(struct intel_crtc *crtc)
> +void intel_initial_plane_config(struct drm_i915_private *i915)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	struct intel_initial_plane_config plane_config = {};
> +	struct intel_crtc *crtc;
>  
> -	/*
> -	 * Note that reserving the BIOS fb up front prevents us
> -	 * from stuffing other stolen allocations like the ring
> -	 * on top.  This prevents some ugliness at boot time, and
> -	 * can even allow for smooth boot transitions if the BIOS
> -	 * fb is large enough for the active pipe configuration.
> -	 */
> -	dev_priv->display.funcs.display->get_initial_plane_config(crtc, &plane_config);
> +	for_each_intel_crtc(&i915->drm, crtc) {
> +		struct intel_initial_plane_config plane_config = {};
>  
> -	/*
> -	 * If the fb is shared between multiple heads, we'll
> -	 * just get the first one.
> -	 */
> -	intel_find_initial_plane_obj(crtc, &plane_config);
> +		if (!to_intel_crtc_state(crtc->base.state)->uapi.active)
> +			continue;
>  
> -	plane_config_fini(&plane_config);
> +		/*
> +		 * Note that reserving the BIOS fb up front prevents us
> +		 * from stuffing other stolen allocations like the ring
> +		 * on top.  This prevents some ugliness at boot time, and
> +		 * can even allow for smooth boot transitions if the BIOS
> +		 * fb is large enough for the active pipe configuration.
> +		 */
> +		i915->display.funcs.display->get_initial_plane_config(crtc, &plane_config);
> +
> +		/*
> +		 * If the fb is shared between multiple heads, we'll
> +		 * just get the first one.
> +		 */
> +		intel_find_initial_plane_obj(crtc, &plane_config);
> +
> +		plane_config_fini(&plane_config);
> +	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.h b/drivers/gpu/drm/i915/display/intel_plane_initial.h
> index c7e35ab3182b..64ab95239cd4 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.h
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.h
> @@ -6,8 +6,8 @@
>  #ifndef __INTEL_PLANE_INITIAL_H__
>  #define __INTEL_PLANE_INITIAL_H__
>  
> -struct intel_crtc;
> +struct drm_i915_private;
>  
> -void intel_crtc_initial_plane_config(struct intel_crtc *crtc);
> +void intel_initial_plane_config(struct drm_i915_private *i915);
>  
>  #endif
> -- 
> 2.41.0
> 
