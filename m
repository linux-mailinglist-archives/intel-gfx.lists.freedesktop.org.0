Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA5142FDBB
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 23:59:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F32E16EDFB;
	Fri, 15 Oct 2021 21:59:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D7E36EDFB
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 21:59:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10138"; a="208794884"
X-IronPort-AV: E=Sophos;i="5.85,376,1624345200"; d="scan'208";a="208794884"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 14:59:52 -0700
X-IronPort-AV: E=Sophos;i="5.85,376,1624345200"; d="scan'208";a="481851369"
Received: from tzahur-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.211.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 14:59:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Souza\, Jose" <jose.souza@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak\,
 Imre" <imre.deak@intel.com>
In-Reply-To: <b5ca89da3e8e7d3cff3c314e0b99807416b4e416.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211015121031.870282-1-imre.deak@intel.com>
 <b5ca89da3e8e7d3cff3c314e0b99807416b4e416.camel@intel.com>
Date: Sat, 16 Oct 2021 00:59:46 +0300
Message-ID: <87v91yt0dp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Skip the HW readout of DPCD on
 disabled encoders
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

On Fri, 15 Oct 2021, "Souza, Jose" <jose.souza@intel.com> wrote:
> On Fri, 2021-10-15 at 15:10 +0300, Imre Deak wrote:
>> Reading out the DP encoders' DPCD during booting or resume is only
>> required for enabled encoders: such encoders may be modesetted during
>> the initial commit and the link training this involves depends on an
>> initialized DPCD. For DDI encoders reading out the DPCD is skipped, do
>> the same on pre-DDI platforms.
>
> Missing fixes tag
>
>>=20
>> Cc: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
>> Signed-off-by: Imre Deak <imre.deak@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
>>  1 file changed, 3 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i=
915/display/intel_dp.c
>> index 9d8132dd4cc5a..23de500d56b52 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2007,6 +2007,9 @@ void intel_dp_sync_state(struct intel_encoder *enc=
oder,
>>  {
>>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>>=20=20
>> +	if (!crtc_state)
>> +		return;
>
> crtc_state is not used

This is why it's so subtle. The commit a532cde31de3 ("drm/i915/tc: Fix
TypeC port init/resume time sanitization") changes when the sync_state
hook is called, and now it's also called for disabled encoders, and
crtc_state !=3D NULL is the way to check that now. Which absolutely must
be documented in this fix! (And I'm not sure if even that is enough in
the long term, it seems to me the change is just too subtle and we'll
get it wrong again.)

I'm guessing the intel_dp_max_common_rate() call gets inlined in
intel_dp_sync_state(), and it goes wrong with intel_dp->num_common_rates
being 0 and the array index being -1.

Anyway, having said that, we'll need to stop guessing and dig into the
root cause.

BR,
Jani.



>
>> +
>>  	/*
>>  	 * Don't clobber DPCD if it's been already read out during output
>>  	 * setup (eDP) or detect.
>

--=20
Jani Nikula, Intel Open Source Graphics Center
