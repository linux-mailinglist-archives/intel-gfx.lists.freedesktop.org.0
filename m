Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Zk1+BTKHPmpFHgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 16:05:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8196CDC8A
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 16:05:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=WfPPpFF9;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21B7F10E396;
	Fri, 26 Jun 2026 14:05:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E21610E312;
 Fri, 26 Jun 2026 14:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782482735; x=1814018735;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=gGeatAbNW1Tyu504ZrnFfEPUli8yfMeLx+6zsAYFJ9U=;
 b=WfPPpFF9baFKqJ9OIghoIJMTqMH+NulkU/Ht2S7frlIhs3M8igyr94aS
 Oph7v1Frt4ppi5DTiE+3KT2gNZa66zsq1rAzfQ06mOtb9ej9D1B0Nuy2F
 ODH2k3gISJL8LPEBuMorHMsGYKsRP6Op9LdHNjL1jivF22hK0Lg6sIwr/
 gDeNEnqftTSyD8Tc0NBop+plVCSkfAFZF9nwLGH29GBAK8ehF1ZnY445D
 4u1BE1aipVPTeTGlXLhR7PE7v2cBRqJRI0/ntxbTuPlJ3E00ycFW5NAWq
 dM7CD0oclGyNVfKchktwId3+nyYOd0hIiHlYcw3tHovsf531Lvtbp9Ztx g==;
X-CSE-ConnectionGUID: dG6hfvWRRaOBumCH/pPpYQ==
X-CSE-MsgGUID: HgDkHUUgQym2dpY1jL0/4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11829"; a="83283955"
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; d="scan'208";a="83283955"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 07:05:34 -0700
X-CSE-ConnectionGUID: e20pPGzvQx+yPzexCcSK7w==
X-CSE-MsgGUID: exshc02NS/ypqar2jMHPtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; d="scan'208";a="289431826"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.22])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 07:05:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Martin
 Hodo <martin.hodo@intel.com>, stable@vger.kernel.org, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH] drm/i915/vrr: require valid min/max vfreq for VRR
In-Reply-To: <aj6BTiskgYhSUGYd@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260625131040.1051272-1-jani.nikula@intel.com>
 <aj6BTiskgYhSUGYd@intel.com>
Date: Fri, 26 Jun 2026 17:05:28 +0300
Message-ID: <a09eda4f6b780c0ac079827d73ef23917974b4e4@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8D8196CDC8A

On Fri, 26 Jun 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Jun 25, 2026 at 04:10:40PM +0300, Jani Nikula wrote:
>> Ensure the EDID provided min/max vfreq are valid. Most scenarios are
>> already covered (by coincidence) through the checks in
>> intel_vrr_is_capable() and intel_vrr_is_in_range(), but be more explicit
>> about it. At worst, a zero min_vfreq could lead to a division by zero in
>> intel_vrr_compute_vmax().
>>=20
>> Discovered using AI-assisted static analysis confirmed by Intel Product
>> Security.
>>=20
>> Reported-by: Martin Hodo <martin.hodo@intel.com>
>> Fixes: 117cd09ba528 ("drm/i915/display/dp: Compute VRR state in atomic_c=
heck")
>> Cc: <stable@vger.kernel.org> # v5.12+
>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_vrr.c | 4 ++++
>>  1 file changed, 4 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/=
i915/display/intel_vrr.c
>> index 5d9b11185296..bffbdee76ee1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -76,6 +76,10 @@ bool intel_vrr_is_capable(struct intel_connector *con=
nector)
>>  		return false;
>>  	}
>>=20=20
>> +	if (!info->monitor_range.min_vfreq || !info->monitor_range.max_vfreq ||
>> +	    info->monitor_range.min_vfreq > info->monitor_range.max_vfreq)
>> +		return false;
>
> Perhaps it should be the responsibility of the EDID parser to make sure
> the range isn't completely insane?

The min_vfreq/max_vfreq may be 0 if the EDID doesn't have the info, and
if the EDID has bogus info, leaving them to 0 is pretty much the only
thing we can do.

Since we need the !0 check here anyway, I decided to start off with
this.

BR,
Jani.

>
>> +
>>  	return info->monitor_range.max_vfreq - info->monitor_range.min_vfreq >=
 10;
>
> I've been tempted to get rid of this completely arbitrary 10Hz thing as w=
ell.
>
>>  }
>>=20=20
>> --=20
>> 2.47.3

--=20
Jani Nikula, Intel
