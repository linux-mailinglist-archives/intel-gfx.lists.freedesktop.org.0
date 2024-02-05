Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C6684A068
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 18:17:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AFDA10FB0B;
	Mon,  5 Feb 2024 17:17:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="MZoEFuJT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com
 [209.85.166.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B518910FB06
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Feb 2024 17:17:45 +0000 (UTC)
Received: by mail-il1-f174.google.com with SMTP id
 e9e14a558f8ab-363ba083d84so6515755ab.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 05 Feb 2024 09:17:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1707153465; x=1707758265;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=cqMb5DIPHd3MVHRg9/lyblXwh93lMlC/H7kNWyEaNG8=;
 b=MZoEFuJTEVrhCzoC6WOdtnuIf0yQZY+74HdcI2kttu0T7K/KkAhMhxexX3PVoshI8o
 Wesm4O+Ix0NebvfEGc5MvPyOVrh3ov2625me6r2bPSvPYj5a1CR6dEqu3DNVSItXZEa6
 w778/Wnc31T8+Jt2tnvjclgN4w4LilqRV0R9A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707153465; x=1707758265;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cqMb5DIPHd3MVHRg9/lyblXwh93lMlC/H7kNWyEaNG8=;
 b=ErOT329zMdQt5dTj+0WaKy+zagmd6QKVG3NeaU5glgz1pSNT0MiBLnstrDsSVFURfT
 VYSjp4kCyz1Jn7rJJ7NYnUfZocFsUO7XTUoU5d6tLwJq4ZscWDKd2rp5lBLN1jefUiDA
 tqjOZH09RqhxGaY5d24wGbsVWK1xgBmRdqFwZhj+pTWVtJeSmsicHXo32phJLLCTblxF
 +kgfdr1CbQg9UNpjyIjhIiZ7Cp8p2s7pwxSnonOXEPsPabvKep3AGev6d0bm2dGryz4D
 I54lcGJLT1OnPbwN1VIT2/C9rfXYWr1N+clUs0OQFbIJGBz0SLYSw/NNQ106ghX/ji7p
 gI9Q==
X-Gm-Message-State: AOJu0YwoTbMIqtngyTGEvHC40mjRF0XcB5zI92HKM7y2IDC2BSPBZ+/c
 Ubeon15tSxbMLi38rOwerpeXStIwZLr6iz8Z7qUuqHjqG4dcrxpXtK2NINqZXg==
X-Google-Smtp-Source: AGHT+IEv/+aA7P/0TWy+e1BYnZow3cht8opkd/vNa50MQMqVW2GSJvRRv0Awfz1rbUoaUDoFWG0aAw==
X-Received: by 2002:a05:6e02:18c7:b0:363:cbc0:ba9a with SMTP id
 s7-20020a056e0218c700b00363cbc0ba9amr229941ilu.16.1707153464810; 
 Mon, 05 Feb 2024 09:17:44 -0800 (PST)
Received: from chromium.org ([2620:15c:183:200:e8de:5c3b:4aef:e1c3])
 by smtp.gmail.com with ESMTPSA id
 m14-20020a056638408e00b0047129db06ebsm58302jam.12.2024.02.05.09.17.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Feb 2024 09:17:44 -0800 (PST)
Date: Mon, 5 Feb 2024 10:17:43 -0700
From: Drew Davenport <ddavenport@chromium.org>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dp: Fix connector DSC HW state readout
Message-ID: <ZcEYN2BdILwotCIZ@chromium.org>
References: <20240205132631.1588577-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240205132631.1588577-1-imre.deak@intel.com>
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

On Mon, Feb 05, 2024 at 03:26:31PM +0200, Imre Deak wrote:
> The DSC HW state of DP connectors is read out during driver loading and
> system resume in intel_modeset_update_connector_atomic_state(). This
> function is called for all connectors though and so the state of DSI
> connectors will also get updated incorrectly, triggering a WARN there
> wrt. the DSC decompression AUX device.
> 
> Fix the above by moving the DSC state readout to a new DP connector
> specific sync_state() hook. This is anyway the logical place to update
> the connector object's state vs. the connector's atomic state.
> 
> Fixes: b2608c6b3212 ("drm/i915/dp_mst: Enable MST DSC decompression for all streams")
> Reported-by: Drew Davenport <ddavenport@chromium.org>
> Closes: https://lore.kernel.org/all/Zb0q8IDVXS0HxJyj@chromium.org
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h |  7 +++++++
>  drivers/gpu/drm/i915/display/intel_dp.c            | 13 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h            |  2 ++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c        |  1 +
>  drivers/gpu/drm/i915/display/intel_modeset_setup.c | 13 ++++++-------
>  5 files changed, 29 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index ae2e8cff9d691..6e1ddd05bd504 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -609,6 +609,13 @@ struct intel_connector {
>  	 * and active (i.e. dpms ON state). */
>  	bool (*get_hw_state)(struct intel_connector *);
>  
> +	/*
> +	 * Optional hook called during init/resume to sync any state
> +	 * stored in the connector (eg. DSC state) wrt. the HW state.
> +	 */
> +	void (*sync_state)(struct intel_connector *connector,
> +			   const struct intel_crtc_state *crtc_state);
> +
>  	/* Panel info for eDP and LVDS */
>  	struct intel_panel panel;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index ab415f41924d7..f8b1aab7745fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5868,6 +5868,19 @@ intel_dp_connector_unregister(struct drm_connector *connector)
>  	intel_connector_unregister(connector);
>  }
>  
> +void intel_dp_connector_sync_state(struct intel_connector *connector,
> +				   const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +
> +	if (crtc_state && crtc_state->dsc.compression_enable) {
> +		drm_WARN_ON(&i915->drm, !connector->dp.dsc_decompression_aux);
> +		connector->dp.dsc_decompression_enabled = true;
> +	} else {
> +		connector->dp.dsc_decompression_enabled = false;
> +	}
> +}
> +
>  void intel_dp_encoder_flush_work(struct drm_encoder *encoder)
>  {
>  	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 530cc97bc42f4..f911dfab5fba9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -45,6 +45,8 @@ bool intel_dp_limited_color_range(const struct intel_crtc_state *crtc_state,
>  int intel_dp_min_bpp(enum intel_output_format output_format);
>  bool intel_dp_init_connector(struct intel_digital_port *dig_port,
>  			     struct intel_connector *intel_connector);
> +void intel_dp_connector_sync_state(struct intel_connector *connector,
> +				   const struct intel_crtc_state *crtc_state);
>  void intel_dp_set_link_params(struct intel_dp *intel_dp,
>  			      int link_rate, int lane_count);
>  int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 5fa25a5a36b55..130c6aab86b22 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1538,6 +1538,7 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
>  		return NULL;
>  
>  	intel_connector->get_hw_state = intel_dp_mst_get_hw_state;
> +	intel_connector->sync_state = intel_dp_connector_sync_state;
>  	intel_connector->mst_port = intel_dp;
>  	intel_connector->port = port;
>  	drm_dp_mst_get_port_malloc(port);
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index 94eece7f63be3..caeca3a8442c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -318,12 +318,6 @@ static void intel_modeset_update_connector_atomic_state(struct drm_i915_private
>  			const struct intel_crtc_state *crtc_state =
>  				to_intel_crtc_state(crtc->base.state);
>  
> -			if (crtc_state->dsc.compression_enable) {
> -				drm_WARN_ON(&i915->drm, !connector->dp.dsc_decompression_aux);
> -				connector->dp.dsc_decompression_enabled = true;
> -			} else {
> -				connector->dp.dsc_decompression_enabled = false;
> -			}
>  			conn_state->max_bpc = (crtc_state->pipe_bpp ?: 24) / 3;
>  		}
>  	}
> @@ -775,8 +769,9 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
>  
>  	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
>  	for_each_intel_connector_iter(connector, &conn_iter) {
> +		struct intel_crtc_state *crtc_state = NULL;
> +
>  		if (connector->get_hw_state(connector)) {
> -			struct intel_crtc_state *crtc_state;
>  			struct intel_crtc *crtc;
>  
>  			connector->base.dpms = DRM_MODE_DPMS_ON;
> @@ -802,6 +797,10 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
>  			connector->base.dpms = DRM_MODE_DPMS_OFF;
>  			connector->base.encoder = NULL;
>  		}
> +
> +		if (connector->sync_state)
> +			connector->sync_state(connector, crtc_state);
> +
>  		drm_dbg_kms(&i915->drm,
>  			    "[CONNECTOR:%d:%s] hw state readout: %s\n",
>  			    connector->base.base.id, connector->base.name,
> -- 
> 2.39.2
> 

Thanks. I verified this on the JSL device that I reproed the warning on.

Tested-by: Drew Davenport <ddavenport@chromium.org>
