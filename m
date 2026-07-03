Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Lg1WKsOtR2qAdQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 14:40:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 066ED7026E5
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 14:40:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=TQ33ArFe;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BEF210E5DD;
	Fri,  3 Jul 2026 12:40:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBB7710E5D9;
 Fri,  3 Jul 2026 12:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783082432; x=1814618432;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=RqXUJkOyhp13Tul5eNzp6T7Q9dijUoEpw+x8tQewJBw=;
 b=TQ33ArFewT84+pRt9xGtjGNkl2Gf/TRsmgkwUsXYAMKb4+0gGbSZmq93
 lZbnhNicovc8lXgR6CrDaa/2w2qzpeRbkVlGZoUpl0jENzELTOgdgoQHX
 Nu4l+qrsPO61BRwlnnmfZLwOBVXbEwGXUBw6M/XrEggKRxjXXVV1DVEHA
 onrVz7+gcPR67vKkRJqdpRGrm7/TkRbDsKnknibukiEoPDSQrzTrhn0FE
 kItbrxzKtg8cCpgxsyYFOpWDgRD5vtUILob0BDCU1EQFhGAzyRQFZ0zmZ
 fvIG/sMDaM6PM+fJpGHNVIpShEXrM6Gd3RTavdXf7TY8WaktZ/kXAP3ZB w==;
X-CSE-ConnectionGUID: pYKexqtbRfmk0bhOrlgYsw==
X-CSE-MsgGUID: slgb/bIURUCP0I9/LliPjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="83700744"
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; d="scan'208";a="83700744"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2026 05:40:32 -0700
X-CSE-ConnectionGUID: VFtAGfzOTwusE2z63MPhnw==
X-CSE-MsgGUID: ysk8ldwxSoGXaAMWJ7Xg9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; d="scan'208";a="283194553"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.157])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2026 05:40:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Martin
 Hodo <martin.hodo@intel.com>, stable@vger.kernel.org, Ville
 =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/mst: limit DP MST ESI service loop
In-Reply-To: <akU3qOVL4eh2E9ma@ideak-desk.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260625142204.1078287-1-jani.nikula@intel.com>
 <akU3qOVL4eh2E9ma@ideak-desk.lan>
Date: Fri, 03 Jul 2026 15:40:26 +0300
Message-ID: <bd3a4590aa21a61c433bb7d8506e91123231b9d2@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
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
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 066ED7026E5

On Wed, 01 Jul 2026, Imre Deak <imre.deak@intel.com> wrote:
> On Thu, Jun 25, 2026 at 05:22:04PM +0300, Jani Nikula wrote:
>> The loop in intel_dp_check_mst_status() keeps servicing interrupts
>> originating from the sink without bound. Add an upper bound to the new
>> interrupts occurring during interrupt processing to not get stuck on
>> potentially stuck sink devices. Use arbitrary 32 tries to clear incoming
>> interrupts in one go.
>>=20
>> Discovered using AI-assisted static analysis confirmed by Intel Product
>> Security.
>>=20
>> Note: The condition likely pre-dates the commit in the Fixes: tag, but
>> this is about as far back as a backport has any chance of
>> succeeding. Before that, the retry had a goto.
>>=20
>> Reported-by: Martin Hodo <martin.hodo@intel.com>
>> Fixes: 3c0ec2c2d594 ("drm/i915: Flatten intel_dp_check_mst_status() a bi=
t")
>> Cc: <stable@vger.kernel.org> # v5.8+
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
>>  1 file changed, 7 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i=
915/display/intel_dp.c
>> index 6e3fa6662cbe..ade7e51e7590 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -5590,8 +5590,9 @@ intel_dp_check_mst_status(struct intel_dp *intel_d=
p)
>>  	struct intel_display *display =3D to_intel_display(intel_dp);
>>  	bool force_retrain =3D intel_dp_link_training_get_force_retrain(intel_=
dp->link.training);
>>  	bool reprobe_needed =3D false;
>> +	int tries =3D 33;
>>=20=20
>> -	for (;;) {
>> +	while (--tries) {
>>  		u8 esi[4] =3D {};
>>  		u8 ack[4] =3D {};
>>  		bool new_irqs;
>> @@ -5634,6 +5635,11 @@ intel_dp_check_mst_status(struct intel_dp *intel_=
dp)
>>  			break;
>>  	}
>>=20=20
>> +	if (!tries) {
>> +		drm_dbg_kms(display->drm, "DPRX ESI not clearing, device may be stuck=
\n");
>> +		reprobe_needed =3D true;
>> +	}
>> +
>>  	return !reprobe_needed;
>>  }
>>=20=20
>> --=20
>> 2.47.3
>>=20

--=20
Jani Nikula, Intel
