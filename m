Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D935A0BDB2
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 17:38:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C2F910E724;
	Mon, 13 Jan 2025 16:38:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bfYJX9cA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F23E310E724;
 Mon, 13 Jan 2025 16:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736786320; x=1768322320;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=94c1Jjv5dQnxSXhDAOblUD0FmZUlpAnozUXgFxOxlck=;
 b=bfYJX9cAgSli9tCnQnelhU+oCpU3xXOXSm615V5UIVWF6+ahSt5H6xf1
 6PUjzcWN9JSdxUHiCV22eH9MzPYiPwcLWr90J6uIRB5SW0vwsvTCE2XcD
 9u3IO4/x2Dvly3guWCZJOB/6SvqdgKdBslXcWbyBnxJYhDgrxC5WbbBUK
 oIcXHIrp5szli99x1F0Y/u0lvsNKQEnMtm50/78VLyRXoGvk06BdosB/b
 Hfw38Ka9pDdRR32jSO2Kxc6m99jnaawffEzEDryadmenpXskT/GvJN3Tt
 w3S3lYxmvLZt+ObJuKxmCHBV/thoQRe2ekIMNi597W412Ei2ZYHQ7mO3I A==;
X-CSE-ConnectionGUID: t9rdsnzZS/SQnMXieuECvA==
X-CSE-MsgGUID: /2FrncKpS8CDcE3r94ewig==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="36947934"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="36947934"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 08:38:40 -0800
X-CSE-ConnectionGUID: +Bn5i7lXRG+mp94vQFUpKQ==
X-CSE-MsgGUID: p44uCjd0QguAgaM8q8cLCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="104404023"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.145])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 08:38:38 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/xe/dp: Enable DP tunneling
In-Reply-To: <20250113154832.1004369-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250113154832.1004369-1-imre.deak@intel.com>
Date: Mon, 13 Jan 2025 18:38:34 +0200
Message-ID: <87cygqis8l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 13 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> Enable the DP tunneling functionality in the xe driver.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_tunnel.h |  5 +++--
>  drivers/gpu/drm/xe/Kconfig                     | 14 ++++++++++++++
>  drivers/gpu/drm/xe/Makefile                    |  3 +++
>  3 files changed, 20 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> index e9314cf25a193..7a91b4945eb8d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> @@ -20,7 +20,8 @@ struct intel_dp;
>  struct intel_encoder;
>  struct intel_link_bw_limits;
>  
> -#if IS_ENABLED(CONFIG_DRM_I915_DP_TUNNEL) && defined(I915)
> +#if (defined(CONFIG_DRM_I915_DP_TUNNEL) && defined(I915)) || \
> +	(defined(CONFIG_DRM_XE_DP_TUNNEL) && !defined(I915))

Please retain IS_ENABLED for checking kconfig symbols.

>  int intel_dp_tunnel_detect(struct intel_dp *intel_dp, struct drm_modeset_acquire_ctx *ctx);
>  void intel_dp_tunnel_disconnect(struct intel_dp *intel_dp);
> @@ -127,6 +128,6 @@ intel_dp_tunnel_mgr_init(struct intel_display *display)
>  
>  static inline void intel_dp_tunnel_mgr_cleanup(struct intel_display *display) {}
>  
> -#endif /* CONFIG_DRM_I915_DP_TUNNEL */
> +#endif /* CONFIG_DRM_I915_DP_TUNNEL || CONFIG_DRM_XE_DP_TUNNEL */
>  
>  #endif /* __INTEL_DP_TUNNEL_H__ */
> diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig
> index b51a2bde73e29..50cf80df51900 100644
> --- a/drivers/gpu/drm/xe/Kconfig
> +++ b/drivers/gpu/drm/xe/Kconfig
> @@ -59,6 +59,20 @@ config DRM_XE_DISPLAY
>  	help
>  	  Disable this option only if you want to compile out display support.
>  
> +config DRM_XE_DP_TUNNEL
> +	bool "Enable DP tunnel support"
> +	depends on DRM_XE
> +	depends on USB4
> +	select DRM_DISPLAY_DP_TUNNEL
> +	default y
> +	help
> +	  Choose this option to detect DP tunnels and enable the Bandwidth
> +	  Allocation mode for such tunnels. This allows using the maximum
> +	  resolution allowed by the link BW on all displays sharing the
> +	  link BW, for instance on a Thunderbolt link.
> +
> +	  If in doubt say "Y".
> +

I'm sort of wondering why we have this (and the i915 one) as
user-selectable config options at all. Is it ever reasonable for the
user to disable this if USB4 is enabled?

BR,
Jani.


>  config DRM_XE_FORCE_PROBE
>  	string "Force probe xe for selected Intel hardware IDs"
>  	depends on DRM_XE
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 5c97ad6ed7385..81f63258a7e19 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -301,6 +301,9 @@ ifeq ($(CONFIG_DEBUG_FS),y)
>  		i915-display/intel_pipe_crc.o
>  endif
>  
> +xe-$(CONFIG_DRM_XE_DP_TUNNEL) += \
> +	i915-display/intel_dp_tunnel.o
> +
>  obj-$(CONFIG_DRM_XE) += xe.o
>  obj-$(CONFIG_DRM_XE_KUNIT_TEST) += tests/

-- 
Jani Nikula, Intel
