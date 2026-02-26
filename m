Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCNJMlZxoGk7jwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 17:14:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A8F1A9CDE
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 17:14:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88AB010E9BD;
	Thu, 26 Feb 2026 16:14:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kwStcESd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D284710E9B4;
 Thu, 26 Feb 2026 16:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772122452; x=1803658452;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FIOxUjiLZOLP2CLm/aDwpvmOH+TBYz/pqwe/L6AR1hg=;
 b=kwStcESdgp89ES982A0eKNxokLH29cYNefPfgURLJtYA/KvS/7OF8Y+a
 M4vt4YtkqD0lhuE5nmnLvT+YIOYCDQiUJcVQ8vXD5cw8+juVN2TPuDCWA
 H6dPhpeqawrFjG1zANPNMTg5ZUMNjwVV7PLDpwrhqBaSexbXdP9w1Ls1x
 o9yeAhCD3Uwh8MwBtrbE99ZRHkx3Jt155tS5TR5eCQGcDA9iWNOb5E7Ez
 C73EpTTmm2Hgn0cjBo8NNK8sZp4UILWhzEWI/Oi8MdcIxqH9x3GbaSUVw
 CMQECS1zQg+ppKO9xTpVxu0CGxnrcjcmLjA/5Ed8X9JwERvPigWEk61PM g==;
X-CSE-ConnectionGUID: JoZZcTKQTfSSWhnTAOBRJw==
X-CSE-MsgGUID: 0bu0xsarQQC053a4WrajlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="73097029"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="73097029"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 08:14:12 -0800
X-CSE-ConnectionGUID: KQyT7tyZRzGCqbXZios6OA==
X-CSE-MsgGUID: yq5iz4XMRyGZ08pdmqF1IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="221234657"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 08:14:09 -0800
Date: Thu, 26 Feb 2026 18:14:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 11/14] drm/i915/dp: Program AS SDP DB[1:0] for PR with
 Link off
Message-ID: <aaBxTmXGrgAHQ4Ix@intel.com>
References: <20260223134431.1639308-1-ankit.k.nautiyal@intel.com>
 <20260223134431.1639308-12-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260223134431.1639308-12-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 59A8F1A9CDE
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 07:14:28PM +0530, Ankit Nautiyal wrote:
> For Panel Replay with AUX-less ALPM (link-off PR), the source must send
> Adaptive-Sync SDP v2. Program DB[1:0] per DP spec v2.1:
> - VRR AVT: 00b (variable VTotal)
> - VRR FAVT: 10b/11b (TRR not reached/reached)
> - Fixed timing with PR link-off (VRR off): 01b (AS disabled; VTotal fixed)
> 
> Select SDP version v2 whenever PR link-off or VRR is active, otherwise v1,
> and program the AS SDP DB[1:0] bits.
> 
> Also, drop the redundant target_rr assignment.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 5952db6197cf..ad2aceb526ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3139,7 +3139,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>  	as_sdp->duration_incr_ms = 0;
>  	as_sdp->version = 0x2;
>  
> -	if (crtc_state->vrr.enable)
> +	if (crtc_state->vrr.enable || intel_psr_is_pr_with_link_off(crtc_state))
>  		as_sdp->version = 0x2;
>  	else
>  		as_sdp->version = 0x1;
> @@ -3154,9 +3154,10 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>  		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
>  		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
>  		as_sdp->target_rr_divider = true;
> -	} else {
> +	} else if (crtc_state->vrr.enable) {
>  		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
> -		as_sdp->target_rr = 0;
> +	} else if (intel_psr_is_pr_with_link_off(crtc_state)) {
> +		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
>  	}
 else {
  what now?
 }
>  }
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
