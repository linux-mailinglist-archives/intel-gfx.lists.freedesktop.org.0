Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFWlFmtJzmknmgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 12:48:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B49E3387E35
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 12:48:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AC3310F0FF;
	Thu,  2 Apr 2026 10:48:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QEjn/4M1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6008910F0F1;
 Thu,  2 Apr 2026 10:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775126887; x=1806662887;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7qL/SF8P7OvcTsWNyXtwkAHNZz6h+NNR0jfEf+YTwP0=;
 b=QEjn/4M1Css3BDBLyURojjdUgnW0DOxiu81xbccyWGKhwM5jaUG2uj5R
 hTXubzV0vizHsH2yBMARkPYvzeRkJkbDVKbdndidnWhr4MqFe80ywxps1
 ajxmUKIvKnebW0jOZUgEdlRyBKGPjXG5plNO4jjFNxHWpC29AOdCM8ruA
 cjmRa1o0ViTXxvyMeiMzwu8hT8VibhjwzPc3cD82wxhu159aH65virSb6
 gkgOfFwvyaF2jD9332lTIv8aiRz9QD4Ur8f57/staA7PxYxWuuJoN38EE
 s1kiUpzXWHSV7bkYgYmMCsz7WjL/ZYrsgqZob61mKJq4Aosx7hS53DSZy Q==;
X-CSE-ConnectionGUID: egkmHgDtTEG9gTnDoKQ7+g==
X-CSE-MsgGUID: DUwtxtQAQaiXB2tcyU7rZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="101635955"
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="101635955"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 03:48:07 -0700
X-CSE-ConnectionGUID: v8yEbjqzS46F3u1+q1SDUA==
X-CSE-MsgGUID: 7czss89nTxylbr16SgZAaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="226920435"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.61])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 03:48:04 -0700
Date: Thu, 2 Apr 2026 13:48:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 animesh.manna@intel.com
Subject: Re: [PATCH 19/23] drm/i915/dp: Set relevant Downspread Ctrl DPCD
 bits for PR + Auxless ALPM
Message-ID: <ac5JYcs5eP31T7Bi@intel.com>
References: <20260402080425.548702-1-ankit.k.nautiyal@intel.com>
 <20260402080425.548702-20-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260402080425.548702-20-ankit.k.nautiyal@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
X-Rspamd-Queue-Id: B49E3387E35
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 02, 2026 at 01:34:19PM +0530, Ankit Nautiyal wrote:
> If a Panel Replay capable sink, supports Async Video timing in
> PR active state, then source does not necessarily need to send AS SDPs
> during PR active.
> 
> However, if asynchronous video timing is not supported, then for PR with
> Aux-less ALPM, the source must transmit Adaptive-Sync SDPs for video
> timing synchronization while PR is active.
> 
> If the source needs to send AS SDP during PR active, this requires setting
> DPCD 0x0107[6] (FIXED_VTOTAL_AS_SDP_EN_IN_PR_ACTIVE). This applies whether
> VRR is enabled (AVT/FAVT) or fixed-timing mode is used.
> 
> This bit defines AS SDP timing behavior during PR Active, even if AS SDPs
> are briefly suspended.
> 
> Program the relevant Downspread Ctrl DPCD bits accordingly.
> 
> v2: Instead of Panel Replay check simply use AS SDP enable check. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_dp_link_training.c    | 12 ++++++++++--
>  .../gpu/drm/i915/display/intel_dp_link_training.h    |  3 ++-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c          |  2 +-
>  3 files changed, 13 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index a26094223f78..8b21c479ebfc 100644
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
> @@ -34,6 +35,7 @@
>  #include "intel_dp.h"
>  #include "intel_dp_link_training.h"
>  #include "intel_encoder.h"
> +#include "intel_hdmi.h"
>  #include "intel_hotplug.h"
>  #include "intel_panel.h"
>  
> @@ -710,11 +712,14 @@ static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
>  	return true;
>  }
>  
> -void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate, bool is_vrr)
> +void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate,
> +				     bool is_vrr,
> +				     bool as_sdp_enable)
>  {
>  	u8 link_config[2];
>  
>  	link_config[0] = is_vrr ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
> +	link_config[0] |= as_sdp_enable ? DP_FIXED_VTOTAL_AS_SDP_EN_IN_PR_ACTIVE : 0;
>  	link_config[1] = drm_dp_is_uhbr_rate(link_rate) ?
>  			 DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
>  	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
> @@ -737,7 +742,10 @@ static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
>  	  * especially on the first real commit when clearing the inherited flag.
>  	  */
>  	intel_dp_link_training_set_mode(intel_dp,
> -					crtc_state->port_clock, crtc_state->vrr.in_range);
> +					crtc_state->port_clock,
> +					crtc_state->vrr.in_range,
> +					crtc_state->infoframes.enable &
> +					intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC));

The bit is only documented to be valid for panel replay capable
sinks. So we should probably not set it otherwise.

But the weird thing is that the AS SDP DB0[1:0] description does not
provide for a set of valid values for that case (DPCD 107h[7:6]=10b).
Either they assumed that AS SDP v1 is used in that case (in which case
the we'd not be able to support FAVT and maybe some other stuff without
PR), or it's just an oversight and the same values apply as for
107h[7:6]=10b as they do for 107h[7:6]=11b.

>  }
>  
>  void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> index 33dcbde6a408..d3ae8ee38a75 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> @@ -18,7 +18,8 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp);
>  bool intel_dp_lttpr_transparent_mode_enabled(struct intel_dp *intel_dp);
>  
>  void intel_dp_link_training_set_mode(struct intel_dp *intel_dp,
> -				     int link_rate, bool is_vrr);
> +				     int link_rate, bool is_vrr,
> +				     bool as_sdp_enable);
>  void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
>  				   int link_bw, int rate_select, int lane_count,
>  				   bool enhanced_framing, bool post_lt_adj_req);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index e8de17834dcd..ffd1cf0aad9a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -2142,7 +2142,7 @@ void intel_dp_mst_prepare_probe(struct intel_dp *intel_dp)
>  
>  	intel_dp_compute_rate(intel_dp, link_rate, &link_bw, &rate_select);
>  
> -	intel_dp_link_training_set_mode(intel_dp, link_rate, false);
> +	intel_dp_link_training_set_mode(intel_dp, link_rate, false, false);
>  	intel_dp_link_training_set_bw(intel_dp, link_bw, rate_select, lane_count,
>  				      drm_dp_enhanced_frame_cap(intel_dp->dpcd), false);
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
