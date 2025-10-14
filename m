Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE61BD8907
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Oct 2025 11:50:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2408D10E5A0;
	Tue, 14 Oct 2025 09:50:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KI89Stdt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2C4C10E588;
 Tue, 14 Oct 2025 09:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760435431; x=1791971431;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Gpcw/z5/q6G15/zLItgu5KSA/jR6AFrflQC3Q2vd+5Y=;
 b=KI89StdtYDFAxQUwUq00c13ONoBrpWMK3Xm0nS5Rv1KKpNEDttIFT/Dq
 8iyH5hTmPzxx66oyPxBLZFkkLk22I8mX57V13uczr200fO8WRSpoEP6JG
 YOaKdH5P7ZNftStdE4PhjCRq+WbYAd8KTFNzmNt7nczihOFdF+hLbE65Q
 QMK0nLSLJKj4mJyODDZ91FOu3N8fRiHG/pTiqRaCPhuHVLMFGurujfv6Q
 Bpq5Kg8bMiB2n1tKEXcECborGFXbZwqP9zOC25mwI8FDLXisoovYZ2ZmE
 cWjIGe72RIEc2GAPNaHgGsy5uS5t9uPcw6xC63v0upt1j0fPEV69wajge w==;
X-CSE-ConnectionGUID: yZgLxbuJSeCyvAZ1JuMp6Q==
X-CSE-MsgGUID: 3YFFHW3qS2e0xF66V3BF7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="74040807"
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="74040807"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 02:50:30 -0700
X-CSE-ConnectionGUID: XHE6Q/NESMeM6WcOuuCSaw==
X-CSE-MsgGUID: c4qpi6T8Sv248asKjd74ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="182629483"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.49])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 02:50:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2] drm/i915/display: add HAS_AUX_CCS() feature check
In-Reply-To: <aO01GQI4sWTzGanS@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <f3839c6a87796d087b944720248d39462521d20b.1760094361.git.jani.nikula@intel.com>
 <20251013144552.1710851-1-jani.nikula@intel.com>
 <aO01GQI4sWTzGanS@intel.com>
Date: Tue, 14 Oct 2025 12:50:21 +0300
Message-ID: <64342d2c77aa528c32281eed1a3c8ce1c7d8412b@intel.com>
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

On Mon, 13 Oct 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Oct 13, 2025 at 05:45:52PM +0300, Jani Nikula wrote:
>> We should try to get rid of checks that depend on struct
>> drm_i915_private (or struct xe_device) in display code. HAS_FLAT_CCS()
>> is one of them. In the interest of simplicity, add a reversed
>> HAS_AUX_CCS() feature check macro, as that's we mostly use it for in
>> display.
>>=20
>> v2: include adl-p (Ville)
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>>  drivers/gpu/drm/i915/display/intel_fb.c             | 4 +---
>>  drivers/gpu/drm/i915/display/skl_universal_plane.c  | 4 ++--
>>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h   | 2 --
>>  4 files changed, 4 insertions(+), 7 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drive=
rs/gpu/drm/i915/display/intel_display_device.h
>> index 9960ac13a6dd..2d856c5fcbed 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -144,6 +144,7 @@ struct intel_display_platforms {
>>=20=20
>>  #define HAS_128B_Y_TILING(__display)	(!(__display)->platform.i915g && !=
(__display)->platform.i915gm)
>>  #define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER=
(__display) >=3D 14)
>> +#define HAS_AUX_CCS(__display)		(IS_DISPLAY_VER(__display, 9, 12) || (_=
_display)->platform.alderlake_p || (__display)->platform.meteorlake)
>
> Looks about right.
>
>>  #define HAS_ASYNC_FLIPS(__display)	(DISPLAY_VER(__display) >=3D 5)
>>  #define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >=3D 13)
>
> Should it go here to keep these sorted?

Dang it. Fixed while applying. There's nothing to see here, please move
along.

> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks for the reviews, pushed the lot to din.

>
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
