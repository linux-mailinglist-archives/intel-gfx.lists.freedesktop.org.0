Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE1BBD3A68
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 16:47:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54FAC10E49D;
	Mon, 13 Oct 2025 14:47:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vj2TpRbM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E07C910E498;
 Mon, 13 Oct 2025 14:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760366843; x=1791902843;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=yRcghqVtutGxcykD6uPyYnjKWxNIgKf0saPRPqV16JM=;
 b=Vj2TpRbMI+OjnaXXf8EgEZwGuiXTknZngnvO3pjOPtWbxnKDzPSXDdSw
 cqu2hGqQjutsgGwqLi19f18PXS23x0ieuNQLCrucZaHBllaDcYQDimm3Q
 2kx+FUnfVm/wP66P+Svdo4zNHQ7A2t4J+LUxDus12MUYLmbZzsgZ7EuoY
 u9WvJib6qvDN/cOtJGBmyA2RLtmS2ioIVESbUJdS5aPN8VlzJRywr32BW
 kfNe2LVz3+QvySD/Hy0UWiasy5fr7Ivn6nbpEeFf3LIne1Ha7tDquoSQb
 aNB+GgC1ig6FgNvFvZuekR1Y7itgwB/dvX9Yws6h+18Ff41vxauvWcs4S g==;
X-CSE-ConnectionGUID: gnpKK5l9SQ6nfVQfCJKbdA==
X-CSE-MsgGUID: ACxJ6KPwT3S6MotClpYomQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="62544783"
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="62544783"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 07:47:23 -0700
X-CSE-ConnectionGUID: 610V7rwfTAW++i+Vln7QWA==
X-CSE-MsgGUID: 0GSPK3GBRaybq8NbkyTcYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="218732170"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.253])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 07:47:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/3] drm/i915/display: add HAS_AUX_CCS() feature check
In-Reply-To: <aOkP1mRjU-Ckfr6L@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1760094361.git.jani.nikula@intel.com>
 <f3839c6a87796d087b944720248d39462521d20b.1760094361.git.jani.nikula@intel.com>
 <aOkP1mRjU-Ckfr6L@intel.com>
Date: Mon, 13 Oct 2025 17:47:17 +0300
Message-ID: <b4f5984bfd217d43c33ffda348dd47f863de0c67@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Fri, 10 Oct 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Oct 10, 2025 at 02:07:53PM +0300, Jani Nikula wrote:
>> We should try to get rid of checks that depend on struct
>> drm_i915_private (or struct xe_device) in display code. HAS_FLAT_CCS()
>> is one of them. In the interest of simplicity, add a reversed
>> HAS_AUX_CCS() feature check macro, as that's we mostly use it for in
>> display.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>=20
>> ---
>>=20
>> Is "display < 13 || mtl" good enough?
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>>  drivers/gpu/drm/i915/display/intel_fb.c             | 4 +---
>>  drivers/gpu/drm/i915/display/skl_universal_plane.c  | 4 ++--
>>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h   | 2 --
>>  4 files changed, 4 insertions(+), 7 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drive=
rs/gpu/drm/i915/display/intel_display_device.h
>> index 9960ac13a6dd..3ceecfe3b1b7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -144,6 +144,7 @@ struct intel_display_platforms {
>>=20=20
>>  #define HAS_128B_Y_TILING(__display)	(!(__display)->platform.i915g && !=
(__display)->platform.i915gm)
>>  #define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER=
(__display) >=3D 14)
>> +#define HAS_AUX_CCS(__display)		(DISPLAY_VER(__display) < 13 || (__disp=
lay)->platform.meteorlake)
>
> That is missing ADL.

D'oh.

> I think we'd need
>  IS_DISPLAY_VER(9, 12) || adl || mtl
> or
>  IS_DISPLAY_VER(9, 14) && !dg2 && !bmg
>
> Dunno which is uglier.
>
> I was first thinking the latter could just be=20
> 'IS_DISPLAY_VER(9, 14) && !IS_DGFX' but looks like we don't have
> IS_DFGX in the display code anymore, and also that would be wrong
> for DG1 (assuming we'd say IS_DGFX=3D=3Dtrue for it).

We now have the "platform groups" in display->platform, including
display->platform.dgfx. But I opted to go for including adl-p.

BR,
Jani.

>
>>  #define HAS_ASYNC_FLIPS(__display)	(DISPLAY_VER(__display) >=3D 5)
>>  #define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >=3D 13)
>>  #define HAS_BIGJOINER(__display)	(DISPLAY_VER(__display) >=3D 11 && HAS=
_DSC(__display))
>> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i=
915/display/intel_fb.c
>> index 7388791dfde0..9c256a2805e4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
>> @@ -547,8 +547,6 @@ static bool plane_has_modifier(struct intel_display =
*display,
>>  			       u8 plane_caps,
>>  			       const struct intel_modifier_desc *md)
>>  {
>> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>> -
>>  	if (!IS_DISPLAY_VER(display, md->display_ver.from, md->display_ver.unt=
il))
>>  		return false;
>>=20=20
>> @@ -560,7 +558,7 @@ static bool plane_has_modifier(struct intel_display =
*display,
>>  	 * where supported.
>>  	 */
>>  	if (intel_fb_is_ccs_modifier(md->modifier) &&
>> -	    HAS_FLAT_CCS(i915) !=3D !md->ccs.packed_aux_planes)
>> +	    HAS_AUX_CCS(display) !=3D !!md->ccs.packed_aux_planes)
>>  		return false;
>>=20=20
>>  	if (md->modifier =3D=3D I915_FORMAT_MOD_4_TILED_BMG_CCS &&
>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/driver=
s/gpu/drm/i915/display/skl_universal_plane.c
>> index e13fb781e7b2..0319174adf95 100644
>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> @@ -1572,7 +1572,7 @@ icl_plane_update_noarm(struct intel_dsb *dsb,
>>  	}
>>=20=20
>>  	/* FLAT CCS doesn't need to program AUX_DIST */
>> -	if (!HAS_FLAT_CCS(to_i915(display->drm)) && DISPLAY_VER(display) < 20)
>> +	if (HAS_AUX_CCS(display))
>>  		intel_de_write_dsb(display, dsb, PLANE_AUX_DIST(pipe, plane_id),
>>  				   skl_plane_aux_dist(plane_state, color_plane));
>>=20=20
>> @@ -2930,7 +2930,7 @@ skl_universal_plane_create(struct intel_display *d=
isplay,
>>  		caps =3D skl_plane_caps(display, pipe, plane_id);
>>=20=20
>>  	/* FIXME: xe has problems with AUX */
>> -	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(to_i915(display->drm)))
>> +	if (!IS_ENABLED(I915) && HAS_AUX_CCS(display))
>>  		caps &=3D ~(INTEL_PLANE_CAP_CCS_RC |
>>  			  INTEL_PLANE_CAP_CCS_RC_CC |
>>  			  INTEL_PLANE_CAP_CCS_MC);
>> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers=
/gpu/drm/xe/compat-i915-headers/i915_drv.h
>> index be3edf20de22..7c657ea98a44 100644
>> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>> @@ -35,6 +35,4 @@ static inline struct drm_i915_private *to_i915(const s=
truct drm_device *dev)
>>=20=20
>>  #define IS_MOBILE(xe) (xe && 0)
>>=20=20
>> -#define HAS_FLAT_CCS(xe) (xe_device_has_flat_ccs(xe))
>> -
>>  #endif
>> --=20
>> 2.47.3

--=20
Jani Nikula, Intel
