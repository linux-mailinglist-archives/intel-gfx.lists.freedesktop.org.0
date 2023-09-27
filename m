Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 732787B04CF
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 14:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D266710E09B;
	Wed, 27 Sep 2023 12:58:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 118B010E09B
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Sep 2023 12:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695819508; x=1727355508;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XEpPnDH2dWSJNWtBmcexTJwXoikT/ZA47pDZljABEHE=;
 b=MttpkSAIw06a+liIFfv4cNw0Nz654tmu2Ba5HZw469vZFVAV1uiIxue/
 oRTXdAE1rRBApiAFVZz/w5r6Gtz6qvszVEIyiXoIaSO0BEr4ZC27bF9WW
 QcfUgtCAGFYqC6sBXBA+b3fVUId8npb9BGEOXBPuXQP8ezsujIEmD1tuZ
 3l9jc94kwN45C8QguPjPedQqc752o7FoUUp+5e2IxPpMn+6zij3aYWMOJ
 YhtfeRV6uV6catvuHC4yvTk5VPwNblywNaThAymYtmALLSJq4oxtQ90IO
 IXe5U7mEn7jvzSD27z4HIOEpHDBmVnFvrE9fvzS3XO2V3SwhUeDFVAV6o g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="379096037"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="379096037"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 05:58:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="752566490"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="752566490"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga007.fm.intel.com with SMTP; 27 Sep 2023 05:58:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Sep 2023 15:58:21 +0300
Date: Wed, 27 Sep 2023 15:58:21 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
Message-ID: <ZRQm7Vq9Lz8XuIv9@intel.com>
References: <20230926091157.635438-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230926091157.635438-1-arun.r.murthy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove the module parameter
 'fastboot'
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 26, 2023 at 02:41:57PM +0530, Arun R Murthy wrote:
> By default fastboot is enabled on all Display 9+ platforms and disabled
> on older platforms. Its not necessary to retain this as a module
> parameter.
> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 ---
>  drivers/gpu/drm/i915/i915_params.c           | 5 -----
>  drivers/gpu/drm/i915/i915_params.h           | 1 -
>  3 files changed, 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index edbcf5968804..9d6e2d19d636 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4986,9 +4986,6 @@ pipe_config_mismatch(bool fastset, const struct intel_crtc *crtc,
>  
>  static bool fastboot_enabled(struct drm_i915_private *dev_priv)
>  {
> -	if (dev_priv->params.fastboot != -1)
> -		return dev_priv->params.fastboot;
> -
>  	/* Enable fastboot by default on Skylake and newer */
>  	if (DISPLAY_VER(dev_priv) >= 9)
>  		return true;

I'd like to see a patch to eliminate fastboot_enabled() and associated
logic entirely. Could be a separate patch I suppose.

> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
> index 0a171b57fd8f..036c4c3ed6ed 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -137,11 +137,6 @@ i915_param_named_unsafe(enable_ips, int, 0400, "Enable IPS (default: true)");
>  i915_param_named_unsafe(enable_dpt, bool, 0400,
>  	"Enable display page table (DPT) (default: true)");
>  
> -i915_param_named(fastboot, int, 0400,
> -	"Try to skip unnecessary mode sets at boot time "
> -	"(0=disabled, 1=enabled) "
> -	"Default: -1 (use per-chip default)");
> -
>  i915_param_named_unsafe(load_detect_test, bool, 0400,
>  	"Force-enable the VGA load detect code for testing (default:false). "
>  	"For developers only.");
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
> index 68abf0ad6c00..d5194b039aab 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -72,7 +72,6 @@ struct drm_printer;
>  	param(int, edp_vswing, 0, 0400) \
>  	param(unsigned int, reset, 3, 0600) \
>  	param(unsigned int, inject_probe_failure, 0, 0) \
> -	param(int, fastboot, -1, 0600) \
>  	param(int, enable_dpcd_backlight, -1, 0600) \
>  	param(char *, force_probe, CONFIG_DRM_I915_FORCE_PROBE, 0400) \
>  	param(unsigned int, request_timeout_ms, CONFIG_DRM_I915_REQUEST_TIMEOUT, CONFIG_DRM_I915_REQUEST_TIMEOUT ? 0600 : 0) \
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
