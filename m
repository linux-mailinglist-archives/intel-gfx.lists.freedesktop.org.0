Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JvuFQ2uHWondAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 18:06:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B763562246E
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 18:06:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35EB6113547;
	Mon,  1 Jun 2026 16:06:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IhotfZaS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAED7113547;
 Mon,  1 Jun 2026 16:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780329994; x=1811865994;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=YIKGmZls65LFaND2Ua7xRisHFghzgdnli7tXVJf/080=;
 b=IhotfZaSTyNcgITKxF2cocY9wSTHt21WrBDeBXukvGx8XRaMBZ4swxDc
 O+DYeLQaU1LJ7EKcITe6r/4r/fWxvjkR7y6wRbJV/BOkHGOUb/N31S1YA
 mvx8YGxzu9CRRCQGno6z1eFmVAPjBomt1mnXzat1aSVINnwgI0ofLCdY2
 AHahMUw3OptshkBhTQEOHA57DpihN1q+iSXw8ywdh6NrvZJOwZ5IcHyFJ
 MlW39r+mGT6NkoK5u+BKj/0VDf/CVXn2Dm1k5pd2yGgta91+AE21USbhJ
 5xcim6Tx5e58jcWfIC46FpZY1Z3kOhZrc4T/JaxrTJwQw6xr7kiDUf7Ah Q==;
X-CSE-ConnectionGUID: X7Tz3tm+SPKoJJsAbgcdwA==
X-CSE-MsgGUID: FreAoyEcRsGU34dN8RU9tw==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="91778599"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="91778599"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 09:06:33 -0700
X-CSE-ConnectionGUID: /cWqhkn0TFSfDfR951FsQQ==
X-CSE-MsgGUID: PEFTB6saSjuQZnFSG0Wbhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="239448717"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.121])
 by fmviesa010-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jun 2026 09:06:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, James Xiong
 <james.xiong@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 gustavo.sousa@intel.com, imre.deak@intel.com
Subject: Re: [PATCH v4] drm/i915/dmc: fix assert_dmc_loaded WARN during
 async firmware load
In-Reply-To: <ahmzeOA79VxnmWD3@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260511173101.723421-1-james.xiong@intel.com>
 <ahmzeOA79VxnmWD3@intel.com>
Date: Mon, 01 Jun 2026 19:06:29 +0300
Message-ID: <4d4f6487b407c8e92860f857fb2c50ef26d0bc75@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: B763562246E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 29 May 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, May 11, 2026 at 10:31:01AM -0700, James Xiong wrote:
>> During driver probe, DMC firmware is loaded asynchronously via a
>> workqueue. There is a race between parse_dmc_fw() setting the payload
>> pointer (making has_dmc_id_fw() return true) and intel_dmc_load_program()
>> writing the firmware to hardware registers. If the probe thread calls
>> intel_dmc_enable_pipe() -> assert_dmc_loaded() in this window via
>> intel_modeset_setup_hw_state(), it sees parsed payload but stale HW
>> registers, triggering a ~20% intermittent WARNING on ADL-N warm boot.
>>=20
>> v2: Fix by calling intel_dmc_wait_fw_load() in
>>     intel_modeset_setup_hw_state() before iterating the CRTCs (Gustavo
>>     Sousa).
>>=20
>> v3: Move intel_dmc_wait_fw_load() into intel_dmc_enable_pipe() itself
>>     so the function is self-contained (Jani Nikula, Gustavo Sousa).
>>=20
>> Fixes: 3af2ff0840be ("drm/i915: Enable a PIPEDMC whenever its correspond=
ing pipe is enabled")
>> Signed-off-by: James Xiong <james.xiong@intel.com>
>> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dmc.c | 7 ++++++-
>>  1 file changed, 6 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/=
i915/display/intel_dmc.c
>> index 0df4f42ba3e3..4151eae92744 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> @@ -786,7 +786,12 @@ void intel_dmc_enable_pipe(const struct intel_crtc_=
state *crtc_state)
>>  	enum pipe pipe =3D crtc->pipe;
>>  	enum intel_dmc_id dmc_id =3D PIPE_TO_DMC_ID(pipe);
>>=20=20
>> -	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
>> +	if (!is_valid_dmc_id(dmc_id))
>> +		return;
>> +
>> +	intel_dmc_wait_fw_load(display);
>
> I was going to say that intel_flipq_init() already did that, but
> looks like that's called later not before.
>
> I think what we probably want is an unconditional
> intel_dmc_wait_fw_load() somewhere before this so that the whole
> thing isn't so random.

Now there's v4 doing this at [1]

I just didn't want the wait in modeset setup [2], because it just ends
up being a pile of random calls and nobody remembers why the order is
what it is.

And when there's no need to wait for dmc loading at that point, we'll
end up waiting anyway for no reason, slowing down boot. Hence the "wait
where we *actually* need it".

BR,
Jani.


[1] https://lore.kernel.org/r/20260601154743.1127698-1-james.xiong@intel.com

[2] https://lore.kernel.org/r/c071d6473256af2a2c281a4d148630269106a51a@inte=
l.com


>
>> +
>> +	if (!has_dmc_id_fw(display, dmc_id))
>>  		return;
>>=20=20
>>  	if (!can_enable_pipedmc(crtc_state)) {
>> --=20
>> 2.34.1

--=20
Jani Nikula, Intel
