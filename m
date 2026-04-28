Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKqiNU6A8Gn6UAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 11:39:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFB6481A51
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 11:39:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD8E810EAB4;
	Tue, 28 Apr 2026 09:39:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="isnVmUIn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6041710EAB9;
 Tue, 28 Apr 2026 09:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777369164; x=1808905164;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=C40mORPvC7QlHiH8RcLJloSVt9BIhnDhH8Q+42Vjsjg=;
 b=isnVmUInsH1l1YfSKbshUBOt5Z/ns9qUNw1nn0VsD8nLUkhYZ8pi52oR
 2JpVAP0YbhABGnCNcCfCXf1AUyomgTnfwrSQwnwotwZKBns7eQaaa2u69
 tpFHviFPMQtjPyOmhuW4hwLL0hAtIWl2+NW1RWzVoAW3UsZyU1nULZCDn
 iC4h5+aXolNey09MiClWxYC2nm9lnjQB0Bi7lPQeCUlTBQQLB+0GgW1rw
 RGFZwg44MgthxwLukHu7pi9oA3SBcJsToayKkc50FKU/qzmhNq5jbE+yH
 h1idhh8ktS8+/v8sm14fAQZEMINtMjiv5bSz4XsXKljZAJUSah0JlhNC4 A==;
X-CSE-ConnectionGUID: 9mc9+hTXTv2QWzH+EzmsCQ==
X-CSE-MsgGUID: 31+3agXFTDmaDWt3+ALiPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="95839090"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="95839090"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 02:39:23 -0700
X-CSE-ConnectionGUID: PTE7MA/MT5yUV211u2ULrw==
X-CSE-MsgGUID: 8QtxbT0XSrCFmbljSoVbrg==
X-ExtLoop1: 1
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.244.208])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 02:39:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/intel_panel: Use highest refresh rate mode
 for seamless VRR changes
In-Reply-To: <20260428083323.3745772-3-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260428083323.3745772-1-ankit.k.nautiyal@intel.com>
 <20260428083323.3745772-3-ankit.k.nautiyal@intel.com>
Date: Tue, 28 Apr 2026 12:39:18 +0300
Message-ID: <0fb737c2484e116721b944befff146d9069ecee3@intel.com>
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
X-Rspamd-Queue-Id: 4FFB6481A51
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

On Tue, 28 Apr 2026, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> intel_panel_fixed_mode() intends to choose a fixed mode at or above the
> requested refresh rate for VRR panels, so the requested refresh can be
> reached by extending vblank.
>
> This is called in compute config to find the 'best' fixed mode for a
> requested mode and also called during mode valid phase to prune the
> unsupported fixed modes.
>
> For Non-VRR panels there is no issue:
> - When a user wants to do a full modeset (sets DRM_MODE_ALLOW_MODESET
>   flag) with a custom mode, the intel_panel_fixed_mode() gives the mode
>   with refresh rate nearest to the requested mode.
> - Seamless switch to a lower mode is only possible if the platform has
>   support for Double buffered MN and the sink is Seamless-DRRS capable.
>   In this case the user sets a lower refresh rate mode and doesn't set
>   the DRM_MODE_ALLOW_MODESET flag the intel_panel_fixed_mode() returns
>   again the fixed mode whose refresh rate is nearest to the requested
>   mode.
> - Since Duble buffered MN is not supported on LNL+, the seamless switch
>   is not possible for such panels from LNL+.
>
> For VRR panels the current logic has some issues:
> - For VRR panels intel_panel_fixed_mode() intends to choose a fixed mode
>   at or above the requested refresh rate so the requested refresh can be
>   reached by extending vblank.
> - However, as per the current logic the helper can return a lower refresh
>   rate mode, if the lower refresh rate mode is first in the list of fixed
>   mode. Later, if the selected fixed mode's refresh rate < the requested
>   mode's refresh rate, then the requested rate is matched by extending
>   the vblank. 
> - In case of a full modeset request with a custom mode this is not a
>   problem. But for the seamless switch features like LRR (Lower Refresh
>   Rate) and the Seamless-DRRS this creates a problem as this results in
>   change in vsync_start/end and resulting in a full modeset.
> - Furthermore, as with the Non-VRR panel case, the Seamless-DRRS is not
>   supported on LNL+, but for VRR panels, the vblank can be extended
>   similar to LRR case. But due to the above mentioned problem in the
>   intel_panel_fixed_mode() this also results in full modeset.
>
> To solve these problems for the VRR panels, identify if the user wants a
> full modeset or expects seamless switch. If seamless switch to a lower
> mode is desired, make intel_panel_fixed_mode() return the highest
> refresh rate mode, provided the requested rate is in vrr range. This
> will then be modified to extend the vblank to provide the desired
> refresh rate.
>
> This is particularly needed for DRRS panels on platforms without the
> double buffered M/N support (display version 20+), where seamless clock
> changes are not possible.
>
> To understand the user requirement for full modeset/seamless switch, the
> intel_panel_fixed_mode() and intel_panel_compute_config() need access to
> the connector state to check the allow_modeset flag.
>
> Add a nullable conn_state parameter to both. The mode_valid callers pass
> NULL since they have no atomic state and the compute_config callers pass
> their conn_state.
>
> Also remove the VRR check from is_best_fixed_mode() since the selection is
> handled upfront in intel_panel_fixed_mode().
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c    |  6 ++--
>  drivers/gpu/drm/i915/display/intel_dsi.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_dvo.c   |  6 ++--
>  drivers/gpu/drm/i915/display/intel_lvds.c  |  4 +--
>  drivers/gpu/drm/i915/display/intel_panel.c | 35 +++++++++++-----------
>  drivers/gpu/drm/i915/display/intel_panel.h |  6 ++--
>  drivers/gpu/drm/i915/display/intel_sdvo.c  |  8 ++---
>  drivers/gpu/drm/i915/display/vlv_dsi.c     |  2 +-
>  9 files changed, 37 insertions(+), 34 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index afbaa0465842..1efe81404d01 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1671,7 +1671,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
>  	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  
> -	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
> +	ret = intel_panel_compute_config(intel_connector, adjusted_mode, conn_state);

Whenever I see the parameters changed for a "compute config" call in the
compute config path, my immediate reaction is that it should be changed
to take the same parameters as the encoder->compute_config hook, and be
done with it for good.

Maybe the first parameter should be connector instead of encoder here,
but otherwise would make sense.

Also, I forget why we have ->attached_connector in a number of
intel_encoder "subclasses" but not in intel_encoder itself. Would make
this easier, perhaps. And could conform to the exact same params.

>  	if (ret)
>  		return ret;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 35b8fb5740aa..f014ce28e69f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1588,7 +1588,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	if (intel_dp_hdisplay_bad(display, mode->hdisplay))
>  		return MODE_H_ILLEGAL;
>  
> -	fixed_mode = intel_panel_fixed_mode(connector, mode);
> +	fixed_mode = intel_panel_fixed_mode(connector, mode, NULL);
>  	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>  		status = intel_panel_mode_valid(connector, mode);
>  		if (status != MODE_OK)
> @@ -3577,9 +3577,9 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  	struct intel_connector *connector = intel_dp->attached_connector;
>  	int ret = 0, link_bpp_x16;
>  
> -	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
> +	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode, conn_state);
>  	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
> -		ret = intel_panel_compute_config(connector, adjusted_mode);
> +		ret = intel_panel_compute_config(connector, adjusted_mode, conn_state);
>  		if (ret)
>  			return ret;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
> index 9005c1f5d857..a480bb79dca7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
> @@ -64,7 +64,7 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
>  	struct intel_display *display = to_intel_display(connector->dev);
>  	struct intel_connector *intel_connector = to_intel_connector(connector);
>  	const struct drm_display_mode *fixed_mode =
> -		intel_panel_fixed_mode(intel_connector, mode);
> +		intel_panel_fixed_mode(intel_connector, mode, NULL);
>  	int max_dotclk = display->cdclk.max_dotclk_freq;
>  	enum drm_mode_status status;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
> index 405b33aca9dd..0ec25d895777 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -224,7 +224,7 @@ intel_dvo_mode_valid(struct drm_connector *_connector,
>  	struct intel_connector *connector = to_intel_connector(_connector);
>  	struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
>  	const struct drm_display_mode *fixed_mode =
> -		intel_panel_fixed_mode(connector, mode);
> +		intel_panel_fixed_mode(connector, mode, NULL);
>  	int max_dotclk = display->cdclk.max_dotclk_freq;
>  	int target_clock = mode->clock;
>  	enum drm_mode_status status;
> @@ -259,7 +259,7 @@ static int intel_dvo_compute_config(struct intel_encoder *encoder,
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
>  	const struct drm_display_mode *fixed_mode =
> -		intel_panel_fixed_mode(intel_dvo->attached_connector, adjusted_mode);
> +		intel_panel_fixed_mode(intel_dvo->attached_connector, adjusted_mode, conn_state);
>  
>  	/*
>  	 * If we have timings from the BIOS for the panel, put them in
> @@ -270,7 +270,7 @@ static int intel_dvo_compute_config(struct intel_encoder *encoder,
>  	if (fixed_mode) {
>  		int ret;
>  
> -		ret = intel_panel_compute_config(connector, adjusted_mode);
> +		ret = intel_panel_compute_config(connector, adjusted_mode, conn_state);
>  		if (ret)
>  			return ret;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> index cc6d4bfcff10..2e30bc3f1e62 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -396,7 +396,7 @@ intel_lvds_mode_valid(struct drm_connector *_connector,
>  	struct intel_display *display = to_intel_display(_connector->dev);
>  	struct intel_connector *connector = to_intel_connector(_connector);
>  	const struct drm_display_mode *fixed_mode =
> -		intel_panel_fixed_mode(connector, mode);
> +		intel_panel_fixed_mode(connector, mode, NULL);
>  	int max_pixclk = display->cdclk.max_dotclk_freq;
>  	enum drm_mode_status status;
>  
> @@ -460,7 +460,7 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
>  	 * with the panel scaling set up to source from the H/VDisplay
>  	 * of the original mode.
>  	 */
> -	ret = intel_panel_compute_config(connector, adjusted_mode);
> +	ret = intel_panel_compute_config(connector, adjusted_mode, conn_state);
>  	if (ret)
>  		return ret;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index 5e918ee0c8ea..65d017371d78 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -59,24 +59,13 @@ intel_panel_preferred_fixed_mode(struct intel_connector *connector)
>  					struct drm_display_mode, head);
>  }
>  
> -static bool is_best_fixed_mode(struct intel_connector *connector,
> -			       int vrefresh, int fixed_mode_vrefresh,
> +static bool is_best_fixed_mode(int vrefresh, int fixed_mode_vrefresh,
>  			       const struct drm_display_mode *best_mode)
>  {
>  	/* we want to always return something */
>  	if (!best_mode)
>  		return true;
>  
> -	/*
> -	 * With VRR always pick a mode with equal/higher than requested
> -	 * vrefresh, which we can then reduce to match the requested
> -	 * vrefresh by extending the vblank length.
> -	 */
> -	if (intel_vrr_is_in_range(connector, vrefresh) &&
> -	    intel_vrr_is_in_range(connector, fixed_mode_vrefresh) &&
> -	    fixed_mode_vrefresh < vrefresh)
> -		return false;
> -
>  	/* pick the fixed_mode that is closest in terms of vrefresh */
>  	return abs(fixed_mode_vrefresh - vrefresh) <
>  		abs(drm_mode_vrefresh(best_mode) - vrefresh);
> @@ -84,15 +73,26 @@ static bool is_best_fixed_mode(struct intel_connector *connector,
>  
>  const struct drm_display_mode *
>  intel_panel_fixed_mode(struct intel_connector *connector,
> -		       const struct drm_display_mode *mode)
> +		       const struct drm_display_mode *mode,
> +		       const struct drm_connector_state *conn_state)
>  {
>  	const struct drm_display_mode *fixed_mode, *best_mode = NULL;
>  	int vrefresh = drm_mode_vrefresh(mode);
>  
> +	/*
> +	 * With VRR always pick the highest refresh rate mode,
> +	 * which we can then reduce to match the requested
> +	 * vrefresh by extending the vblank length.
> +	 */
> +	if (conn_state && !conn_state->state->allow_modeset &&
> +	    intel_vrr_is_capable(connector) &&
> +	    intel_vrr_is_in_range(connector, vrefresh))
> +		return intel_panel_highest_vrefresh_mode(connector);

I do dislike making intel_panel_fixed_mode() this convoluted.

I'm thinking perhaps we should try to refactor this so that we reduce
intel_panel_fixed_mode() calls in encoder code.

Instead, handle more in intel_panel_mode_valid() and
intel_panel_compute_config(). It's much more clear to have the above
conditions in intel_panel_compute_config(), and have that choose the
function to call instead.

Besides, we have a lot of code calling intel_panel_fixed_mode() and then
intel_panel_mode_valid() or intel_panel_compute_config(), which both
call intel_panel_fixed_mode() as the first thing. That's just silly.


BR,
Jani.

> +
>  	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
>  		int fixed_mode_vrefresh = drm_mode_vrefresh(fixed_mode);
>  
> -		if (is_best_fixed_mode(connector, vrefresh,
> +		if (is_best_fixed_mode(vrefresh,
>  				       fixed_mode_vrefresh, best_mode))
>  			best_mode = fixed_mode;
>  	}
> @@ -213,10 +213,11 @@ enum drrs_type intel_panel_drrs_type(struct intel_connector *connector)
>  }
>  
>  int intel_panel_compute_config(struct intel_connector *connector,
> -			       struct drm_display_mode *adjusted_mode)
> +			       struct drm_display_mode *adjusted_mode,
> +			       const struct drm_connector_state *conn_state)
>  {
>  	const struct drm_display_mode *fixed_mode =
> -		intel_panel_fixed_mode(connector, adjusted_mode);
> +		intel_panel_fixed_mode(connector, adjusted_mode, conn_state);
>  	int vrefresh, fixed_mode_vrefresh;
>  	bool is_vrr;
>  
> @@ -414,7 +415,7 @@ intel_panel_mode_valid(struct intel_connector *connector,
>  		       const struct drm_display_mode *mode)
>  {
>  	const struct drm_display_mode *fixed_mode =
> -		intel_panel_fixed_mode(connector, mode);
> +		intel_panel_fixed_mode(connector, mode, NULL);
>  
>  	if (!fixed_mode)
>  		return MODE_OK;
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
> index 2f7a317995ea..c1189a20c8b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -32,7 +32,8 @@ const struct drm_display_mode *
>  intel_panel_preferred_fixed_mode(struct intel_connector *connector);
>  const struct drm_display_mode *
>  intel_panel_fixed_mode(struct intel_connector *connector,
> -		       const struct drm_display_mode *mode);
> +		       const struct drm_display_mode *mode,
> +		       const struct drm_connector_state *conn_state);
>  const struct drm_display_mode *
>  intel_panel_downclock_mode(struct intel_connector *connector,
>  			   const struct drm_display_mode *adjusted_mode);
> @@ -47,7 +48,8 @@ enum drm_mode_status
>  intel_panel_mode_valid(struct intel_connector *connector,
>  		       const struct drm_display_mode *mode);
>  int intel_panel_compute_config(struct intel_connector *connector,
> -			       struct drm_display_mode *adjusted_mode);
> +			       struct drm_display_mode *adjusted_mode,
> +			       const struct drm_connector_state *conn_state);
>  void intel_panel_add_edid_fixed_modes(struct intel_connector *connector,
>  				      bool use_alt_fixed_modes);
>  void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector *connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
> index 2e1af9e869de..e07c1070a3ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -797,7 +797,7 @@ intel_sdvo_create_preferred_input_timing(struct intel_sdvo *intel_sdvo,
>  
>  	if (IS_LVDS(intel_sdvo_connector)) {
>  		const struct drm_display_mode *fixed_mode =
> -			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
> +			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode, NULL);
>  
>  		if (fixed_mode->hdisplay != args.width ||
>  		    fixed_mode->vdisplay != args.height)
> @@ -1396,11 +1396,11 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
>  		pipe_config->sdvo_tv_clock = true;
>  	} else if (IS_LVDS(intel_sdvo_connector)) {
>  		const struct drm_display_mode *fixed_mode =
> -			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
> +			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode, conn_state);
>  		int ret;
>  
>  		ret = intel_panel_compute_config(&intel_sdvo_connector->base,
> -						 adjusted_mode);
> +						 adjusted_mode, conn_state);
>  		if (ret)
>  			return ret;
>  
> @@ -1562,7 +1562,7 @@ static void intel_sdvo_pre_enable(struct intel_atomic_state *state,
>  	/* lvds has a special fixed output timing. */
>  	if (IS_LVDS(intel_sdvo_connector)) {
>  		const struct drm_display_mode *fixed_mode =
> -			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
> +			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode, conn_state);
>  
>  		intel_sdvo_get_dtd_from_mode(&output_dtd, fixed_mode);
>  	} else {
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index 76e8cd0f65a4..bfe465443d20 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -280,7 +280,7 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
>  	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  
> -	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
> +	ret = intel_panel_compute_config(intel_connector, adjusted_mode, conn_state);
>  	if (ret)
>  		return ret;

-- 
Jani Nikula, Intel
