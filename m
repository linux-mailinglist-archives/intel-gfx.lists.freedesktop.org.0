Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFAE73E652
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 19:22:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63A5410E117;
	Mon, 26 Jun 2023 17:22:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3A6810E0FD
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 17:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687800123; x=1719336123;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=CevAZSgnootPoR6uXwalVu6VcF8x+julruX7A64AE6k=;
 b=NJcPkWiKTtIBHnfpevIV/JMxkaj+9qbfD28hd51xM40LfZciHTKwTAUA
 tXjdlKEy6UdXywkfc5ndOTqVnPkmijrg7U9Svtbe9rwVcg64/SmJ+708i
 MU9lyzCXb8sWwdoYvG3fFy4azSKQFWMtVAMnYH3uOYSiGrHJaFHd8ByN5
 HD2L1FtNMXvIkSB/K+52pDtPutkvps5fZsGnGLDHOHw4GZNwdjkcgVwgb
 dTTZavUa7HIgQTcg5smGripw5PCdgP8Ao4KLy3eN9UeP4dta54JQKcdHs
 5sjOavm0iGTnQZb21wQvxrn9OanISS5mmOBlmYKyvN3B2fR18R0SzqEZE g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="427333218"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="427333218"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 10:18:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="890351996"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="890351996"
Received: from pdenis-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.62.207])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 10:18:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230626163819.2759500-4-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230626163819.2759500-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230626163819.2759500-4-mitulkumar.ajitkumar.golani@intel.com>
Date: Mon, 26 Jun 2023 20:18:09 +0300
Message-ID: <87v8fata5q.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC 3/3] drm/i915/display: Add wrapper to Compute
 SAD
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
> Compute SADs that takes into account the supported rate and channel
> based on the capabilities of the audio source. This wrapper function
> should encapsulate the logic for determining the supported rate and
> channel and should return a set of SADs that are compatible with the
> source.
>
> --v1:
> - call intel_audio_compute_eld in this commit as it is defined here
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
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 69 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_audio.h |  1 +
>  drivers/gpu/drm/i915/display/intel_hdmi.c  |  2 +
>  3 files changed, 72 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index e20ffc8e9654..1a1c773c1d41 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -794,6 +794,75 @@ bool intel_audio_compute_config(struct intel_encoder *encoder,
>  	return true;
>  }
>  
> +static int sad_to_channels(const u8 *sad)
> +{
> +	return 1 + (sad[0] & 0x7);
> +}
> +
> +static inline u8 *eld_to_sad(u8 *eld)

Please don't use inline.

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

Feels like this should be in drm_edid.[ch]... but hey, it actually is!
drm_eld_sad().

> +}
> +
> +static int get_supported_freq_mask(struct intel_crtc_state *crtc_state)
> +{
> +	int audio_freq_hz[] = {32000, 44100, 48000, 88000, 96000, 176000, 192000, 0};

This needs a comment referencing the source spec, as apparently the
order is significant.

> +	int mask = 0;
> +
> +	for (u8 index = 0; index < ARRAY_SIZE(audio_freq_hz); index++) {

int index, and please declare it separately instead of within the for.

> +		mask |= 1 << index;

This means the first one is always supported. Is that the case? What if
max_frequency is 0?

> +		if (crtc_state->audio.max_frequency != audio_freq_hz[index])
> +			continue;
> +		else
> +			break;

Maybe you mean:

		if (audio_freq_hz[index] > crtc_state->audio.max_frequency)
        		break;

		mask |= 1 << index;

> +	}
> +
> +	return mask;
> +}
> +
> +void intel_audio_compute_eld(struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +	u8 *eld, *sad;
> +	int index, mask = 0;
> +
> +	eld = crtc_state->eld;
> +	if (!eld) {
> +		drm_err(&i915->drm, "failed to locate eld\n");

It doesn't need to be an error.

> +		return;
> +	}
> +
> +	sad = (u8 *)eld_to_sad(eld);

Unnecessary cast.

> +	if (sad) {

if (!sad)
	return;

and reduce indent below.

> +		mask = get_supported_freq_mask(crtc_state);
> +
> +		for (index = 0; index < drm_eld_sad_count(eld); index++, sad += 3) {
> +			/*
> +			 * Respect source restricitions. Limit capabilities to a subset that is
> +			 * supported both by the source and the sink.
> +			 */
> +			if (sad_to_channels(sad) >= crtc_state->audio.max_channel) {
> +				sad[0] &= ~0x7;
> +				sad[0] |= crtc_state->audio.max_channel - 1;
> +				drm_dbg_kms(&i915->drm, "Channel count is limited to %d\n",
> +					    crtc_state->audio.max_channel - 1);
> +			}
> +
> +			sad[1] &= mask;
> +		}
> +	}
> +}

This should also be static within intel_audio.c.

> +
>  /**
>   * intel_audio_codec_enable - Enable the audio codec for HD audio
>   * @encoder: encoder on which to enable audio
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
> index be3edf9c4982..a0162cdc7999 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio.h
> @@ -17,6 +17,7 @@ struct intel_encoder;
>  #define MAX_CHANNEL_COUNT			8
>  
>  void intel_audio_hooks_init(struct drm_i915_private *dev_priv);
> +void intel_audio_compute_eld(struct intel_crtc_state *crtc_state);
>  bool intel_audio_compute_config(struct intel_encoder *encoder,
>  				struct intel_crtc_state *crtc_state,
>  				struct drm_connector_state *conn_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 6a4d477e8a15..daaa08c0ee47 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2402,6 +2402,8 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  		return -EINVAL;
>  	}
>  
> +	intel_audio_compute_eld(pipe_config);
> +
>  	return 0;
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
