Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E33B16A0E95
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 18:20:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE4C310E52E;
	Thu, 23 Feb 2023 17:20:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7254810E529
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 17:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677172828; x=1708708828;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=B3V2AELRd8XDyTt+HBtegshKZv407pdCGs9Glq/c10g=;
 b=VCe0VyonRVS+OBJMQLcRjiVJUSpBpkT+d0oKOhzJdJGC/PDRQmMSb7qt
 ZTjAZ01uLS14YUQFzmCDItlTl8v/DEEjAOndsohuN4teRoalMQHfMHQ0W
 V9ISnLRqsi1SvFqc4jH48nZqvvDo1oz85mFmJlgsUy3Cw4HrWti+8WZPZ
 D957kQ4OF3rx/R9uz/3//IieU4RN3gPrkTtZfCN33uaJMU6fkD6CfcPq0
 YRj68gjpJ7FeWWUxqrzCuCEzY6E7oKImBh3vwZ+d3nqszaWOM67vcYspD
 wyE3pujOhEO/LwxmAiI9qD0oYJ3GGa03M31US5OiiQzayT1qL0+s8nf9S g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="335501998"
X-IronPort-AV: E=Sophos;i="5.97,322,1669104000"; d="scan'208";a="335501998"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 09:20:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="665855660"
X-IronPort-AV: E=Sophos;i="5.97,322,1669104000"; d="scan'208";a="665855660"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 23 Feb 2023 09:20:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Feb 2023 19:20:22 +0200
Date: Thu, 23 Feb 2023 19:20:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <Y/egVpk27RADCGjA@intel.com>
References: <20230220122401.3495507-1-ankit.k.nautiyal@intel.com>
 <20230220122401.3495507-2-ankit.k.nautiyal@intel.com>
 <Y/PMEw17pIR+WSXM@intel.com>
 <b24d9ab2-a566-e929-0b4f-08bb46ab7e08@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b24d9ab2-a566-e929-0b4f-08bb46ab7e08@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v9 01/14] drm/i915/display: Add new member
 to configure PCON color conversion
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 21, 2023 at 02:06:06PM +0530, Nautiyal, Ankit K wrote:
> 
> On 2/21/2023 1:07 AM, Ville Syrjälä wrote:
> > On Mon, Feb 20, 2023 at 05:53:48PM +0530, Ankit Nautiyal wrote:
> >> The decision to use DFP output format conversion capabilities should be
> >> during compute_config phase.
> >>
> >> This patch adds new member to crtc_state to represent the final
> >> output_format to the sink. In case of a DFP this can be different than
> >> the output_format, as per the format conversion done via the PCON.
> >>
> >> This will help to store only the format conversion capabilities of the
> >> DP device in intel_dp->dfp, and use crtc_state to compute and store the
> >> configuration for color/format conversion for a given mode.
> >>
> >> v2: modified the new member to crtc_state to represent the final
> >> output_format that eaches the sink, after possible conversion by
> >> PCON kind of devices. (Ville)
> >>
> >> v3: Addressed comments from Ville:
> >> -Added comments to clarify difference between sink_format and
> >> output_format.
> >> -Corrected the order of setting sink_format and output_format.
> >> -Added readout for sink_format in get_pipe_config hooks.
> >>
> >> v4: Set sink_format for intel_sdvo too. (Ville)
> >>
> >> v5: Rebased.
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> (v3)
> >> ---
> >>   drivers/gpu/drm/i915/display/icl_dsi.c        |  1 +
> >>   drivers/gpu/drm/i915/display/intel_crt.c      |  1 +
> >>   .../drm/i915/display/intel_crtc_state_dump.c  |  5 +--
> >>   drivers/gpu/drm/i915/display/intel_display.c  |  5 +++
> >>   .../drm/i915/display/intel_display_types.h    | 11 +++++-
> >>   drivers/gpu/drm/i915/display/intel_dp.c       | 34 +++++++++++++------
> >>   drivers/gpu/drm/i915/display/intel_dp_mst.c   |  1 +
> >>   drivers/gpu/drm/i915/display/intel_dvo.c      |  1 +
> >>   drivers/gpu/drm/i915/display/intel_hdmi.c     | 24 +++++++------
> >>   drivers/gpu/drm/i915/display/intel_lvds.c     |  1 +
> >>   drivers/gpu/drm/i915/display/intel_sdvo.c     |  1 +
> >>   drivers/gpu/drm/i915/display/intel_tv.c       |  1 +
> >>   drivers/gpu/drm/i915/display/vlv_dsi.c        |  1 +
> >>   13 files changed, 62 insertions(+), 25 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> >> index def3aff4d717..2d17b2a7e1d5 100644
> >> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> >> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> >> @@ -1575,6 +1575,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
> >>   		&pipe_config->hw.adjusted_mode;
> >>   	int ret;
> >>   
> >> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> >>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> >>   
> >>   	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
> >> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> >> index 8f2ebead0826..e925e21d87fc 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> >> @@ -393,6 +393,7 @@ static int intel_crt_compute_config(struct intel_encoder *encoder,
> >>   	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> >>   		return -EINVAL;
> >>   
> >> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> >>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> >>   
> >>   	return 0;
> >> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> >> index 766633566fd6..185cd1971aa5 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> >> @@ -178,10 +178,11 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
> >>   
> >>   	snprintf_output_types(buf, sizeof(buf), pipe_config->output_types);
> >>   	drm_dbg_kms(&i915->drm,
> >> -		    "active: %s, output_types: %s (0x%x), output format: %s\n",
> >> +		    "active: %s, output_types: %s (0x%x), output format: %s, sink format: %s\n",
> >>   		    str_yes_no(pipe_config->hw.active),
> >>   		    buf, pipe_config->output_types,
> >> -		    output_formats(pipe_config->output_format));
> >> +		    output_formats(pipe_config->output_format),
> >> +		    output_formats(pipe_config->sink_format));
> >>   
> >>   	drm_dbg_kms(&i915->drm,
> >>   		    "cpu_transcoder: %s, pipe bpp: %i, dithering: %i\n",
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> >> index 0bb429d3e8d7..cc44f0629f2c 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> @@ -3103,6 +3103,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
> >>   		return false;
> >>   
> >>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> >> +	pipe_config->sink_format = pipe_config->output_format;
> >>   	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
> >>   	pipe_config->shared_dpll = NULL;
> >>   
> >> @@ -3562,6 +3563,8 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
> >>   		break;
> >>   	}
> >>   
> >> +	pipe_config->sink_format = pipe_config->output_format;
> >> +
> >>   	pipe_config->gamma_mode = REG_FIELD_GET(TRANSCONF_GAMMA_MODE_MASK_ILK, tmp);
> >>   
> >>   	pipe_config->framestart_delay = REG_FIELD_GET(TRANSCONF_FRAME_START_DELAY_MASK, tmp) + 1;
> >> @@ -3960,6 +3963,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
> >>   			bdw_get_pipemisc_output_format(crtc);
> >>   	}
> >>   
> >> +	pipe_config->sink_format = pipe_config->output_format;
> >> +
> >>   	pipe_config->gamma_mode = intel_de_read(dev_priv,
> >>   						GAMMA_MODE(crtc->pipe));
> >>   
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> index 748b0cd411fa..c28835d9db6f 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> @@ -1273,9 +1273,18 @@ struct intel_crtc_state {
> >>   	/* HDMI High TMDS char rate ratio */
> >>   	bool hdmi_high_tmds_clock_ratio;
> >>   
> >> -	/* Output format RGB/YCBCR etc */
> >> +	/*
> >> +	 * Output format RGB/YCBCR etc., that is coming out
> >> +	 * at the end of the pipe.
> >> +	 */
> >>   	enum intel_output_format output_format;
> >>   
> >> +	/*
> >> +	 * Sink output format RGB/YCBCR etc., that is going
> >> +	 * into the sink.
> >> +	 */
> >> +	enum intel_output_format sink_format;
> >> +
> >>   	/* enable pipe gamma? */
> >>   	bool gamma_enable;
> >>   
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >> index b77bd4565864..81fbef30c469 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> @@ -806,11 +806,12 @@ u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
> >>   
> >>   static enum intel_output_format
> >>   intel_dp_output_format(struct intel_connector *connector,
> >> -		       bool ycbcr_420_output)
> >> +		       enum intel_output_format sink_format)
> >>   {
> >>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
> >>   
> >> -	if (!connector->base.ycbcr_420_allowed || !ycbcr_420_output)
> >> +	if (!connector->base.ycbcr_420_allowed ||
> >> +	    sink_format != INTEL_OUTPUT_FORMAT_YCBCR420)
> >>   		return INTEL_OUTPUT_FORMAT_RGB;
> >>   
> >>   	if (intel_dp->dfp.rgb_to_ycbcr &&
> >> @@ -849,8 +850,14 @@ intel_dp_mode_min_output_bpp(struct intel_connector *connector,
> >>   			     const struct drm_display_mode *mode)
> >>   {
> >>   	const struct drm_display_info *info = &connector->base.display_info;
> >> -	enum intel_output_format output_format =
> >> -		intel_dp_output_format(connector, drm_mode_is_420_only(info, mode));
> >> +	enum intel_output_format output_format, sink_format;
> >> +
> >> +	if (drm_mode_is_420_only(info, mode))
> >> +		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> >> +	else
> >> +		sink_format = INTEL_OUTPUT_FORMAT_RGB;
> >> +
> >> +	output_format = intel_dp_output_format(connector, sink_format);
> >>   
> >>   	return intel_dp_output_bpp(output_format, intel_dp_min_bpp(output_format));
> >>   }
> >> @@ -2036,23 +2043,28 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
> >>   
> >>   	ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
> >>   
> >> -	crtc_state->output_format = intel_dp_output_format(connector, ycbcr_420_only);
> >> -
> >> -	if (ycbcr_420_only && !intel_dp_is_ycbcr420(intel_dp, crtc_state)) {
> >> +	if (ycbcr_420_only && !connector->base.ycbcr_420_allowed) {
> >>   		drm_dbg_kms(&i915->drm,
> >>   			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
> >> -		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
> >> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> >> +	} else if (ycbcr_420_only) {
> >> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> >> +	} else {
> >> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> >>   	}
> >>   
> >> +	crtc_state->output_format = intel_dp_output_format(connector, crtc_state->sink_format);
> >> +
> >>   	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
> >>   					   respect_downstream_limits);
> >>   	if (ret) {
> >> -		if (intel_dp_is_ycbcr420(intel_dp, crtc_state) ||
> >> -		    !connector->base.ycbcr_420_allowed ||
> >> +		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
> >>   		    !drm_mode_is_420_also(info, adjusted_mode))
> > still looks broken to me.
> 
> Sorry for missing the check, I'll add the missing check for 
> ycbcr420_allowed here and same for HDMI, to avoid going for ycbcr420, if 
> not allowed.
> 
> Seems like patch#10 too will get impacted. Shall I send the next 
> versions of this patch, and patch#10 in-reply-to their respective mail 
> chain?

Sure, if it's just a few of patches that get impacted in-reply-to fine.

-- 
Ville Syrjälä
Intel
