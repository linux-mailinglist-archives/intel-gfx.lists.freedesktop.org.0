Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id auW5HDCHMmon1gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 13:38:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E110F6992BE
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 13:38:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=dzAaN8YX;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0CBE10EFBA;
	Wed, 17 Jun 2026 11:38:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F9DD10EFB4;
 Wed, 17 Jun 2026 11:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781696300; x=1813232300;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=1U9KKPgGmyjcqMbOe5Px70RiIF+afP1QiBox3D0vvxI=;
 b=dzAaN8YXuqU7GRhc+uVBFd6IviemKqM8kc1kmPVJ+OystFiRDPSA1lI/
 GxyB+mF3vTaCFnruOKg2yZwWirp6CXQaXxplnNVJjzD0DSPvpyhMmwOH1
 xe7nw7PM4CRvfWF9trt25uR3RDqJ0OMfVxk0KjeIn84GJOsf6Ca5VNurZ
 TcykwPSDCqA81rnJVeM+NGTTe8CK/KGIOFSnCsPTnI7Y23lpJiNzFVbdV
 IhXSZU+wHgtpIBsB3goPMV42NdupRbpAp/hZYZ2YIkwTrqVERsMjNzsuL
 R5Rc0Rshjb0lovRaExcLpX6D7TBAIsw6u5C/wCHr2uo5UgXp5IDL1L5DZ A==;
X-CSE-ConnectionGUID: BBpHRK6xTAKy90RsOFT1AA==
X-CSE-MsgGUID: IWvpcR3GRJabeZj4XycqnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="99898372"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="99898372"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 04:38:20 -0700
X-CSE-ConnectionGUID: 5LRS2+tnSEKCFI+wYxS6OA==
X-CSE-MsgGUID: uZ9icDdpRjaEznkloO3ApQ==
X-ExtLoop1: 1
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.158])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 04:38:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@linux.intel.com,
 matthew.d.roper@intel.com, shawn.c.lee@intel.com
Subject: Re: [PATCH v2] drm/i915/display: update to the BW buddy configuration
In-Reply-To: <20260616184131.295013-1-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260616184131.295013-1-vinod.govindapillai@intel.com>
Date: Wed, 17 Jun 2026 14:38:15 +0300
Message-ID: <4abfacf0bf38d230f5b5ed6236d2f28cd9a77f3e@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_SEVEN(0.00)[7];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,linux.intel.com:from_mime,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E110F6992BE

On Tue, 16 Jun 2026, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Bspec has been updated for xe2_lpd+ platforms on how to handle
> the bw buddy prgramming in case no matching memory configuration
> is found w.r.t the current page mask table. The recommendation
> is to keep the default settings for the related registers as it
> is without explicitly disabling the bw buddy.
>
> v2: removed extra explanation
>
> Bspec: 68871
> Suggested-by: Ville Syrjala <ville.syrjala@intel.com>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 2e51dfcd5dce..3d348c5decee 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1634,9 +1634,12 @@ static void tgl_bw_buddy_init(struct intel_display *display)
>  	if (table[config].page_mask == 0) {
>  		drm_dbg_kms(display->drm,
>  			    "Unknown memory configuration; disabling address buddy logic.\n");

The debug logging becomes misleading for display >= 20.

BR,
Jani.

> -		for_each_set_bit(i, &abox_mask, BITS_PER_TYPE(abox_mask))
> -			intel_de_write(display, BW_BUDDY_CTL(i),
> -				       BW_BUDDY_DISABLE);
> +
> +		if (DISPLAY_VER(display) < 20) {
> +			for_each_set_bit(i, &abox_mask, BITS_PER_TYPE(abox_mask))
> +				intel_de_write(display, BW_BUDDY_CTL(i),
> +					       BW_BUDDY_DISABLE);
> +		}
>  	} else {
>  		for_each_set_bit(i, &abox_mask, BITS_PER_TYPE(abox_mask)) {
>  			intel_de_write(display, BW_BUDDY_PAGE_MASK(i),

-- 
Jani Nikula, Intel
