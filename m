Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNryK9TAqmlXWQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 12:56:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 037E021FF04
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 12:56:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC19510ED07;
	Fri,  6 Mar 2026 11:55:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D55B10E119;
 Fri,  6 Mar 2026 11:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772798152; x=1804334152;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mUN/rHvC6EjmyFbxVqQJlFpCd/uno+eN8efzNRxXwmI=;
 b=iepWbE1efnzmBvC/zvct2WHvcDV3benbWn2R99JIh2ZwwEijH4dCLBLF
 gYA6W5BvvFXzBjhVwmMr+8hRt+zpJm5CkywQ+zjpgbb+MSgWnAtDwAdid
 nh/7Eu8TbMAkpVd4kRshJJ2qlA5d2kCGWcHfthZrW595+2tmVGsSRO3Fk
 5tVDKcNXP6xclJ2Qbicphj4chdOImH7knjVrRddezFiIK2kU8UKwBZR3B
 6HrmdNPH6cB3YwC+w6/xxAr/MvhYlkJhMnjz715YmRutLtmxKjgb5BY3t
 AO3P+D+/yVM90n0PT/VbxvsrhOpWgWRlxvNTywCUqcQpb+z2ZAA5152sN A==;
X-CSE-ConnectionGUID: euZro6JGQ8ev2qpw14dAlA==
X-CSE-MsgGUID: nDnC4W+FRs+74d66VRLg/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11720"; a="96519691"
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; d="scan'208";a="96519691"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2026 03:55:41 -0800
X-CSE-ConnectionGUID: enlLgugYSiql5dUi3ZvhWQ==
X-CSE-MsgGUID: 5t/XXitNRkulJnrrcjUtVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; d="scan'208";a="219125245"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.250])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2026 03:55:38 -0800
Date: Fri, 6 Mar 2026 13:55:35 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 arun.r.murthy@intel.com
Subject: Re: [PATCH 2/5] drm/i915/dp: Add fields to store CMN_SDP_TL register
 state in crtc_state
Message-ID: <aarAt1CIYXKnIP9P@intel.com>
References: <20260305040118.2576312-1-ankit.k.nautiyal@intel.com>
 <20260305040118.2576312-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260305040118.2576312-3-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 037E021FF04
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.22 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.53)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 09:31:15AM +0530, Ankit Nautiyal wrote:
> Xe3p_lpd introduces new register bits to program a common SDP
> Transmission Line, which the hardware uses to position various
> SDPs. It also adds a separate control register to stagger the different
> SDPs (VSC EXT, PPS, GMP).
> 
> Add fields in struct intel_crtc_state to store the state of these new
> registers. Add register readback and pipe config comparison for the new
> fields.
> 
> Also add a display version check (HAS_CMN_SDP_TL) to gate access to the
> new registers.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  1 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  6 ++++++
>  .../drm/i915/display/intel_display_device.h   |  1 +
>  .../drm/i915/display/intel_display_types.h    |  9 ++++++++
>  drivers/gpu/drm/i915/display/intel_dp.c       | 21 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h       |  2 ++
>  6 files changed, 40 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 94ae583e907f..bdbd89600bee 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4217,6 +4217,7 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
>  	intel_read_dp_sdp(encoder, pipe_config, HDMI_PACKET_TYPE_GAMUT_METADATA);
>  	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_VSC);
>  	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_ADAPTIVE_SYNC);
> +	intel_dp_cmn_sdp_transmission_line_get_config(pipe_config);
>  
>  	intel_audio_codec_get_config(encoder, pipe_config);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 27354585ba92..76eea9d23766 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5461,6 +5461,12 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  	}
>  	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
>  
> +	PIPE_CONF_CHECK_BOOL(cmn_sdp_tl.enable);
> +	PIPE_CONF_CHECK_I(cmn_sdp_tl.transmission_line);
> +	PIPE_CONF_CHECK_I(cmn_sdp_tl.vsc_ext_stagger);
> +	PIPE_CONF_CHECK_I(cmn_sdp_tl.pps_stagger);
> +	PIPE_CONF_CHECK_I(cmn_sdp_tl.gmp_stagger);

This will make things fail every time until you add the actual
code to program these. Ie. you are intentionally introducing
broken bisection steps here.

> +
>  	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
>  	PIPE_CONF_CHECK_I(master_transcoder);
>  	PIPE_CONF_CHECK_X(joiner_pipes);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index e84c190dcc4f..43e259761048 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -154,6 +154,7 @@ struct intel_display_platforms {
>  #define HAS_CASF(__display)		(DISPLAY_VER(__display) >= 20)
>  #define HAS_CDCLK_CRAWL(__display)	(DISPLAY_INFO(__display)->has_cdclk_crawl)
>  #define HAS_CDCLK_SQUASH(__display)	(DISPLAY_INFO(__display)->has_cdclk_squash)
> +#define HAS_CMN_SDP_TL(__display)	(DISPLAY_VER(__display) >= 35)
>  #define HAS_CMRR(__display)		(DISPLAY_VER(__display) >= 20)
>  #define HAS_CMTG(__display)		(!(__display)->platform.dg2 && DISPLAY_VER(__display) >= 13)
>  #define HAS_CUR_FBC(__display)		(!HAS_GMCH(__display) && IS_DISPLAY_VER(__display, 7, 13))
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 8a2b37c7bccf..474d6e2ae34b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1298,6 +1298,15 @@ struct intel_crtc_state {
>  		struct drm_dp_as_sdp as_sdp;
>  	} infoframes;
>  
> +	struct {
> +		/* Common SDP Transmission line */
> +		bool enable;
> +		int transmission_line;
> +		int vsc_ext_stagger;
> +		int pps_stagger;
> +		int gmp_stagger;
> +	} cmn_sdp_tl;
> +
>  	u8 eld[MAX_ELD_BYTES];
>  
>  	/* HDMI scrambling status */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 025e906b63a9..86390553800d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -7287,3 +7287,24 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>  
>  	return true;
>  }
> +
> +void intel_dp_cmn_sdp_transmission_line_get_config(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 val;
> +
> +	if (!HAS_CMN_SDP_TL(display))
> +		return;
> +
> +	val = intel_de_read(display, CMN_SDP_TL(display, cpu_transcoder));
> +
> +	crtc_state->cmn_sdp_tl.enable = val & TRANSMISSION_LINE_ENABLE;

Tracking the enable bit seems fairly pointless. If it's not set we could
just skip the readout. I don't think we should ever want TL==0?

> +	crtc_state->cmn_sdp_tl.transmission_line = REG_FIELD_GET(BASE_TRANSMISSION_LINE_MASK, val);
> +
> +	val = intel_de_read(display, CMN_SDP_TL_STGR_CTL(display, cpu_transcoder));
> +
> +	crtc_state->cmn_sdp_tl.vsc_ext_stagger = REG_FIELD_GET(VSC_EXT_STAGGER_MASK, val);
> +	crtc_state->cmn_sdp_tl.pps_stagger = REG_FIELD_GET(PPS_STAGGER_MASK, val);
> +	crtc_state->cmn_sdp_tl.gmp_stagger = REG_FIELD_GET(GMP_STAGGER_MASK, val);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index b0bbd5981f57..24df234a43d3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -237,4 +237,6 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>  	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
>  		for_each_if(intel_dp_joiner_candidate_valid(__connector, (__mode)->hdisplay, __num_joined_pipes))
>  
> +void intel_dp_cmn_sdp_transmission_line_get_config(struct intel_crtc_state *crtc_state);
> +
>  #endif /* __INTEL_DP_H__ */
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
