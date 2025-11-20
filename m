Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D22C7417B
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 14:08:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4594D10E173;
	Thu, 20 Nov 2025 13:08:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N+1fI+sv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8567B10E02B;
 Thu, 20 Nov 2025 13:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763644098; x=1795180098;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=etNy+bxkmaq3n+gMLNg9EJrGq3ZpuMGCL3iA5KWcMmo=;
 b=N+1fI+svWrlVVUcZSKm+f7N4JatkQbiVesYZ2ocgrn5CGpAdGlt2B3dr
 fSdlHtCC8TVYrlVwcfETDp8FxbeKy0MUX+iticxYDNZuA37KG4ReeZ2vv
 NEQj3VPXu3EFZkB0c09DvxdrjvWbe1DkunvpFENxvSjQHcDOMvmiKgYhc
 ijuzVD1unBrAAylJ11wuxoCtNaO3ZchzbD6fbhwTjhQBUOshHS9FG/LBz
 lvIgeC1ErRWGRch2H65/9rgLBOIJmvwblC7mK+WmTvoYmKtSF5ap1B+IP
 7ij0bwBQidz0MkezsQwbIcIu2IoBavntOKbEBhSLrly19IfAJRdokpUhw w==;
X-CSE-ConnectionGUID: Rzn2o8MCS8yx788XRteoFg==
X-CSE-MsgGUID: BBF0wA8GTiqqYPk+51HXtA==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65653843"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="65653843"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 05:08:17 -0800
X-CSE-ConnectionGUID: H8x+ioyeRjOV78XzbDdAXw==
X-CSE-MsgGUID: 9IByckHxTzSieMjccOKGUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="228666215"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.6])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 05:08:15 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 2/2] Revert "drm/i915/dp: change aux_ctl reg read to
 polling read"
In-Reply-To: <IA0PR11MB7307CCFF497C2D864B434FDCBAD4A@IA0PR11MB7307.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251119185310.10428-1-ville.syrjala@linux.intel.com>
 <20251119185310.10428-3-ville.syrjala@linux.intel.com>
 <IA0PR11MB7307CCFF497C2D864B434FDCBAD4A@IA0PR11MB7307.namprd11.prod.outlook.com>
Date: Thu, 20 Nov 2025 15:08:12 +0200
Message-ID: <220fd18a4d5d0ce5fb8c4c61041c968f6b42cd43@intel.com>
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

On Thu, 20 Nov 2025, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of V=
ille
>> Syrjala
>> Sent: Thursday, November 20, 2025 12:23 AM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: intel-xe@lists.freedesktop.org
>> Subject: [PATCH 2/2] Revert "drm/i915/dp: change aux_ctl reg read to pol=
ling
>> read"
>>=20
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>=20
>> This reverts commit 5a9b0c7418448ed3766f61ba0a71d08f259c3181.
>>=20
>> The switch from AUX interrupts to pollign was very hand-wavy.
>> Yes, there have been some situations in CI on a few platforms where the =
AUX
>> hardware seemingly forgets to signal the timeout, but those have been
>> happening after we switched to polling as well. So I don't think we have=
 any
>> conclusive evidence that polling actually helps here.
>>=20
>> Someone really should root cause the actual problem, and see if there is=
 a
>> proper workaround we could implemnt (eg. disabling clock gating/etc.). I=
n the
>> meantime just go back to using the interrupt for AUX completion.
>>=20
>> If the hardware fails to signal the timeout we will just hit the
>> wait_event_timeout() software timeout instead. I suppose we could try to=
 tune
>> the software timeout to more closely match the expected hardware timeout.
>> Might need to use
>> wait_event_hrtimeout() or something to avoid jiffies granularity issues.=
..
>>=20
>> The AUX polling is also a hinderance towards using poll_timeout_us() bec=
ause
>> we have a very long timeout, but would need a fairly short polling inter=
val to
>> keep AUX transfer reasonably fast. Someone would need to come up with go=
od
>> numbers in a somewhat scientific way.
>>=20
> Upon multiple rounds of validation based on the results polling had impro=
vements when compared with the interrupt mechanism. We can optimize more by=
 using poll_timeout, I am afraid that reverting back to interrupts may end =
up with more failures.

I'm not sure the issues were root caused properly.

BR,
Jani.


>
> Thanks and Regards,
> Arun R Murthy
> --------------------
>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 12 +++++++-----
>>  1 file changed, 7 insertions(+), 5 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> index 809799f63e32..d1a93e4a59b5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> @@ -6,6 +6,7 @@
>>  #include <drm/drm_print.h>
>>=20
>>  #include "intel_de.h"
>> +#include "intel_display_jiffies.h"
>>  #include "intel_display_types.h"
>>  #include "intel_display_utils.h"
>>  #include "intel_dp.h"
>> @@ -60,16 +61,17 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
>>  	i915_reg_t ch_ctl =3D intel_dp->aux_ch_ctl_reg(intel_dp);
>>  	const unsigned int timeout_ms =3D 10;
>>  	u32 status;
>> -	int ret;
>> +	bool done;
>>=20
>> -	ret =3D intel_de_wait_ms(display, ch_ctl,
>> -			       DP_AUX_CH_CTL_SEND_BUSY, 0,
>> -			       timeout_ms, &status);
>> +#define C (((status =3D intel_de_read_notrace(display, ch_ctl)) &
>> DP_AUX_CH_CTL_SEND_BUSY) =3D=3D 0)
>> +	done =3D wait_event_timeout(display->gmbus.wait_queue, C,
>> +				  msecs_to_jiffies_timeout(timeout_ms));
>>=20
>> -	if (ret =3D=3D -ETIMEDOUT)
>> +	if (!done)
>>  		drm_err(display->drm,
>>  			"%s: did not complete or timeout within %ums (status
>> 0x%08x)\n",
>>  			intel_dp->aux.name, timeout_ms, status);
>> +#undef C
>>=20
>>  	return status;
>>  }
>> --
>> 2.49.1
>

--=20
Jani Nikula, Intel
