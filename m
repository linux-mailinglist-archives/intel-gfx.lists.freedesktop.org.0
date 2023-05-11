Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 289EC6FED3E
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 09:57:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F75010E5B7;
	Thu, 11 May 2023 07:57:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8829F10E5BD
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 07:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683791850; x=1715327850;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=efUvsbRTxoDoDf0JFI5ViCbjLd68SjbHQw7tekvwZKk=;
 b=I3pqO+eNGet0fFIp7uuee3UDjE+1jeL1rzYD9cjXj/PfOLG3cK/LfW1m
 tPIHnPfYLOqIoj46S/LpXuplnAssHhtvA20yQ+a00+ovt2O+O7KcjAWY7
 e2uEgTkz4lut58F/NhjfajlRCyMb8BPGGZ85bOg/WmSROVEvidU8+F9Lb
 ixIX/5yj8412h5gPhZ/1vC2F5SC5Ue342vFOKpLFL1IKKs3ak4+LulSWF
 DE0CiPevhP4f7hBSZUzkVEycOUf3iUQeilVC+XygAXYHzkYhcrZrbBCUr
 nksui1Hl4mF4ZEUmAedOhwu4TMk7Rdq112HmTOf/juxPr/5epLlWZF3Wm Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="350459100"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="350459100"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 00:57:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="789291922"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="789291922"
Received: from nbathi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.63.185])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 00:57:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230511055705.611809-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230511055705.611809-1-suraj.kandpal@intel.com>
 <20230511055705.611809-2-suraj.kandpal@intel.com>
Date: Thu, 11 May 2023 10:57:25 +0300
Message-ID: <87cz37mhay.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: add intel_atomic_state
 argument to hdcp_enable function
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

On Thu, 11 May 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Pass all the parameter in intel_encoder->enable()
> to intel_hdcp_enable as we need intel_atomic_state
> later down to get acquire_ctx.

You're passing connector, not encoder, though.

BR,
Jani.

>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c    |  5 +++--
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++--
>  drivers/gpu/drm/i915/display/intel_hdcp.c   | 12 +++++++-----
>  drivers/gpu/drm/i915/display/intel_hdcp.h   |  6 ++++--
>  4 files changed, 16 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 29e4bfab4635..e838d56415cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3264,9 +3264,10 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>  	/* Enable hdcp if it's desired */
>  	if (conn_state->content_protection ==
>  	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
> -		intel_hdcp_enable(to_intel_connector(conn_state->connector),
> +		intel_hdcp_enable(state, to_intel_connector(conn_state->connector),
>  				  crtc_state,
> -				  (u8)conn_state->hdcp_content_type);
> +				  conn_state);
> +
>  }
>  
>  static void intel_disable_ddi_dp(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 2c49d9ab86a2..e1e040434a97 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -800,9 +800,9 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  	/* Enable hdcp if it's desired */
>  	if (conn_state->content_protection ==
>  	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
> -		intel_hdcp_enable(to_intel_connector(conn_state->connector),
> +		intel_hdcp_enable(state, to_intel_connector(conn_state->connector),
>  				  pipe_config,
> -				  (u8)conn_state->hdcp_content_type);
> +				  conn_state);
>  }
>  
>  static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 650232c4892b..1928c80cb6a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2330,8 +2330,10 @@ int intel_hdcp_init(struct intel_connector *connector,
>  	return 0;
>  }
>  
> -int intel_hdcp_enable(struct intel_connector *connector,
> -		      const struct intel_crtc_state *pipe_config, u8 content_type)
> +int intel_hdcp_enable(struct intel_atomic_state *state,
> +		      struct intel_connector *connector,
> +		      const struct intel_crtc_state *pipe_config,
> +		      const struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> @@ -2352,7 +2354,7 @@ int intel_hdcp_enable(struct intel_connector *connector,
>  	mutex_lock(&dig_port->hdcp_mutex);
>  	drm_WARN_ON(&dev_priv->drm,
>  		    hdcp->value == DRM_MODE_CONTENT_PROTECTION_ENABLED);
> -	hdcp->content_type = content_type;
> +	hdcp->content_type = (u8)conn_state->content_type;
>  
>  	if (intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST)) {
>  		hdcp->cpu_transcoder = pipe_config->mst_master_transcoder;
> @@ -2483,9 +2485,9 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
>  	}
>  
>  	if (desired_and_not_enabled || content_protection_type_changed)
> -		intel_hdcp_enable(connector,
> +		intel_hdcp_enable(state, connector,
>  				  crtc_state,
> -				  (u8)conn_state->hdcp_content_type);
> +				  conn_state);
>  }
>  
>  void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
> index 8f53b0c7fe5c..6aaec4df6f6c 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
> @@ -28,8 +28,10 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
>  int intel_hdcp_init(struct intel_connector *connector,
>  		    struct intel_digital_port *dig_port,
>  		    const struct intel_hdcp_shim *hdcp_shim);
> -int intel_hdcp_enable(struct intel_connector *connector,
> -		      const struct intel_crtc_state *pipe_config, u8 content_type);
> +int intel_hdcp_enable(struct intel_atomic_state *state,
> +		      struct intel_connector *connector,
> +		      const struct intel_crtc_state *pipe_config,
> +		      const struct drm_connector_state *conn_state);
>  int intel_hdcp_disable(struct intel_connector *connector);
>  void intel_hdcp_update_pipe(struct intel_atomic_state *state,
>  			    struct intel_encoder *encoder,

-- 
Jani Nikula, Intel Open Source Graphics Center
