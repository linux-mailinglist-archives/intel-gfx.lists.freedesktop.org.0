Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FCA839715
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 18:58:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3CA710E1D6;
	Tue, 23 Jan 2024 17:57:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0558E10E1D6
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 17:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706032663; x=1737568663;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=H6C8aP89PsWHsLxwbldd87Swq/QeIhZL8IHEW8syOlo=;
 b=NRpGnGH1xTGHk5vQ/wh+tEYzyteDYAXgtGD1Wbc4Yr9gh3g2aQhJfrpo
 VwnmfqxC1XoDVgGogjfJB/Fg+ExkVhKcKbllOaK480xVTFrOnsNJ1u6RA
 tuphAJ2dmq0sEp+/Mj4ZzSIkjg2CDuXRfJqOLczIW8Kyly7+urY15/eea
 kTOUCtarW3N5NoPowf9fQrF6sSA5Uf+bsNMG4FqAHO2fptGp9ofMYBGiU
 bIxvaTOTCA05H7+qjGStv86G3nwAHrd7bRUBuk0j72f+kHSq1wPZB7HIW
 koDR7OETD3H73lH0ll0k4YDFXFw2iw36OAOUFTMyI3rPY5MzjU2/RbANQ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="398758649"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="398758649"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 09:57:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; 
   d="scan'208";a="1755873"
Received: from pzsolt-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.40.183])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 09:57:39 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: juhapekka.heikkila@gmail.com, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/xe/display: Disable aux ccs framebuffers
In-Reply-To: <dff353f8-90c8-449c-80e6-edb272176035@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240102182422.3823394-1-juhapekka.heikkila@gmail.com>
 <87bk9cnx3r.fsf@intel.com>
 <dff353f8-90c8-449c-80e6-edb272176035@gmail.com>
Date: Tue, 23 Jan 2024 19:57:36 +0200
Message-ID: <87fryolypb.fsf@intel.com>
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 23 Jan 2024, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wro=
te:
> On 23.1.2024 12.49, Jani Nikula wrote:
>> On Tue, 02 Jan 2024, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> =
wrote:
>>> Aux ccs framebuffers don't work on Xe driver hence disable them
>>> from plane capabilities until they are fixed. Flat ccs framebuffers
>>> work and they are left enabled. Here is separated plane capabilities
>>> check on i915 so it can behave differencly depending on the driver.
>>=20
>> I still think there's too much going on in this one patch. It refactors
>> i915 and modifies xe behaviour in one go.
>>=20
>> It adds intel_plane_caps.[ch] in i915, but extracts them from skl+
>> specific functions and files. xe uses the .h but adds the code in
>> existing xe_plane_initial.c. There's also intel_plane_initial.c i915
>> side, but that's not where the functions get moved in i915 side.
>
> I was never against splitting it, I can do that.
>
>>=20
>> I'm trying to look at the actual functional change, and I'm wondering if
>> it isn't just this:
>>=20
>> index 511dc1544854..8bba6c2e5098 100644
>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> @@ -2290,6 +2290,9 @@ static u8 skl_get_plane_caps(struct drm_i915_priva=
te *i915,
>>   	if (HAS_4TILE(i915))
>>   		caps |=3D INTEL_PLANE_CAP_TILING_4;
>>=20=20=20
>> +	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(i915))
>> +		return caps;
>> +
>>   	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
>>   		caps |=3D INTEL_PLANE_CAP_CCS_RC;
>>   		if (DISPLAY_VER(i915) >=3D 12)
>>=20
>> I'm not saying that's exactly pretty, either, but IIUC this is supposed
>> to be a temporary measure ("until they are fixed"), I'd rather take this
>> small thing instead.
>>=20
>
> Would that work when both i915 and Xe are being built?

IS_ENABLED(I915) will be false for xe build, true for i915 build. And
HAS_FLAT_CCS() is defined for both, in different ways.

It's essentially the same as #ifdef but much less of an eyesore.

BR,
Jani.




>
>>=20
>>=20
>>=20
>>>
>>> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/933
>>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>>> ---
>>>   drivers/gpu/drm/i915/Makefile                 |  1 +
>>>   .../gpu/drm/i915/display/intel_plane_caps.c   | 68 +++++++++++++++++++
>>>   .../gpu/drm/i915/display/intel_plane_caps.h   | 14 ++++
>>>   .../drm/i915/display/skl_universal_plane.c    | 61 +----------------
>>>   drivers/gpu/drm/xe/display/xe_plane_initial.c | 23 +++++++
>>>   5 files changed, 107 insertions(+), 60 deletions(-)
>>>   create mode 100644 drivers/gpu/drm/i915/display/intel_plane_caps.c
>>>   create mode 100644 drivers/gpu/drm/i915/display/intel_plane_caps.h
>>>
>>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makef=
ile
>>> index e777686190ca..c5e3c2dd0a01 100644
>>> --- a/drivers/gpu/drm/i915/Makefile
>>> +++ b/drivers/gpu/drm/i915/Makefile
>>> @@ -302,6 +302,7 @@ i915-y +=3D \
>>>   	display/intel_overlay.o \
>>>   	display/intel_pch_display.o \
>>>   	display/intel_pch_refclk.o \
>>> +	display/intel_plane_caps.o \
>>>   	display/intel_plane_initial.o \
>>>   	display/intel_pmdemand.o \
>>>   	display/intel_psr.o \
>>> diff --git a/drivers/gpu/drm/i915/display/intel_plane_caps.c b/drivers/=
gpu/drm/i915/display/intel_plane_caps.c
>>> new file mode 100644
>>> index 000000000000..6206ae11f296
>>> --- /dev/null
>>> +++ b/drivers/gpu/drm/i915/display/intel_plane_caps.c
>>> @@ -0,0 +1,68 @@
>>> +// SPDX-License-Identifier: MIT
>>> +/*
>>> + * Copyright =C2=A9 2024 Intel Corporation
>>> + */
>>> +
>>> +#include "i915_drv.h"
>>> +#include "intel_fb.h"
>>> +#include "intel_plane_caps.h"
>>> +
>>> +static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
>>> +				 enum pipe pipe, enum plane_id plane_id)
>>> +{
>>> +	/* Wa_22011186057 */
>>> +	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
>>> +		return false;
>>> +
>>> +	if (DISPLAY_VER(i915) >=3D 11)
>>> +		return true;
>>> +
>>> +	if (IS_GEMINILAKE(i915))
>>> +		return pipe !=3D PIPE_C;
>>> +
>>> +	return pipe !=3D PIPE_C &&
>>> +		(plane_id =3D=3D PLANE_PRIMARY ||
>>> +		 plane_id =3D=3D PLANE_SPRITE0);
>>> +}
>>> +
>>> +static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
>>> +				   enum plane_id plane_id)
>>> +{
>>> +	if (DISPLAY_VER(i915) < 12)
>>> +		return false;
>>> +
>>> +	/* Wa_14010477008 */
>>> +	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
>>> +	    (IS_TIGERLAKE(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_D0)))
>>> +		return false;
>>> +
>>> +	/* Wa_22011186057 */
>>> +	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
>>> +		return false;
>>> +
>>> +	return plane_id < PLANE_SPRITE4;
>>> +}
>>> +
>>> +u8 skl_get_plane_caps(struct drm_i915_private *i915,
>>> +		      enum pipe pipe, enum plane_id plane_id)
>>> +{
>>> +	u8 caps =3D INTEL_PLANE_CAP_TILING_X;
>>> +
>>> +	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
>>> +		caps |=3D INTEL_PLANE_CAP_TILING_Y;
>>> +	if (DISPLAY_VER(i915) < 12)
>>> +		caps |=3D INTEL_PLANE_CAP_TILING_Yf;
>>> +	if (HAS_4TILE(i915))
>>> +		caps |=3D INTEL_PLANE_CAP_TILING_4;
>>> +
>>> +	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
>>> +		caps |=3D INTEL_PLANE_CAP_CCS_RC;
>>> +		if (DISPLAY_VER(i915) >=3D 12)
>>> +			caps |=3D INTEL_PLANE_CAP_CCS_RC_CC;
>>> +	}
>>> +
>>> +	if (gen12_plane_has_mc_ccs(i915, plane_id))
>>> +		caps |=3D INTEL_PLANE_CAP_CCS_MC;
>>> +
>>> +	return caps;
>>> +}
>>> diff --git a/drivers/gpu/drm/i915/display/intel_plane_caps.h b/drivers/=
gpu/drm/i915/display/intel_plane_caps.h
>>> new file mode 100644
>>> index 000000000000..60a941c76f23
>>> --- /dev/null
>>> +++ b/drivers/gpu/drm/i915/display/intel_plane_caps.h
>>> @@ -0,0 +1,14 @@
>>> +/* SPDX-License-Identifier: MIT */
>>> +/*
>>> + * Copyright =C2=A9 2024 Intel Corporation
>>> + */
>>> +
>>> +#ifndef __INTEL_PLANE_CAPS_H__
>>> +#define __INTEL_PLANE_CAPS_H__
>>> +
>>> +#include "intel_display_types.h"
>>> +
>>> +u8 skl_get_plane_caps(struct drm_i915_private *i915,
>>> +		      enum pipe pipe, enum plane_id plane_id);
>>> +
>>> +#endif /* __INTEL_PLANE_CAPS_H__ */
>>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drive=
rs/gpu/drm/i915/display/skl_universal_plane.c
>>> index 511dc1544854..f2fd3833c61d 100644
>>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>> @@ -17,6 +17,7 @@
>>>   #include "intel_fb.h"
>>>   #include "intel_fbc.h"
>>>   #include "intel_frontbuffer.h"
>>> +#include "intel_plane_caps.h"
>>>   #include "intel_psr.h"
>>>   #include "intel_psr_regs.h"
>>>   #include "skl_scaler.h"
>>> @@ -2242,66 +2243,6 @@ skl_plane_disable_flip_done(struct intel_plane *=
plane)
>>>   	spin_unlock_irq(&i915->irq_lock);
>>>   }
>>>=20=20=20
>>> -static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
>>> -				 enum pipe pipe, enum plane_id plane_id)
>>> -{
>>> -	/* Wa_22011186057 */
>>> -	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
>>> -		return false;
>>> -
>>> -	if (DISPLAY_VER(i915) >=3D 11)
>>> -		return true;
>>> -
>>> -	if (IS_GEMINILAKE(i915))
>>> -		return pipe !=3D PIPE_C;
>>> -
>>> -	return pipe !=3D PIPE_C &&
>>> -		(plane_id =3D=3D PLANE_PRIMARY ||
>>> -		 plane_id =3D=3D PLANE_SPRITE0);
>>> -}
>>> -
>>> -static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
>>> -				   enum plane_id plane_id)
>>> -{
>>> -	if (DISPLAY_VER(i915) < 12)
>>> -		return false;
>>> -
>>> -	/* Wa_14010477008 */
>>> -	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
>>> -		(IS_TIGERLAKE(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_D0)))
>>> -		return false;
>>> -
>>> -	/* Wa_22011186057 */
>>> -	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
>>> -		return false;
>>> -
>>> -	return plane_id < PLANE_SPRITE4;
>>> -}
>>> -
>>> -static u8 skl_get_plane_caps(struct drm_i915_private *i915,
>>> -			     enum pipe pipe, enum plane_id plane_id)
>>> -{
>>> -	u8 caps =3D INTEL_PLANE_CAP_TILING_X;
>>> -
>>> -	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
>>> -		caps |=3D INTEL_PLANE_CAP_TILING_Y;
>>> -	if (DISPLAY_VER(i915) < 12)
>>> -		caps |=3D INTEL_PLANE_CAP_TILING_Yf;
>>> -	if (HAS_4TILE(i915))
>>> -		caps |=3D INTEL_PLANE_CAP_TILING_4;
>>> -
>>> -	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
>>> -		caps |=3D INTEL_PLANE_CAP_CCS_RC;
>>> -		if (DISPLAY_VER(i915) >=3D 12)
>>> -			caps |=3D INTEL_PLANE_CAP_CCS_RC_CC;
>>> -	}
>>> -
>>> -	if (gen12_plane_has_mc_ccs(i915, plane_id))
>>> -		caps |=3D INTEL_PLANE_CAP_CCS_MC;
>>> -
>>> -	return caps;
>>> -}
>>> -
>>>   struct intel_plane *
>>>   skl_universal_plane_create(struct drm_i915_private *dev_priv,
>>>   			   enum pipe pipe, enum plane_id plane_id)
>>> diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gp=
u/drm/xe/display/xe_plane_initial.c
>>> index ccf83c12b545..425c6e6744a6 100644
>>> --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
>>> +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
>>> @@ -15,6 +15,7 @@
>>>   #include "intel_fb.h"
>>>   #include "intel_fb_pin.h"
>>>   #include "intel_frontbuffer.h"
>>> +#include "intel_plane_caps.h"
>>>   #include "intel_plane_initial.h"
>>>=20=20=20
>>>   static bool
>>> @@ -289,3 +290,25 @@ void intel_crtc_initial_plane_config(struct intel_=
crtc *crtc)
>>>=20=20=20
>>>   	plane_config_fini(&plane_config);
>>>   }
>>> +
>>> +u8 skl_get_plane_caps(struct drm_i915_private *i915,
>>> +		      enum pipe pipe, enum plane_id plane_id)
>>> +{
>>> +	u8 caps =3D INTEL_PLANE_CAP_TILING_X;
>>> +
>>> +	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
>>> +		caps |=3D INTEL_PLANE_CAP_TILING_Y;
>>> +	if (DISPLAY_VER(i915) < 12)
>>> +		caps |=3D INTEL_PLANE_CAP_TILING_Yf;
>>> +	if (HAS_4TILE(i915))
>>> +		caps |=3D INTEL_PLANE_CAP_TILING_4;
>>> +
>>> +	if (HAS_FLAT_CCS(i915)) {
>>> +		caps |=3D INTEL_PLANE_CAP_CCS_RC | INTEL_PLANE_CAP_CCS_RC_CC;
>>> +
>>> +		if (plane_id < PLANE_SPRITE4)
>>> +			caps |=3D INTEL_PLANE_CAP_CCS_MC;
>>> +	}
>>> +
>>> +	return caps;
>>> +}
>>=20
>

--=20
Jani Nikula, Intel
