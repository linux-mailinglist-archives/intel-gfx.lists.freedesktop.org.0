Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1265B1BC2AD
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 17:18:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 682806E825;
	Tue, 28 Apr 2020 15:18:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 411CD6E825
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 15:18:17 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id z6so3308618wml.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 08:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=EEU0pxcPFX3KP87PwUmGj9xWjqHNRrDzTBDgsvo+zrE=;
 b=KTinRLzrNGkjErt0YFPfEjur37+mTjuuNFWKuMYjujj75gJo4JuKBWlLUFpqe21kD8
 PuGx+XNt9x1outfQa8IQhPFA/zyJi9Ca7Qi5Fkgsb1ZfMD/D/oCBsFlKJqopuqj7OfS6
 k6tEL0y3Ta8cAOVsRinPJEt7/3vwn6tTL45Tg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=EEU0pxcPFX3KP87PwUmGj9xWjqHNRrDzTBDgsvo+zrE=;
 b=uW5zmP3Awic9EDyVoQVFeCm45tPSHRLM7tECaxMrklWkb5zj0I0s96JX+fKFhPNbM8
 3DP331u6n9O55OESx96EUuPOUpwnI8IIgFU1QVNe+vfBTtrSTtunkx4EVHgoGh7mJ3Ig
 CK0NSuLQjr8J4NvIxYnl1pXvQO6agFr9Zejp539NiMYFzL8VZ1oz7YhHDHR4ydox88oQ
 Ky0COcoy2h4+lBApznE/jAILqPXtsuOH93P4xmdmn4Boih+xALRFz+ZTTYy48OcmQyT2
 smhK/7ECDVxlpE0LneaC5Izpg0cVNk1hD5mjW5LdikpDJeoY9A4psOKx+HAt30sfjARZ
 pVnA==
X-Gm-Message-State: AGi0PuZRg02lsaRBb2JiDt4seQ7NBz1g6OgaNsrBZsGb+YEM47aJDFlf
 nSPZMm3znsWFf0cmkuLmHodFpg==
X-Google-Smtp-Source: APiQypKaVyMHjzYLTLGIxk+gUvL3MgOQUtvKn1okwXGtKQJUbFiYSWur99gy5wbOdKi7ODJQCqZVMA==
X-Received: by 2002:a1c:ed04:: with SMTP id l4mr5193048wmh.93.1588087095920;
 Tue, 28 Apr 2020 08:18:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f83sm3728864wmf.42.2020.04.28.08.18.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 08:18:15 -0700 (PDT)
Date: Tue, 28 Apr 2020 17:18:13 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Michal Orzel <michalorzel.eng@gmail.com>
Message-ID: <20200428151813.GW3456981@phenom.ffwll.local>
Mail-Followup-To: Michal Orzel <michalorzel.eng@gmail.com>,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@linux.ie, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 ville.syrjala@linux.intel.com, chris@chris-wilson.co.uk,
 jose.souza@intel.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <1587974717-14599-1-git-send-email-michalorzel.eng@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587974717-14599-1-git-send-email-michalorzel.eng@gmail.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH] Remove drm_display_mode.hsync
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
Cc: tzimmermann@suse.de, airlied@linux.ie, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, chris@chris-wilson.co.uk, mripard@kernel.org,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 27, 2020 at 10:05:17AM +0200, Michal Orzel wrote:
> As suggested by the TODO list of DRM subsystem:
> -remove the member hsync of drm_display_mode
> -convert code using hsync member to use drm_mode_hsync()
> 
> Signed-off-by: Michal Orzel <michalorzel.eng@gmail.com>

I think Ville has a bunch of patches doing this, we might have some
overlap :-/ Adding Ville.

Please sync with him and get either of these patches reviewed.

Thanks, Daniel

> ---
>  drivers/gpu/drm/drm_modes.c                  |  6 +-----
>  drivers/gpu/drm/i915/display/intel_display.c |  1 -
>  include/drm/drm_modes.h                      | 10 ----------
>  3 files changed, 1 insertion(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_modes.c b/drivers/gpu/drm/drm_modes.c
> index d4d6451..0340079 100644
> --- a/drivers/gpu/drm/drm_modes.c
> +++ b/drivers/gpu/drm/drm_modes.c
> @@ -752,16 +752,12 @@ EXPORT_SYMBOL(drm_mode_set_name);
>   * @mode: mode
>   *
>   * Returns:
> - * @modes's hsync rate in kHz, rounded to the nearest integer. Calculates the
> - * value first if it is not yet set.
> + * @modes's hsync rate in kHz, rounded to the nearest integer.
>   */
>  int drm_mode_hsync(const struct drm_display_mode *mode)
>  {
>  	unsigned int calc_val;
>  
> -	if (mode->hsync)
> -		return mode->hsync;
> -
>  	if (mode->htotal <= 0)
>  		return 0;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 3468466..ec7e943 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8891,7 +8891,6 @@ void intel_mode_from_pipe_config(struct drm_display_mode *mode,
>  
>  	mode->clock = pipe_config->hw.adjusted_mode.crtc_clock;
>  
> -	mode->hsync = drm_mode_hsync(mode);
>  	mode->vrefresh = drm_mode_vrefresh(mode);
>  	drm_mode_set_name(mode);
>  }
> diff --git a/include/drm/drm_modes.h b/include/drm/drm_modes.h
> index 99134d4..7dab7f1 100644
> --- a/include/drm/drm_modes.h
> +++ b/include/drm/drm_modes.h
> @@ -391,16 +391,6 @@ struct drm_display_mode {
>  	int vrefresh;
>  
>  	/**
> -	 * @hsync:
> -	 *
> -	 * Horizontal refresh rate, for debug output in human readable form. Not
> -	 * used in a functional way.
> -	 *
> -	 * This value is in kHz.
> -	 */
> -	int hsync;
> -
> -	/**
>  	 * @picture_aspect_ratio:
>  	 *
>  	 * Field for setting the HDMI picture aspect ratio of a mode.
> -- 
> 2.7.4
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
