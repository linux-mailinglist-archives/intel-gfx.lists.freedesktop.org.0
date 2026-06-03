Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +Gl7ABMoIGpxxwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 15:11:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 591A9637EB1
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 15:11:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VZGmRBsP;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 273F810FDCA;
	Wed,  3 Jun 2026 13:11:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA3A910FDCA;
 Wed,  3 Jun 2026 13:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780492303; x=1812028303;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ibHnL53KeFifM7khX+GlxH7CQBL84g4dyUSBzg2L9OU=;
 b=VZGmRBsP+cRpLTnCqS1T2qQuWZLCz3trgTaHwmZ2D6ByOIeSy7rCI89z
 e2bbeu8Qqf+aXTMBObvuZyEBcg0eHOmSilnC/7pHdlE0J7kvKi2FeScrB
 HvpYqSDK6Cq+jMpWStbq6MznHgfM5E05j+v0WiIalZwaGgm45ZNjAzBB4
 rUGcQi1owYth1Sq1ys21srTwUevVvqWnY13WTCjuQ7YoyepT1qGGMWNe4
 uPI2KLp2AyPnO0TNh2RxkS+KWW1Rnbvt/vOb/d2Tc4N60eRBhtyDsFPmr
 VjdZfzhPsiucl4xSjrjNedB3oXszQFHXmHlNoEAg6iC7qd/VsA9qrgn6e Q==;
X-CSE-ConnectionGUID: ST4004IcS+iMOnJ5RkIaDg==
X-CSE-MsgGUID: 52hBxZInRWe4XMA37lYYDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="81296248"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="81296248"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 06:11:42 -0700
X-CSE-ConnectionGUID: GpUJSLbiQAWKNREIyRYWYQ==
X-CSE-MsgGUID: abQLkqnQSt6w4RBfxgJFAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="239767163"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.220])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 06:11:40 -0700
Date: Wed, 3 Jun 2026 16:11:37 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org,
 Michal Wajdeczko <michal.wajdeczko@intel.com>
Subject: Re: [PATCH] drm/xe/ggtt: clear reserved area at GUC_GGTT_TOP.
Message-ID: <aiAoCSGEOzHxwwMd@intel.com>
References: <20260527144527.3701844-2-rodrigo.vivi@intel.com>
 <80f3d370-7211-437f-a4d1-ef246eb47b7b@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <80f3d370-7211-437f-a4d1-ef246eb47b7b@linux.intel.com>
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
X-Spamd-Result: default: False [-0.54 / 15.00];
	R_MIXED_CHARSET(0.77)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:mid,intel.com:dkim,intel.com:email,linux.intel.com:from_mime,lankhorst.se:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 591A9637EB1

On Wed, Jun 03, 2026 at 02:57:48PM +0200, Maarten Lankhorst wrote:
> Hello,
> 
> On 5/27/26 16:45, Rodrigo Vivi wrote:
> > The PF GGTT allocator was initialised over a relative [0, usable_size)
> > range, with ggtt->start added on every address conversion to get the
> > actual hardware address.  Two consequences of that model were considered
> > "horrible hacks":
> > 
> >   - ggtt->start (the WOPCM offset) had to be carried around and added
> >     to every drm_mm result.
> This is still the case, only we add a separate variable now that is usually 0.
> We always have to ensure that this is correctly accounted
> for, otherwise we get subtle bugs, so there's no reason not to use it,
> if it's already used everywhere.
> 
> Whether it's 0 or wopcm_start doesn't change the result.
> 
> >   - The GUC_GGTT_TOP ceiling silently truncated the GGTT range instead
> >     of being made explicit, leaving PTEs in [GUC_GGTT_TOP, total_size)
> >     untouched during the initial clear.
> This is a valid concern, but it's very easily be fixed inside the initial clear
> by calling xe_ggtt_clear once more with a comment for !VF case.
> 
> Something like below is enough to fix it. Adding a reserved region at the end/start
> is not the way to do so and just adds more complications.
> ---8<---
> When initialising GGTT, we never clear the part above GUC_GGTT_TOP.
> Add a member to &xe_ggtt that holds the full GGTT size, and clear it
> during the pass at xe_ggtt_initial_clear.
> 
> Reported-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
> diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
> index 8ec23862477fc..497b99a932f0d 100644
> --- a/drivers/gpu/drm/xe/xe_ggtt.c
> +++ b/drivers/gpu/drm/xe/xe_ggtt.c
> @@ -115,6 +115,8 @@ struct xe_ggtt {
>  	u64 start;
>  	/** @size: Total usable size of this GGTT */
>  	u64 size;
> +	/** @entire_size: complete size of the accessible GGTT, reserved regions inclusive */
> +	u64 entire_size;
>  	/**
>  	 * @flags: Flags for this GGTT.
>  	 * Acceptable flags:
> @@ -406,7 +408,8 @@ int xe_ggtt_init_early(struct xe_ggtt *ggtt)
>  			return -ENOMEM;
>  		}
>  		ggtt_start = wopcm;
> -		ggtt_size = (gsm_size / 8) * (u64)XE_PAGE_SIZE - ggtt_start;
> +		ggtt->entire_size = (gsm_size / 8) * (u64)XE_PAGE_SIZE;
> +		ggtt_size = ggtt->entire_size - ggtt_start;
>  	} else {
>  		ggtt_start = xe_tile_sriov_vf_ggtt_base(ggtt->tile);
>  		ggtt_size = xe_tile_sriov_vf_ggtt(ggtt->tile);
> @@ -417,6 +420,7 @@ int xe_ggtt_init_early(struct xe_ggtt *ggtt)
>  				    ggtt_start, ggtt_start + ggtt_size - 1);
>  			return -ERANGE;
>  		}
> +		ggtt->entire_size = ggtt_size;
>  	}
>  
>  	ggtt->gsm = ggtt->tile->mmio.regs + SZ_8M;
> @@ -461,6 +465,10 @@ static void xe_ggtt_initial_clear(struct xe_ggtt *ggtt)
>  	drm_mm_for_each_hole(hole, &ggtt->mm, start, end)
>  		xe_ggtt_clear(ggtt, ggtt->start + start, end - start);
>  
> +	end = ggtt->start + ggtt->size;
> +	if (ggtt->entire_size > end)
> +		xe_ggtt_clear(ggtt, end, ggtt->entire_size - end);

You'll need the same thing for the 0 to ggtt->start range.

> +
>  	xe_ggtt_invalidate(ggtt);
>  	mutex_unlock(&ggtt->lock);
>  }

-- 
Ville Syrjälä
Intel
