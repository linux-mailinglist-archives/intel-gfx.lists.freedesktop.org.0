Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E94195F34C
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 15:52:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39DF510E0FA;
	Mon, 26 Aug 2024 13:52:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hLe/LDYs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4015810E08F;
 Mon, 26 Aug 2024 13:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724680359; x=1756216359;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=STq96Ty9uiRhXjNa6P3oW/bPIcq1cC9n/GKYXeA5lQo=;
 b=hLe/LDYsNpHKSFJFmN4RhNPyofoMFfUEbTB1uqn+d22+aDjBkeYPz7bl
 SWeNnQztT3LTayoypojSWNhAEU1guWppexys2oIr9XcYmT4RZr4t3XwEp
 zPeQixK1HCA29jXPFH97EXwQE/nLiO5qtQrRvUuzZSiCervmPbXsnIupS
 Qb2AeauNIF2U5iybfezZO4q6RWgNyszjkpemJg7FnZifskR/56bZF4O0A
 GrcMcOShhwAPZKCnC7GJsGiKL9wdrZnCxWpIPQrmKyQ9CROsVejJPLLlz
 SCcVCfJsjcoSj5u2nKfiUMTWH0OMyYXuymYv/XcXnRjEi3jcoSPeTmO48 w==;
X-CSE-ConnectionGUID: pzFNZon3R1GwWHGIvS/KZQ==
X-CSE-MsgGUID: 5wDsMLr6Ruqq7vDKGThqsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="23269814"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="23269814"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 06:52:39 -0700
X-CSE-ConnectionGUID: mqraZJHvTs27m/NFuYhGDg==
X-CSE-MsgGUID: Hd3ruqXWQz6SdaDT6xeHbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="62226752"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.157])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 06:52:38 -0700
Date: Mon, 26 Aug 2024 15:52:35 +0200
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v5 2/2] drm/i915/display: Add function for checking 64k
 physical alignment workaround
Message-ID: <20240826135235.yjh2po3dniqvawd4@zkempczy-mobl2>
References: <20240826095041.75416-1-maarten.lankhorst@linux.intel.com>
 <20240826095041.75416-3-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240826095041.75416-3-maarten.lankhorst@linux.intel.com>
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

On Mon, Aug 26, 2024 at 11:50:41AM +0200, Maarten Lankhorst wrote:
> Instead of hardcoding the modifier in xe, the alternative approach is
> setting a bit in the modifier description for 64k phys requirement.
> 
> This removes the hardcoding for the modifier in CCS.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> 
> ---
> This might make the changes more palatable, but I personally believe
> that hardcoding for a one-off check is fine. My optimism is that when
> creating a new tiling format, the previous lessons will be taken into
> account and this case will be tested.
> 
> Yeah, maybe just go for this patch too..

It's likely it is not one-time check and it will be used in the future
so I would like to avoid hardcoding and changing in two places instead
of set appropriate cap once. I asked about something like that and with
respect to Rodrigo comment according to cap name:

Reviewed-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>

--
Zbigniew

> ---
>  drivers/gpu/drm/i915/display/intel_fb.c  | 20 +++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_fb.h  |  2 ++
>  drivers/gpu/drm/xe/display/intel_fb_bo.c |  5 +++--
>  3 files changed, 24 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index d2716915d046d..5139172a8a3d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -169,7 +169,7 @@ static const struct intel_modifier_desc intel_modifiers[] = {
>  	}, {
>  		.modifier = I915_FORMAT_MOD_4_TILED_BMG_CCS,
>  		.display_ver = { 14, -1 },
> -		.plane_caps = INTEL_PLANE_CAP_TILING_4,
> +		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_NEED64K_PHYS_WA,
>  	}, {
>  		.modifier = I915_FORMAT_MOD_4_TILED_MTL_MC_CCS,
>  		.display_ver = { 14, 14 },
> @@ -420,6 +420,24 @@ bool intel_fb_is_mc_ccs_modifier(u64 modifier)
>  				      INTEL_PLANE_CAP_CCS_MC);
>  }
>  
> +/**
> + * intel_fb_needs_64k_phys_wa: Check if modifier requires 64k phys placement workaround.
> + * @modifier: Modifier to check
> + *
> + * Returns:
> + * Returns %true if @modifier requires 64k physical page alignment.
> + */
> +bool intel_fb_needs_64k_phys_wa(u64 modifier)
> +{
> +	const struct intel_modifier_desc *md = lookup_modifier_or_null(modifier);
> +
> +	if (!md)
> +		return false;
> +
> +	return plane_caps_contain_any(md->plane_caps,
> +				      INTEL_PLANE_CAP_NEED64K_PHYS_WA);
> +}
> +
>  static bool check_modifier_display_ver_range(const struct intel_modifier_desc *md,
>  					     u8 display_ver_from, u8 display_ver_until)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
> index 6dee0c8b7f226..8a84b9abf9b91 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -28,11 +28,13 @@ struct intel_plane_state;
>  #define INTEL_PLANE_CAP_TILING_Y	BIT(4)
>  #define INTEL_PLANE_CAP_TILING_Yf	BIT(5)
>  #define INTEL_PLANE_CAP_TILING_4	BIT(6)
> +#define INTEL_PLANE_CAP_NEED64K_PHYS_WA	BIT(7)
>  
>  bool intel_fb_is_tiled_modifier(u64 modifier);
>  bool intel_fb_is_ccs_modifier(u64 modifier);
>  bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
>  bool intel_fb_is_mc_ccs_modifier(u64 modifier);
> +bool intel_fb_needs_64k_phys_wa(u64 modifier);
>  
>  bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane);
>  int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
> diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c b/drivers/gpu/drm/xe/display/intel_fb_bo.c
> index 6775c2557b9df..64bcd10d3f538 100644
> --- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
> +++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
> @@ -7,6 +7,7 @@
>  #include <drm/ttm/ttm_bo.h>
>  
>  #include "intel_display_types.h"
> +#include "intel_fb.h"
>  #include "intel_fb_bo.h"
>  #include "xe_bo.h"
>  
> @@ -28,8 +29,8 @@ int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
>  	struct xe_device *xe = to_xe_device(bo->ttm.base.dev);
>  	int ret;
>  
> -	/* Only this specific format is affected, and it's only available on VRAM */
> -	if (XE_IOCTL_DBG(xe, mode_cmd->modifier[0] == I915_FORMAT_MOD_4_TILED_BMG_CCS &&
> +	/* Some modifiers require aligned 64k phys pages. */
> +	if (XE_IOCTL_DBG(xe, intel_fb_needs_64k_phys_wa(mode_cmd->modifier[0]) &&
>  			     !(bo->flags & XE_BO_FLAG_NEEDS_64K)))
>  		return -EINVAL;
>  
> -- 
> 2.45.2
> 
