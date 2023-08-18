Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30201780749
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 10:38:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E98410E4A2;
	Fri, 18 Aug 2023 08:38:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFDD610E49F
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 08:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692347890; x=1723883890;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+5efLt64xr9C/YhDr2x5+mBjxdsbJiatjr/JxjrXJYA=;
 b=XEysnL8rYbJX6ebRp5WcDHOA7XupfgwXsafI7p5GoDk2tNC0Rx3h3FNK
 dtCau2MzFCYmd0aXjwGm/NWuhDOzXsTrEGhsG2+W8RBKGMIgTMdLaCYt1
 3hErB22oQn9Gj332skFLIeioue//hg6r4pt4Fh3WwZ9A2EOcn2OVfv7ZR
 XNmkaRSxTsb+3VVOwKV7CHe555bbsssqcs/kVRHCi12A0M2UFX6ifPJ/s
 F9x9VqdANyOPBHY6xS6Inq1eyz0LX8y8dSunaEXTv+fhDymhz3WX5+u+4
 ayVF+ywPJkdZ6plAHPaE3BwtJOHrq5nIRNneKbdWRX2m731RQV0cZFmj4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="375826279"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="375826279"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 01:38:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="770061502"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="770061502"
Received: from rladysz-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.175])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 01:38:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230817125007.2681331-4-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230817125007.2681331-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230817125007.2681331-4-mitulkumar.ajitkumar.golani@intel.com>
Date: Fri, 18 Aug 2023 11:38:02 +0300
Message-ID: <87cyzk9251.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/display: Add wrapper to
 Compute SAD
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
Cc: jyri.sarha@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 17 Aug 2023, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> Compute SADs that takes into account the supported rate
> and channel based on the capabilities of the audio source.
> This wrapper function should encapsulate the logic for
> determining the supported rate and channel and should
> return a set of SADs that are compatible with the source.
>
> --v1:
> - call intel_audio_compute_eld in this commit as it is
> defined here
>
> --v2:
> - Handle case when max frequency is less than 32k.
> - remove drm prefix.
> - name change for parse_sad to eld_to_sad.
>
> --v3:
> - Use signed int wherever required.
> - add debug trace when channel is limited.
>
> --v4:
> - remove inline from eld_to_sad.
> - declare index outside of for loop with int type.
> - Correct mask value calculation.
> - remove drm_err, instead just return if eld parsing failed.
> - remove unncessary typecast
> - reduce indentation while parsing sad
> - use intel_audio_compute_eld as static and call bandwidth
> calculation just before that.
>
> --v9:
> - Handling the case when, sink supported channel is less
> than max supported. In that case, rate needs to be calibrate
> in accordance with available bandwidth.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 107 ++++++++++++++++++++-
>  1 file changed, 106 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 79377e33a59b..c90ac2608eef 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -806,6 +806,111 @@ static void calc_audio_config_params(struct intel_crtc_state *pipe_config)
>  	pipe_config->audio.max_channel_count = 0;
>  }
>  

This was added in previous patch:

 +static void calc_audio_config_params(struct intel_crtc_state *pipe_config)
 +{
 +	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 +	int channel_count;
 +	int index, rate[] = { 192000, 176000, 96000, 88000, 48000, 44100, 32000 };
 +	int audio_req_bandwidth, available_blank_bandwidth, vblank, hblank;
 +
 +	hblank = adjusted_mode->htotal - adjusted_mode->hdisplay;
 +	vblank = adjusted_mode->vtotal - adjusted_mode->vdisplay;
 +	available_blank_bandwidth = hblank * vblank *
 +				    drm_mode_vrefresh(adjusted_mode) * pipe_config->pipe_bpp;
 +	for (channel_count = MAX_CHANNEL_COUNT; channel_count > 0; channel_count--) {
 +		for (index = 0; index < ARRAY_SIZE(rate); index++) {
 +			audio_req_bandwidth = calc_audio_bw(channel_count,
 +							    rate[index]);
 +			if (audio_req_bandwidth < available_blank_bandwidth) {
 +				pipe_config->audio.max_rate = rate[index];
 +				pipe_config->audio.max_channel_count = channel_count;
 +				return;
 +			}
 +		}
 +	}
 +
 +	pipe_config->audio.max_rate = 0;
 +	pipe_config->audio.max_channel_count = 0;
 +}

And this here:

> +static void calibrate_audio_config_params(struct intel_crtc_state *pipe_config, int channel)
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
> +
> +	for (index = 0; index < ARRAY_SIZE(rate); index++) {
> +		audio_req_bandwidth = calc_audio_bw(channel_count,
> +						    rate[index]);
> +		if (audio_req_bandwidth < available_blank_bandwidth) {
> +			pipe_config->audio.max_rate = rate[index];
> +			pipe_config->audio.max_channel_count = channel_count;
> +			return;
> +		}
> +	}
> +
> +	pipe_config->audio.max_rate = 0;
> +	pipe_config->audio.max_channel_count = 0;
> +}

This kind of stuff needs to be deduplicated.

> +
> +static int sad_to_channels(const u8 *sad)
> +{
> +	return 1 + (sad[0] & 0x7);
> +}
> +
> +static u8 *eld_to_sad(u8 *eld)
> +{
> +	int ver, mnl;
> +
> +	ver = (eld[DRM_ELD_VER] & DRM_ELD_VER_MASK) >> DRM_ELD_VER_SHIFT;
> +	if (ver != 2 && ver != 31)
> +		return NULL;
> +
> +	mnl = drm_eld_mnl(eld);
> +	if (mnl > 16)
> +		return NULL;
> +
> +	return eld + DRM_ELD_CEA_SAD(mnl, 0);
> +}

I'm still not happy with the copy-paste here. The parsing details should
be hidden in drm_edid.c and that should be the Single Point of Truth how
to deal with this.

> +
> +static int get_supported_freq_mask(struct intel_crtc_state *crtc_state)
> +{
> +	int rate[] = { 32000, 44100, 48000, 88000, 96000, 176000, 192000 };

This is like the third copy of the same array already... and the values
are also present in the existing dp/hdmi aud arrays in intel_audio.c.

And those have 88200 instead of 88000, so which one is correct?

> +	int mask = 0, index;
> +
> +	for (index = 0; index < ARRAY_SIZE(rate); index++) {
> +		if (rate[index] > crtc_state->audio.max_rate)
> +			break;
> +
> +		mask |= 1 << index;
> +
> +		if (crtc_state->audio.max_rate != rate[index])
> +			continue;
> +	}
> +
> +	return mask;
> +}
> +
> +static void intel_audio_compute_eld(struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +	u8 *eld, *sad;
> +	int index, mask = 0;
> +
> +	eld = crtc_state->eld;
> +	if (!eld)
> +		return;
> +
> +	sad = eld_to_sad(eld);
> +	if (!sad)
> +		return;
> +
> +	calc_audio_config_params(crtc_state);
> +
> +	mask = get_supported_freq_mask(crtc_state);
> +	for (index = 0; index < drm_eld_sad_count(eld); index++, sad += 3) {
> +		/*
> +		 * Respect source restricitions. Limit capabilities to a subset that is
> +		 * supported both by the source and the sink.
> +		 */
> +		if (sad_to_channels(sad) >= crtc_state->audio.max_channel_count) {
> +			sad[0] &= ~0x7;

Also not happy with magic values here.

> +			sad[0] |= crtc_state->audio.max_channel_count - 1;
> +			drm_dbg_kms(&i915->drm, "Channel count is limited to %d\n",
> +				    crtc_state->audio.max_channel_count - 1);
> +		} else {
> +			/*
> +			 * calibrate rate when, sink supported channel
> +			 * count is slight less than max supported
> +			 * channel count.
> +			 */
> +			calibrate_audio_config_params(crtc_state, sad_to_channels(sad));
> +			mask = get_supported_freq_mask(crtc_state);
> +		}
> +
> +		sad[1] &= mask;
> +	}
> +}
> +
>  bool intel_audio_compute_config(struct intel_encoder *encoder,
>  				struct intel_crtc_state *crtc_state,
>  				struct drm_connector_state *conn_state)
> @@ -827,7 +932,7 @@ bool intel_audio_compute_config(struct intel_encoder *encoder,
>  
>  	crtc_state->eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;
>  
> -	calc_audio_config_params(crtc_state);
> +	intel_audio_compute_eld(crtc_state);
>  
>  	return true;
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
