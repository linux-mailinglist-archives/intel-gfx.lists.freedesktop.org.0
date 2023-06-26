Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2121A73E5FF
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 19:07:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 169A610E0CA;
	Mon, 26 Jun 2023 17:07:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C054A10E0CD
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 17:07:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687799244; x=1719335244;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=YxFjWhV5nTiw6cazWXgrfVYt5KuHMQorkBl1GjJG9so=;
 b=nUyLEjtkX0sO1LJ0qYBUvHM5m6hiSlxlHhaFVXot8fjzYm+lYeFnc1IO
 uHrih1AIX+ycKaQdmOC1z7zy0ANc/DUz7KUjIuMhfXJsW8uPKvD0lBaF/
 hY/MK3Dw4/ztj2hJaSrXVP4JOBYciLxlTItePmIya6u4TKf2/HT7AQ7DP
 Rm9sFtwfGGgwAqNJ80Qisxuc0qKFvdL+kFgmUP4ayYYELj05I1iwHTblq
 y1lkrf2za+OKR3so4gI5W8da9h4+BoYShGnT2S/SLYhJQpAj2B34izDD9
 CDA6xskOLrcNnl6xVCKuk65s2QJ+mm4XKwcKhVy5j4ozB1GrRan3qIT6M w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="351105802"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="351105802"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 10:04:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="829303256"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="829303256"
Received: from pdenis-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.62.207])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 10:04:48 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230626163819.2759500-3-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230626163819.2759500-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230626163819.2759500-3-mitulkumar.ajitkumar.golani@intel.com>
Date: Mon, 26 Jun 2023 20:04:33 +0300
Message-ID: <87y1k6tase.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC 2/3] drm/i915/display: Configure and
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 26 Jun 2023, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> Initialize the source audio capabilities for HDMI in crtc_state
> property by setting them to their maximum supported values,
> including max_channel and max_frequency. This allows for the
> calculation of HDMI audio source capabilities with respect to
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
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.h    |  3 ++
>  .../drm/i915/display/intel_display_types.h    |  6 ++++
>  drivers/gpu/drm/i915/display/intel_hdmi.c     | 34 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_hdmi.h     |  1 +
>  4 files changed, 44 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
> index 07d034a981e9..be3edf9c4982 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio.h
> @@ -13,6 +13,9 @@ struct drm_i915_private;
>  struct intel_crtc_state;
>  struct intel_encoder;
>  
> +#define AUDIO_SAMPLE_CONTAINER_SIZE	32
> +#define MAX_CHANNEL_COUNT			8

These can be moved within intel_audio.c (see comment below).

> +
>  void intel_audio_hooks_init(struct drm_i915_private *dev_priv);
>  bool intel_audio_compute_config(struct intel_encoder *encoder,
>  				struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index ebd147180a6e..74eee87d2df1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1131,6 +1131,12 @@ struct intel_crtc_state {
>  
>  	struct {
>  		bool has_audio;
> +
> +		/* Audio rate in Hz */
> +		int max_frequency;
> +
> +		/* Number of audio channels */
> +		int max_channel;
>  	} audio;
>  
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 32157bef2eef..6a4d477e8a15 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2277,6 +2277,39 @@ bool intel_hdmi_compute_has_hdmi_sink(struct intel_encoder *encoder,
>  		!intel_hdmi_is_cloned(crtc_state);
>  }
>  
> +static int calc_audio_bw(int channel, int frequency)

Please try to use more consistent naming. I suggest "channel_count" and
"frequency" (or "rate") throughout. Ditto for the max_ variants.

> +{
> +	int bandwidth = channel * frequency * AUDIO_SAMPLE_CONTAINER_SIZE;
> +	return bandwidth;
> +}
> +
> +void
> +intel_hdmi_audio_compute_config(struct intel_crtc_state *pipe_config)
> +{
> +	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
> +	int num_of_channel, aud_rates[] = {192000, 176000, 96000, 88000, 48000, 44100, 32000};

Please declare these separately, they are two completely two
things. Please add space after { and before }.

> +	int audio_req_bandwidth, available_blank_bandwidth, vblank, hblank;
> +
> +	hblank = adjusted_mode->htotal - adjusted_mode->hdisplay;
> +	vblank = adjusted_mode->vtotal - adjusted_mode->vdisplay;
> +	available_blank_bandwidth = hblank * vblank *
> +				    drm_mode_vrefresh(adjusted_mode) * pipe_config->pipe_bpp;
> +	for (num_of_channel = MAX_CHANNEL_COUNT; num_of_channel > 0; num_of_channel--) {
> +		for (int index = 0; index < ARRAY_SIZE(aud_rates); index++) {

Please don't declare index within the for loop.

> +			audio_req_bandwidth = calc_audio_bw(num_of_channel,
> +							    aud_rates[index]);
> +			if (audio_req_bandwidth < available_blank_bandwidth) {
> +				pipe_config->audio.max_frequency = aud_rates[index];
> +				pipe_config->audio.max_channel = num_of_channel;
> +				return;
> +			}
> +		}
> +	}
> +
> +	pipe_config->audio.max_frequency = 0;
> +	pipe_config->audio.max_channel = 0;
> +}
> +

I think the above should be moved to intel_audio.c as static and called
directly from intel_audio_compute_config(). There's no reason for the
above to be in intel_hdmi.c.

>  int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  			      struct intel_crtc_state *pipe_config,
>  			      struct drm_connector_state *conn_state)
> @@ -2344,6 +2377,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  			pipe_config->hdmi_high_tmds_clock_ratio = true;
>  		}
>  	}
> +	intel_hdmi_audio_compute_config(pipe_config);
>  
>  	intel_hdmi_compute_gcp_infoframe(encoder, pipe_config,
>  					 conn_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
> index 6b39df38d57a..6df303daf348 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
> @@ -27,6 +27,7 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
>  bool intel_hdmi_compute_has_hdmi_sink(struct intel_encoder *encoder,
>  				      const struct intel_crtc_state *crtc_state,
>  				      const struct drm_connector_state *conn_state);
> +void intel_hdmi_audio_compute_config(struct intel_crtc_state *pipe_config);
>  int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  			      struct intel_crtc_state *pipe_config,
>  			      struct drm_connector_state *conn_state);

-- 
Jani Nikula, Intel Open Source Graphics Center
