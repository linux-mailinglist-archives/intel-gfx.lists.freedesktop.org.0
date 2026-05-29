Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uOlQK95vGWqNwggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 12:52:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7CD601260
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 12:52:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00DF210FCF3;
	Fri, 29 May 2026 10:52:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PCKKIiVI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE7DE10FCF3;
 Fri, 29 May 2026 10:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780051931; x=1811587931;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5fqI9O2l9lZdU/NqnMWcsXlzcYVhGZK49MUttijiTH0=;
 b=PCKKIiVI8/Tchb08tz+H9FaxsDm9opGGhyNBedlG+kwJjyJisc6IeQQA
 ncnllkKWE47XIPWxOzFbwTxRFV7EiE79eRZtjobhimFgngAtTl4sBoaCn
 zYB1o0Cq88FpWtoMMxNwjTNcoGnDPrzHIvd7mLO727LAS5jCy7ThaNgt0
 pTrpV+5dmoe8xuuEBRkgwyRqwvSiWtvb1lb7KZ15KZjRipNdBg/fuJIM3
 zU4UI9XboHuGA2/27kQKpIVbJueFunMHTgYLOQSNkJ8BFqAjI2YMC0QPF
 tonsEmnnEHmQM5vTjaasrxy1EFnfkyLBlYtqlexsYqBmYUOflOS6NmCmM Q==;
X-CSE-ConnectionGUID: fbC+Z+zlQPWYTrQ5ineBpA==
X-CSE-MsgGUID: kyWI3EbFRaOdyuoRCD/Qhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="84527346"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="84527346"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 03:52:10 -0700
X-CSE-ConnectionGUID: XMazAdRSSw2/DDicLZue/A==
X-CSE-MsgGUID: I3x2wY13S760H/qOnzS13g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="236469221"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.182])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 03:52:08 -0700
Date: Fri, 29 May 2026 13:52:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 jani.nikula@intel.com
Subject: Re: [PATCH v7 08/15] drm/i915/cmtg: Add a hook to make eDP
 transcoder secondary
Message-ID: <ahlv1JSW-psLZ1Lg@intel.com>
References: <20260526133811.2621675-1-animesh.manna@intel.com>
 <20260526133811.2621675-9-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260526133811.2621675-9-animesh.manna@intel.com>
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
X-Spamd-Result: default: False [0.22 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.53)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Queue-Id: 1D7CD601260
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 26, 2026 at 07:08:04PM +0530, Animesh Manna wrote:
> Program DDI_FUNC_CTL2 to configure the eDP transcoder as secondary
> to the CMTG transcoder.
> 
> v2:
> - Update commit header to be more clear. [Uma]
> 
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c | 13 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg.h |  1 +
>  2 files changed, 14 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 63e430f7e63b..34715280d65d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -359,3 +359,16 @@ void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state)
>  			 transcoder_name(cpu_transcoder));
>  	}
>  }
> +
> +void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;
> +
> +	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, cpu_transcoder), 0, CMTG_SECONDARY_MODE);

We already have a place where we configure TRANS_DDI_FUNC_CTL2.
Why is this not there?

> +
> +	drm_dbg_kms(display->drm, "CMTG: %s enabled\n", transcoder_name(cpu_transcoder));
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index 64ff6a19948a..12abbafa7d08 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -11,6 +11,7 @@
>  struct intel_display;
>  struct intel_crtc_state;
>  
> +void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state);
>  void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state);
>  void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state);
>  void intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_state);
> -- 
> 2.29.0

-- 
Ville Syrjälä
Intel
