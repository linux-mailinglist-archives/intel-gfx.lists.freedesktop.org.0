Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMe6FHbNyml3AAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 21:22:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0773604B5
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 21:22:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4933810E79B;
	Mon, 30 Mar 2026 19:22:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gjedGJM8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C401410E6B4;
 Mon, 30 Mar 2026 19:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774898544; x=1806434544;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pdfXGSmUDAWy0jLYDsPorgRGF+3gJ2BCEmRq7KZAf5I=;
 b=gjedGJM8o4YOBa6iFyLGR3k76xxD+cnJr06Uq+yg7Vaojcj5OXRnpjm/
 zGOIIevQARZjtVyYWlZOfpkBvKA/8RujOfrLdH/YJOemYnOaEpzqMfaMW
 Elh2PBcZH6R2Ht1fMdhSqfbhJnkF506bqf998PfDETO6mqmEYAwPT1Mvd
 /domOg4bB/ABYTRdWWRsuSdf6rM290YVej0eyrCr4VXaycY6vy8WzqIUI
 Qc/eOJu1KJ5PFvhb27HHzLhds79hfmWJJfHioQPAH29iGKFztEFdFcxSp
 XML7xutpqNsNYLyVJr6Z5kfqH5KwbkyHhVVQGIDCsb+GHQipCfH73y+MR g==;
X-CSE-ConnectionGUID: pTrj8Et3SLiGfCSyerzBgQ==
X-CSE-MsgGUID: mU642TnRQa6/Y4qvWCfNlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="75964395"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="75964395"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 12:22:23 -0700
X-CSE-ConnectionGUID: 15dqvyyWSfGdeqWap4NVsQ==
X-CSE-MsgGUID: AIAXORKtS2W4J0PhNDFZBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="221740209"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.155])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 12:22:20 -0700
Date: Mon, 30 Mar 2026 22:22:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 animesh.manna@intel.com
Subject: Re: [PATCH 16/19] drm/i915/dp: Set relevant Downspread Ctrl DPCD
 bits for PR + Auxless ALPM
Message-ID: <acrNaac1_mT-V5r7@intel.com>
References: <20260330040656.4116502-1-ankit.k.nautiyal@intel.com>
 <20260330040656.4116502-17-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260330040656.4116502-17-ankit.k.nautiyal@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Queue-Id: EE0773604B5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 30, 2026 at 09:36:53AM +0530, Ankit Nautiyal wrote:
> To support Panel Replay with Auxless-ALPM, the source must transmit
> Adaptive-Sync SDPs for video timing synchronization while PR is active.
> As per the DP spec v2.1, this requires setting DPCD 0x0107[6]
> (FIXED_VTOTAL_AS_SDP_EN_IN_PR_ACTIVE). This applies whether VRR is enabled
> (AVT/FAVT) or fixed-timing mode is used.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 10 ++++++++--
>  drivers/gpu/drm/i915/display/intel_dp_link_training.h |  3 ++-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c           |  2 +-
>  3 files changed, 11 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 54c585c59b90..136cabf06fd9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -27,6 +27,7 @@
>  #include <drm/display/drm_dp_helper.h>
>  #include <drm/drm_print.h>
>  
> +#include "intel_alpm.h"
>  #include "intel_display_core.h"
>  #include "intel_display_jiffies.h"
>  #include "intel_display_types.h"
> @@ -710,11 +711,14 @@ static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
>  	return true;
>  }
>  
> -void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate, bool is_vrr)
> +void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate,
> +				     bool is_vrr,
> +				     bool is_pr_with_link_off)

>  {
>  	u8 link_config[2];
>  
>  	link_config[0] = is_vrr ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
> +	link_config[0] |= is_pr_with_link_off ? DP_FIXED_VTOTAL_AS_SDP_EN_IN_PR_ACTIVE : 0;

I think we should only set this if we are going to enable the AS SDP.

The bit seems to be perhaps a bit misnamed in the spec because you
apparently you have to set it even if you suspend AS SDP transmission
during PR active (when you have a sink with 
DP_PANEL_REPLAY_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR == 0). In that
case it seems to just mean that the sink will grab the coasting vtotal
from the last AS SDP transmitted prior to PR active.

>  	link_config[1] = drm_dp_is_uhbr_rate(link_rate) ?
>  			 DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
>  	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
> @@ -737,7 +741,9 @@ static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
>  	  * especially on the first real commit when clearing the inherited flag.
>  	  */
>  	intel_dp_link_training_set_mode(intel_dp,
> -					crtc_state->port_clock, crtc_state->vrr.in_range);
> +					crtc_state->port_clock,
> +					crtc_state->vrr.in_range,
> +					intel_alpm_is_alpm_aux_less(intel_dp, crtc_state));
>  }
>  
>  void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> index 1ba22ed6db08..3591210f8ee6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> @@ -18,7 +18,8 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp);
>  bool intel_dp_lttpr_transparent_mode_enabled(struct intel_dp *intel_dp);
>  
>  void intel_dp_link_training_set_mode(struct intel_dp *intel_dp,
> -				     int link_rate, bool is_vrr);
> +				     int link_rate, bool is_vrr,
> +				     bool is_pr_with_link_off);
>  void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
>  				   int link_bw, int rate_select, int lane_count,
>  				   bool enhanced_framing);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 887b6de14e46..2201cf7ce015 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -2142,7 +2142,7 @@ void intel_dp_mst_prepare_probe(struct intel_dp *intel_dp)
>  
>  	intel_dp_compute_rate(intel_dp, link_rate, &link_bw, &rate_select);
>  
> -	intel_dp_link_training_set_mode(intel_dp, link_rate, false);
> +	intel_dp_link_training_set_mode(intel_dp, link_rate, false, false);
>  	intel_dp_link_training_set_bw(intel_dp, link_bw, rate_select, lane_count,
>  				      drm_dp_enhanced_frame_cap(intel_dp->dpcd));
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
