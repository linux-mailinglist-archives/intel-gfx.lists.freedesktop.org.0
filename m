Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GOjdIYdxEGqgXQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 17:08:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E57945B6AB7
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 17:08:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C9DC10E26B;
	Fri, 22 May 2026 15:08:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ed/pJK7l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAE8210E23D;
 Fri, 22 May 2026 15:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779462533; x=1810998533;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2iAajBai3wvKfiIY6Tx32lkYrEM3ANWtdvjOWFSOmEI=;
 b=Ed/pJK7lZp4CD2I1+VIUKjyXMk/pf9x6eU4Bgy84PSLuI93ETJfmcoI2
 fXBard/TOKsD+CpDVXFTqQP5opE4gs2hHJCYzR+ZH42Gyw8Iyuv1ud0CT
 t3AIA2VASuLfm/R/NjZ+HnN999OvnLN5KCisdIB+JruNYDXtxAPsECc2d
 PM3fpC4dv+ve4xAWdwMOAps28RKczufCC4hB9dY88v7qAWFT1I9bDD9NY
 Y+4dlAYMhfvZiFPau6XEvIOO+a+1v2T0KRAAzVsZ0OxZnHGxvTxM8KpFK
 KbiZvGRacyFo6bWHkY3+aLIYcfZRr21ia1E8v5x7MN8hAiwDalh0d8bes g==;
X-CSE-ConnectionGUID: TUzMg2MaT4WreMdOFPSWrQ==
X-CSE-MsgGUID: VqWZS3LTStKfwLOr7AawRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="84012174"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="84012174"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 08:08:52 -0700
X-CSE-ConnectionGUID: 5+IUBpXuR2mREo+V3qnSGw==
X-CSE-MsgGUID: zAbnes9CRxeWZx9KGxG2sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="236500651"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.187])
 by fmviesa006-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 May 2026 08:08:50 -0700
Date: Fri, 22 May 2026 18:08:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 07/11] drm/i915/dp: Set relevant Downspread Ctrl DPCD
 bits for PR + Auxless ALPM
Message-ID: <ahBxfslq0xVmlGq_@intel.com>
References: <20260518035502.2909359-1-ankit.k.nautiyal@intel.com>
 <20260518035502.2909359-8-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260518035502.2909359-8-ankit.k.nautiyal@intel.com>
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
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: E57945B6AB7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 18, 2026 at 09:24:57AM +0530, Ankit Nautiyal wrote:
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
> v3: Since the bit is defined in context of Panel Replay and AS SDP, add
>     a check for both. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_dp_link_training.c | 15 +++++++++++++--
>  .../gpu/drm/i915/display/intel_dp_link_training.h |  3 ++-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c       |  2 +-
>  3 files changed, 16 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index a26094223f78..d0b033d2cfb4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -34,8 +34,10 @@
>  #include "intel_dp.h"
>  #include "intel_dp_link_training.h"
>  #include "intel_encoder.h"
> +#include "intel_hdmi.h"
>  #include "intel_hotplug.h"
>  #include "intel_panel.h"
> +#include "intel_psr.h"
>  
>  #define LT_MSG_PREFIX			"[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] "
>  #define LT_MSG_ARGS(_intel_dp, _dp_phy)	(_intel_dp)->attached_connector->base.base.id, \
> @@ -710,11 +712,14 @@ static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
>  	return true;
>  }
>  
> -void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate, bool is_vrr)
> +void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate,
> +				     bool is_vrr,
> +				     bool pr_with_as_sdp_enable)
>  {
>  	u8 link_config[2];
>  
>  	link_config[0] = is_vrr ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
> +	link_config[0] |= pr_with_as_sdp_enable ? DP_FIXED_VTOTAL_AS_SDP_EN_IN_PR_ACTIVE : 0;
>  	link_config[1] = drm_dp_is_uhbr_rate(link_rate) ?
>  			 DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
>  	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
> @@ -723,6 +728,10 @@ void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate, b
>  static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
>  					    const struct intel_crtc_state *crtc_state)
>  {
> +	bool pr_with_as_sdp_enable =
> +		intel_psr_needs_alpm_aux_less(intel_dp, crtc_state) &&
> +		crtc_state->infoframes.enable & intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);

This whole thing could be a function instead of a variable.

The use of intel_psr_needs_alpm_aux_less() is a bit confusing here,
but I guess it (at least currently) does the right thing.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +
>  	 /*
>  	  * Currently, we set the MSA ignore bit based on vrr.in_range.
>  	  * We can't really read that out during driver load since we don't have
> @@ -737,7 +746,9 @@ static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
>  	  * especially on the first real commit when clearing the inherited flag.
>  	  */
>  	intel_dp_link_training_set_mode(intel_dp,
> -					crtc_state->port_clock, crtc_state->vrr.in_range);
> +					crtc_state->port_clock,
> +					crtc_state->vrr.in_range,
> +					pr_with_as_sdp_enable);
>  }
>  
>  void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> index 33dcbde6a408..18c34c1a472f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> @@ -18,7 +18,8 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp);
>  bool intel_dp_lttpr_transparent_mode_enabled(struct intel_dp *intel_dp);
>  
>  void intel_dp_link_training_set_mode(struct intel_dp *intel_dp,
> -				     int link_rate, bool is_vrr);
> +				     int link_rate, bool is_vrr,
> +				     bool pr_with_as_sdp_enable);
>  void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
>  				   int link_bw, int rate_select, int lane_count,
>  				   bool enhanced_framing, bool post_lt_adj_req);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 8f73e01db17c..a238f7948cec 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -2145,7 +2145,7 @@ void intel_dp_mst_prepare_probe(struct intel_dp *intel_dp)
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
