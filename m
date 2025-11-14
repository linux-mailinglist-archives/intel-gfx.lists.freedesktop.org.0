Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8173EC5D886
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 15:20:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E417C10EA87;
	Fri, 14 Nov 2025 14:20:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iuTYp1ap";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89A1110EA84;
 Fri, 14 Nov 2025 14:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763130010; x=1794666010;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wSYH7kRfrroUfWTXKPEDxv7jlqGUO1RY/TBSTzp6Xi0=;
 b=iuTYp1apIVzNkcDG+FCJBTkuUn+cm/t9MV2hy7e8mDGwwma5qicG++A/
 WZRrkPSCILEKjXkgQamesoOsxEjjGXhKJu35eaepVzV3oaH+XEU8FT79O
 6gR9QJpJyDmqt1AX1CrCj+XbxKv6CobTs28H+9X21aWfI+Hq5KgNJvHS1
 AdfJpfNW6YcQaPWhIigKXktilb539eL94m9U/QPyjBhMfobATLGaM7fHi
 IDyhukcXq/XmHpapXECfH2rwumFdjBUZ7dlcBcZaQLV/BAQzsI3G2aJGQ
 toVYg4hiXzk/dBpcJV4/xsGld3gmMTPtTWpL3jWG2Uol20XX5w6NZBwt/ Q==;
X-CSE-ConnectionGUID: 45tVy1i4Rv+QKpZejpyhwQ==
X-CSE-MsgGUID: WDc1IMR7TjOCHAUax+w3rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="52790518"
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="52790518"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 06:20:10 -0800
X-CSE-ConnectionGUID: eOW65IImTE6Y3/yNmD3AdQ==
X-CSE-MsgGUID: IOWK0teKSbKsFbDvyz72gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="189620702"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.70])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 06:20:08 -0800
Date: Fri, 14 Nov 2025 16:20:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 10/10] drm/xe/rps: build RPS as part of xe
Message-ID: <aRc6ljcNlHr0vRsK@intel.com>
References: <cover.1763115899.git.jani.nikula@intel.com>
 <c4f2a646f5fd41c68b6c536c222786f5ab7020ac.1763115899.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c4f2a646f5fd41c68b6c536c222786f5ab7020ac.1763115899.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Fri, Nov 14, 2025 at 12:26:49PM +0200, Jani Nikula wrote:
> Reduce the conditional compilation in i915 by building
> intel_display_rps.c as part of the xe module. This doesn't actually
> enable RPS on xe, because there's no parent interface implementation on
> xe side, but it's a step in the right direction.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  .../gpu/drm/i915/display/intel_display_rps.h  | 21 -------------------
>  drivers/gpu/drm/xe/Makefile                   |  1 +
>  2 files changed, 1 insertion(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.h b/drivers/gpu/drm/i915/display/intel_display_rps.h
> index 183d154f2c7c..96b1fd00ead4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_rps.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_rps.h
> @@ -13,7 +13,6 @@ struct drm_crtc;
>  struct intel_atomic_state;
>  struct intel_display;
>  
> -#ifdef I915
>  void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
>  					  struct dma_fence *fence);
>  void intel_display_rps_mark_interactive(struct intel_display *display,
> @@ -22,25 +21,5 @@ void intel_display_rps_mark_interactive(struct intel_display *display,
>  void ilk_display_rps_enable(struct intel_display *display);
>  void ilk_display_rps_disable(struct intel_display *display);
>  void ilk_display_rps_irq_handler(struct intel_display *display);
> -#else
> -static inline void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
> -							struct dma_fence *fence)
> -{
> -}
> -static inline void intel_display_rps_mark_interactive(struct intel_display *display,
> -						      struct intel_atomic_state *state,
> -						      bool interactive)
> -{
> -}
> -static inline void ilk_display_rps_enable(struct intel_display *display)
> -{
> -}
> -static inline void ilk_display_rps_disable(struct intel_display *display)
> -{
> -}
> -static inline void ilk_display_rps_irq_handler(struct intel_display *display)
> -{
> -}
> -#endif
>  
>  #endif /* __INTEL_DISPLAY_RPS_H__ */
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index c2d2303a8198..1a3aa041820d 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -259,6 +259,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>  	i915-display/intel_display_power_map.o \
>  	i915-display/intel_display_power_well.o \
>  	i915-display/intel_display_rpm.o \
> +	i915-display/intel_display_rps.o \
>  	i915-display/intel_display_trace.o \
>  	i915-display/intel_display_utils.o \
>  	i915-display/intel_display_wa.o \
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
