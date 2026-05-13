Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGvjIDBtBGprIQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 14:23:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DA3532FE0
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 14:23:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4861010EE15;
	Wed, 13 May 2026 12:23:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J+yCDcUd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 390AD10EE24;
 Wed, 13 May 2026 12:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778674989; x=1810210989;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=la+cTRP13nrres8ANkW9x8zHAdW0UOsp4d25+0+XKi8=;
 b=J+yCDcUd1K9xab1xOLzPWz3EN0XlPDdo4geZOJ4lcaWPRfDqAksc6q1D
 y0p+diXSZoOUqah8s9HFq/fr8YFU+uBvXumLCJlNy8QKK4Is7z0JLhWUt
 fBeSoQt/Au+3DF2K82VAnyqwPqKyNq+PuBmXEFz51izxszwzayiIXEIxw
 A175M/ahl/e7hRNZqhrUgF0lr760QAnl1O7AhHMQ9HAKi2RkD5W8bQkFf
 1rT47kSWagGXlTXY7TSbfG4eslvgxJtpENGP8CU0rtcHv9uvqbkD/dQ5O
 CwtmtVJzln22LFcIvysv+oOEmNgFwkIZTzOrJvCMD9TpYj2vVU10z3uFL Q==;
X-CSE-ConnectionGUID: P4QGGQDTQ6OafNPPu911Bw==
X-CSE-MsgGUID: GWcdeWbDQq+HxLKok0AtOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="90701465"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="90701465"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 05:23:09 -0700
X-CSE-ConnectionGUID: KhWF+O4USLy38Wf0HW57Vw==
X-CSE-MsgGUID: vPLjae+XT2qUeMRpA/lhGQ==
X-ExtLoop1: 1
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.10])
 by fmviesa003-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 May 2026 05:23:07 -0700
Date: Wed, 13 May 2026 15:23:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [RESEND 6/6] drm/i915/display: stop passing i to
 for_each_pipe_crtc_modeset_{enable, disable}()
Message-ID: <agRtKLDoarnWPChi@intel.com>
References: <cover.1778659089.git.jani.nikula@intel.com>
 <2270d4a10663bb55d5b16902b02798234f440517.1778659089.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2270d4a10663bb55d5b16902b02798234f440517.1778659089.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: D7DA3532FE0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.28 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.59)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

On Wed, May 13, 2026 at 10:58:40AM +0300, Jani Nikula wrote:
> Refactor for_each_pipe_crtc_modeset_{enable,disable}() and their
> underlying for_each_crtc_in_masks{,_reverse}() helpers to utilize
> __UNIQUE_ID() to avoid having to pass the for loop variable to them.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  8 ++----
>  drivers/gpu/drm/i915/display/intel_display.c | 12 ++++----
>  drivers/gpu/drm/i915/display/intel_display.h | 30 ++++++++++----------
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  |  9 +++---
>  4 files changed, 27 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 34e2b5ea9d0d..1d4bb59a0501 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3230,9 +3230,8 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	struct intel_crtc *pipe_crtc;
>  	bool is_hdmi = intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_HDMI);
> -	int i;
>  
> -	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
> +	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state) {
>  		const struct intel_crtc_state *old_pipe_crtc_state =
>  			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>  
> @@ -3259,7 +3258,7 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
>  
>  	intel_ddi_disable_transcoder_func(old_crtc_state);
>  
> -	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
> +	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state) {
>  		const struct intel_crtc_state *old_pipe_crtc_state =
>  			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>  
> @@ -3516,7 +3515,6 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
>  	struct intel_crtc *pipe_crtc;
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	bool is_hdmi = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI);
> -	int i;
>  
>  	/* 128b/132b SST */
>  	if (!is_hdmi && intel_dp_is_uhbr(crtc_state)) {
> @@ -3550,7 +3548,7 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
>  
>  	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
>  
> -	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, crtc_state, i) {
> +	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, crtc_state) {
>  		const struct intel_crtc_state *pipe_crtc_state =
>  			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index cf9afc90e301..ce5a3d5dbb79 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1653,11 +1653,10 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
>  	struct intel_crtc *pipe_crtc;
> -	int i;
>  
>  	if (drm_WARN_ON(display->drm, crtc->active))
>  		return;
> -	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i) {
> +	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state) {
>  		const struct intel_crtc_state *new_pipe_crtc_state =
>  			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>  
> @@ -1671,7 +1670,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  
>  	intel_encoders_pre_enable(state, crtc);
>  
> -	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i) {
> +	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state) {
>  		const struct intel_crtc_state *pipe_crtc_state =
>  			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>  
> @@ -1689,7 +1688,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  	if (!transcoder_is_dsi(cpu_transcoder))
>  		hsw_configure_cpu_transcoder(new_crtc_state);
>  
> -	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i) {
> +	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state) {
>  		const struct intel_crtc_state *pipe_crtc_state =
>  			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>  
> @@ -1719,7 +1718,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  
>  	intel_encoders_enable(state, crtc);
>  
> -	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i) {
> +	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state) {
>  		const struct intel_crtc_state *pipe_crtc_state =
>  			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>  		enum pipe hsw_workaround_pipe;
> @@ -1787,7 +1786,6 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
>  	const struct intel_crtc_state *old_crtc_state =
>  		intel_atomic_get_old_crtc_state(state, crtc);
>  	struct intel_crtc *pipe_crtc;
> -	int i;
>  
>  	/*
>  	 * FIXME collapse everything to one hook.
> @@ -1800,7 +1798,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
>  
>  	intel_encoders_post_pll_disable(state, crtc);
>  
> -	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
> +	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state) {
>  		const struct intel_crtc_state *old_pipe_crtc_state =
>  			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 7d4f83ad9412..31588011d659 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -325,29 +325,29 @@ enum phy_fia {
>  			     ((connector) = to_intel_connector((__state)->base.connectors[__i].ptr), \
>  			     (new_connector_state) = to_intel_digital_connector_state((__state)->base.connectors[__i].new_state), 1))
>  
> -#define for_each_crtc_in_masks(display, crtc, first_pipes, second_pipes, i) \
> -	for ((i) = 0; \
> +#define __for_each_crtc_in_masks(display, crtc, first_pipes, second_pipes, i) \
> +	for (int (i) = 0; \
>  	     (i) < (I915_MAX_PIPES * 2) && ((crtc) = intel_crtc_for_pipe(display, (i) % I915_MAX_PIPES), 1); \
>  	     (i)++) \
>  		for_each_if((crtc) && ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)) & BIT(i))
>  
> -#define for_each_crtc_in_masks_reverse(display, crtc, first_pipes, second_pipes, i) \
> -	for ((i) = (I915_MAX_PIPES * 2 - 1); \
> +#define __for_each_crtc_in_masks_reverse(display, crtc, first_pipes, second_pipes, i) \
> +	for (int (i) = (I915_MAX_PIPES * 2 - 1); \
>  	     (i) >= 0 && ((crtc) = intel_crtc_for_pipe(display, (i) % I915_MAX_PIPES), 1); \
>  	     (i)--) \
>  		for_each_if((crtc) && ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)) & BIT(i))
>  
> -#define for_each_pipe_crtc_modeset_disable(display, crtc, crtc_state, i) \
> -	for_each_crtc_in_masks(display, crtc, \
> -			       _intel_modeset_primary_pipes(crtc_state), \
> -			       _intel_modeset_secondary_pipes(crtc_state), \
> -			       i)
> -
> -#define for_each_pipe_crtc_modeset_enable(display, crtc, crtc_state, i) \
> -	for_each_crtc_in_masks_reverse(display, crtc, \
> -				       _intel_modeset_primary_pipes(crtc_state), \
> -				       _intel_modeset_secondary_pipes(crtc_state), \
> -				       i)
> +#define for_each_pipe_crtc_modeset_disable(display, crtc, crtc_state) \
> +	__for_each_crtc_in_masks(display, crtc, \
> +				 _intel_modeset_primary_pipes(crtc_state), \
> +				 _intel_modeset_secondary_pipes(crtc_state), \
> +				 __UNIQUE_ID(i))
> +
> +#define for_each_pipe_crtc_modeset_enable(display, crtc, crtc_state) \
> +	__for_each_crtc_in_masks_reverse(display, crtc,			\
> +					 _intel_modeset_primary_pipes(crtc_state), \
> +					 _intel_modeset_secondary_pipes(crtc_state), \
> +					 __UNIQUE_ID(i))
>  
>  int intel_atomic_check(struct drm_device *dev, struct drm_atomic_commit *state);
>  u8 intel_calc_enabled_pipes(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index be8febe3d234..724d3ee23350 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1065,14 +1065,13 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
>  		drm_atomic_get_mst_payload_state(new_mst_state, connector->mst.port);
>  	struct intel_crtc *pipe_crtc;
>  	bool last_mst_stream;
> -	int i;
>  
>  	last_mst_stream = intel_dp_mst_dec_active_streams(intel_dp);
>  
>  	drm_WARN_ON(display->drm, DISPLAY_VER(display) >= 12 && last_mst_stream &&
>  		    !intel_dp_mst_is_master_trans(old_crtc_state));
>  
> -	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
> +	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state) {
>  		const struct intel_crtc_state *old_pipe_crtc_state =
>  			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>  
> @@ -1099,7 +1098,7 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
>  
>  	intel_ddi_disable_transcoder_func(old_crtc_state);
>  
> -	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
> +	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state) {
>  		const struct intel_crtc_state *old_pipe_crtc_state =
>  			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>  
> @@ -1310,7 +1309,7 @@ static void mst_stream_enable(struct intel_atomic_state *state,
>  	enum transcoder trans = pipe_config->cpu_transcoder;
>  	bool first_mst_stream = intel_dp_mst_active_streams(intel_dp) == 1;
>  	struct intel_crtc *pipe_crtc;
> -	int ret, i;
> +	int ret;
>  
>  	drm_WARN_ON(display->drm, pipe_config->has_pch_encoder);
>  
> @@ -1355,7 +1354,7 @@ static void mst_stream_enable(struct intel_atomic_state *state,
>  
>  	intel_enable_transcoder(pipe_config);
>  
> -	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, pipe_config, i) {
> +	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, pipe_config) {
>  		const struct intel_crtc_state *pipe_crtc_state =
>  			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>  
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
