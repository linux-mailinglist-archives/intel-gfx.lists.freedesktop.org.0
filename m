Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 303FE59FC6A
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:57:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F22F10EFD8;
	Wed, 24 Aug 2022 13:57:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F2FC10EFD8
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661349421; x=1692885421;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=kxSkutYUkx+NR6xP27BhGWviz3hJXmtv1OhFfRa28mI=;
 b=OpCwnYGp1T9yZtrKaqjeK+KN/lxSHGQOB2jVEzsxCxCZW6VegSWw4vJL
 IF6UhdEIlmrv8Edf/r1QlOX1IGa+A1d9nLeWmq96grsdY2AKUCAG8TM3t
 rTC1jz+H1AB3wC509hiKOjhO1Cl+pm8NuTttVuGZSucxGFlEX24JV6z8X
 Z75pJRXehA8yCWlrQ+/JYB5ymcHkMG5xf1lcA3A4Ud0p2Z3ZAO11e2Jkt
 BuWufbC4f/buE/E5rja85mQd9MQKMeMYIA22irSjoxTlRfgFHFjcChmb4
 +0RNnVJPXcKL8hvX1UbArBUhXq146TF6lveF+wHrm4uWCqWXkfqU+SqWl g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10449"; a="357945948"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="357945948"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:57:00 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="670512764"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by fmsmga008-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:56:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220823222116.3696068-1-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220823222116.3696068-1-chaitanya.kumar.borah@intel.com>
Date: Wed, 24 Aug 2022 16:56:56 +0300
Message-ID: <87pmgpiw2f.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: compute config for audio
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
Cc: kai.vehmanen@intel.com, Borah@freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 24 Aug 2022, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
> In certain scenarios, we might have to filter out some audio
> configuration depending on HW limitation. For example, in
> GLK DP port more than 2 channels are not supported for audio.
> A monitor provides information of it's supported audio configurations
> through SAD (Short Audio Descriptors) which are part of the ELD/EDID.
> In this patch we add a bit mask to indicate which SADs are supported.
> The bit mask is updated in the function intel_eld_compute_config().
> Based on this bit mask, we prune SADs which are not supported in
> the function i915_audio_component_get_eld() before sending out the
> data to the audio driver.
>
> We use a bit mask instead of operating on the eld data directly as
> eld data can get updated after intel_eld_compute_config() and before
> i915_audio_component_get_eld() is called
>
> fixes: https://gitlab.freedesktop.org/drm/intel/-/issues/5368
>
> Signed-off-by: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/drm_edid.c                    | 36 ++++++++++
>  drivers/gpu/drm/i915/display/intel_audio.c    | 65 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_audio.h    |  3 +
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +
>  .../drm/i915/display/intel_display_types.h    |  9 +++
>  include/drm/drm_edid.h                        |  9 +++

First of all, drm_edid.[ch] and i915 changes need to be separated.

>  6 files changed, 123 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
> index 90a5e26eafa8..3495af8d8596 100644
> --- a/drivers/gpu/drm/drm_edid.c
> +++ b/drivers/gpu/drm/drm_edid.c
> @@ -6988,3 +6988,39 @@ static void _drm_update_tile_info(struct drm_connector *connector,
>  		connector->tile_group = NULL;
>  	}
>  }
> +
> +/*
> + * drm_sad_to_format - extract format of an SAD
> + * @sad: pointer to an sad
> + *
> + * extract the format of an SAD from byte 0
> + */
> +int drm_sad_to_format(const u8 *sad)
> +{
> +	return (sad[0] & DRM_ELD_SAD_FORMAT_MASK) >> DRM_ELD_SAD_FORMAT_SHIFT;
> +}
> +EXPORT_SYMBOL(drm_sad_to_format);
> +
> +/*
> + * drm_sad_to_format - extract channels of an SAD
> + * @sad: pointer to an sad
> + *
> + * extract number of supported channels from byte 0 of SAD
> + */
> +int drm_sad_to_channels(const u8 *sad)
> +{
> +	return (sad[0] & DRM_ELD_SAD_CHANNELS_MASK) + 1;
> +}
> +EXPORT_SYMBOL(drm_sad_to_channels);
> +
> +/*
> + * drm_sad_to_format - extract supported rates of an SAD
> + * @sad: pointer to an sad
> + *
> + * extract supported rates from byte 1 of SAD
> + */
> +int drm_sad_to_rates(const u8 *sad)
> +{
> +	return sad[1] & DRM_ELD_SAD_RATES_MASK;
> +}
> +EXPORT_SYMBOL(drm_sad_to_rates);

Not enthusiastic about adding a bunch of new functions to inspect the
sad here. Makes me think this should be parsed and stored in
drm_display_info in drm_edid_to_eld() instead if it's generally useful
data.

> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 6c9ee905f132..ac425b652331 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -1235,7 +1235,33 @@ static int i915_audio_component_get_eld(struct device *kdev, int port,
>  	if (*enabled) {
>  		eld = intel_encoder->audio_connector->eld;
>  		ret = drm_eld_size(eld);
> -		memcpy(buf, eld, min(max_bytes, ret));
> +
> +		if (intel_encoder->sad_mask_valid) {
> +			int i;
> +			u8 *temp_buf;
> +			u8 *sad;
> +
> +			temp_buf = kzalloc(ret, GFP_KERNEL);
> +
> +			if (!temp_buf) {
> +				mutex_unlock(&dev_priv->audio.mutex);
> +				return -ENOMEM;

Please no error returns like this; use goto and common exit handling
with the unlock.

> +			}
> +
> +			memcpy(temp_buf, eld, ret);
> +
> +			sad = (u8 *)drm_eld_sad(temp_buf);

This may return NULL. And cringe about casting const away.

> +
> +			for (i = 0; i < drm_eld_sad_count(temp_buf); i++, sad += 3) {
> +				if (!(intel_encoder->supported_sads & (1 << i)))
> +					memset(&sad[0], 0, 3);

Here's the main question I have about the change, really. The ELD
(literally EDID-like-data) and SAD are supposed to describe the *sink*
capabilities. Why are we filtering the data here, telling the audio
controller driver this is what the *sink* supports, when the limitation
comes from the *source*?

I could just be clueless about how audio works, but semantically this
feels the same as modifying the EDID based on what the *source*
supports.

> +			}
> +
> +			memcpy(buf, temp_buf, min(max_bytes, ret));
> +			kfree(temp_buf);
> +		} else {
> +			memcpy(buf, eld, min(max_bytes, ret));
> +		}
>  	}
>  
>  	mutex_unlock(&dev_priv->audio.mutex);
> @@ -1408,3 +1434,40 @@ void intel_audio_deinit(struct drm_i915_private *dev_priv)
>  	else
>  		i915_audio_component_cleanup(dev_priv);
>  }
> +
> +void intel_eld_compute_config(struct intel_encoder *encoder,
> +			      const struct intel_crtc_state *pipe_config,
> +			      const struct drm_connector_state *conn_state)

It should probably be named intel_audio_compute_config().

> +{
> +		struct drm_connector *connector = conn_state->connector;
> +		u8 *eld = connector->eld;
> +		const u8 *sad = drm_eld_sad(eld);
> +		struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);

Should be named i915 for all new code.

> +		u32 *supported_sads = &encoder->supported_sads;
> +		int i, channels;
> +
> +		mutex_lock(&dev_priv->audio.mutex);
> +
> +		/* reset information about supported sads to default */
> +		*supported_sads = 0;
> +		encoder->sad_mask_valid = false;
> +
> +		/* Currently filtering SADs is necessary only for GLK due to it's
> +		 * hardware limitations. However, this function can be scaled
> +		 * to any scenario where display driver has to filter out certain
> +		 * SADs before exposing them to the audio driver.
> +		 */
> +		if (IS_GEMINILAKE(dev_priv) &&
> +		    intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP)) {
> +			encoder->sad_mask_valid = true;
> +
> +			for (i = 0; i < drm_eld_sad_count(eld); i++, sad += 3) {
> +				channels = drm_sad_to_channels(sad);
> +
> +				if (channels <= 2)
> +					(*supported_sads) |= 1 << i;
> +			}
> +		}

It's wrong to modify the encoder members in compute config. Just imagine
compute config failing after this; you've already changed the encoder
and you can't get it back.

> +		drm_dbg_kms(&dev_priv->drm, "supported_sads 0x%x\n", *supported_sads);
> +		mutex_unlock(&dev_priv->audio.mutex);

The indentation is off in the function.


BR,
Jani.

> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
> index 63b22131dc45..17c468a9e07e 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio.h
> @@ -22,5 +22,8 @@ void intel_audio_cdclk_change_pre(struct drm_i915_private *dev_priv);
>  void intel_audio_cdclk_change_post(struct drm_i915_private *dev_priv);
>  void intel_audio_init(struct drm_i915_private *dev_priv);
>  void intel_audio_deinit(struct drm_i915_private *dev_priv);
> +void intel_eld_compute_config(struct intel_encoder *encoder,
> +			      const struct intel_crtc_state *pipe_config,
> +			      const struct drm_connector_state *conn_state);
>  
>  #endif /* __INTEL_AUDIO_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 6c43a5124cb8..e7807500c88d 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3678,6 +3678,8 @@ static int intel_ddi_compute_config(struct intel_encoder *encoder,
>  
>  	intel_ddi_compute_min_voltage_level(dev_priv, pipe_config);
>  
> +	intel_eld_compute_config(encoder, pipe_config, conn_state);
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 0da9b208d56e..5b6a694ff0cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -265,6 +265,15 @@ struct intel_encoder {
>  	/* for communication with audio component; protected by av_mutex */
>  	const struct drm_connector *audio_connector;
>  
> +	/* bitmask to track supported SADs for current audio connector.
> +	 * According to HDA spec Rev 1.0a, ELD SAD limit is 15. Using
> +	 * a 32 bit mask for future proofing; protected by av_mutex
> +	 */
> +	u32 supported_sads;
> +
> +	/* indicates if the supported_sads is a valid bitmask; protected by av_mutex */
> +	bool sad_mask_valid;
> +
>  	/* VBT information for this encoder (may be NULL for older platforms) */
>  	const struct intel_bios_encoder_data *devdata;
>  };
> diff --git a/include/drm/drm_edid.h b/include/drm/drm_edid.h
> index 2181977ae683..363f4487cdd6 100644
> --- a/include/drm/drm_edid.h
> +++ b/include/drm/drm_edid.h
> @@ -318,6 +318,11 @@ struct detailed_timing {
>  
>  #define DRM_ELD_CEA_SAD(mnl, sad)	(20 + (mnl) + 3 * (sad))
>  
> +#define DRM_ELD_SAD_FORMAT_MASK 0x78
> +#define DRM_ELD_SAD_FORMAT_SHIFT 3
> +#define DRM_ELD_SAD_CHANNELS_MASK 0x7
> +#define DRM_ELD_SAD_RATES_MASK 0x7f
> +
>  struct edid {
>  	u8 header[8];
>  	/* Vendor & product info */
> @@ -378,6 +383,10 @@ int drm_edid_to_speaker_allocation(const struct edid *edid, u8 **sadb);
>  int drm_av_sync_delay(struct drm_connector *connector,
>  		      const struct drm_display_mode *mode);
>  
> +int drm_sad_to_format(const u8 *sad);
> +int drm_sad_to_channels(const u8 *sad);
> +int drm_sad_to_rates(const u8 *sad);
> +
>  #ifdef CONFIG_DRM_LOAD_EDID_FIRMWARE
>  struct edid *drm_load_edid_firmware(struct drm_connector *connector);
>  int __drm_set_edid_firmware_path(const char *path);

-- 
Jani Nikula, Intel Open Source Graphics Center
