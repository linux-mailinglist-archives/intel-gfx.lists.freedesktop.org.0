Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id R9xXEtcuQmqo1QkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 10:37:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8224C6D78F0
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 10:37:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=IJcCJLZQ;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EF2210E76B;
	Mon, 29 Jun 2026 08:37:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0163A10E064;
 Mon, 29 Jun 2026 08:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782722260; x=1814258260;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=npwcDl1Hy2s+m0+wVi0Quc/JHORszY3gdPIGD7SMNJY=;
 b=IJcCJLZQoVsltKaPJ+6YVoPmpVcSOkkHNzI5W04w3LZuIdVPctNqbaoe
 BbKKy05lPNjZo0nwfATajd4QDP9/aBN6WSLeEmXkJNzd4e7XOLsayCzp4
 8iqNCSdSp8BMAaHh74iHL7IhNXZJR3ZYwUPnb2XrAfMauBhAeY3MkL3Ts
 RKme4R1RRisyx7qO6FS1x/SIO1MIVeu052D9zmlKVj1edDmsWhlWVSEVf
 nPM31aH7mvH5s58tAsDkzRKZYirOF9VPBfYLudxAYahRRS5/HYHXdhK0W
 Jy2tj6Bpy1Zz3VFybKyodrKhTWWdV62c4Z66OR9Q2dEG/5pG1K6PJbGgs Q==;
X-CSE-ConnectionGUID: V5+TrBq1RV6mmtVXCgj77g==
X-CSE-MsgGUID: +G2SGjvyTPK/frhS+fudew==
X-IronPort-AV: E=McAfee;i="6800,10657,11831"; a="87098161"
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; d="scan'208";a="87098161"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2026 01:37:40 -0700
X-CSE-ConnectionGUID: SBh23sn9QW2WxfZMj+T9ug==
X-CSE-MsgGUID: Ub5XMegeQnG2vLtGvjuvyQ==
X-ExtLoop1: 1
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.253])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2026 01:37:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Cc: "Hodo, Martin" <martin.hodo@intel.com>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>, "Gupta, Anshuman" <anshuman.gupta@intel.com>
Subject: RE: [PATCH] drm/i915/hdcp: check streams[] bounds before overflow
In-Reply-To: <DS4PPFE901A304F58021028E7F8F29EE9C7E3EA2@DS4PPFE901A304F.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260625170304.1104723-1-jani.nikula@intel.com>
 <DS4PPFE901A304F58021028E7F8F29EE9C7E3EA2@DS4PPFE901A304F.namprd11.prod.outlook.com>
Date: Mon, 29 Jun 2026 11:37:35 +0300
Message-ID: <b7add5ab7a91e3a9aeb6843ece665334de80b6d8@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8224C6D78F0

On Sat, 27 Jun 2026, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> Subject: [PATCH] drm/i915/hdcp: check streams[] bounds before overflow
>> 
>> The data->streams[] overflow check is done after the buffer overflow has
>> already happened. Move the overflow check before the write.
>> 
>> Side note, emitting a warning splat with a backtrace might be overkill here, but
>> prefer not changing the behaviour other than not doing the overrun.
>> 
>> Discovered using AI-assisted static analysis confirmed by Intel Product Security.
>> 
>> Reported-by: Martin Hodo <martin.hodo@intel.com>
>> Fixes: e03187e12cae ("drm/i915/hdcp: MST streams support in hdcp
>> port_data")
>> Cc: <stable@vger.kernel.org> # v5.12+
>> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
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
>>  drivers/gpu/drm/i915/display/intel_hdcp.c | 5 ++++-
>>  1 file changed, 4 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> index e88fec24af49..521786a75c42 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> @@ -145,6 +145,9 @@ intel_hdcp_required_content_stream(struct
>> intel_atomic_state *state,
>>  		if (!new_conn_state || !new_conn_state->crtc)
>>  			continue;
>> 
>> +		if (drm_WARN_ON(display->drm, data->k >=
>> INTEL_NUM_PIPES(display)))
>> +			return -EINVAL;
>> +
>>  		data->streams[data->k].stream_id =
>>  			intel_conn_to_vcpi(state, connector);
>>  		data->k++;
>> @@ -155,7 +158,7 @@ intel_hdcp_required_content_stream(struct
>> intel_atomic_state *state,
>>  	}
>>  	drm_connector_list_iter_end(&conn_iter);
>> 
>> -	if (drm_WARN_ON(display->drm, data->k > INTEL_NUM_PIPES(display)
>> || data->k == 0))
>> +	if (drm_WARN_ON(display->drm, !data->k))
>>  		return -EINVAL;
>> 
>>  	/*
>> --
>> 2.47.3
>

-- 
Jani Nikula, Intel
