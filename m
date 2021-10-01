Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE1A41E945
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 10:55:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0FD46ED7D;
	Fri,  1 Oct 2021 08:55:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 606416ED7D
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 08:55:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="212635644"
X-IronPort-AV: E=Sophos;i="5.85,337,1624345200"; d="scan'208";a="212635644"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 01:55:49 -0700
X-IronPort-AV: E=Sophos;i="5.85,337,1624345200"; d="scan'208";a="618891854"
Received: from kdoertel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.222.34])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 01:55:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
In-Reply-To: <YVWIYSmggtT037IZ@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210930093229.28598-1-jani.nikula@intel.com>
 <YVWIYSmggtT037IZ@intel.com>
Date: Fri, 01 Oct 2021 11:55:45 +0300
Message-ID: <87o889t97y.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fdi: use -EAGAIN instead of local
 special return value
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

On Thu, 30 Sep 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Sep 30, 2021 at 12:32:29PM +0300, Jani Nikula wrote:
>> Using standard -EAGAIN should be perfectly fine instead of using a
>> special case value.
>
> Can't immediately spot any uses of -EAGAIN which would conflict here.
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed.

BR,
Jani.

>
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c | 11 +++++------
>>  drivers/gpu/drm/i915/display/intel_fdi.c     |  2 +-
>>  drivers/gpu/drm/i915/display/intel_fdi.h     |  1 -
>>  3 files changed, 6 insertions(+), 8 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
>> index a4453dd1bb51..db43334fb7d2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -7717,12 +7717,7 @@ intel_modeset_pipe_config(struct intel_atomic_sta=
te *state,
>>  	ret =3D intel_crtc_compute_config(to_intel_crtc(crtc), pipe_config);
>>  	if (ret =3D=3D -EDEADLK)
>>  		return ret;
>> -	if (ret < 0) {
>> -		drm_dbg_kms(&i915->drm, "CRTC fixup failed\n");
>> -		return ret;
>> -	}
>> -
>> -	if (ret =3D=3D I915_DISPLAY_CONFIG_RETRY) {
>> +	if (ret =3D=3D -EAGAIN) {
>>  		if (drm_WARN(&i915->drm, !retry,
>>  			     "loop in pipe configuration computation\n"))
>>  			return -EINVAL;
>> @@ -7731,6 +7726,10 @@ intel_modeset_pipe_config(struct intel_atomic_sta=
te *state,
>>  		retry =3D false;
>>  		goto encoder_retry;
>>  	}
>> +	if (ret < 0) {
>> +		drm_dbg_kms(&i915->drm, "CRTC fixup failed\n");
>> +		return ret;
>> +	}
>>=20=20
>>  	/* Dithering seems to not pass-through bits correctly when it should, =
so
>>  	 * only enable it on 6bpc panels and when its not a compliance
>> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/=
i915/display/intel_fdi.c
>> index af01d1fa761e..6b780349371c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
>> @@ -176,7 +176,7 @@ int ilk_fdi_compute_config(struct intel_crtc *crtc,
>>  	}
>>=20=20
>>  	if (needs_recompute)
>> -		return I915_DISPLAY_CONFIG_RETRY;
>> +		return -EAGAIN;
>>=20=20
>>  	return ret;
>>  }
>> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/=
i915/display/intel_fdi.h
>> index 61cb216a09f5..abd9f809d421 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fdi.h
>> +++ b/drivers/gpu/drm/i915/display/intel_fdi.h
>> @@ -11,7 +11,6 @@ struct intel_crtc;
>>  struct intel_crtc_state;
>>  struct intel_encoder;
>>=20=20
>> -#define I915_DISPLAY_CONFIG_RETRY 1
>>  int intel_fdi_link_freq(struct drm_i915_private *i915,
>>  			const struct intel_crtc_state *pipe_config);
>>  int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
