Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 303E4847693
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 18:48:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCABD10E828;
	Fri,  2 Feb 2024 17:48:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="JMJ7awkp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
 [209.85.166.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D6B410E828
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 17:48:35 +0000 (UTC)
Received: by mail-io1-f43.google.com with SMTP id
 ca18e2360f4ac-7bffc0f65b8so93707939f.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 02 Feb 2024 09:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1706896114; x=1707500914;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=8tx6Y+jlzMkSVOV16GI3jBmnJacuxVIh4I3IDbPHPdQ=;
 b=JMJ7awkp8VA/d9jG/CmqvjDNd0T1jvfvmeTIoKPg+GznFO8qrN6O7rrTIjGzjPKyhW
 OsqzyFgDnTH9bkmtGBXqZPDuitdq5Nk7rgfCuR7NLR0gWEkdCG+HGcmJzo8zxnHNCcKi
 Q2/h+SrTqfplxMz88ADu8Mm3RFv/wNPMINqfY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706896114; x=1707500914;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8tx6Y+jlzMkSVOV16GI3jBmnJacuxVIh4I3IDbPHPdQ=;
 b=ugrczyPkA+CYkKIb3ilNW+kBgVCO3vSKT3VBPgcHqztn0KnFE1gJtNLhzzPKdEvuKS
 Y40ZVNwysXvORgl8Kva0uw2uTyhYWLueMU6QmhHj/6WEwvNqnfap+sGsx0SG9VHEGt5T
 RN5H7UK3vBvepGeKz3c1emS3dpShP6vCyNPOMFnwD1UpE9dw3hiQLmTPwfxQkQeH9GC8
 Po/+2eIsJ/uC9yOtcV7iMKVV1xws3aR7owQrl17Hlp59i+oBQyyfzBHVbZdb3Xt+Y1w1
 5hwn2dI1Ah7kyoR5s9VkENg1d1Dvhi+5sw1B5irWQZa0J8lwAe2+cJAGNp4WQaTfzK6V
 uJPg==
X-Gm-Message-State: AOJu0Yx2yT25qpHytRHGhuA4hQn/qJrVAzhxiAud5yjxy1/uRCxH/yHp
 wkbw8ac8PBqM8Bgh9QnEJT9fzt7RS+L84EzgzhrphkERpsmItE8p0+B66XcAtg==
X-Google-Smtp-Source: AGHT+IEzcBtSW8oGA8w7g/dORm/wbns6+9Eq0pamIZIxkjdTXyWAMhEgcvMSIFahIagUN5Im53/cbg==
X-Received: by 2002:a6b:6d02:0:b0:7c0:1f54:3e0f with SMTP id
 a2-20020a6b6d02000000b007c01f543e0fmr9317486iod.1.1706896114141; 
 Fri, 02 Feb 2024 09:48:34 -0800 (PST)
Received: from chromium.org ([2620:15c:183:200:780b:f051:aee4:a17e])
 by smtp.gmail.com with ESMTPSA id
 x24-20020a029718000000b004711538716esm25285jai.179.2024.02.02.09.48.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Feb 2024 09:48:33 -0800 (PST)
Date: Fri, 2 Feb 2024 10:48:32 -0700
From: Drew Davenport <ddavenport@chromium.org>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [v5, 25/30] drm/i915/dp_mst: Enable MST DSC decompression for all
 streams
Message-ID: <Zb0q8IDVXS0HxJyj@chromium.org>
References: <20231107001505.3370108-6-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231107001505.3370108-6-imre.deak@intel.com>
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

On Tue, Nov 07, 2023 at 02:15:03AM +0200, Imre Deak wrote:
> Enable DSC decompression for all streams. In particular atm if a sink is
> connected to a last branch device that is downstream of the first branch
> device connected to the source, decompression is not enabled for it.
> Similarly it's not enabled if the sink supports this with the last
> branch device passing through the compressed stream to it.
> 
> Enable DSC in the above cases as well. Since last branch devices may
> handle the decompression for multiple ports, toggling DSC needs to be
> refcounted, add this using the DSC AUX device as a reference.
> 
> v2:
> - Fix refcounting, setting/clearing
>   connector->dp.dsc_decompression_enabled always as needed. (Stan)
> - Make the refcounting more uniform for the SST vs. MST case.
> - Add state checks for connector->dp.dsc_decompression_enabled and
>   connector crtc.
> - Sanitize connector DSC decompression state during HW setup.
> - s/use_count/ref_count/
> v3:
> - Remove stale TODO: comment to set the actual decompression_aux.
> 
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       | 72 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 24 ++-----
>  .../drm/i915/display/intel_modeset_setup.c    |  6 ++
>  4 files changed, 82 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 6c2f18ef543e4..0a5508c90e8bc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -626,6 +626,7 @@ struct intel_connector {
>  		u8 fec_capability;
>  
>  		u8 dsc_hblank_expansion_quirk:1;
> +		u8 dsc_decompression_enabled:1;
>  	} dp;
>  
>  	/* Work struct to schedule a uevent on link train failure */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index bea0c03b94835..3fee371529f17 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1403,6 +1403,7 @@ static bool intel_dp_supports_dsc(const struct intel_connector *connector,
>  		return false;
>  
>  	return intel_dsc_source_support(crtc_state) &&
> +		connector->dp.dsc_decompression_aux &&
>  		drm_dp_sink_supports_dsc(connector->dp.dsc_dpcd);
>  }
>  
> @@ -2986,6 +2987,65 @@ intel_dp_sink_set_dsc_passthrough(const struct intel_connector *connector,
>  			    str_enable_disable(enable));
>  }
>  
> +static int intel_dp_dsc_aux_ref_count(struct intel_atomic_state *state,
> +				      const struct intel_connector *connector,
> +				      bool for_get_ref)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct drm_connector *_connector_iter;
> +	struct drm_connector_state *old_conn_state;
> +	struct drm_connector_state *new_conn_state;
> +	int ref_count = 0;
> +	int i;
> +
> +	/*
> +	 * On SST the decompression AUX device won't be shared, each connector
> +	 * uses for this its own AUX targeting the sink device.
> +	 */
> +	if (!connector->mst_port)
> +		return connector->dp.dsc_decompression_enabled ? 1 : 0;
> +
> +	for_each_oldnew_connector_in_state(&state->base, _connector_iter,
> +					   old_conn_state, new_conn_state, i) {
> +		const struct intel_connector *
> +			connector_iter = to_intel_connector(_connector_iter);
> +
> +		if (connector_iter->mst_port != connector->mst_port)
> +			continue;
> +
> +		if (!connector_iter->dp.dsc_decompression_enabled)
> +			continue;
> +
> +		drm_WARN_ON(&i915->drm,
> +			    (for_get_ref && !new_conn_state->crtc) ||
> +			    (!for_get_ref && !old_conn_state->crtc));
> +
> +		if (connector_iter->dp.dsc_decompression_aux ==
> +		    connector->dp.dsc_decompression_aux)
> +			ref_count++;
> +	}
> +
> +	return ref_count;
> +}
> +
> +static bool intel_dp_dsc_aux_get_ref(struct intel_atomic_state *state,
> +				     struct intel_connector *connector)
> +{
> +	bool ret = intel_dp_dsc_aux_ref_count(state, connector, true) == 0;
> +
> +	connector->dp.dsc_decompression_enabled = true;
> +
> +	return ret;
> +}
> +
> +static bool intel_dp_dsc_aux_put_ref(struct intel_atomic_state *state,
> +				     struct intel_connector *connector)
> +{
> +	connector->dp.dsc_decompression_enabled = false;
> +
> +	return intel_dp_dsc_aux_ref_count(state, connector, false) == 0;
> +}
> +
>  /**
>   * intel_dp_sink_enable_decompression - Enable DSC decompression in sink/last branch device
>   * @state: atomic state
> @@ -3009,7 +3069,11 @@ void intel_dp_sink_enable_decompression(struct intel_atomic_state *state,
>  		return;
>  
>  	if (drm_WARN_ON(&i915->drm,
> -			!connector->dp.dsc_decompression_aux))
> +			!connector->dp.dsc_decompression_aux ||
> +			connector->dp.dsc_decompression_enabled))
> +		return;
> +
> +	if (!intel_dp_dsc_aux_get_ref(state, connector))
>  		return;
>  
>  	intel_dp_sink_set_dsc_passthrough(connector, true);
> @@ -3036,7 +3100,11 @@ void intel_dp_sink_disable_decompression(struct intel_atomic_state *state,
>  		return;
>  
>  	if (drm_WARN_ON(&i915->drm,
> -			!connector->dp.dsc_decompression_aux))
> +			!connector->dp.dsc_decompression_aux ||
> +			!connector->dp.dsc_decompression_enabled))
> +		return;
> +
> +	if (!intel_dp_dsc_aux_put_ref(state, connector))
>  		return;
>  
>  	intel_dp_sink_set_dsc_decompression(connector, false);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index bc992e77ffc7a..b3d952bbb3cf0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -777,12 +777,7 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
>  
>  	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
>  
> -	if (intel_dp->active_mst_links == 1) /* last stream ? */
> -		/*
> -		 * TODO: disable decompression for all streams/in any MST ports, not
> -		 * only in the first downstream branch device.
> -		 */
> -		intel_dp_sink_disable_decompression(state, connector, old_crtc_state);
> +	intel_dp_sink_disable_decompression(state, connector, old_crtc_state);
>  }
>  
>  static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
> @@ -939,15 +934,11 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
>  
>  	drm_dp_send_power_updown_phy(&intel_dp->mst_mgr, connector->port, true);
>  
> -	if (first_mst_stream) {
> -		/*
> -		 * TODO: enable decompression for all streams/in any MST ports, not
> -		 * only in the first downstream branch device.
> -		 */
> -		intel_dp_sink_enable_decompression(state, connector, pipe_config);
> +	intel_dp_sink_enable_decompression(state, connector, pipe_config);
> +
> +	if (first_mst_stream)
>  		dig_port->base.pre_enable(state, &dig_port->base,
>  						pipe_config, NULL);
> -	}
>  
>  	intel_dp->active_mst_links++;
>  
> @@ -1394,12 +1385,7 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
>  	intel_connector->port = port;
>  	drm_dp_mst_get_port_malloc(port);
>  
> -	/*
> -	 * TODO: set the AUX for the actual MST port decompressing the stream.
> -	 * At the moment the driver only supports enabling this globally in the
> -	 * first downstream MST branch, via intel_dp's (root port) AUX.
> -	 */
> -	intel_connector->dp.dsc_decompression_aux = &intel_dp->aux;
> +	intel_connector->dp.dsc_decompression_aux = drm_dp_mst_dsc_aux_for_port(port);
>  	intel_dp_mst_read_decompression_port_dsc_caps(intel_dp, intel_connector);
>  	intel_connector->dp.dsc_hblank_expansion_quirk =
>  		detect_dsc_hblank_expansion_quirk(intel_connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index b8f43efb0ab5a..94eece7f63be3 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -318,6 +318,12 @@ static void intel_modeset_update_connector_atomic_state(struct drm_i915_private
>  			const struct intel_crtc_state *crtc_state =
>  				to_intel_crtc_state(crtc->base.state);
>  
> +			if (crtc_state->dsc.compression_enable) {
> +				drm_WARN_ON(&i915->drm, !connector->dp.dsc_decompression_aux);
I'm running into this warning on a JSL device that uses a MIPI panel.

Looking at gen11_dsi_dsc_compute_config in icl_dsi.c, I don't see any
code paths where dsc_compression_aux would be set.

Should there be a check here for the encoder type to avoid setting
dsc_decompression_enabled for DSI encoders?
> +				connector->dp.dsc_decompression_enabled = true;
> +			} else {
> +				connector->dp.dsc_decompression_enabled = false;
> +			}
>  			conn_state->max_bpc = (crtc_state->pipe_bpp ?: 24) / 3;
>  		}
>  	}
