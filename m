Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C75396BE870
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 12:39:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2747B10EF15;
	Fri, 17 Mar 2023 11:39:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32E6F10EF00
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 11:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679053165; x=1710589165;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pWo5GLTP9TVSRXwkj5zk58jMan1s/52tKQCny7ron/w=;
 b=btQdOwgHQqTvuxRHTC3rBng5eZfIlmVP+XgNrsICmKbltMBzWMqHQGCt
 LKpttK8W+9gJ4C4r5fFAVmheAU1nsUBFyGZLKAeDWfbkgwK9NlYFubMO3
 qpZQg+NkwgqpodeJ3MF+PAdsAnunRi2lkGUGIBXx+i9z+9s1tm4wEM7FS
 DJpsdP8Z9HwD7lp4c5ZZvAUwtaQi8lUJpQjyB6b2Valh8I1/Hzu1SJANN
 Le2vqxYRf7/ZeTlfKuF15KlnsFHhLWmHpUEt1MdYtYujFTJhIpIH2PU3m
 VQ26FfPQiAHBqGB3XxH59uKGI1y9ZAk/F1zZBL6k2EeF3mj7icKyTRytz g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="340603686"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="340603686"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 04:39:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="823641514"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="823641514"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 17 Mar 2023 04:39:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Mar 2023 13:39:04 +0200
Date: Fri, 17 Mar 2023 13:39:04 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <ZBRRWA5197kfRkOM@intel.com>
References: <20230314110415.2882484-1-ankit.k.nautiyal@intel.com>
 <20230314110415.2882484-2-ankit.k.nautiyal@intel.com>
 <ZBOzJLhoeAFpHgoI@intel.com>
 <b02ea94d-6d23-9c1f-62ff-ddd674436b17@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b02ea94d-6d23-9c1f-62ff-ddd674436b17@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v11 01/11] drm/i915/display: Add new member
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

On Fri, Mar 17, 2023 at 03:37:40PM +0530, Nautiyal, Ankit K wrote:
> 
> On 3/17/2023 5:54 AM, Ville Syrjälä wrote:
> > On Tue, Mar 14, 2023 at 04:34:05PM +0530, Ankit Nautiyal wrote:
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
> >> v6: Fixed condition to go for YCbCr420 format for dp and hdmi. (Ville)
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> (v3)
> >> ---
> >>   drivers/gpu/drm/i915/display/icl_dsi.c        |  1 +
> >>   drivers/gpu/drm/i915/display/intel_crt.c      |  1 +
> >>   .../drm/i915/display/intel_crtc_state_dump.c  |  5 +--
> >>   drivers/gpu/drm/i915/display/intel_display.c  |  5 +++
> >>   .../drm/i915/display/intel_display_types.h    | 11 ++++++-
> >>   drivers/gpu/drm/i915/display/intel_dp.c       | 33 +++++++++++++------
> >>   drivers/gpu/drm/i915/display/intel_dp_mst.c   |  1 +
> >>   drivers/gpu/drm/i915/display/intel_dvo.c      |  1 +
> >>   drivers/gpu/drm/i915/display/intel_hdmi.c     | 23 +++++++------
> >>   drivers/gpu/drm/i915/display/intel_lvds.c     |  1 +
> >>   drivers/gpu/drm/i915/display/intel_sdvo.c     |  1 +
> >>   drivers/gpu/drm/i915/display/intel_tv.c       |  1 +
> >>   drivers/gpu/drm/i915/display/vlv_dsi.c        |  1 +
> >>   13 files changed, 62 insertions(+), 23 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> >> index 50dcaa895854..e8ac4552e681 100644
> >> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> >> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> >> @@ -1593,6 +1593,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
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
> >> index 410c84fd905c..6fa86d1e0480 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> @@ -3127,6 +3127,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
> >>   		return false;
> >>   
> >>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> >> +	pipe_config->sink_format = pipe_config->output_format;
> >>   	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
> >>   	pipe_config->shared_dpll = NULL;
> >>   
> >> @@ -3586,6 +3587,8 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
> >>   		break;
> >>   	}
> >>   
> >> +	pipe_config->sink_format = pipe_config->output_format;
> >> +
> >>   	pipe_config->gamma_mode = REG_FIELD_GET(TRANSCONF_GAMMA_MODE_MASK_ILK, tmp);
> >>   
> >>   	pipe_config->framestart_delay = REG_FIELD_GET(TRANSCONF_FRAME_START_DELAY_MASK, tmp) + 1;
> >> @@ -3984,6 +3987,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
> >>   			bdw_get_pipemisc_output_format(crtc);
> >>   	}
> >>   
> >> +	pipe_config->sink_format = pipe_config->output_format;
> >> +
> >>   	pipe_config->gamma_mode = intel_de_read(dev_priv,
> >>   						GAMMA_MODE(crtc->pipe));
> >>   
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> index c32bfba06ca1..c9d1863d2765 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> @@ -1274,9 +1274,18 @@ struct intel_crtc_state {
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
> >> index 8e16745275f6..e52e2ffc355c 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> @@ -819,11 +819,12 @@ u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
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
> >> @@ -862,8 +863,14 @@ intel_dp_mode_min_output_bpp(struct intel_connector *connector,
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
> >> @@ -2040,23 +2047,29 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
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
> >> +		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
> >>   		    !connector->base.ycbcr_420_allowed ||
> >>   		    !drm_mode_is_420_also(info, adjusted_mode))
> >>   			return ret;
> >>   
> >> -		crtc_state->output_format = intel_dp_output_format(connector, true);
> >> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> >> +		crtc_state->output_format = intel_dp_output_format(connector,
> >> +								   crtc_state->sink_format);
> >>   		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
> >>   						   respect_downstream_limits);
> >>   	}
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> >> index a860cbc5dbea..ff0b821a901a 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> >> @@ -293,6 +293,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
> >>   	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> >>   		return -EINVAL;
> >>   
> >> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> >>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> >>   	pipe_config->has_pch_encoder = false;
> >>   
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
> >> index eb2dcd866cc8..9884678743b6 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> >> @@ -271,6 +271,7 @@ static int intel_dvo_compute_config(struct intel_encoder *encoder,
> >>   	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> >>   		return -EINVAL;
> >>   
> >> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> >>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> >>   
> >>   	return 0;
> >> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> >> index c7e9e1fbed37..1ad0540c13ee 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> >> @@ -2171,13 +2171,13 @@ static bool intel_hdmi_has_audio(struct intel_encoder *encoder,
> >>   
> >>   static enum intel_output_format
> >>   intel_hdmi_output_format(const struct intel_crtc_state *crtc_state,
> >> -			 struct intel_connector *connector,
> >> -			 bool ycbcr_420_output)
> >> +			 struct intel_connector *connector)
> >>   {
> >>   	if (!crtc_state->has_hdmi_sink)
> >>   		return INTEL_OUTPUT_FORMAT_RGB;
> > I think we need to move this into the sink_format selection since
> > we can't have sink_format!=output_format with HDMI.
> >
> >>   
> >> -	if (connector->base.ycbcr_420_allowed && ycbcr_420_output)
> >> +	if (connector->base.ycbcr_420_allowed &&
> > Similarly the 420_allowed check here doesn't seem correct.
> >
> > In fact I guess what we need is simply:
> >   intel_hdmi_output_format()
> >   {
> >   	return sink_format;
> >   }
> 
> Hmm alright I think I got it. As we are computing, what should be sent 
> to the sink side, the sink_format selection should have all the condition.
> 
> Since for Hdmi what is sent from port, is what reaches the sink so 
> output_format is same as sink_format:
> 
> static enum intel_output_format
> intel_hdmi_sink_format(const struct intel_crtc_state *crtc_state,
>                         struct intel_connector *connector,
>                         bool ycbcr_420_output)
> {
>          if (!crtc_state->has_hdmi_sink)
>                  return INTEL_OUTPUT_FORMAT_RGB;
> 
>          if (connector->base.ycbcr_420_allowed && ycbcr_420_output)
>                  return INTEL_OUTPUT_FORMAT_YCBCR420;
>          else
>                  return INTEL_OUTPUT_FORMAT_RGB;
> }
> 
> static enum intel_output_format
> intel_hdmi_output_format(const struct intel_crtc_state *crtc_state)
> {
>          return crtc_state->sink_format;
> }
> 
> 
> >
> >> +	    crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
> >>   		return INTEL_OUTPUT_FORMAT_YCBCR420;
> >>   	else
> >>   		return INTEL_OUTPUT_FORMAT_RGB;
> >> @@ -2195,23 +2195,26 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
> >>   	bool ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
> >>   	int ret;
> >>   
> >> -	crtc_state->output_format =
> >> -		intel_hdmi_output_format(crtc_state, connector, ycbcr_420_only);
> >> -
> >> -	if (ycbcr_420_only && !intel_hdmi_is_ycbcr420(crtc_state)) {
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
> >> +	crtc_state->output_format = intel_hdmi_output_format(crtc_state, connector);
> >>   	ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
> >>   	if (ret) {
> >> -		if (intel_hdmi_is_ycbcr420(crtc_state) ||
> >> +		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
> > With intel_hdmi_output_format() adjusted as mentined above this will
> > also need an explicit has_hdmi_sink check.
> 
> If we have sink_format as YCbCr420, only when crtc_state->has_hdmi_sink, 
> as per above mentioned intel_hdmi_sink_format
> 
> then we might not need explicit has_hdmi_sink right?

We are setting sink_format=YCBCR420 direcly below,
hence I think we need an explicit check here.

> 
> Regards,
> 
> Ankit
> 
> >>   		    !connector->base.ycbcr_420_allowed ||
> >>   		    !drm_mode_is_420_also(info, adjusted_mode))
> >>   			return ret;
> >>   
> >> -		crtc_state->output_format = intel_hdmi_output_format(crtc_state, connector, true);
> >> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> >> +		crtc_state->output_format = intel_hdmi_output_format(crtc_state, connector);
> >>   		ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
> >>   	}
> >>   
> >> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> >> index a504b3a7fbd5..a7783da37dfd 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> >> @@ -436,6 +436,7 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
> >>   		crtc_state->pipe_bpp = lvds_bpp;
> >>   	}
> >>   
> >> +	crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> >>   	crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
> >>   
> >>   	/*
> >> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
> >> index e12ba458636c..34ee9dd82a78 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> >> @@ -1351,6 +1351,7 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
> >>   
> >>   	DRM_DEBUG_KMS("forcing bpc to 8 for SDVO\n");
> >>   	pipe_config->pipe_bpp = 8*3;
> >> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> >>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> >>   
> >>   	if (HAS_PCH_SPLIT(to_i915(encoder->base.dev)))
> >> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
> >> index 3b5ff84dc615..6f7ac225293e 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_tv.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> >> @@ -1204,6 +1204,7 @@ intel_tv_compute_config(struct intel_encoder *encoder,
> >>   	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> >>   		return -EINVAL;
> >>   
> >> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> >>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> >>   
> >>   	drm_dbg_kms(&dev_priv->drm, "forcing bpc to 8 for TV\n");
> >> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> >> index 8d2e6e151ba0..82c30feb7a91 100644
> >> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> >> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> >> @@ -280,6 +280,7 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
> >>   	int ret;
> >>   
> >>   	drm_dbg_kms(&dev_priv->drm, "\n");
> >> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> >>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> >>   
> >>   	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
> >> -- 
> >> 2.25.1

-- 
Ville Syrjälä
Intel
