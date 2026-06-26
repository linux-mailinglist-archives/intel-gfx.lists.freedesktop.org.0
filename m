Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SWaHLFaBPmqfHAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 15:40:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEDE6CD8C2
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 15:40:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=nF+P0lST;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB5CD899D4;
	Fri, 26 Jun 2026 13:40:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10410899D4;
 Fri, 26 Jun 2026 13:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782481236; x=1814017236;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=48Pim0lMg4gKLMN3rRL4MvTGI1hNae5Mm41LxYs+uF4=;
 b=nF+P0lST1dtoQePvkbHpbCjmF/Xtmljs7fBOl9QmoktzVCigzv/vKi30
 B5oxZnu7irtQqX0X1+uhpq879jmINUpjg4BKsRtZwNQM4GDJ01wacYoRQ
 6uxKQt3QnasPuQtnvDJMQyxDbhJUAU9X9upJfhL1QaINfBbhauxbFNGY9
 OlbUw4Gi15CmOyVsxrIZrtA0ftMOmJzVSCbR5NEU7/av1e19EbFnTwjgh
 HSXUzBqMrgDCO8h1IaKnrDBPa/A/DrMHC7SB2IWIknXVwOXuRbrPzSxZT
 LpbXksdbqa0LJYkqTtvuS/VzWWfedqigBFBoMx+KZbNOKgGw7p73fq/aR w==;
X-CSE-ConnectionGUID: P/Qu/Gw7S0at1DBI+QjJoA==
X-CSE-MsgGUID: K6cjBZNQQPyoSvQaeK7fGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11829"; a="83407557"
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; d="scan'208";a="83407557"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 06:40:36 -0700
X-CSE-ConnectionGUID: LracXZC9Qk6AejU5egDuDg==
X-CSE-MsgGUID: cQf+2PfYTruPG7dcR8SvbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; d="scan'208";a="253241652"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.107])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 06:40:34 -0700
Date: Fri, 26 Jun 2026 16:40:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Martin Hodo <martin.hodo@intel.com>, stable@vger.kernel.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH] drm/i915/vrr: require valid min/max vfreq for VRR
Message-ID: <aj6BTiskgYhSUGYd@intel.com>
References: <20260625131040.1051272-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260625131040.1051272-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.36 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.67)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linux.intel.com:from_mime,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4AEDE6CD8C2

On Thu, Jun 25, 2026 at 04:10:40PM +0300, Jani Nikula wrote:
> Ensure the EDID provided min/max vfreq are valid. Most scenarios are
> already covered (by coincidence) through the checks in
> intel_vrr_is_capable() and intel_vrr_is_in_range(), but be more explicit
> about it. At worst, a zero min_vfreq could lead to a division by zero in
> intel_vrr_compute_vmax().
> 
> Discovered using AI-assisted static analysis confirmed by Intel Product
> Security.
> 
> Reported-by: Martin Hodo <martin.hodo@intel.com>
> Fixes: 117cd09ba528 ("drm/i915/display/dp: Compute VRR state in atomic_check")
> Cc: <stable@vger.kernel.org> # v5.12+
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 5d9b11185296..bffbdee76ee1 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -76,6 +76,10 @@ bool intel_vrr_is_capable(struct intel_connector *connector)
>  		return false;
>  	}
>  
> +	if (!info->monitor_range.min_vfreq || !info->monitor_range.max_vfreq ||
> +	    info->monitor_range.min_vfreq > info->monitor_range.max_vfreq)
> +		return false;

Perhaps it should be the responsibility of the EDID parser to make sure
the range isn't completely insane?

> +
>  	return info->monitor_range.max_vfreq - info->monitor_range.min_vfreq > 10;

I've been tempted to get rid of this completely arbitrary 10Hz thing as well.

>  }
>  
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
