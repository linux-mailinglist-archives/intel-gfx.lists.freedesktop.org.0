Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F16E9189E2B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 15:44:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C36A89C1B;
	Wed, 18 Mar 2020 14:43:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F23C689C1B
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 14:43:57 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id 11so3714398wmo.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 07:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=gfZC/NTmcRQ7ddmKxJ9CXAwx2PqOcqOukJEJXdo1NFU=;
 b=MDUUB8rSoyxdoHSCAOjTFgi8uuEKtDTNoPvQhHyCzDoEvmiYZV6Lryv9Fej9mmWUtj
 VmP+JsMcn1OIZx8I8sox+vIEFq5KM5GNTR66gWfKQwxLjqtKgtBOb/88Hrn6yYe0JBr6
 Tqga6KyMF2hy27+qobNLtLmZ1CaxZA6u/egN/TCmSIRaXJAngZP2F13mJyOjsv2HCdEe
 yPhyd1SqxidU/CfYawXM122koai33NLdtSkm40FYOuT4aDQwpj9KmxnAkvsosNMD3tnp
 d4vMqCCQnr+fmNSJo3MGEfIOt2HnTulK7E7SEERcPOw7ipCQ1VN4T7qFnwZ2g10atvBJ
 DYFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=gfZC/NTmcRQ7ddmKxJ9CXAwx2PqOcqOukJEJXdo1NFU=;
 b=kHFvYLLZ3qrkIuBnzkvzyrWy98gAqOAehKEDlGAsOWgZtlOLF31tl5MXGnp2pvsv+N
 b/OHdEN455dpcSE2Ca+N2f33WEys8Tu2Buqg4QkWpxJsEx86b/iM7ZNQ26wQY3ACttEX
 R81maHOwMShVjREc4HpnodDcTc4VDWYXO5AbnLo7w6fKx2jBYCDPsMh1z64IBkhOY09L
 2ih+Xm9e9Z0yLQlz5i8FaZUjnYRGXC6ReJo6ovrSTOE/x8vHFA0Q6FcJJcIxU7q3m3tO
 iVwMbKNxGKQgihNTTCeEhdUdJJc9Do416rpp+c8BFZMIK4OhTnq4/y5RDetZJb3UyrOF
 dh4g==
X-Gm-Message-State: ANhLgQ3MI0wlX0hOMG/n1q5NvjFnFOWH5LSHvlfNUp6162fEMIA9lhY8
 SNPN7Vp5I8K1mcYlz9cZ7hPbqsC0
X-Google-Smtp-Source: ADFU+vvZJ1jETEdVQXsURfQPfY9TBjL7KsSPJ9P3S1A5MnT+QH6pq1erP5XCfSJhjWRlaaVWaCmFcQ==
X-Received: by 2002:a7b:cc04:: with SMTP id f4mr5507721wmh.134.1584542636471; 
 Wed, 18 Mar 2020 07:43:56 -0700 (PDT)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id l7sm9902675wrw.33.2020.03.18.07.43.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2020 07:43:55 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Wed, 18 Mar 2020 17:43:40 +0300 (EAT)
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <32a92f1d4e4d01131605b17bec831517e39c5902.1583766715.git.jani.nikula@intel.com>
Message-ID: <alpine.LNX.2.21.99999.375.2003181742190.41254@wambui>
References: <cover.1583766715.git.jani.nikula@intel.com>
 <32a92f1d4e4d01131605b17bec831517e39c5902.1583766715.git.jani.nikula@intel.com>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/10] drm/i915/fbc: convert to drm_device
 based logging macros.
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
> This replaces the uses of the printk based drm logging macros with the
> struct drm_device based logging macros in i915/display/intel_fbc.c.
> This transformation was done using the following coccinelle semantic
> patch that matches based on the existence of a drm_i915_private device
> pointer:
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
> -DRM_ERROR(
> +drm_err(&T->drm,
> ...)
> |
> -DRM_WARN(
> +drm_warn(&T->drm,
> ...)
> |
> -DRM_DEBUG(
> +drm_dbg(&T->drm,
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
> -DRM_ERROR(
> +drm_err(&T->drm,
> ...)
> |
> -DRM_WARN(
> +drm_warn(&T->drm,
> ...)
> |
> -DRM_DEBUG(
> +drm_dbg(&T->drm,
> ...)
> |
> -DRM_DEBUG_KMS(
> +drm_dbg_kms(&T->drm,
> ...)
> |
> -DRM_DEBUG_DRIVER(
> +drm_dbg(&T->drm,
> ...)
> |
> -DRM_DEBUG_ATOMIC(
> +drm_dbg_atomic(&T->drm,
> ...)
> )
> ...+>
> }
>
> New checkpatch warnings were addressed manually.
>
> v2 by Jani:
> - also convert pr_info_once to drm based logging
>
> Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Wambui Karuga <wambui.karugax@gmail.com>
> ---
> drivers/gpu/drm/i915/display/intel_fbc.c | 30 ++++++++++++++----------
> 1 file changed, 18 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 2d982c322be9..ea0c3ecf7230 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -104,7 +104,7 @@ static void i8xx_fbc_deactivate(struct drm_i915_private *dev_priv)
> 	/* Wait for compressing bit to clear */
> 	if (intel_de_wait_for_clear(dev_priv, FBC_STATUS,
> 				    FBC_STAT_COMPRESSING, 10)) {
> -		DRM_DEBUG_KMS("FBC idle timed out\n");
> +		drm_dbg_kms(&dev_priv->drm, "FBC idle timed out\n");
> 		return;
> 	}
> }
> @@ -485,7 +485,8 @@ static int intel_fbc_alloc_cfb(struct drm_i915_private *dev_priv,
> 	if (!ret)
> 		goto err_llb;
> 	else if (ret > 1) {
> -		DRM_INFO("Reducing the compressed framebuffer size. This may lead to less power savings than a non-reduced-size. Try to increase stolen memory size if available in BIOS.\n");
> +		drm_info(&dev_priv->drm,
> +			 "Reducing the compressed framebuffer size. This may lead to less power savings than a non-reduced-size. Try to increase stolen memory size if available in BIOS.\n");
>
> 	}
>
> @@ -521,8 +522,9 @@ static int intel_fbc_alloc_cfb(struct drm_i915_private *dev_priv,
> 			       dev_priv->dsm.start + compressed_llb->start);
> 	}
>
> -	DRM_DEBUG_KMS("reserved %llu bytes of contiguous stolen space for FBC, threshold: %d\n",
> -		      fbc->compressed_fb.size, fbc->threshold);
> +	drm_dbg_kms(&dev_priv->drm,
> +		    "reserved %llu bytes of contiguous stolen space for FBC, threshold: %d\n",
> +		    fbc->compressed_fb.size, fbc->threshold);
>
> 	return 0;
>
> @@ -531,7 +533,7 @@ static int intel_fbc_alloc_cfb(struct drm_i915_private *dev_priv,
> 	i915_gem_stolen_remove_node(dev_priv, &fbc->compressed_fb);
> err_llb:
> 	if (drm_mm_initialized(&dev_priv->mm.stolen))
> -		pr_info_once("drm: not enough stolen space for compressed buffer (need %d more bytes), disabling. Hint: you may be able to increase stolen memory size in the BIOS to avoid this.\n", size);
> +		drm_info_once(&dev_priv->drm, "not enough stolen space for compressed buffer (need %d more bytes), disabling. Hint: you may be able to increase stolen memory size in the BIOS to avoid this.\n", size);
> 	return -ENOSPC;
> }
>
> @@ -945,7 +947,8 @@ static void __intel_fbc_disable(struct drm_i915_private *dev_priv)
> 	drm_WARN_ON(&dev_priv->drm, !fbc->crtc);
> 	drm_WARN_ON(&dev_priv->drm, fbc->active);
>
> -	DRM_DEBUG_KMS("Disabling FBC on pipe %c\n", pipe_name(crtc->pipe));
> +	drm_dbg_kms(&dev_priv->drm, "Disabling FBC on pipe %c\n",
> +		    pipe_name(crtc->pipe));
>
> 	__intel_fbc_cleanup_cfb(dev_priv);
>
> @@ -1173,7 +1176,8 @@ void intel_fbc_enable(struct intel_atomic_state *state,
> 	else
> 		cache->gen9_wa_cfb_stride = 0;
>
> -	DRM_DEBUG_KMS("Enabling FBC on pipe %c\n", pipe_name(crtc->pipe));
> +	drm_dbg_kms(&dev_priv->drm, "Enabling FBC on pipe %c\n",
> +		    pipe_name(crtc->pipe));
> 	fbc->no_fbc_reason = "FBC enabled but not active yet\n";
>
> 	fbc->crtc = crtc;
> @@ -1235,7 +1239,7 @@ static void intel_fbc_underrun_work_fn(struct work_struct *work)
> 	if (fbc->underrun_detected || !fbc->crtc)
> 		goto out;
>
> -	DRM_DEBUG_KMS("Disabling FBC due to FIFO underrun.\n");
> +	drm_dbg_kms(&dev_priv->drm, "Disabling FBC due to FIFO underrun.\n");
> 	fbc->underrun_detected = true;
>
> 	intel_fbc_deactivate(dev_priv, "FIFO underrun");
> @@ -1261,7 +1265,8 @@ int intel_fbc_reset_underrun(struct drm_i915_private *dev_priv)
> 		return ret;
>
> 	if (dev_priv->fbc.underrun_detected) {
> -		DRM_DEBUG_KMS("Re-allowing FBC after fifo underrun\n");
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Re-allowing FBC after fifo underrun\n");
> 		dev_priv->fbc.no_fbc_reason = "FIFO underrun cleared";
> 	}
>
> @@ -1332,7 +1337,8 @@ static bool need_fbc_vtd_wa(struct drm_i915_private *dev_priv)
> 	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
> 	if (intel_vtd_active() &&
> 	    (IS_SKYLAKE(dev_priv) || IS_BROXTON(dev_priv))) {
> -		DRM_INFO("Disabling framebuffer compression (FBC) to prevent screen flicker with VT-d enabled\n");
> +		drm_info(&dev_priv->drm,
> +			 "Disabling framebuffer compression (FBC) to prevent screen flicker with VT-d enabled\n");
> 		return true;
> 	}
>
> @@ -1360,8 +1366,8 @@ void intel_fbc_init(struct drm_i915_private *dev_priv)
> 		mkwrite_device_info(dev_priv)->display.has_fbc = false;
>
> 	i915_modparams.enable_fbc = intel_sanitize_fbc_option(dev_priv);
> -	DRM_DEBUG_KMS("Sanitized enable_fbc value: %d\n",
> -		      i915_modparams.enable_fbc);
> +	drm_dbg_kms(&dev_priv->drm, "Sanitized enable_fbc value: %d\n",
> +		    i915_modparams.enable_fbc);
>
> 	if (!HAS_FBC(dev_priv)) {
> 		fbc->no_fbc_reason = "unsupported by this chipset";
> -- 
> 2.20.1
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
