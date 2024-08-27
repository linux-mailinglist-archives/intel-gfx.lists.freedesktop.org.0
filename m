Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C93960769
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 12:30:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72F1910E2D4;
	Tue, 27 Aug 2024 10:30:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Es4aMWWe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1838310E2D5
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2024 10:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724754602; x=1756290602;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=3nnf7PIaK5kpoRGdvRRFoXFcxrhOzwZV07lvhM+rt+U=;
 b=Es4aMWWeL4REmcxTY1v2vnbO8E7dCIdVioeEWuq6hj27qHiDK3znGbWS
 pt1FF2JX9gw0CIA4sHoGoMyVYnGJjmenMipeUfRR/QfgOakoTa6OUyHJq
 8P5+eABrbeZiVtHSpkQxrsy9pDh/4F8MgLa24j5863dV5+HggZ+j10x/y
 WD+nq1U7WHhawTKK+WAbcIgotKI2AuUo7uUQ4Den1EsqOkBFzEsKe4jxH
 SE4Nrz8pYO550lOipP+MjJ1i/A9uSaHwymupGRbrlp1STKAysvjGBl295
 GmSU2wW/wtGwVDLvOJ01WgpvL9useJF7YzJja2u/hGt/qStwKRZ/07g+f Q==;
X-CSE-ConnectionGUID: OC448A2pR2G4jvzfEs1KDw==
X-CSE-MsgGUID: 47yTmIBNSO+8GStaOSSENg==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="23398760"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="23398760"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 03:30:02 -0700
X-CSE-ConnectionGUID: nF4WG+gqTSydXpbAUN9/Ug==
X-CSE-MsgGUID: o0drlK5US0SILN8Qx/nR5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="62652450"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.226])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 03:29:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Jouni
 =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: Re: [PATCH] drm/i915/display: use old bpp as a base when modeset is
 not allowed
In-Reply-To: <8e0e10a9-fd2e-4452-8a12-ba68e522a418@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240826104132.966597-1-jouni.hogander@intel.com>
 <8e0e10a9-fd2e-4452-8a12-ba68e522a418@linux.intel.com>
Date: Tue, 27 Aug 2024 13:29:55 +0300
Message-ID: <87mskyz2ak.fsf@intel.com>
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

On Tue, 27 Aug 2024, Maarten Lankhorst <maarten.lankhorst@linux.intel.com> =
wrote:
> Hey,
>
> We shouldn't have code acting differently whether modesets are allowed,
> I think I'm missing some context here?

Yeah. Since GOP is mentioned, is this really about state readout
instead?

BR,
Jani.


>
> Cheers,
> ~Marten
>
> Den 2024-08-26 kl. 12:41, skrev Jouni H=C3=B6gander:
>> We are currently observing failure on refresh rate change on VRR setup if
>> full modeset is not allowed. This is caused by the mismatch in bpp
>> configured by GOP and bpp value calculated by our driver. Changing bpp to
>> value calculated by our driver would require full mode set.
>>=20
>> We don't have mechanism to communicate current bpp to userspace ->
>> Userspace can't request to use current bpp. Changing bpp means full
>> modeset. This becomes a problem when userspace haven't allowed full mode
>> set.
>>=20
>> Complete solution here would mean adding mechanism to communicate current
>> bpp to userspace. User space should use this bpp to avoid changing bpp if
>> it wants to avoid full mode set.
>>=20
>> Tackle this for now in our driver by using existing bpp if full modeset =
is
>> not allowed.
>>=20
>> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c | 33 ++++++++++++++------
>>  1 file changed, 23 insertions(+), 10 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
>> index 9049b9a1209d8..7b805998b280a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -4385,21 +4385,34 @@ compute_baseline_pipe_bpp(struct intel_atomic_st=
ate *state,
>>  			  struct intel_crtc *crtc)
>>  {
>>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>> -	struct intel_crtc_state *crtc_state =3D
>> +	struct intel_crtc_state *new_crtc_state =3D
>>  		intel_atomic_get_new_crtc_state(state, crtc);
>> +	struct intel_crtc_state *old_crtc_state =3D
>> +		intel_atomic_get_old_crtc_state(state, crtc);
>>  	struct drm_connector *connector;
>>  	struct drm_connector_state *connector_state;
>>  	int bpp, i;
>>=20=20
>> -	if ((IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
>> -	    IS_CHERRYVIEW(dev_priv)))
>> -		bpp =3D 10*3;
>> -	else if (DISPLAY_VER(dev_priv) >=3D 5)
>> -		bpp =3D 12*3;
>> -	else
>> -		bpp =3D 8*3;
>> +	/*
>> +	 * TODO: We don't have mechanism to communicate current bpp to
>> +	 * userspace -> Userspace can't request to use current bpp. Changing b=
pp
>> +	 * means full modeset. This becomes a problem when userspace wants to
>> +	 * avoid full modeset. Tackle this on our driver by using existing bpp
>> +	 * if full modeset is not allowed.
>> +	 */
>> +	if (!state->base.allow_modeset) {
>> +		bpp =3D old_crtc_state->pipe_bpp;
>> +	} else {
>> +		if ((IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
>> +		     IS_CHERRYVIEW(dev_priv)))
>> +			bpp =3D 10 * 3;
>> +		else if (DISPLAY_VER(dev_priv) >=3D 5)
>> +			bpp =3D 12 * 3;
>> +		else
>> +			bpp =3D 8 * 3;
>> +	}
>>=20=20
>> -	crtc_state->pipe_bpp =3D bpp;
>> +	new_crtc_state->pipe_bpp =3D bpp;
>>=20=20
>>  	/* Clamp display bpp to connector max bpp */
>>  	for_each_new_connector_in_state(&state->base, connector, connector_sta=
te, i) {
>> @@ -4408,7 +4421,7 @@ compute_baseline_pipe_bpp(struct intel_atomic_stat=
e *state,
>>  		if (connector_state->crtc !=3D &crtc->base)
>>  			continue;
>>=20=20
>> -		ret =3D compute_sink_pipe_bpp(connector_state, crtc_state);
>> +		ret =3D compute_sink_pipe_bpp(connector_state, new_crtc_state);
>>  		if (ret)
>>  			return ret;
>>  	}
>

--=20
Jani Nikula, Intel
