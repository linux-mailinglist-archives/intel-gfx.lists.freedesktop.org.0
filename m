Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D5877F744
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 15:04:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E83010E46D;
	Thu, 17 Aug 2023 13:04:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1921910E46D
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 13:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692277450; x=1723813450;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=P73/vllHgOTnv8HyE37YJH8ZDef+XPkPtuLpYFu7bOg=;
 b=GE3KOl3uS//yBqjGb7vsZJoW45O9W4dKEzattkI8y15ExireLXxE5KlZ
 00j94msj10ZfWapF9zP/MFMAKlqd0v0DXmhUrFgKY2J4rA15woF/nhfPm
 0EmOd5B/E5UAtmRocffaAOv1hqGwizZ+3j9AtHo7puqDdn2DdLN8t6WP1
 ksRn8BMYM1PtSCkmRQZ8PaVK0wbeXI7NCLeap73rkoZ7R0BGBv8FPtlWE
 QTT0snh6hTg1PtdLIP0kJyMElY7uX+X4gtlKYA26z9dCQMVwC5uPNBcIa
 oOqj6wHw2XBLyAEX4DZu8GluhQwOYTAqStHac9Wl5p2grLpP9ZvckWxON A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="403784879"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="403784879"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 06:04:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="800037704"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="800037704"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.68])
 by fmsmga008.fm.intel.com with SMTP; 17 Aug 2023 06:04:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Aug 2023 16:04:05 +0300
Date: Thu, 17 Aug 2023 16:04:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Message-ID: <ZN4axVL9z7OtycRg@intel.com>
References: <20230817125007.2681331-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230817125007.2681331-3-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230817125007.2681331-3-mitulkumar.ajitkumar.golani@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display: Configure and
 initialize HDMI audio capabilities
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
Cc: intel-gfx@lists.freedesktop.org, jyri.sarha@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 17, 2023 at 06:20:06PM +0530, Mitul Golani wrote:
> Initialize the source audio capabilities in crtc_state
> property by setting them to their maximum supported values,
> including max_channel and max_frequency. This allows for the
> calculation of audio source capabilities with respect to
> the available mode bandwidth. These capabilities encompass
> parameters such as supported frequency and channel configurations.
> 
> --v1:
> - Refactor max_channel and max_rate to this commit as it is being
> initialised here
> - Remove call for intel_audio_compute_eld to avoid any regression while
> merge. instead call it in different commit when it is defined.
> - Use int instead of unsigned int for max_channel and max_frequecy
> - Update commit message and header
> 
> --v2:
> - Use signed instead of unsigned variables.
> - Avoid using magic numbers and give them proper name.
> 
> --v3:
> - Move defines to intel_audio.c.
> - use consistent naming convention for rate and channel.
> - declare num_of_channel and aud_rate separately.
> - Declare index value outside of for loop.
> - Move Bandwidth calculation to intel_Audio.c as it is common for both
> DP and HDMI. Also use static.
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c    | 38 +++++++++++++++++++
>  .../drm/i915/display/intel_display_types.h    |  6 +++
>  2 files changed, 44 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index e20ffc8e9654..79377e33a59b 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -64,6 +64,9 @@
>   * struct &i915_audio_component_audio_ops @audio_ops is called from i915 driver.
>   */
>  
> +#define AUDIO_SAMPLE_CONTAINER_SIZE	32
> +#define MAX_CHANNEL_COUNT		8
> +
>  struct intel_audio_funcs {
>  	void (*audio_codec_enable)(struct intel_encoder *encoder,
>  				   const struct intel_crtc_state *crtc_state,
> @@ -770,6 +773,39 @@ void intel_audio_sdp_split_update(struct intel_encoder *encoder,
>  			     crtc_state->sdp_split_enable ? AUD_ENABLE_SDP_SPLIT : 0);
>  }
>  
> +static int calc_audio_bw(int channel_count, int rate)
> +{
> +	int bandwidth = channel_count * rate * AUDIO_SAMPLE_CONTAINER_SIZE;
> +	return bandwidth;
> +}
> +
> +static void calc_audio_config_params(struct intel_crtc_state *pipe_config)
> +{
> +	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
> +	int channel_count;
> +	int index, rate[] = { 192000, 176000, 96000, 88000, 48000, 44100, 32000 };
> +	int audio_req_bandwidth, available_blank_bandwidth, vblank, hblank;
> +
> +	hblank = adjusted_mode->htotal - adjusted_mode->hdisplay;
> +	vblank = adjusted_mode->vtotal - adjusted_mode->vdisplay;
> +	available_blank_bandwidth = hblank * vblank *
> +				    drm_mode_vrefresh(adjusted_mode) * pipe_config->pipe_bpp;
> +	for (channel_count = MAX_CHANNEL_COUNT; channel_count > 0; channel_count--) {
> +		for (index = 0; index < ARRAY_SIZE(rate); index++) {
> +			audio_req_bandwidth = calc_audio_bw(channel_count,
> +							    rate[index]);
> +			if (audio_req_bandwidth < available_blank_bandwidth) {
> +				pipe_config->audio.max_rate = rate[index];
> +				pipe_config->audio.max_channel_count = channel_count;
> +				return;
> +			}
> +		}
> +	}
> +
> +	pipe_config->audio.max_rate = 0;
> +	pipe_config->audio.max_channel_count = 0;
> +}
> +
>  bool intel_audio_compute_config(struct intel_encoder *encoder,
>  				struct intel_crtc_state *crtc_state,
>  				struct drm_connector_state *conn_state)
> @@ -791,6 +827,8 @@ bool intel_audio_compute_config(struct intel_encoder *encoder,
>  
>  	crtc_state->eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;
>  
> +	calc_audio_config_params(crtc_state);
> +
>  	return true;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index ebd147180a6e..8815837a95a6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1131,6 +1131,12 @@ struct intel_crtc_state {
>  
>  	struct {
>  		bool has_audio;
> +
> +		/* Audio rate in Hz */
> +		int max_rate;
> +
> +		/* Number of audio channels */
> +		int max_channel_count;

From what I can see you only calculate these when computing the ELD,
and immediately use them there and nowhere else. So I see no reason
to bloat the crtc_state with this.

>  	} audio;
>  
>  	/*
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
