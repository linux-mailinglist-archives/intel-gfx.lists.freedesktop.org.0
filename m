Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B67BC4EC9CF
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 18:42:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1B0810E5A5;
	Wed, 30 Mar 2022 16:42:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B738910E5A5
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 16:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648658560; x=1680194560;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ZKVa36dVy9FmdRre0x7pO/OQexka+D1+l5kvYU9EqDc=;
 b=b/zQaG9p53B2TWLbG/tMZuvFnXX4fvdJfmpReZrKgWtO4wp9PwFGxDyG
 K5XioVPORdn1hBi60lre3Z+hRDu83vZM3hyLXeI2h+LcQaLv1MkuC/dYV
 +okidXV2GBnxWLAS9gopKoJ0mOthEP/4h4IZSqGllujjDzIAr5uvB83wo
 hYfN89TZ58QQU+fkiAIXWO91XQLYCKkFs579Ibq50gcQQjn0F+3uPjAcP
 5ZcPtDZ8Pz/esz1qiG+ozWY2Ar9Rx6sL6De1vBmGR+0IhNH1I8vkFik6r
 n45uCxvvs6SrhDZVQlA+PyB+t0FbieNB3c+cOEkj/y4LLmI32xr5YIW/8 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="259773357"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="259773357"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 09:42:40 -0700
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="565636380"
Received: from nhanus-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.116])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 09:42:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YkQ5zbjXyWhe6lxC@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220330093019.4150386-1-jani.nikula@intel.com>
 <YkQ5zbjXyWhe6lxC@intel.com>
Date: Wed, 30 Mar 2022 19:42:36 +0300
Message-ID: <87fsmzbddv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: make DSC usage logging
 actually useful
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 30 Mar 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Mar 30, 2022 at 12:30:19PM +0300, Jani Nikula wrote:
>> Debug log when DSC is going to be used, and why, instead of
>> unconditionally logging the rarely used debug option setting, which
>> might not have any bearing on whether DSC is going to be used or not.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c | 19 ++++++++++++-------
>>  1 file changed, 12 insertions(+), 7 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i=
915/display/intel_dp.c
>> index c7f8fc654857..56c36c9ef173 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1483,6 +1483,7 @@ intel_dp_compute_link_config(struct intel_encoder =
*encoder,
>>  		&pipe_config->hw.adjusted_mode;
>>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>>  	struct link_config_limits limits;
>> +	bool joiner_needs_dsc =3D false;
>>  	int ret;
>>=20=20
>>  	limits.min_rate =3D intel_dp_common_rate(intel_dp, 0);
>> @@ -1518,19 +1519,23 @@ intel_dp_compute_link_config(struct intel_encode=
r *encoder,
>>  				    adjusted_mode->crtc_clock))
>>  		pipe_config->bigjoiner_pipes =3D GENMASK(crtc->pipe + 1, crtc->pipe);
>>=20=20
>> +	/*
>> +	 * Pipe joiner needs compression up to display 12 due to bandwidth
>> +	 * limitation. DG2 onwards pipe joiner can be enabled without
>> +	 * compression.
>> +	 */
>> +	joiner_needs_dsc =3D DISPLAY_VER(i915) < 13 && pipe_config->bigjoiner_=
pipes;
>
> Could be a function to reduce the pollution.
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

>
> PS. The excessive debugs from intel_dp_dsc_get_output_bpp() are
> also annoying. Would be nice if someone could do something about
> that.

Huh, I thought I'd already done something about that. Or maybe I just
complained about that.

BR,
Jani.

>
>> +
>>  	/*
>>  	 * Optimize for slow and wide for everything, because there are some
>>  	 * eDP 1.3 and 1.4 panels don't work well with fast and narrow.
>>  	 */
>>  	ret =3D intel_dp_compute_link_config_wide(intel_dp, pipe_config, &limi=
ts);
>>=20=20
>> -	/*
>> -	 * Pipe joiner needs compression upto display12 due to BW limitation. =
DG2
>> -	 * onwards pipe joiner can be enabled without compression.
>> -	 */
>> -	drm_dbg_kms(&i915->drm, "Force DSC en =3D %d\n", intel_dp->force_dsc_e=
n);
>> -	if (ret || intel_dp->force_dsc_en ||
>> -	    (DISPLAY_VER(i915) < 13 && pipe_config->bigjoiner_pipes)) {
>> +	if (ret || joiner_needs_dsc || intel_dp->force_dsc_en) {
>> +		drm_dbg_kms(&i915->drm, "Try DSC (fallback=3D%s, joiner=3D%s, force=
=3D%s)\n",
>> +			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
>> +			    str_yes_no(intel_dp->force_dsc_en));
>>  		ret =3D intel_dp_dsc_compute_config(intel_dp, pipe_config,
>>  						  conn_state, &limits);
>>  		if (ret < 0)
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
