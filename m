Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4741D4DDD
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 14:39:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3BAE6E160;
	Fri, 15 May 2020 12:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 408756E15C;
 Fri, 15 May 2020 12:39:26 +0000 (UTC)
IronPort-SDR: Sq+mNoNVzfAc30OzXBrL78p2S2S1It2Oiio+4S+gMX5fFk1CtgtK0BcCI4uRt9fO591/cYaPZ8
 hQN1Z4lmTA/w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 05:39:26 -0700
IronPort-SDR: PIp8pVixVQjX1lUvT3VBWNK5QhoPBs0cazw5ng00anUhx4FB7XWhSpTPifV0ooB9rY6sejeBtR
 Wxb6IH37p0uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,395,1583222400"; d="scan'208";a="438301667"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga005.jf.intel.com with ESMTP; 15 May 2020 05:39:23 -0700
Date: Fri, 15 May 2020 18:09:19 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Sean Paul <sean@poorly.run>
Message-ID: <20200515123919.GA10884@intel.com>
References: <20200429195502.39919-1-sean@poorly.run>
 <20200429195502.39919-9-sean@poorly.run>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429195502.39919-9-sean@poorly.run>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v6 08/16] drm/i915: Don't fully disable HDCP
 on a port if multiple pipes are using it
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
Cc: dri-devel@lists.freedesktop.org, daniel.vetter@ffwll.ch,
 intel-gfx@lists.freedesktop.org, seanpaul@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-04-29 at 15:54:54 -0400, Sean Paul wrote:
> From: Sean Paul <seanpaul@chromium.org>
> 
> This patch is required for HDCP over MST. If a port is being used for
> multiple HDCP streams, we don't want to fully disable HDCP on a port if
> one of them is disabled. Instead, we just disable the HDCP signalling on
> that particular pipe and exit early. The last pipe to disable HDCP will
> also bring down HDCP on the port.
> 
> In order to achieve this, we need to keep a refcount in intel_digital_port
> and protect it using a new hdcp_mutex.
> 
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Link: https://patchwork.freedesktop.org/patch/msgid/20191203173638.94919-8-sean@poorly.run #v1
> Link: https://patchwork.freedesktop.org/patch/msgid/20191212190230.188505-9-sean@poorly.run #v2
> Link: https://patchwork.freedesktop.org/patch/msgid/20200117193103.156821-9-sean@poorly.run #v3
> Link: https://patchwork.freedesktop.org/patch/msgid/20200218220242.107265-9-sean@poorly.run #v4
> Link: https://patchwork.freedesktop.org/patch/msgid/20200305201236.152307-9-sean@poorly.run #v5
> 
> Changes in v2:
> -Move the toggle_signalling call into _intel_hdcp_disable so it's called from check_work
> Changes in v3:
> -None
> Changes in v4:
> -None
> Changes in v5:
> -Change WARN_ON to drm_WARN_ON
> Changes in v6:
> -None
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  3 ++
>  .../drm/i915/display/intel_display_types.h    |  5 ++
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 53 +++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 +
>  5 files changed, 56 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index dc5d39ae4743..11155a8a73c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4801,6 +4801,9 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  	drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
>  			 DRM_MODE_ENCODER_TMDS, "DDI %c", port_name(port));
>  
> +	mutex_init(&intel_dig_port->hdcp_mutex);
> +	intel_dig_port->num_hdcp_streams = 0;
> +
>  	encoder->hotplug = intel_ddi_hotplug;
>  	encoder->compute_output_type = intel_ddi_compute_output_type;
>  	encoder->compute_config = intel_ddi_compute_config;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 383046050c37..69edfab4e266 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1411,6 +1411,11 @@ struct intel_digital_port {
>  	enum phy_fia tc_phy_fia;
>  	u8 tc_phy_fia_idx;
>  
> +	/* protects num_hdcp_streams reference count */
> +	struct mutex hdcp_mutex;
> +	/* the number of pipes using HDCP signalling out of this port */
> +	unsigned int num_hdcp_streams;
> +
>  	void (*write_infoframe)(struct intel_encoder *encoder,
>  				const struct intel_crtc_state *crtc_state,
>  				unsigned int type,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 39c1304fe071..a33ee8f30d14 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -8450,6 +8450,8 @@ bool intel_dp_init(struct drm_i915_private *dev_priv,
>  	intel_encoder = &intel_dig_port->base;
>  	encoder = &intel_encoder->base;
>  
> +	mutex_init(&intel_dig_port->hdcp_mutex);
> +
>  	if (drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
>  			     &intel_dp_enc_funcs, DRM_MODE_ENCODER_TMDS,
>  			     "DP %c", port_name(port)))
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index a4446d47ef27..0c00bbc3f66e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -801,6 +801,19 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
>  	drm_dbg_kms(&dev_priv->drm, "[%s:%d] HDCP is being disabled...\n",
>  		    connector->base.name, connector->base.base.id);
>  
> +	/*
> +	 * If there are other connectors on this port using HDCP, don't disable
> +	 * it. Instead, toggle the HDCP signalling off on that particular
> +	 * connector/pipe and exit.
> +	 */
> +	if (intel_dig_port->num_hdcp_streams > 0) {
> +		ret = hdcp->shim->toggle_signalling(intel_dig_port,
> +						    cpu_transcoder, false);
> +		if (ret)
> +			DRM_ERROR("Failed to disable HDCP signalling\n");
> +		return ret;
> +	}
> +
>  	hdcp->hdcp_encrypted = false;
>  	intel_de_write(dev_priv, HDCP_CONF(dev_priv, cpu_transcoder, port), 0);
>  	if (intel_de_wait_for_clear(dev_priv,
> @@ -880,6 +893,8 @@ static struct intel_connector *intel_hdcp_to_connector(struct intel_hdcp *hdcp)
>  static void intel_hdcp_update_value(struct intel_connector *connector,
>  				    u64 value, bool update_property)
>  {
> +	struct drm_device *dev = connector->base.dev;
> +	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
>  	struct intel_hdcp *hdcp = &connector->hdcp;
>  
>  	drm_WARN_ON(connector->base.dev, !mutex_is_locked(&hdcp->mutex));
> @@ -887,6 +902,15 @@ static void intel_hdcp_update_value(struct intel_connector *connector,
>  	if (hdcp->value == value)
>  		return;
>  
> +	drm_WARN_ON(dev, !mutex_is_locked(&intel_dig_port->hdcp_mutex));
> +
> +	if (hdcp->value == DRM_MODE_CONTENT_PROTECTION_ENABLED) {
> +		if (!drm_WARN_ON(dev, intel_dig_port->num_hdcp_streams == 0))
> +			intel_dig_port->num_hdcp_streams--;
> +	} else if (value == DRM_MODE_CONTENT_PROTECTION_ENABLED) {
> +		intel_dig_port->num_hdcp_streams++;
> +	}
> +
>  	hdcp->value = value;
>  	if (update_property) {
>  		drm_connector_get(&connector->base);
> @@ -905,6 +929,8 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
>  	int ret = 0;
>  
>  	mutex_lock(&hdcp->mutex);
> +	mutex_lock(&intel_dig_port->hdcp_mutex);
> +
>  	cpu_transcoder = hdcp->cpu_transcoder;
>  
>  	/* Check_link valid only when HDCP1.4 is enabled */
> @@ -958,6 +984,7 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
>  	}
>  
>  out:
> +	mutex_unlock(&intel_dig_port->hdcp_mutex);
>  	mutex_unlock(&hdcp->mutex);
>  	return ret;
>  }
> @@ -2054,6 +2081,7 @@ int intel_hdcp_enable(struct intel_connector *connector,
>  		      enum transcoder cpu_transcoder, u8 content_type)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> +	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
>  	struct intel_hdcp *hdcp = &connector->hdcp;
>  	unsigned long check_link_interval = DRM_HDCP_CHECK_PERIOD_MS;
>  	int ret = -EINVAL;
> @@ -2062,6 +2090,7 @@ int intel_hdcp_enable(struct intel_connector *connector,
>  		return -ENOENT;
>  
>  	mutex_lock(&hdcp->mutex);
> +	mutex_lock(&intel_dig_port->hdcp_mutex);
>  	drm_WARN_ON(&dev_priv->drm,
>  		    hdcp->value == DRM_MODE_CONTENT_PROTECTION_ENABLED);
>  	hdcp->content_type = content_type;
> @@ -2096,12 +2125,14 @@ int intel_hdcp_enable(struct intel_connector *connector,
>  					true);
>  	}
>  
> +	mutex_unlock(&intel_dig_port->hdcp_mutex);
>  	mutex_unlock(&hdcp->mutex);
>  	return ret;
>  }
>  
>  int intel_hdcp_disable(struct intel_connector *connector)
>  {
> +	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
>  	struct intel_hdcp *hdcp = &connector->hdcp;
>  	int ret = 0;
>  
> @@ -2109,17 +2140,21 @@ int intel_hdcp_disable(struct intel_connector *connector)
>  		return -ENOENT;
>  
>  	mutex_lock(&hdcp->mutex);
> +	mutex_lock(&intel_dig_port->hdcp_mutex);
>  
> -	if (hdcp->value != DRM_MODE_CONTENT_PROTECTION_UNDESIRED) {
> -		intel_hdcp_update_value(connector,
> -					DRM_MODE_CONTENT_PROTECTION_UNDESIRED,
> -					false);
> -		if (hdcp->hdcp2_encrypted)
> -			ret = _intel_hdcp2_disable(connector);
> -		else if (hdcp->hdcp_encrypted)
> -			ret = _intel_hdcp_disable(connector);
> -	}
nice clean up. But unrelated change for this patch, separate patch will
be nice.
> +	if (hdcp->value == DRM_MODE_CONTENT_PROTECTION_UNDESIRED)
> +		goto out;
> +
> +	intel_hdcp_update_value(connector,
> +				DRM_MODE_CONTENT_PROTECTION_UNDESIRED, false);
>  
> +	if (hdcp->hdcp2_encrypted)
> +		ret = _intel_hdcp2_disable(connector);
> +	else if (hdcp->hdcp_encrypted)
> +		ret = _intel_hdcp_disable(connector);
> +
> +out:
> +	mutex_unlock(&intel_dig_port->hdcp_mutex);
>  	mutex_unlock(&hdcp->mutex);
>  	cancel_delayed_work_sync(&hdcp->check_work);
>  	return ret;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 5820a6e94273..93cd8a2a4be1 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -3311,6 +3311,8 @@ void intel_hdmi_init(struct drm_i915_private *dev_priv,
>  
>  	intel_encoder = &intel_dig_port->base;
>  
> +	mutex_init(&intel_dig_port->hdcp_mutex);
> +
>  	drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
>  			 &intel_hdmi_enc_funcs, DRM_MODE_ENCODER_TMDS,
>  			 "HDMI %c", port_name(port));
> -- 
> Sean Paul, Software Engineer, Google / Chromium OS
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
