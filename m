Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2939721E0
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 20:31:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DC1610E2B4;
	Mon,  9 Sep 2024 18:31:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Op8/GAr4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 755A610E2B4;
 Mon,  9 Sep 2024 18:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725906674; x=1757442674;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=E0xV4qxOXPs6v+Fi5/5NNI1gIcv85clfhV8pvoOXgJI=;
 b=Op8/GAr4rTc17gcdmXVzUMzX5tc7vHkxoPBLBcGTxnrJ2N+dxF+lg0pC
 r4rQe26n0alD4nzBzQVMmbBnQq2dQadBoFsfBSHpzEPqq4DCEOT67ndZk
 L7iViG8G84IhaxOToKxqh3xOAA3Olm4s6fMQVUP5jvZKbUksYGxTeW0WV
 dsEkdoYn5ZZec3p/oA7g7J47gS5lnxRwUtnsKCKRdGM/H91V7ADLCEuh4
 58qe/OYyTYxb/86Z3STSkOYaDut6R6pkS7DJwHbNUnoFmI3RAuiKu9dQE
 3MbQx8AdZwmaUNdZPLa0Tinh9ZkvP5mIWzhAWjsJZ7bGZQpGZGNUC9rXK Q==;
X-CSE-ConnectionGUID: oJb5aqJGStCVMFbK+lzE/Q==
X-CSE-MsgGUID: Icdnz+++Sj+QoqUre2FaIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="28401212"
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="28401212"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 11:31:13 -0700
X-CSE-ConnectionGUID: a/xnDMcLTj2u7ExKfxkkgQ==
X-CSE-MsgGUID: 7STH72A6QBerMQsDDsT5IA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="71732477"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 11:31:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 2/8] drm/i915/pps: only touch the vlv_ members on
 VLV/CHV
In-Reply-To: <Zt8EWvR4lkkNphHG@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1725883885.git.jani.nikula@intel.com>
 <8e2c63ae4a69f7ea8ca33ef500818f4ca680b468.1725883885.git.jani.nikula@intel.com>
 <Zt8EWvR4lkkNphHG@intel.com>
Date: Mon, 09 Sep 2024 21:31:08 +0300
Message-ID: <87mskgllw3.fsf@intel.com>
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

On Mon, 09 Sep 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Sep 09, 2024 at 03:15:37PM +0300, Jani Nikula wrote:
>> While the struct intel_pps vlv_pps_pipe and vlv_active_pipe members are
>> only relevant for VLV/CHV, we still initialize them on all platforms and
>> check them on BXT/GLK. Wrap all access inside VLV/CHV checks for
>> consistency.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c  |  6 +++---
>>  drivers/gpu/drm/i915/display/intel_pps.c | 11 ++++++-----
>>  2 files changed, 9 insertions(+), 8 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i=
915/display/intel_dp.c
>> index bc1ec9440a4d..7e36a7820fec 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -6843,8 +6843,6 @@ intel_dp_init_connector(struct intel_digital_port =
*dig_port,
>>  		return false;
>>=20=20
>>  	intel_dp->reset_link_params =3D true;
>> -	intel_dp->pps.vlv_pps_pipe =3D INVALID_PIPE;
>> -	intel_dp->pps.vlv_active_pipe =3D INVALID_PIPE;
>>=20=20
>>  	/* Preserve the current hw state. */
>>  	intel_dp->DP =3D intel_de_read(dev_priv, intel_dp->output_reg);
>> @@ -6871,8 +6869,10 @@ intel_dp_init_connector(struct intel_digital_port=
 *dig_port,
>>  	intel_dp_set_default_sink_rates(intel_dp);
>>  	intel_dp_set_default_max_sink_lane_count(intel_dp);
>>=20=20
>> -	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>> +	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
>> +		intel_dp->pps.vlv_pps_pipe =3D INVALID_PIPE;
>>  		intel_dp->pps.vlv_active_pipe =3D vlv_active_pipe(intel_dp);
>> +	}
>>=20=20
>>  	intel_dp_aux_init(intel_dp);
>>  	intel_connector->dp.dsc_decompression_aux =3D &intel_dp->aux;
>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/=
i915/display/intel_pps.c
>> index b7c73842ea16..2fb32ac1b7cf 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> @@ -472,16 +472,17 @@ void intel_pps_reset_all(struct intel_display *dis=
play)
>>  	for_each_intel_dp(display->drm, encoder) {
>>  		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>>=20=20
>> -		drm_WARN_ON(display->drm,
>> -			    intel_dp->pps.vlv_active_pipe !=3D INVALID_PIPE);
>> +		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>> +			drm_WARN_ON(display->drm,
>> +				    intel_dp->pps.vlv_active_pipe !=3D INVALID_PIPE);
>>=20=20
>>  		if (encoder->type !=3D INTEL_OUTPUT_EDP)
>>  			continue;
>>=20=20
>> -		if (DISPLAY_VER(display) >=3D 9)
>> -			intel_dp->pps.pps_reset =3D true;
>> -		else
>> +		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>>  			intel_dp->pps.vlv_pps_pipe =3D INVALID_PIPE;
>> +		else
>> +			intel_dp->pps.pps_reset =3D true;
>
> You are now setting that for all pre-skl except vlv/chv.

Above context in intel_pps_reset_all():

	if (drm_WARN_ON(display->drm, !IS_LP(dev_priv)))

i.e. VLV/CHV/BXT/GLK only.

BR,
Jani.

>
>>  	}
>>  }
>>=20=20
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel
