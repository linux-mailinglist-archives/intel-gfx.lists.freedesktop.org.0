Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1CF606646
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 18:52:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D161910E839;
	Thu, 20 Oct 2022 16:52:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 470E010E839
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 16:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666284725; x=1697820725;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XIo7AIFo4zP8pIhsZgT3d8FEih4GThMy6IFevb4v8LQ=;
 b=cvFWXYTuNnhW/cXm4ZBsLi40Ulo0kp5xLGC+bJNrCSGxTJLFECq4UhiL
 eEtueHCB3N+Z79od2YktqqRcmBuu0GQaHnNBj2YUXkpNckR2ld/w+Ipd5
 HoZeNIvfmK2ZHDViKxiMSYA/1KBLwacz7Bdt05+Kk24ngyAlGlYz1ZMae
 2M+VUQTMupn4cELyDYnFxwM8/K1QG1YNaJ27D5JipaOUiX5PZMJVy/GeY
 yRwG9GfxUKk6BIHdPLG4XG9xOp7CeaXOpRslMYVfSzNIU4M8yMWA/eWES
 zKM877xrGaRv9dMMDCkRQpef663w3dn23n6V/q/2Q7K/GavvnMgjh97dh g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="308451535"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; d="scan'208";a="308451535"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 09:51:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="875114955"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; d="scan'208";a="875114955"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga006.fm.intel.com with SMTP; 20 Oct 2022 09:51:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 20 Oct 2022 19:51:40 +0300
Date: Thu, 20 Oct 2022 19:51:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <Y1F8nGEjNroIzL4E@intel.com>
References: <20221011063447.904649-1-ankit.k.nautiyal@intel.com>
 <20221011063447.904649-4-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221011063447.904649-4-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 3/8] drm/i915/display: Add new member to
 configure PCON color conversion
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

On Tue, Oct 11, 2022 at 12:04:42PM +0530, Ankit Nautiyal wrote:
> The decision to use DFP output format conversion capabilities should be
> during compute_config phase.
> 
> This patch adds new member to crtc_state to represent the final
> output_format to the sink. In case of a DFP this can be different than
> the output_format, as per the format conversion done via the PCON.
> 
> This will help to store only the format conversion capabilities of the
> DP device in intel_dp->dfp, and use crtc_state to compute and store the
> configuration for color/format conversion for a given mode.
> 
> v2: modified the new member to crtc_state to represent the final
> output_format that eaches the sink, after possible conversion by
> PCON kind of devices. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c               | 1 +
>  drivers/gpu/drm/i915/display/intel_crt.c             | 1 +
>  drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 5 +++--
>  drivers/gpu/drm/i915/display/intel_display_types.h   | 3 +++
>  drivers/gpu/drm/i915/display/intel_dp.c              | 7 +++++++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c          | 1 +
>  drivers/gpu/drm/i915/display/intel_dvo.c             | 1 +
>  drivers/gpu/drm/i915/display/intel_hdmi.c            | 3 +++
>  drivers/gpu/drm/i915/display/intel_lvds.c            | 1 +
>  drivers/gpu/drm/i915/display/intel_tv.c              | 1 +
>  drivers/gpu/drm/i915/display/vlv_dsi.c               | 1 +
>  11 files changed, 23 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 47f13750f6fa..5defafb6b9df 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1667,6 +1667,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
>  	int ret;
>  
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> +	pipe_config->sink_format = pipe_config->output_format;
>  
>  	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
>  	if (ret)
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index 94d0a5e1dd03..a6e7cf21e6e9 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -392,6 +392,7 @@ static int intel_crt_compute_config(struct intel_encoder *encoder,
>  		return -EINVAL;
>  
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> +	pipe_config->sink_format = pipe_config->output_format;
>  
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index e9212f69c360..ed427b9cbf09 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -163,10 +163,11 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>  
>  	snprintf_output_types(buf, sizeof(buf), pipe_config->output_types);
>  	drm_dbg_kms(&i915->drm,
> -		    "active: %s, output_types: %s (0x%x), output format: %s\n",
> +		    "active: %s, output_types: %s (0x%x), output format: %s, sink format: %s\n",
>  		    str_yes_no(pipe_config->hw.active),
>  		    buf, pipe_config->output_types,
> -		    output_formats(pipe_config->output_format));
> +		    output_formats(pipe_config->output_format),
> +		    output_formats(pipe_config->sink_format));
>  
>  	drm_dbg_kms(&i915->drm,
>  		    "cpu_transcoder: %s, pipe bpp: %i, dithering: %i\n",
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index e2b853e9e51d..69a68a70ac00 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1312,6 +1312,9 @@ struct intel_crtc_state {
>  
>  	/* for loading single buffered registers during vblank */
>  	struct drm_vblank_work vblank_work;
> +
> +	/* Sink output format */
> +	enum intel_output_format sink_format;

Please put this next to the output_format. Probably should try to
clarify the comments for each to indicate output_format is what's
coming out the end of the pipe, and sink_format what's going into
the sink.

>  };
>  
>  enum intel_pipe_crc_source {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 359884617fdc..99d72b345907 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1990,8 +1990,14 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>  		drm_dbg_kms(&i915->drm,
>  			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
>  		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
> +		crtc_state->sink_format = crtc_state->output_format;
>  	}
>  
> +	else if (ycbcr_420_only)
> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> +	else
> +		crtc_state->sink_format = crtc_state->output_format;

Hmm. This feels a bit backwards. I think it would make more sense to
start with the sink format and then compute the output_format based
on that. Could add intel_dp_sink_format() helper, and then pass the
result from that into intel_dp_output_format().

> +
>  	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>  					   respect_downstream_limits);
>  	if (ret) {
> @@ -2001,6 +2007,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>  			return ret;
>  
>  		crtc_state->output_format = intel_dp_output_format(connector, true);
> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>  		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>  						   respect_downstream_limits);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index cd4e61026d98..cd625c7b8693 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -148,6 +148,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  		return -EINVAL;
>  
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> +	pipe_config->sink_format = pipe_config->output_format;

If we compute sink_format first for DP, I'd do the same for all these
other cases too. I think just setting both to RGB explicity would be 
fine.


We seem to missing the readout part entirely. While we can't hook it
into the state checker (due to reliance on the protocol connverters)
it would at least give us slightly more accurate state dump for the
initial state readout in case the GOP has chosen to use native
YCbCr 4:2:0 output (not sure it ever does that though).

-- 
Ville Syrjälä
Intel
