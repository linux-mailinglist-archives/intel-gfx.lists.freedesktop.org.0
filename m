Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADF7192313
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 09:45:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BAB16E5AE;
	Wed, 25 Mar 2020 08:45:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC7986E5AE
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 08:45:20 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id 31so1810235wrs.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 01:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=sZO0ShAtqsxx1IBImfwXler2BP8NVmP4bIL+5c4ZSY4=;
 b=aVytCm7AD7HYIz86VlJqD2uZBLsUcK4l1YtqeaNrVzf6aXdXSw29zE/WRot39jpxle
 6naYCL8GWFABkxZcJQTM2+mRSC/6MgfwtYo8L4nHi9EFmpsbPZynXN1TxzYujfRqYhvF
 rK8b0AdZYTmeczNg3nT5QUUo6trJVYbAa/upA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=sZO0ShAtqsxx1IBImfwXler2BP8NVmP4bIL+5c4ZSY4=;
 b=gHrl9IP8etQxHlyd3SyxSKdsxZ90WE4SAMY/NWVEcmz3E/+HnFJVVjdKlgrMvFQW2V
 QvBx//Y04dYfZGTKR4l3xfTDBZU0i4ybXpvBjAet1mOh/F3A+EXc1EUptodes9++GH2k
 YJucOFq8/skUjkM1bc8EJRFXe0zlgJwWAsyUQ+bK6q5luofEGoVnVQPykcCmoto6suF+
 82e0rFNskZXOM9KPZiZr1k+IFmXtM0En4vtTNSZjbhYRXE9iiPYxUoJ15kRi7QiZw3V0
 7BYqLsjDUAUDhV9fVZja/Sq6ArkkpwUMEQTpDcmLroRBnqpIGSFoRqgCnKt8JpfCFhmS
 L0yw==
X-Gm-Message-State: ANhLgQ0aqIPQFpSQ+DBKeLodiguJqeuUxV/gDn7dvWIMfHUs2CpduSWf
 Jw3sO7QOInCT5zen28/t4SbpA79qYrP747qu
X-Google-Smtp-Source: ADFU+vtEcDYmw6AXq08q50dULqDZXhbY0/5uyAxPEQo13ZdnY8yFs26LNBkfd+kinvv7HPzwfbJjNg==
X-Received: by 2002:adf:f812:: with SMTP id s18mr2032659wrp.380.1585125919182; 
 Wed, 25 Mar 2020 01:45:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h81sm8884764wme.42.2020.03.25.01.45.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 01:45:18 -0700 (PDT)
Date: Wed, 25 Mar 2020 09:45:16 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200325084516.GR2363188@phenom.ffwll.local>
References: <cover.1584714939.git.jani.nikula@intel.com>
 <3bc29cddbba9dea57f8f843be2a6b5e1f7358b5c.1584714939.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3bc29cddbba9dea57f8f843be2a6b5e1f7358b5c.1584714939.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 05/13] drm/i915/dsi: use struct drm_device
 based logging
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

On Fri, Mar 20, 2020 at 04:36:30PM +0200, Jani Nikula wrote:
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
> ---
>  drivers/gpu/drm/i915/display/intel_dsi.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
> index a2a937109a5a..afa4e6817e8c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
> @@ -31,20 +31,21 @@ int intel_dsi_tlpx_ns(const struct intel_dsi *intel_dsi)
>  
>  int intel_dsi_get_modes(struct drm_connector *connector)
>  {
> +	struct drm_i915_private *i915 = to_i915(connector->dev);
>  	struct intel_connector *intel_connector = to_intel_connector(connector);
>  	struct drm_display_mode *mode;
>  
> -	DRM_DEBUG_KMS("\n");
> +	drm_dbg_kms(&i915->drm, "\n");
>  
>  	if (!intel_connector->panel.fixed_mode) {
> -		DRM_DEBUG_KMS("no fixed mode\n");
> +		drm_dbg_kms(&i915->drm, "no fixed mode\n");
>  		return 0;
>  	}
>  
>  	mode = drm_mode_duplicate(connector->dev,
>  				  intel_connector->panel.fixed_mode);
>  	if (!mode) {
> -		DRM_DEBUG_KMS("drm_mode_duplicate failed\n");
> +		drm_dbg_kms(&i915->drm, "drm_mode_duplicate failed\n");
>  		return 0;
>  	}
>  
> @@ -60,7 +61,7 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
>  	const struct drm_display_mode *fixed_mode = intel_connector->panel.fixed_mode;
>  	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
>  
> -	DRM_DEBUG_KMS("\n");
> +	drm_dbg_kms(&dev_priv->drm, "\n");

Real old school drm printing, just to trace the function call :-)

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

>  
>  	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return MODE_NO_DBLESCAN;
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
