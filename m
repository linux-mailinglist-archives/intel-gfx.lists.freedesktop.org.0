Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BI2tDB91Q2oJYwoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 09:49:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9236E1609
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 09:49:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ZGDxpVys;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4A7310E183;
	Tue, 30 Jun 2026 07:49:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A0B610E183;
 Tue, 30 Jun 2026 07:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782805788; x=1814341788;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=SzR/0OEPKvCkiPLjKNVIAPDqQySrUHKMnRI7BY//8c0=;
 b=ZGDxpVysaxk1bzMJu0A45QG8UGHQnoJbIrwr7LcvI4xrF0aeyjzpanrr
 O+LMGQ3wBcczf+R6dvNAPUvuILimlhMyUSfK9XtYohO5LpFdkWp+AXCoQ
 iN+68+vSjaD+ALGM8xku7YZjCOp6yoks1IjhEzBx0Zfp7i3DK4LvjWCjA
 kxKHfa97Xy3uB0H4AsumPgRB6s/FC/hW/CO2vhBVaOrdbp6IiZkdH0ThX
 8q6r8kO67nYIDtxraZg9uyj9p8BdgZmTDCWoCp+0LZB4aPNCpEiPjSN4A
 KsifbXUOQbUKdYDMEINpqV/Mu37Sf3vzOU1uVw8gbE8dCaO3lIYmYygLv w==;
X-CSE-ConnectionGUID: yxKGIoPFRtC52zOuIEBVpw==
X-CSE-MsgGUID: HNe0Pn7HTz6V59Z66u837g==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="93867459"
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="93867459"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 00:49:47 -0700
X-CSE-ConnectionGUID: SUq535XNSge/UOs+cDtg2Q==
X-CSE-MsgGUID: n9x3qRPTSqyRSIEK5sp1jA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="252332480"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.148])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 00:49:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Martin Hodo <martin.hodo@intel.com>, stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915/vrr: require valid min/max vfreq for VRR
In-Reply-To: <10218b5f-6720-4517-abf0-2ab7e8d4c9c6@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260625131040.1051272-1-jani.nikula@intel.com>
 <10218b5f-6720-4517-abf0-2ab7e8d4c9c6@intel.com>
Date: Tue, 30 Jun 2026 10:49:23 +0300
Message-ID: <4056174972373bd293c34c2813967f2165056b11@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5B9236E1609

On Fri, 26 Jun 2026, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 6/25/2026 6:40 PM, Jani Nikula wrote:
>> Ensure the EDID provided min/max vfreq are valid. Most scenarios are
>> already covered (by coincidence) through the checks in
>> intel_vrr_is_capable() and intel_vrr_is_in_range(), but be more explicit
>> about it. At worst, a zero min_vfreq could lead to a division by zero in
>> intel_vrr_compute_vmax().
>>
>> Discovered using AI-assisted static analysis confirmed by Intel Product
>> Security.
>>
>> Reported-by: Martin Hodo <martin.hodo@intel.com>
>> Fixes: 117cd09ba528 ("drm/i915/display/dp: Compute VRR state in atomic_check")
>> Cc: <stable@vger.kernel.org> # v5.12+
>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Makes sense.
>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Thanks for the review, pushed to drm-intel-next.

BR,
Jani.

>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 5d9b11185296..bffbdee76ee1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -76,6 +76,10 @@ bool intel_vrr_is_capable(struct intel_connector *connector)
>>   		return false;
>>   	}
>>   
>> +	if (!info->monitor_range.min_vfreq || !info->monitor_range.max_vfreq ||
>> +	    info->monitor_range.min_vfreq > info->monitor_range.max_vfreq)
>> +		return false;
>> +
>>   	return info->monitor_range.max_vfreq - info->monitor_range.min_vfreq > 10;
>>   }
>>   

-- 
Jani Nikula, Intel
