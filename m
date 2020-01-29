Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4BA14CBAE
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 14:49:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A8CA6F563;
	Wed, 29 Jan 2020 13:49:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1A026F563
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 13:49:27 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 05:49:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,378,1574150400"; d="scan'208";a="376753977"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by orsmga004.jf.intel.com with ESMTP; 29 Jan 2020 05:49:22 -0800
Date: Wed, 29 Jan 2020 19:10:29 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200129134028.GA20877@intel.com>
References: <20200128163803.5954-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128163803.5954-1-jani.nikula@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdcp: move update pipe code to hdcp
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-01-28 at 18:38:03 +0200, Jani Nikula wrote:
> The DDI encoder code shouln't have to know about the guts of
> HDCP. Abstract the pipe update code to a new intel_hdcp_update_pipe() in
> intel_hdcp.c. No functional changes.
> 
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c  | 34 +------------------
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 40 +++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_hdcp.h |  5 +++
>  3 files changed, 46 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index b1100950dd0d..142b2f5e5522 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4058,43 +4058,11 @@ static void intel_ddi_update_pipe(struct intel_encoder *encoder,
>  				  const struct intel_crtc_state *crtc_state,
>  				  const struct drm_connector_state *conn_state)
>  {
> -	struct intel_connector *connector =
> -				to_intel_connector(conn_state->connector);
> -	struct intel_hdcp *hdcp = &connector->hdcp;
> -	bool content_protection_type_changed =
> -			(conn_state->hdcp_content_type != hdcp->content_type &&
> -			 conn_state->content_protection !=
> -			 DRM_MODE_CONTENT_PROTECTION_UNDESIRED);
>  
>  	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
>  		intel_ddi_update_pipe_dp(encoder, crtc_state, conn_state);
>  
> -	/*
> -	 * During the HDCP encryption session if Type change is requested,
> -	 * disable the HDCP and reenable it with new TYPE value.
> -	 */
> -	if (conn_state->content_protection ==
> -	    DRM_MODE_CONTENT_PROTECTION_UNDESIRED ||
> -	    content_protection_type_changed)
> -		intel_hdcp_disable(connector);
> -
> -	/*
> -	 * Mark the hdcp state as DESIRED after the hdcp disable of type
> -	 * change procedure.
> -	 */
> -	if (content_protection_type_changed) {
> -		mutex_lock(&hdcp->mutex);
> -		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
> -		schedule_work(&hdcp->prop_work);
> -		mutex_unlock(&hdcp->mutex);
> -	}
> -
> -	if (conn_state->content_protection ==
> -	    DRM_MODE_CONTENT_PROTECTION_DESIRED ||
> -	    content_protection_type_changed)
> -		intel_hdcp_enable(connector,
> -				  crtc_state->cpu_transcoder,
> -				  (u8)conn_state->hdcp_content_type);
> +	intel_hdcp_update_pipe(encoder, crtc_state, conn_state);
>  }
>  
>  static void
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 33dc40a63fce..3cd74951a34c 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2034,6 +2034,46 @@ int intel_hdcp_disable(struct intel_connector *connector)
>  	return ret;
>  }
>  
> +void intel_hdcp_update_pipe(struct intel_encoder *encoder,
encoder arg is not getting used in this function, it can be removed.
With above comment,
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
Thanks ,
Anshuman Gupta.
> +			    const struct intel_crtc_state *crtc_state,
> +			    const struct drm_connector_state *conn_state)
> +{
> +	struct intel_connector *connector =
> +				to_intel_connector(conn_state->connector);
> +	struct intel_hdcp *hdcp = &connector->hdcp;
> +	bool content_protection_type_changed =
> +		(conn_state->hdcp_content_type != hdcp->content_type &&
> +		 conn_state->content_protection !=
> +		 DRM_MODE_CONTENT_PROTECTION_UNDESIRED);
> +
> +	/*
> +	 * During the HDCP encryption session if Type change is requested,
> +	 * disable the HDCP and reenable it with new TYPE value.
> +	 */
> +	if (conn_state->content_protection ==
> +	    DRM_MODE_CONTENT_PROTECTION_UNDESIRED ||
> +	    content_protection_type_changed)
> +		intel_hdcp_disable(connector);
> +
> +	/*
> +	 * Mark the hdcp state as DESIRED after the hdcp disable of type
> +	 * change procedure.
> +	 */
> +	if (content_protection_type_changed) {
> +		mutex_lock(&hdcp->mutex);
> +		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
> +		schedule_work(&hdcp->prop_work);
> +		mutex_unlock(&hdcp->mutex);
> +	}
> +
> +	if (conn_state->content_protection ==
> +	    DRM_MODE_CONTENT_PROTECTION_DESIRED ||
> +	    content_protection_type_changed)
> +		intel_hdcp_enable(connector,
> +				  crtc_state->cpu_transcoder,
> +				  (u8)conn_state->hdcp_content_type);
> +}
> +
>  void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
>  {
>  	mutex_lock(&dev_priv->hdcp_comp_mutex);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
> index f3c3272e712a..1b2eacaf8949 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
> @@ -14,6 +14,8 @@ struct drm_connector;
>  struct drm_connector_state;
>  struct drm_i915_private;
>  struct intel_connector;
> +struct intel_crtc_state;
> +struct intel_encoder;
>  struct intel_hdcp_shim;
>  enum port;
>  enum transcoder;
> @@ -26,6 +28,9 @@ int intel_hdcp_init(struct intel_connector *connector,
>  int intel_hdcp_enable(struct intel_connector *connector,
>  		      enum transcoder cpu_transcoder, u8 content_type);
>  int intel_hdcp_disable(struct intel_connector *connector);
> +void intel_hdcp_update_pipe(struct intel_encoder *encoder,
> +			    const struct intel_crtc_state *crtc_state,
> +			    const struct drm_connector_state *conn_state);
>  bool is_hdcp_supported(struct drm_i915_private *dev_priv, enum port port);
>  bool intel_hdcp_capable(struct intel_connector *connector);
>  bool intel_hdcp2_capable(struct intel_connector *connector);
> -- 
> 2.20.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
