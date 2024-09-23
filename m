Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D2797E776
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 10:22:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F28810E3A5;
	Mon, 23 Sep 2024 08:22:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="myHH60Bc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6505710E3A8
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 08:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727079747; x=1758615747;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=INowjXpqjfwnrfufBlU9VCdeyM4ND/GmstPsINqM1S4=;
 b=myHH60Bc4bUc5xcvZ4WHx7jpnIa0qnKfVWHR6SFx8hhPE6VVkEV97Rkn
 7j9+5LdvI2Ky8axI74BOAnEHAg78FfJLpc820BnXdHVTkokCNRm5m6ie3
 mZK4XHSlqfIyc/K01hSGIponhJdJtfDzcaewzTxxyo2hLhwFMNiovmKyy
 VHhq1+dDomAUb1lXyws4jz76E5f65VLwY8aPF/1eg2luio9X6qumUra54
 1bGMdlQwNeGdJ8J5rv6+ZCgl8Aqh7vYA2OMlgtuf5zHxhg+Bh2k311ym6
 657QMseeG3i46wAbJzUFGWyB/OXkKhFXU1t1KJ0ovDIPmrWT8IBcdsewX A==;
X-CSE-ConnectionGUID: UxSnxIgfTB+jm6SZvCMWLg==
X-CSE-MsgGUID: E/4QLaXTSLukazRMzGBVfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="43532191"
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="43532191"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 01:22:27 -0700
X-CSE-ConnectionGUID: SISIAQ8lQ4elLk6U6KaNhQ==
X-CSE-MsgGUID: b18rNouVRaK9en50s2rTiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="108424632"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 01:22:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/pps: split intel_pps_reset_all() to vlv and
 bxt variants
In-Reply-To: <ZuwJ2Htfhbgk4bGW@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240919090427.1859032-1-jani.nikula@intel.com>
 <ZuwJ2Htfhbgk4bGW@intel.com>
Date: Mon, 23 Sep 2024 11:22:22 +0300
Message-ID: <87o74e7pa9.fsf@intel.com>
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

On Thu, 19 Sep 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Sep 19, 2024 at 12:04:27PM +0300, Jani Nikula wrote:
>> The intel_pps_reset_all() function does similar but not quite the same
>> things for VLV/CHV and BXT/GLK. Observe that it's called from platform
>> specific code only, and a split to two functions vlv_pps_reset_all() and
>> bxt_pps_reset_all() is natural.
>>=20
>> Remove the platform checks and warnings from the functions. We don't
>> usually have them, unless we're unsure. To make this easier to reason
>> about for BXT/GLK, change the condition on caller side from "!PCH" to
>> "BXT || GLK".
>>=20
>> Suggested-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>> ---
>>  .../i915/display/intel_display_power_well.c   | 11 +++---
>>  drivers/gpu/drm/i915/display/intel_pps.c      | 34 +++++++++++--------
>>  drivers/gpu/drm/i915/display/intel_pps.h      |  3 +-
>>  3 files changed, 27 insertions(+), 21 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/d=
rivers/gpu/drm/i915/display/intel_display_power_well.c
>> index 1898aff50ac4..adaf7cf3a33b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> @@ -879,12 +879,11 @@ void bxt_enable_dc9(struct intel_display *display)
>>=20=20
>>  	drm_dbg_kms(display->drm, "Enabling DC9\n");
>>  	/*
>> -	 * Power sequencer reset is not needed on
>> -	 * platforms with South Display Engine on PCH,
>> -	 * because PPS registers are always on.
>> +	 * Power sequencer reset is needed on BXT/GLK, because the PPS registe=
rs
>> +	 * aren't always on, unlike with South Display Engine on PCH.
>>  	 */
>> -	if (!HAS_PCH_SPLIT(dev_priv))
>> -		intel_pps_reset_all(display);
>> +	if (IS_BROXTON(dev_priv) || IS_GEMINILAKE(dev_priv))
>> +		bxt_pps_reset_all(display);
>>  	gen9_set_dc_state(display, DC_STATE_EN_DC9);
>>  }
>>=20=20
>> @@ -1270,7 +1269,7 @@ static void vlv_display_power_well_deinit(struct d=
rm_i915_private *dev_priv)
>>  	/* make sure we're done processing display irqs */
>>  	intel_synchronize_irq(dev_priv);
>>=20=20
>> -	intel_pps_reset_all(display);
>> +	vlv_pps_reset_all(display);
>>=20=20
>>  	/* Prevent us from re-enabling polling on accident in late suspend */
>>  	if (!dev_priv->drm.dev->power.is_suspended)
>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/=
i915/display/intel_pps.c
>> index 819b2843946f..88abc4c7cda1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> @@ -70,7 +70,7 @@ intel_wakeref_t intel_pps_lock(struct intel_dp *intel_=
dp)
>>  	intel_wakeref_t wakeref;
>>=20=20
>>  	/*
>> -	 * See intel_pps_reset_all() why we need a power domain reference here.
>> +	 * See vlv_pps_reset_all() why we need a power domain reference here.
>>  	 */
>>  	wakeref =3D intel_display_power_get(dev_priv, POWER_DOMAIN_DISPLAY_COR=
E);
>>  	mutex_lock(&display->pps.mutex);
>> @@ -448,14 +448,10 @@ pps_initial_setup(struct intel_dp *intel_dp)
>>  	return intel_pps_is_valid(intel_dp);
>>  }
>>=20=20
>> -void intel_pps_reset_all(struct intel_display *display)
>> +void vlv_pps_reset_all(struct intel_display *display)
>>  {
>> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>>  	struct intel_encoder *encoder;
>>=20=20
>> -	if (drm_WARN_ON(display->drm, !IS_LP(dev_priv)))
>> -		return;
>> -
>>  	if (!HAS_DISPLAY(display))
>>  		return;
>>=20=20
>> @@ -472,16 +468,26 @@ void intel_pps_reset_all(struct intel_display *dis=
play)
>>  	for_each_intel_dp(display->drm, encoder) {
>>  		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>>=20=20
>> -		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>> -			drm_WARN_ON(display->drm,
>> -				    intel_dp->pps.vlv_active_pipe !=3D INVALID_PIPE);
>> -
>> -		if (encoder->type !=3D INTEL_OUTPUT_EDP)
>> -			continue;
>> +		drm_WARN_ON(display->drm, intel_dp->pps.vlv_active_pipe !=3D INVALID_=
PIPE);
>>=20=20
>> -		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>> +		if (encoder->type =3D=3D INTEL_OUTPUT_EDP)
>>  			intel_dp->pps.vlv_pps_pipe =3D INVALID_PIPE;
>> -		else
>> +	}
>> +}
>> +
>> +void bxt_pps_reset_all(struct intel_display *display)
>> +{
>> +	struct intel_encoder *encoder;
>> +
>> +	if (!HAS_DISPLAY(display))
>> +		return;
>> +
>> +	/* See vlv_pps_reset_all() for why we can't grab pps_mutex here. */
>> +
>> +	for_each_intel_dp(display->drm, encoder) {
>> +		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>> +
>> +		if (encoder->type =3D=3D INTEL_OUTPUT_EDP)
>>  			intel_dp->pps.bxt_pps_reset =3D true;
>>  	}
>>  }
>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/=
i915/display/intel_pps.h
>> index a5339a65485d..bc5046d53626 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pps.h
>> +++ b/drivers/gpu/drm/i915/display/intel_pps.h
>> @@ -43,7 +43,6 @@ void intel_pps_wait_power_cycle(struct intel_dp *intel=
_dp);
>>  bool intel_pps_init(struct intel_dp *intel_dp);
>>  void intel_pps_init_late(struct intel_dp *intel_dp);
>>  void intel_pps_encoder_reset(struct intel_dp *intel_dp);
>> -void intel_pps_reset_all(struct intel_display *display);
>>=20=20
>>  void vlv_pps_pipe_init(struct intel_dp *intel_dp);
>>  void vlv_pps_pipe_reset(struct intel_dp *intel_dp);
>> @@ -52,6 +51,8 @@ void vlv_pps_port_enable_unlocked(struct intel_encoder=
 *encoder,
>>  				  const struct intel_crtc_state *crtc_state);
>>  void vlv_pps_port_disable(struct intel_encoder *encoder,
>>  			  const struct intel_crtc_state *crtc_state);
>> +void vlv_pps_reset_all(struct intel_display *display);
>> +void bxt_pps_reset_all(struct intel_display *display);
>>=20=20
>>  void intel_pps_unlock_regs_wa(struct intel_display *display);
>>  void intel_pps_setup(struct intel_display *display);
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel
