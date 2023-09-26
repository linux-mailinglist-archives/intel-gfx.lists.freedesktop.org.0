Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCB57AE974
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 11:40:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BCEB10E389;
	Tue, 26 Sep 2023 09:40:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BB3C10E389
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 09:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695721209; x=1727257209;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=UvcXP24iJHJBbZsBSthVF6ZS9TDPH/v3FQEDWg2yOOA=;
 b=Dy6js6G6EACiQdralFvdFURnp7ytHU4qx3dAhPEtw1kBFMR6K6wceca0
 BLpX/JxXpsf76col/HkWqFBFLjoeGrWOzO2m08DkHN+09f1toGNchHJg0
 sRKnxVpDbBRbA102YBiCfJDzqGNXOzkyjnPA9yUIE3O6A+wIrrR81VrV+
 GuMWm6bM0k2nkT5+lCMJzGHvmrjzS0Y5At6O9oRO/zpxsKCRHOskIxFl5
 +pkQKqqWej8VJgEvoKoDQlAAWqyX0R6/bpsYyCj432jxmsHQ6SylEmi/V
 batW73blIGKaX53Q41vpMkYYhA+4IaxmynNC3KzHEBz/rqcpzlWoyifpP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="361773420"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="361773420"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 02:40:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="995768609"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="995768609"
Received: from wagnert-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.202])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 02:40:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230926091157.635438-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230926091157.635438-1-arun.r.murthy@intel.com>
Date: Tue, 26 Sep 2023 12:40:05 +0300
Message-ID: <87pm25l1ca.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 26 Sep 2023, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> By default fastboot is enabled on all Display 9+ platforms and disabled
> on older platforms. Its not necessary to retain this as a module
> parameter.

Cc: Ville

Acked-by: Jani Nikula <jani.nikula@intel.com>

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

-- 
Jani Nikula, Intel
