Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NTVObcFtGnjfQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 13:40:23 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8AA283277
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 13:40:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66F1D10EBD8;
	Fri, 13 Mar 2026 12:40:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="du6wncPk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADCF210EB91;
 Fri, 13 Mar 2026 12:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773405620; x=1804941620;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lftuJTRKnc5D/QCh34HBglTEbNopnnHKYQJjTxnUxUY=;
 b=du6wncPkpqNEKSxNRBeVhr8kWaYFEFNsr2mpM1/4GFCM+I0uOVbDjySD
 VUzHKqGnFniiSr+qTr0Ow3FTLCYBKM4F3FKkJ7f4XTZy1U+29wnwCEAHR
 U/dvfkHWh78q49s0lNF7I4jp/PmIVAtDt+tsM25/ecJEqKryZytU2YOq+
 F0ztRByz0qIAVOTp8I0y5bo3vFviprbct6MYXdthB2adMhtWrOJvtOiDi
 sfWPfiv01EgRbRpbEngHr/WIxyva4IbjNyPf5TduKyldpeBMfajagKHwv
 ykbsAXtXytw8Sjch4TsiBOUtCilP9A+7ndNmUd8GIleJgyCfqU5L/0lvg w==;
X-CSE-ConnectionGUID: 01rXmuyNQuSnavDAo6GJ2w==
X-CSE-MsgGUID: dkUT+NTmQSKI5AFYhxOwog==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="78361951"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="78361951"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 05:40:19 -0700
X-CSE-ConnectionGUID: fpI1WfLQS2SJ5BrTjVNvSA==
X-CSE-MsgGUID: TB012AUhTKig6UBarvJNCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="216068206"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.21])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 05:40:17 -0700
Date: Fri, 13 Mar 2026 14:40:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 animesh.manna@intel.com
Subject: Re: [PATCH 16/19] drm/i915/dp: Program AS SDP DB[1:0] for PR with
 Link off
Message-ID: <abQFrq5efloK7EXt@intel.com>
References: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
 <20260311113611.3393194-17-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260311113611.3393194-17-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 6D8AA283277
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 05:06:08PM +0530, Ankit Nautiyal wrote:
> For Panel Replay with AUX-less ALPM (link-off PR), the source must send
> Adaptive-Sync SDP v2. Program DB[1:0] per DP spec v2.1:
> - VRR AVT: 00b (variable VTotal)
> - VRR FAVT: 10b/11b (TRR not reached/reached)
> - Fixed timing with PR link-off (VRR off): 01b (AS disabled; VTotal fixed)
> 
> Also, drop the redundant target_rr assignment.
> 
> v2: Fix the else case. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 74a8af3cf18c..2b0318e0ceb0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3161,9 +3161,10 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>  		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
>  		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
>  		as_sdp->target_rr_divider = true;
> -	} else {
> +	} else if (crtc_state->vrr.enable) {

Due to the lack of fastset for this we pretty much need a
s/crtc_state->vrr.enable/vrr_possible()/ pass over everything.

But for now this is at least more correct than the current thing, so
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
> -		as_sdp->target_rr = 0;
> +	} else {
> +		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
>  	}
>  }
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
