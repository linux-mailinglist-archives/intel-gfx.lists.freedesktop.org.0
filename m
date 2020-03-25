Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D6119237A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 09:57:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C75AE89A67;
	Wed, 25 Mar 2020 08:57:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77FBA89A67
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 08:57:35 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id u10so1830573wro.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 01:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=f7cAkAnmPuGqyjpb760VncpuYYD2eBTYLg16kYC/51Q=;
 b=NTo+dw15/6vo6mGInWuoW31nAPQsWAmOMVOslKhnF4JFrwfkiIRLpdHYU3AQ8fnfN0
 st9iiwqK0L0q8YyjFRW+wEuyS3lLjqSyQOws5+cvwv23sHbScwfX0mkZhD834RbNdCYC
 PIKkv8k8Vi/OE1Rqum1THqckiqlQld5KVAJoM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=f7cAkAnmPuGqyjpb760VncpuYYD2eBTYLg16kYC/51Q=;
 b=olIF5fXrAQlchC70tSmQdLuwRsKDnYpDQOPekTPz6O6bEj549NncHXDzm9Jw+PemTT
 20SFYZ4ccQ9TPQKcu/qDJG7FGoEycEqMOzQcDWKYw/CY3tsfbg0QeWwCnlxsgY5mS0Wk
 3WiaWxuqOu0dxRwl0/vvDlLc1elOZla/mfoycozidf0FdX7JjO8DuRtO0dH2lm/WNvZS
 w6+3oRwlE+0eP9F/kC7iRWalK75fxlrHsqMQzOildDPGXktFK3MRcmkfyEMl/SF0hh4Q
 Z3SgiwvJGR9cqv8oxWvRGYcyKbK+HJ94Z1ZlZ14innkir1CEiiVZK+Iel0GL/N8Q3933
 6VJQ==
X-Gm-Message-State: ANhLgQ2aID4DV3DL4PYOdhB+kQwQgabscFrEAuEkp1SjILRoICVvUo3y
 XOghA1AbxOo5Y1yVFl5n7jNG1A==
X-Google-Smtp-Source: ADFU+vtDPO63FQTbAhdJRR244cP2DrwVd7hG3lKlSTbnE7SRX91UsIHPfLUNOA32kUZ/NjfwKfZl1A==
X-Received: by 2002:adf:dc92:: with SMTP id r18mr2222123wrj.76.1585126654104; 
 Wed, 25 Mar 2020 01:57:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id e9sm32468076wrw.30.2020.03.25.01.57.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 01:57:33 -0700 (PDT)
Date: Wed, 25 Mar 2020 09:57:31 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200325085731.GW2363188@phenom.ffwll.local>
References: <cover.1584714939.git.jani.nikula@intel.com>
 <ffdbda0a0fe18354867b3f8c7a83f59f0963711d.1584714939.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ffdbda0a0fe18354867b3f8c7a83f59f0963711d.1584714939.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 11/13] drm/i915/display: use struct
 drm_device based logging
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
Cc: intel-gfx@lists.freedesktop.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 20, 2020 at 04:36:36PM +0200, Jani Nikula wrote:
> Convert all the DRM_* logging macros to the struct drm_device based
> macros to provide device specific logging.
> 
> No functional changes.
> 
> Generated using the following semantic patch, originally written by
> Wambui Karuga <wambui.karugax@gmail.com>, with manual fixups on top:
> 
> @@
> identifier fn, T;
> @@
> 
> fn(...,struct drm_i915_private *T,...) {
> <+...
> (
> -DRM_INFO(
> +drm_info(&T->drm,
> ...)
> |
> -DRM_NOTE(
> +drm_notice(&T->drm,
> ...)
> |
> -DRM_ERROR(
> +drm_err(&T->drm,
> ...)
> |
> -DRM_WARN(
> +drm_warn(&T->drm,
> ...)
> |
> -DRM_DEBUG_DRIVER(
> +drm_dbg(&T->drm,
> ...)
> |
> -DRM_DEBUG_KMS(
> +drm_dbg_kms(&T->drm,
> ...)
> |
> -DRM_DEBUG_ATOMIC(
> +drm_dbg_atomic(&T->drm,
> ...)
> )
> ...+>
> }
> 
> @@
> identifier fn, T;
> @@
> 
> fn(...) {
> ...
> struct drm_i915_private *T = ...;
> <+...
> (
> -DRM_INFO(
> +drm_info(&T->drm,
> ...)
> |
> -DRM_NOTE(
> +drm_notice(&T->drm,
> ...)
> |
> -DRM_ERROR(
> +drm_err(&T->drm,
> ...)
> |
> -DRM_WARN(
> +drm_warn(&T->drm,
> ...)
> |
> -DRM_DEBUG_DRIVER(
> +drm_dbg(&T->drm,
> ...)
> |
> -DRM_DEBUG_KMS(
> +drm_dbg_kms(&T->drm,
> ...)
> |
> -DRM_DEBUG_ATOMIC(
> +drm_dbg_atomic(&T->drm,
> ...)
> )
> ...+>
> }
> 
> Cc: Wambui Karuga <wambui.karugax@gmail.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 25 +++++++++++---------
>  1 file changed, 14 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 6af8d43ceb0c..fe55c7c713f1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2908,6 +2908,7 @@ intel_fb_plane_get_subsampling(int *hsub, int *vsub,
>  static int
>  intel_fb_check_ccs_xy(struct drm_framebuffer *fb, int ccs_plane, int x, int y)
>  {
> +	struct drm_i915_private *i915 = to_i915(fb->dev);
>  	struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
>  	int main_plane;
>  	int hsub, vsub;
> @@ -2936,7 +2937,8 @@ intel_fb_check_ccs_xy(struct drm_framebuffer *fb, int ccs_plane, int x, int y)
>  	 * x/y offsets must match between CCS and the main surface.
>  	 */
>  	if (main_x != ccs_x || main_y != ccs_y) {
> -		DRM_DEBUG_KMS("Bad CCS x/y (main %d,%d ccs %d,%d) full (main %d,%d ccs %d,%d)\n",
> +		drm_dbg_kms(&i915->drm,
> +			      "Bad CCS x/y (main %d,%d ccs %d,%d) full (main %d,%d ccs %d,%d)\n",
>  			      main_x, main_y,
>  			      ccs_x, ccs_y,
>  			      intel_fb->normal[main_plane].x,
> @@ -12882,16 +12884,17 @@ compute_baseline_pipe_bpp(struct intel_crtc *crtc,
>  	return 0;
>  }
>  
> -static void intel_dump_crtc_timings(const struct drm_display_mode *mode)
> +static void intel_dump_crtc_timings(struct drm_i915_private *i915,
> +				    const struct drm_display_mode *mode)
>  {
> -	DRM_DEBUG_KMS("crtc timings: %d %d %d %d %d %d %d %d %d, "
> -		      "type: 0x%x flags: 0x%x\n",
> -		      mode->crtc_clock,
> -		      mode->crtc_hdisplay, mode->crtc_hsync_start,
> -		      mode->crtc_hsync_end, mode->crtc_htotal,
> -		      mode->crtc_vdisplay, mode->crtc_vsync_start,
> -		      mode->crtc_vsync_end, mode->crtc_vtotal,
> -		      mode->type, mode->flags);
> +	drm_dbg_kms(&i915->drm, "crtc timings: %d %d %d %d %d %d %d %d %d, "
> +		    "type: 0x%x flags: 0x%x\n",
> +		    mode->crtc_clock,
> +		    mode->crtc_hdisplay, mode->crtc_hsync_start,
> +		    mode->crtc_hsync_end, mode->crtc_htotal,
> +		    mode->crtc_vdisplay, mode->crtc_vsync_start,
> +		    mode->crtc_vsync_end, mode->crtc_vtotal,
> +		    mode->type, mode->flags);
>  }
>  
>  static inline void
> @@ -13075,7 +13078,7 @@ static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
>  	drm_mode_debug_printmodeline(&pipe_config->hw.mode);
>  	drm_dbg_kms(&dev_priv->drm, "adjusted mode:\n");
>  	drm_mode_debug_printmodeline(&pipe_config->hw.adjusted_mode);
> -	intel_dump_crtc_timings(&pipe_config->hw.adjusted_mode);
> +	intel_dump_crtc_timings(dev_priv, &pipe_config->hw.adjusted_mode);
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "port clock: %d, pipe src size: %dx%d, pixel rate %d\n",
>  		    pipe_config->port_clock,
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
