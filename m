Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0B0BCD598
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 15:53:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5C7410E2A1;
	Fri, 10 Oct 2025 13:53:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CtQFnq7F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5FB610E0BA;
 Fri, 10 Oct 2025 13:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760104412; x=1791640412;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=J4g0fJpSSi08MKRkNf1NXigi5Q2BfZ+wTpdZlcIyWkM=;
 b=CtQFnq7FkMrt82JGmA91vtOlNj2+KU+56k/nUAM3rFw8qeixU4pQp3xa
 rYukTZKgcdsbl+t9X60WSL8HATRNqSlkIR144htsLc0WmaoxDv3GkOvA2
 DaJtocLthnXWRt1ABfQr9hZIDsvtZNDfmBRzWHaUGEkxw27aEPB4BttWJ
 Wa2Rpp775wC/PEyve4wW9zZW6RfnQwifa1AveifdKLcrDOYZhHMijMa/n
 OlVMoBRLJHSn7Uu2/DBLfCkku9BLdin5bWb3AX+QXn820MF0j9fNZwRFA
 OJWleKZ6/4cOSDaeGHhVcSAHbaxwds7DDT70VffLPGU5rCQRwsHeMx2P2 A==;
X-CSE-ConnectionGUID: IH0JFPPfTSy6looE+sfo2g==
X-CSE-MsgGUID: NBpwWqtzTTqZTjl4xRlbxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11578"; a="61532679"
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="61532679"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 06:53:31 -0700
X-CSE-ConnectionGUID: 2CMtW7wRR+KzdyFIDFYyyg==
X-CSE-MsgGUID: VVzW47GNTwCv3NKnWEP63w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="186115906"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.174])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 06:53:29 -0700
Date: Fri, 10 Oct 2025 16:53:26 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/3] drm/i915/display: add HAS_AUX_CCS() feature check
Message-ID: <aOkP1mRjU-Ckfr6L@intel.com>
References: <cover.1760094361.git.jani.nikula@intel.com>
 <f3839c6a87796d087b944720248d39462521d20b.1760094361.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f3839c6a87796d087b944720248d39462521d20b.1760094361.git.jani.nikula@intel.com>
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

On Fri, Oct 10, 2025 at 02:07:53PM +0300, Jani Nikula wrote:
> We should try to get rid of checks that depend on struct
> drm_i915_private (or struct xe_device) in display code. HAS_FLAT_CCS()
> is one of them. In the interest of simplicity, add a reversed
> HAS_AUX_CCS() feature check macro, as that's we mostly use it for in
> display.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> ---
> 
> Is "display < 13 || mtl" good enough?
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>  drivers/gpu/drm/i915/display/intel_fb.c             | 4 +---
>  drivers/gpu/drm/i915/display/skl_universal_plane.c  | 4 ++--
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h   | 2 --
>  4 files changed, 4 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 9960ac13a6dd..3ceecfe3b1b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -144,6 +144,7 @@ struct intel_display_platforms {
>  
>  #define HAS_128B_Y_TILING(__display)	(!(__display)->platform.i915g && !(__display)->platform.i915gm)
>  #define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
> +#define HAS_AUX_CCS(__display)		(DISPLAY_VER(__display) < 13 || (__display)->platform.meteorlake)

That is missing ADL.

I think we'd need
 IS_DISPLAY_VER(9, 12) || adl || mtl
or
 IS_DISPLAY_VER(9, 14) && !dg2 && !bmg

Dunno which is uglier.

I was first thinking the latter could just be 
'IS_DISPLAY_VER(9, 14) && !IS_DGFX' but looks like we don't have
IS_DFGX in the display code anymore, and also that would be wrong
for DG1 (assuming we'd say IS_DGFX==true for it).

>  #define HAS_ASYNC_FLIPS(__display)	(DISPLAY_VER(__display) >= 5)
>  #define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
>  #define HAS_BIGJOINER(__display)	(DISPLAY_VER(__display) >= 11 && HAS_DSC(__display))
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 7388791dfde0..9c256a2805e4 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -547,8 +547,6 @@ static bool plane_has_modifier(struct intel_display *display,
>  			       u8 plane_caps,
>  			       const struct intel_modifier_desc *md)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> -
>  	if (!IS_DISPLAY_VER(display, md->display_ver.from, md->display_ver.until))
>  		return false;
>  
> @@ -560,7 +558,7 @@ static bool plane_has_modifier(struct intel_display *display,
>  	 * where supported.
>  	 */
>  	if (intel_fb_is_ccs_modifier(md->modifier) &&
> -	    HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
> +	    HAS_AUX_CCS(display) != !!md->ccs.packed_aux_planes)
>  		return false;
>  
>  	if (md->modifier == I915_FORMAT_MOD_4_TILED_BMG_CCS &&
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index e13fb781e7b2..0319174adf95 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1572,7 +1572,7 @@ icl_plane_update_noarm(struct intel_dsb *dsb,
>  	}
>  
>  	/* FLAT CCS doesn't need to program AUX_DIST */
> -	if (!HAS_FLAT_CCS(to_i915(display->drm)) && DISPLAY_VER(display) < 20)
> +	if (HAS_AUX_CCS(display))
>  		intel_de_write_dsb(display, dsb, PLANE_AUX_DIST(pipe, plane_id),
>  				   skl_plane_aux_dist(plane_state, color_plane));
>  
> @@ -2930,7 +2930,7 @@ skl_universal_plane_create(struct intel_display *display,
>  		caps = skl_plane_caps(display, pipe, plane_id);
>  
>  	/* FIXME: xe has problems with AUX */
> -	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(to_i915(display->drm)))
> +	if (!IS_ENABLED(I915) && HAS_AUX_CCS(display))
>  		caps &= ~(INTEL_PLANE_CAP_CCS_RC |
>  			  INTEL_PLANE_CAP_CCS_RC_CC |
>  			  INTEL_PLANE_CAP_CCS_MC);
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index be3edf20de22..7c657ea98a44 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -35,6 +35,4 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
>  
>  #define IS_MOBILE(xe) (xe && 0)
>  
> -#define HAS_FLAT_CCS(xe) (xe_device_has_flat_ccs(xe))
> -
>  #endif
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
