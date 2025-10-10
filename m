Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADA1BCD60B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 16:01:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 164D510EC0B;
	Fri, 10 Oct 2025 14:01:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="amfTeXfA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74EFC10E0BA;
 Fri, 10 Oct 2025 14:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760104866; x=1791640866;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FCNZ4OZw9pCj0KMOljeb6PI4QXveLlJcb42lbqFqwwg=;
 b=amfTeXfATjBTru2j0iPi7wJpHN479qmBkoidapI5JMe+NMSy/hYleLB+
 nqiNUqXU+gNqZlRflo/LfzpQgb+5TghyxNkuo6c8nkL65bYNGeBDPc/+0
 bUqnQMmUqigrT6VY0FB9FQd2WjzmqiCpT7xEsNWbHb2hG5zP3rFgw/2Jx
 hexsmglz7K8W6Y+iYnJQ5kvPjY0hA9fmVMHD6LlCrLYi+IzAcyXXaaQ1L
 OAumFCAqhiXDXWmp8MPs5m8PDHUbhjJpZjUFaeJ5zXp9IVsOeA+Bqcnth
 W7uFcP/lWJaPWeB4dZ/JqpKCCd3yh0uwffFnzgear/+2WwDDVW7R7bIrB g==;
X-CSE-ConnectionGUID: svgnsUImQ8CyQGxLno49XA==
X-CSE-MsgGUID: C8kPuSPnQCu6czGWCw16lQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62242791"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62242791"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 07:01:05 -0700
X-CSE-ConnectionGUID: Y2ml8esSTL6z2BJbVJ1YuQ==
X-CSE-MsgGUID: FdbofpaiTVS45CE+CdpW7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="180236435"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.174])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 07:01:03 -0700
Date: Fri, 10 Oct 2025 17:01:00 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/3] drm/i915/display: duplicate 128-byte Y-tiling
 feature check
Message-ID: <aOkRnFsaCeaGW_xq@intel.com>
References: <cover.1760094361.git.jani.nikula@intel.com>
 <2a7877f8f1d11114c1a17869bd24d83e13b1fac2.1760094361.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2a7877f8f1d11114c1a17869bd24d83e13b1fac2.1760094361.git.jani.nikula@intel.com>
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

On Fri, Oct 10, 2025 at 02:07:52PM +0300, Jani Nikula wrote:
> We should try to get rid of checks that depend on struct
> drm_i915_private (or struct xe_device) in display
> code. HAS_128_BYTE_Y_TILING() is one of them. In the interest of
> simplicity, just duplicate the check as HAS_128B_Y_TILING() in display.
> 
> v2: gen2 also has 128-byte Y-tile
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>  drivers/gpu/drm/i915/display/intel_fb.c             | 3 +--
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h   | 1 -
>  3 files changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 0e062753cf9b..9960ac13a6dd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -142,6 +142,7 @@ struct intel_display_platforms {
>  	func(overlay_needs_physical); \
>  	func(supports_tv);
>  
> +#define HAS_128B_Y_TILING(__display)	(!(__display)->platform.i915g && !(__display)->platform.i915gm)
>  #define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
>  #define HAS_ASYNC_FLIPS(__display)	(DISPLAY_VER(__display) >= 5)
>  #define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 3bfd211d64ba..7388791dfde0 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -777,7 +777,6 @@ unsigned int
>  intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
>  {
>  	struct intel_display *display = to_intel_display(fb->dev);
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	unsigned int cpp = fb->format->cpp[color_plane];
>  
>  	switch (fb->modifier) {
> @@ -814,7 +813,7 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
>  			return 64;
>  		fallthrough;
>  	case I915_FORMAT_MOD_Y_TILED:
> -		if (HAS_128_BYTE_Y_TILING(i915))
> +		if (HAS_128B_Y_TILING(display))
>  			return 128;
>  		else
>  			return 512;

I suppose we could just assume 128 byte Y-tile in the display
code since Y-tiled scanout wasn't even a thing before skl.
Ie. the else branch here should be dead code in reality.

But this isn't incorrect, so
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index b8269391bc69..be3edf20de22 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -36,6 +36,5 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
>  #define IS_MOBILE(xe) (xe && 0)
>  
>  #define HAS_FLAT_CCS(xe) (xe_device_has_flat_ccs(xe))
> -#define HAS_128_BYTE_Y_TILING(xe) (xe || 1)
>  
>  #endif
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
