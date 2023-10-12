Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD497C6B63
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 12:46:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B1EE10E4AD;
	Thu, 12 Oct 2023 10:46:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23EF010E4AD
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 10:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697107583; x=1728643583;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=sboZPdI+hFGEsu0QbMc3JqCGLWVKU3SHjBBpeTnARU8=;
 b=fuX5JS5stYHc3vJULAE/lghUvAAnftfVbIiPCdRNsS6J+Ml9Ec3tQl+E
 fniGozXg36yr71kZ2rWwhkPeHnaLwRR2QVeIhWsqv96YKgGlKfxO4dZxO
 P7gB6LF6IXt46L7GubtwYkT5nenjMaXbL7Peotcz3qlvNx41Zm4pVVURJ
 /QnnV2GUL4jRMpVIsPJ/hM/AaGmlLuSLNz91QBVDWMMt20hz0ZM5T+5Xn
 MTl1UCZMeFkp6Gm1J+yif1T7x3krndRUhwvTPNVCXkj2uUyws6K8UKabb
 hAXWsA0tqDwb6Aw6JxjHwF/9m6psUISmebgkotvTYxabtwJCrw4dGk79Q A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="449076952"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="449076952"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 03:46:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="844951104"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="844951104"
Received: from anikafix-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.42.188])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 03:46:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
In-Reply-To: <20231012100834.1333221-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231012100834.1333221-1-arun.r.murthy@intel.com>
Date: Thu, 12 Oct 2023 13:46:18 +0300
Message-ID: <87wmvs15l1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove the modparam
 verbose_state_checks
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

On Thu, 12 Oct 2023, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> By default warn_on are enabled, hence removing this module parameter.

I'm uneasy about this change, though.

Do we really want to force people to see WARNs (and oops if
panic_on_warn=1) on state checker? On the other hand, that's the way to
get bug reports and fix the stuff...

I wonder if distros actually use the module parameter.

An alternative might be to add a debug config option.

> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.h | 2 +-
>  drivers/gpu/drm/i915/i915_params.c           | 4 ----
>  drivers/gpu/drm/i915/i915_params.h           | 1 -
>  3 files changed, 1 insertion(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 0e5dffe8f018..8e2453e010a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -552,7 +552,7 @@ bool assert_port_valid(struct drm_i915_private *i915, enum port port);
>  	struct drm_device *drm = &(__i915)->drm;			\
>  	int __ret_warn_on = !!(condition);				\
>  	if (unlikely(__ret_warn_on))					\
> -		if (!drm_WARN(drm, i915_modparams.verbose_state_checks, format)) \
> +		if (!drm_WARN(drm, true, format))			\
>  			drm_err(drm, format);				\

Everything in the whole macro is about that one condition on the verbose
state checks, and with that taken away, it all simplifies to something
along the lines of:

#define I915_STATE_WARN(__i915, condition, ...) \
	drm_WARN(&(__i915)->drm, condition, ## __VA_ARGS__)

I didn't build check that I got the va arg stuff right, but it's
something like that *if* we want to remove the condition altogether.

The comment also becomes stale and needs to be fixed.

BR,
Jani.


>  	unlikely(__ret_warn_on);					\
>  })
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
> index 036c4c3ed6ed..23453d9be175 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -162,10 +162,6 @@ i915_param_named(mmio_debug, int, 0400,
>  	"Enable the MMIO debug code for the first N failures (default: off). "
>  	"This may negatively affect performance.");
>  
> -/* Special case writable file */
> -i915_param_named(verbose_state_checks, bool, 0600,
> -	"Enable verbose logs (ie. WARN_ON()) in case of unexpected hw state conditions.");
> -
>  i915_param_named_unsafe(nuclear_pageflip, bool, 0400,
>  	"Force enable atomic functionality on platforms that don't have full support yet.");
>  
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
> index d5194b039aab..af675618ab07 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -83,7 +83,6 @@ struct drm_printer;
>  	param(bool, force_reset_modeset_test, false, 0600) \
>  	param(bool, error_capture, true, IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR) ? 0600 : 0) \
>  	param(bool, disable_display, false, 0400) \
> -	param(bool, verbose_state_checks, true, 0) \
>  	param(bool, nuclear_pageflip, false, 0400) \
>  	param(bool, enable_dp_mst, true, 0600) \
>  	param(bool, enable_gvt, false, IS_ENABLED(CONFIG_DRM_I915_GVT) ? 0400 : 0)

-- 
Jani Nikula, Intel
