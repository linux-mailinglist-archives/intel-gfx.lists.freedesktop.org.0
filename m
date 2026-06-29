Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id B7hCEbAuQmqk1QkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 10:37:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD6A6D78D7
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 10:37:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=JOUnnggC;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D26410E060;
	Mon, 29 Jun 2026 08:37:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3A3310E060;
 Mon, 29 Jun 2026 08:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782722221; x=1814258221;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=yW4rE5Zr+InFVrJyY8OysXZwP625ZaE3tG8JAi/w1KE=;
 b=JOUnnggC8fER4tptQj39CIdRUiQj6cqwdUtwIKFXLQBZ1SOGNP/Du0Gw
 rBB3lsxr+yWsOHeawWazRYylwOZWgxcccExLXWnJV/Sey4aaHvIPCRzSq
 g37c2q0H7f3stZ3ba751vDPu/O9QJRFGO+SDOMZX0Q56NOgSgQUyWAroE
 oZ+ubZT2FkTPmUC5L8fu4ZfuocNRuLPaIMy3O1m4b1Oetvp46jSD1P5rl
 YtIerCWWjrNikR4N+0E390G03Y8Ctv2OVrgF0Ol1sTB0tyPgo4SsdNgzH
 Y85lHK4OsCHqg3v8/qAQx+FoES/8SlMRXgsagoax1UhR13U5ScB4HdkL2 w==;
X-CSE-ConnectionGUID: 23+vvhrCSoSixDPnYvzDEQ==
X-CSE-MsgGUID: Gj2OLwDTTYqah5kXSoOYyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11831"; a="83174857"
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; d="scan'208";a="83174857"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2026 01:37:01 -0700
X-CSE-ConnectionGUID: cThrWzkYToKtCL0Q7jJf5Q==
X-CSE-MsgGUID: ZTqd1/pyQK2hsN7TA3cjmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; d="scan'208";a="250209467"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.253])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2026 01:36:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Cc: "Hodo, Martin" <martin.hodo@intel.com>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>
Subject: RE: [PATCH] drm/i915/hdcp: require monotonically increasing seq_num_v
In-Reply-To: <DS4PPFE901A304F2E6AD5691A968A6BA2ECE3EA2@DS4PPFE901A304F.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260625104407.1025614-1-jani.nikula@intel.com>
 <DS4PPFE901A304F2E6AD5691A968A6BA2ECE3EA2@DS4PPFE901A304F.namprd11.prod.outlook.com>
Date: Mon, 29 Jun 2026 11:36:56 +0300
Message-ID: <6bfadde9120c6203f01a3b29fa2a1350b5a47904@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CCD6A6D78D7

On Sat, 27 Jun 2026, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> Subject: [PATCH] drm/i915/hdcp: require monotonically increasing seq_num_v
>> 
>> The HDCP 2.2 specification requires the seq_num_v to be monotonically
>> increasing, and repeated seq_num_v needs to be treated as an integrity failure.
>> Make it so.
>> 
>> For the first message, seq_num_v must be zero, and is already checked. We can
>> only check for less-than-or-equal for the subsequent messages, where
>> hdcp2_encrypted is true.
>> 
>> Discovered using AI-assisted static analysis confirmed by Intel Product Security.
>> 
>> Reported-by: Martin Hodo <martin.hodo@intel.com>
>> Fixes: d849178e2c9e ("drm/i915: Implement HDCP2.2 repeater authentication")
>> Cc: <stable@vger.kernel.org> # v5.2+
>> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks for the review, pushed to din.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_hdcp.c | 7 ++++---
>>  1 file changed, 4 insertions(+), 3 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> index e88fec24af49..d097b478d010 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> @@ -1798,9 +1798,10 @@ int hdcp2_authenticate_repeater_topology(struct
>> intel_connector *connector)
>>  		return -EINVAL;
>>  	}
>> 
>> -	if (seq_num_v < hdcp->seq_num_v) {
>> -		/* Roll over of the seq_num_v from repeater. Reauthenticate.
>> */
>> -		drm_dbg_kms(display->drm, "Seq_num_v roll over.\n");
>> +	if (hdcp->hdcp2_encrypted && seq_num_v <= hdcp->seq_num_v) {
>> +		/* Reauthenticate on Seq_num_v repeat or rollover */
>> +		drm_dbg_kms(display->drm, "Seq_num_v %s\n",
>> +			    seq_num_v == hdcp->seq_num_v ? "repeat" :
>> "rollover");
>>  		return -EINVAL;
>>  	}
>> 
>> --
>> 2.47.3
>

-- 
Jani Nikula, Intel
