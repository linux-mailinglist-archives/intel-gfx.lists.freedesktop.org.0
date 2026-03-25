Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KE+3A87cw2lwuQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 14:02:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95513325590
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 14:02:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDB4310E892;
	Wed, 25 Mar 2026 13:02:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cp6I7HLv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27C8810E892;
 Wed, 25 Mar 2026 13:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774443723; x=1805979723;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UYqiNPh0K98gVXk5kez5rIPs1OMaWywsIGOXf5oK0I8=;
 b=Cp6I7HLvO8fsfmkubk+3HU24nxxTjBqCaZV2mkVSJsSwR5mhZN8ZpdUP
 s2hpRkG04gW5lTwhgKZTRNEdSWJq734N3+2wvUWJjXJonKquPs96uFHyx
 OLWvvkEX2N42BeLDUScA8HUXlzMyiG5LYi+Q8aeuxpCc+njSjbsl2BqpV
 M63fVoQ1qGwZMTHMb1Tqs2BIOnKuZyAjaklYaGyZsTitORAkcG76q4U1B
 2ZWJT+s1TvhuNuQGVocLMZ2I+TLftT/aRMyAhgTstw4ctqsmExCYsQgUg
 SEhzPng81+CpG/3t2hXaK1K4TIHXRVTS9JHUY2WDp7X+Bg6uQJYTQCpAi g==;
X-CSE-ConnectionGUID: +XJAD4dRRfC3NYx0mtOozg==
X-CSE-MsgGUID: 2kaI1C+jQNub57pMGBPoeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="75593538"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="75593538"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 06:02:03 -0700
X-CSE-ConnectionGUID: 4vyqxfMJQa+ezrx45V3+sg==
X-CSE-MsgGUID: uXNP+78sTTa7mpvuLkrGjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="220267006"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 06:02:00 -0700
Date: Wed, 25 Mar 2026 15:01:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com
Subject: Re: [PATCH v3 26/26] drm/i915/writeback: Modify state verify function
Message-ID: <acPcxrDhs4PEMc4L@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-27-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260325110744.1096786-27-suraj.kandpal@intel.com>
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
X-Spamd-Result: default: False [0.36 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.67)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 95513325590
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 04:37:44PM +0530, Suraj Kandpal wrote:
> Modify the state verify functions to take into account the fact
> that writeback does not need all the timings for it to be set.
> Moreover there is no need for dpll state nor do we need to set
> any sort of flags for it.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 57 ++++++++++++--------
>  1 file changed, 35 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e47b4e667fec..59b6c61890bc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5140,6 +5140,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  	struct drm_printer p;
>  	u32 exclude_infoframes = 0;
>  	bool ret = true;
> +	bool is_writeback =
> +		intel_crtc_has_type(current_config, INTEL_OUTPUT_WRITEBACK);
>  
>  	if (fastset)
>  		p = drm_dbg_printer(display->drm, DRM_UT_KMS, NULL);
> @@ -5245,20 +5247,25 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  } while (0)
>  
>  #define PIPE_CONF_CHECK_TIMINGS(name) do {     \
> -	PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
> -	PIPE_CONF_CHECK_I(name.crtc_htotal); \
> -	PIPE_CONF_CHECK_I(name.crtc_hblank_start); \
> -	PIPE_CONF_CHECK_I(name.crtc_hblank_end); \
> -	PIPE_CONF_CHECK_I(name.crtc_hsync_start); \
> -	PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
> -	PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
> -	if (!fastset || !allow_vblank_delay_fastset(current_config)) \
> -		PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
> -	PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
> -	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
> -	if (!fastset || !pipe_config->update_lrr) { \
> -		PIPE_CONF_CHECK_I(name.crtc_vtotal); \
> -		PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
> +	if (is_writeback) { \
> +		PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
> +		PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
> +	} else { \
> +		PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
> +		PIPE_CONF_CHECK_I(name.crtc_htotal); \
> +		PIPE_CONF_CHECK_I(name.crtc_hblank_start); \
> +		PIPE_CONF_CHECK_I(name.crtc_hblank_end); \
> +		PIPE_CONF_CHECK_I(name.crtc_hsync_start); \
> +		PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
> +		PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
> +		if (!fastset || !allow_vblank_delay_fastset(current_config)) \
> +			PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
> +		PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
> +		PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
> +		if (!fastset || !pipe_config->update_lrr) { \
> +			PIPE_CONF_CHECK_I(name.crtc_vtotal); \
> +			PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
> +		} \

This is ugly. I think a much better option is to make sure the
writeback stuff actually does proper compute/readout for all
of this.

>  	} \
>  } while (0)
>  
> @@ -5387,10 +5394,11 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  
>  	PIPE_CONF_CHECK_I(pixel_multiplier);
>  
> -	PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> -			      DRM_MODE_FLAG_INTERLACE);
> +	if (!is_writeback)
> +		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> +				      DRM_MODE_FLAG_INTERLACE);
>  
> -	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)) {
> +	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS) && !is_writeback) {
>  		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
>  				      DRM_MODE_FLAG_PHSYNC);
>  		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> @@ -5441,6 +5449,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  		PIPE_CONF_CHECK_BOOL(hw.casf_params.casf_enable);
>  		PIPE_CONF_CHECK_I(hw.casf_params.win_size);
>  		PIPE_CONF_CHECK_I(hw.casf_params.strength);
> +		if (!is_writeback)
> +			PIPE_CONF_CHECK_I(pixel_rate);
>  
>  		PIPE_CONF_CHECK_X(gamma_mode);
>  		if (display->platform.cherryview)
> @@ -5463,24 +5473,27 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  
>  	PIPE_CONF_CHECK_BOOL(double_wide);
>  
> -	if (display->dpll.mgr)
> +	if (display->dpll.mgr && !is_writeback)
>  		PIPE_CONF_CHECK_P(intel_dpll);
>  
>  	/* FIXME convert everything over the dpll_mgr */
> -	if (display->dpll.mgr || HAS_GMCH(display))
> +	if ((display->dpll.mgr || HAS_GMCH(display)) && !is_writeback)
>  		PIPE_CONF_CHECK_PLL(dpll_hw_state);
>  
>  	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
>  	PIPE_CONF_CHECK_X(dsi_pll.div);
>  
> -	if (display->platform.g4x || DISPLAY_VER(display) >= 5)
> +	if ((display->platform.g4x || DISPLAY_VER(display) >= 5) &&
> +	    !is_writeback)
>  		PIPE_CONF_CHECK_I(pipe_bpp);
>  
> -	if (!fastset || !pipe_config->update_m_n) {
> +	if ((!fastset || !pipe_config->update_m_n) && !is_writeback) {
>  		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
>  		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
>  	}
> -	PIPE_CONF_CHECK_I(port_clock);
> +
> +	if (!is_writeback)
> +		PIPE_CONF_CHECK_I(port_clock);
>  
>  	PIPE_CONF_CHECK_I(min_voltage_level);
>  
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
