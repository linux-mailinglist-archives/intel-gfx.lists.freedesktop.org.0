Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KN7oJCh8oGmMkAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 18:00:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1097B1AB85D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 18:00:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4860910E9CD;
	Thu, 26 Feb 2026 17:00:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UiLPqmtM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7775E10E9C6;
 Thu, 26 Feb 2026 17:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772125220; x=1803661220;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qfAjFcAp36fmgm8Fx6qtv+Y5SMuID/S6/YsbCl9dqQs=;
 b=UiLPqmtM8/R+23R9Tu7qgBePW8LoddP3hiQN4i+uHLaMNbiFikrUfqSv
 XZGY1/nciJZLc8s7XBr9RDnHaUMFq4gdpeK9GbSP9kqv/ZekZHc1DikaC
 lJ3CbJrVFvveb9ZPLX7PVViSO4ZhaSOm1YbrhAl47KzX4AtPMCGV2H9ja
 vHTmayyLiEyF0ZBuL+6UvKkx036+QtLHH8+pR3GI00catVKYEoJGGSWkQ
 o0QO8OSZO0E0XnQ4gDJ9ZUS/GISW1RCivya/iuxkhBdoWMlAKT/ay0rhp
 ue1j2PwO8I/t4RleRdGR/hQtS3HEQ7DvY2ViaaUiH2+wgkisauCZT2kjA w==;
X-CSE-ConnectionGUID: TiHLGu5hTO2xeuSRyRo5Qg==
X-CSE-MsgGUID: W1IN8TksTw6P1mmoAGKLEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="72894451"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="72894451"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 09:00:19 -0800
X-CSE-ConnectionGUID: ryitN+sCSi6A2JIi9G0+Qw==
X-CSE-MsgGUID: C6MGcYKUSfyYcjacIIrcjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="213587913"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 09:00:16 -0800
Date: Thu, 26 Feb 2026 19:00:13 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 13/14] drm/i915/display: Add member to store AS SDP
 transmission time
Message-ID: <aaB8HU1QhhdMKIIV@intel.com>
References: <20260223134431.1639308-1-ankit.k.nautiyal@intel.com>
 <20260223134431.1639308-14-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260223134431.1639308-14-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.25 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.56)[subject];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 1097B1AB85D
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 07:14:30PM +0530, Ankit Nautiyal wrote:
> AS SDP can be sent at two different positions T1 and T2.
> These depend on the Panel Replay configuration and Adaptive Sync SDP
> modes as per DP v2.1.
> Currently we have configurations where SDP needs to be sent at T1 only.
> However, to make way for supporting more PR and AS SDP configurations,
> add a new member to store AS SDP transmission time in crtc_state.
> 
> This is filled with T1 for now during panel_replay_compute_config() and
> is used to set the MMIO register PR_ALPM and DPCD Panel_Replay_Config3
> DPCD offsets.
> 
> readout for this new member needs to be added along with other related
> members.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c     | 21 ++++++++++++++++++-
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_psr.c      |  7 +++++++
>  3 files changed, 28 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index b3334bc4d0f9..6eecd5ce4fad 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -365,6 +365,25 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
>  	crtc_state->has_lobf = true;
>  }
>  
> +static int get_pr_alpm_as_sdp_transmission_time(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	switch (crtc_state->pr_as_sdp_transmission) {
> +	case AS_SDP_SETUP_TIME_T1:
> +		return PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1;
> +	case AS_SDP_SETUP_TIME_DYNAMIC:
> +		return PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1_OR_T2;
> +	case AS_SDP_SETUP_TIME_T2:
> +		return PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T2;
> +	default:
> +		drm_dbg_kms(display->drm,
> +			    "Missing case %d for AS SDP Position, going with T1 by default\n",
> +			    crtc_state->pr_as_sdp_transmission);

MISSING_CASE()

There's no point in adding eloquent debug messages/etc into dead code.

> +		return AS_SDP_SETUP_TIME_T1;
> +	}
> +}
> +
>  static void lnl_alpm_configure(struct intel_dp *intel_dp,
>  			       const struct intel_crtc_state *crtc_state)
>  {
> @@ -388,7 +407,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
>  			ALPM_CTL_AUX_LESS_WAKE_TIME(crtc_state->alpm_state.aux_less_wake_lines);
>  
>  		if (intel_dp->as_sdp_supported) {
> -			u32 pr_alpm_ctl = PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1;
> +			u32 pr_alpm_ctl = get_pr_alpm_as_sdp_transmission_time(crtc_state);
>  
>  			if (crtc_state->link_off_after_as_sdp_when_pr_active)
>  				pr_alpm_ctl |= PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index e8e4af03a6a6..9065bf8bd6a5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1181,6 +1181,7 @@ struct intel_crtc_state {
>  	bool has_panel_replay;
>  	bool link_off_after_as_sdp_when_pr_active;
>  	bool disable_as_sdp_when_pr_active;
> +	int pr_as_sdp_transmission;

I don't see much point of adding that if you only ever set
it to one fixed value. Though I suppose the point was to make
sure the DPCD and PR_ALPM_CTL register values stay in sync.
We could also achieve that by replacing that crtc_state member
with eg. just a simple function.

>  	bool wm_level_disabled;
>  	bool pkg_c_latency_used;
>  	/* Only used for state verification. */
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index e0e6ddbfaa2d..74242c93db87 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -779,6 +779,7 @@ static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
>  		DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN |
>  		DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR_EN;
>  	u8 panel_replay_config2 = DP_PANEL_REPLAY_CRC_VERIFICATION;
> +	u8 panel_replay_config3 = crtc_state->pr_as_sdp_transmission;
>  
>  	if (crtc_state->has_sel_update)
>  		val |= DP_PANEL_REPLAY_SU_ENABLE;
> @@ -794,6 +795,9 @@ static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
>  
>  	drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG2,
>  			   panel_replay_config2);
> +
> +	drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG3,
> +			   panel_replay_config3);

This is starting to look like someone should make this a burst write.

>  }
>  
>  static void _psr_enable_sink(struct intel_dp *intel_dp,
> @@ -1771,6 +1775,9 @@ static bool _panel_replay_compute_config(struct intel_crtc_state *crtc_state,
>  	crtc_state->link_off_after_as_sdp_when_pr_active = compute_link_off_after_as_sdp_when_pr_active(connector);
>  	crtc_state->disable_as_sdp_when_pr_active = compute_disable_as_sdp_when_pr_active(connector);
>  
> +	/* For now we use T1 as the transmission time */
> +	crtc_state->pr_as_sdp_transmission = AS_SDP_SETUP_TIME_T1;
> +
>  	if (!intel_dp_is_edp(intel_dp))
>  		return true;
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
