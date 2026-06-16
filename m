Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yqgDNdSMMWqLmQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 19:50:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CBA693866
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 19:50:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=cmrzoyDO;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC4B610E274;
	Tue, 16 Jun 2026 17:50:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2282E10E23D;
 Tue, 16 Jun 2026 17:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781632209; x=1813168209;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=KH/ZEucDCrpz0Zf2Iznw21K1tJ4jPz8wUPsLVBOvh+Q=;
 b=cmrzoyDO7L1xRcj2vltFGfp3gouzPOt2PnjpDpgIIVa4ijF1cVSsollF
 60FbSisU6jSTAc2auvOwPt8DcHEZ6X260p91TKlMMd3V8shynTTbgwvrj
 eNtcdTLdBj447IEyH2nyLrZ7s1bdWC17TTvxnkcj8wuTD/Tl2BYf/qw72
 xBaK+FrEN8AOR3A7loM02MgZ9NfGKSRG28LDjaM0Bq+Hr4Fk2F1c24fHl
 DnZR0O5s8Z1KRXm8sDgfy0YPjeJbnf4Op/ReicFH/cW34/mVjzipEZwys
 gSkbGn3GzyOuA+/Swhl9fWelsVoG2CQ7qZWs/e9TGMznEQ5en4yd7YLgN A==;
X-CSE-ConnectionGUID: sxK5eI42Shmr84En3DxtXg==
X-CSE-MsgGUID: j7gcOyGfTeK57qClmwPHsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="99979342"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="99979342"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 10:50:04 -0700
X-CSE-ConnectionGUID: h9qeEtz/Tl+lQflFQ8DyFQ==
X-CSE-MsgGUID: 3OS4RpGRSOOqZG4wdZJ76A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="247908592"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.15])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 10:50:01 -0700
Date: Tue, 16 Jun 2026 20:49:57 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 ville.syrjala@intel.com, matthew.d.roper@intel.com, shawn.c.lee@intel.com
Subject: Re: [PATCH] drm/i915/display: update to the BW buddy configuration
Message-ID: <ajGMxZ5XFzHk7YAQ@intel.com>
References: <20260616101553.226298-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260616101553.226298-1-vinod.govindapillai@intel.com>
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
X-Spamd-Result: default: False [0.40 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.71)[subject];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 45CBA693866

On Tue, Jun 16, 2026 at 01:15:53PM +0300, Vinod Govindapillai wrote:
> Bspec has been updated for xe2_lpd+ platforms on how to handle
> the bw buddy prgramming in case no matching memory configuration
> is found w.r.t the current page mask table. The recommendation
> is to keep the default settings for the related registers as it
> is without explicitly disabling the bw buddy.
> 
> Bspec: 68871
> Suggested-by: Ville Syrjala <ville.syrjala@intel.com>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 43 +++++++++++++------
>  1 file changed, 30 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 2e51dfcd5dce..dcfd78f48622 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1631,23 +1631,40 @@ static void tgl_bw_buddy_init(struct intel_display *display)
>  		    table[config].type == dram_info->type)
>  			break;
>  
> +	/*
> +	 * If we don't recognize the memory configuration, explicitly disable
> +	 * the address buddy logic in pre-xe2_lpd platforms as it was before.
> +	 * In xe2_lpd+ cases, page masks must be set to 0 if no matching
> +	 * configuration is found in the table. So keep the default settings
> +	 * as it is. By default, BW_BUDDY_CTL bit 31 is 0 (bw buddy enabled)
> +	 * and BW_BUDDY_PAGE_MASK is 0x0

This seems to mostly just repeat what the code already says.

> +	 *
> +	 * TODO: Revisit the buddy page masks table when bspec updates the
> +	 * table with the correct number of channels for each dram type.
> +	 */

That TODO is unrelated to the changes here, and also seems misplaced.

>  	if (table[config].page_mask == 0) {
>  		drm_dbg_kms(display->drm,
>  			    "Unknown memory configuration; disabling address buddy logic.\n");
> -		for_each_set_bit(i, &abox_mask, BITS_PER_TYPE(abox_mask))
> -			intel_de_write(display, BW_BUDDY_CTL(i),
> -				       BW_BUDDY_DISABLE);
> -	} else {
> -		for_each_set_bit(i, &abox_mask, BITS_PER_TYPE(abox_mask)) {
> -			intel_de_write(display, BW_BUDDY_PAGE_MASK(i),
> -				       table[config].page_mask);
> -
> -			/* Wa_22010178259:tgl,dg1,rkl,adl-s */
> -			if (intel_display_wa(display, INTEL_DISPLAY_WA_22010178259))
> -				intel_de_rmw(display, BW_BUDDY_CTL(i),
> -					     BW_BUDDY_TLB_REQ_TIMER_MASK,
> -					     BW_BUDDY_TLB_REQ_TIMER(0x8));
> +
> +		if (DISPLAY_VER(display) < 20) {
> +			for_each_set_bit(i, &abox_mask, BITS_PER_TYPE(abox_mask))
> +				intel_de_write(display, BW_BUDDY_CTL(i),
> +					       BW_BUDDY_DISABLE);
>  		}
> +
> +		return;
> +	}
> +
> +	/* We found a matching configuration. Program the BW_BUDDY registers. */

Seems obvious. The comment is redundant.

> +	for_each_set_bit(i, &abox_mask, BITS_PER_TYPE(abox_mask)) {
> +		intel_de_write(display, BW_BUDDY_PAGE_MASK(i),
> +			       table[config].page_mask);

Please split code restructuring from functional changes. This diff
is too hard to read.

> +
> +		/* Wa_22010178259:tgl,dg1,rkl,adl-s */
> +		if (intel_display_wa(display, INTEL_DISPLAY_WA_22010178259))
> +			intel_de_rmw(display, BW_BUDDY_CTL(i),
> +				     BW_BUDDY_TLB_REQ_TIMER_MASK,
> +				     BW_BUDDY_TLB_REQ_TIMER(0x8));
>  	}
>  }
>  
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
