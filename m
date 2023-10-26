Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6230F7D8036
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 12:04:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C70010E795;
	Thu, 26 Oct 2023 10:04:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AD8410E795
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 10:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698314648; x=1729850648;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=DQy2jPNHoLtvCZAxRUgXm0xGoA0vhLMgei6QoK1t6ZI=;
 b=C1GpQUl5RzDlgu7Vq4JFgU+UUQOt6QMYYdAhSJuT01S+9eNkeBpdeuFB
 zmnSopkqIgwM99fIv45RFwB1eqvZpxQzw8nA3ToHN+UwLRZNVf2Cdov+R
 3cmcRNn55o/GDJFBDWWiyyrB0qH9yyWs87bxPS86sn9G5Nytbmifjm8L5
 3Twe11/n/KJqj1rftSC+3qXT8BzcOs3VA5kyUo8gQ6eGIjguH4TqQFpxm
 LUU6e8EfZruitFqRGFD+YtfBwQx4WZJt/tYpNs45vazvQuDa56l3G7CDT
 Hnxz8TrawGHDNuTlfA1AYPRBwMp9FY2JdeMEI/bskorC4hXQdcXDFURwx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="377871633"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="377871633"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 03:04:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="709013653"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="709013653"
Received: from tzirr-desk2.ger.corp.intel.com (HELO localhost) ([10.252.49.68])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 03:04:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20231026093647.987267-4-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231026093647.987267-1-suraj.kandpal@intel.com>
 <20231026093647.987267-4-suraj.kandpal@intel.com>
Date: Thu, 26 Oct 2023 13:03:57 +0300
Message-ID: <875y2t8zua.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/hdcp: Create a blanket hdcp
 enable function
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

On Thu, 26 Oct 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Let's create a blanket function which just has some conditions
> which need to be checked before connectors enable hdcp.
> This cleans up code and avoids code duplication.

This series has two 2/3 patches... confused me, probably going to
confuse CI too...

BR,
Jani.


>
> --v3
> -Keep function name as intel_hdcp_enable() [Jani]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c    |  5 +----
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  5 +----
>  drivers/gpu/drm/i915/display/intel_hdcp.c   | 21 ++++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_hdcp.h   |  8 ++++----
>  4 files changed, 22 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 9151d5add960..b644cf981846 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3259,10 +3259,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>  	else
>  		intel_enable_ddi_dp(state, encoder, crtc_state, conn_state);
>  
> -	/* Enable hdcp if it's desired */
> -	if (conn_state->content_protection ==
> -	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
> -		intel_hdcp_enable(state, encoder, crtc_state, conn_state);
> +	intel_hdcp_enable(state, encoder, crtc_state, conn_state);
>  }
>  
>  static void intel_disable_ddi_dp(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 7b4628f4f124..4366da79fe81 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -836,10 +836,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  
>  	intel_audio_codec_enable(encoder, pipe_config, conn_state);
>  
> -	/* Enable hdcp if it's desired */
> -	if (conn_state->content_protection ==
> -	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
> -		intel_hdcp_enable(state, encoder, pipe_config, conn_state);
> +	intel_hdcp_enable(state, encoder, pipe_config, conn_state);
>  }
>  
>  static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 7c0cfcb48521..44c0a93f3af8 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2324,10 +2324,10 @@ intel_hdcp_set_streams(struct intel_digital_port *dig_port,
>  	return 0;
>  }
>  
> -int intel_hdcp_enable(struct intel_atomic_state *state,
> -		      struct intel_encoder *encoder,
> -		      const struct intel_crtc_state *pipe_config,
> -		      const struct drm_connector_state *conn_state)
> +static int _intel_hdcp_enable(struct intel_atomic_state *state,
> +			      struct intel_encoder *encoder,
> +			      const struct intel_crtc_state *pipe_config,
> +			      const struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	struct intel_connector *connector =
> @@ -2404,6 +2404,17 @@ int intel_hdcp_enable(struct intel_atomic_state *state,
>  	return ret;
>  }
>  
> +void intel_hdcp_enable(struct intel_atomic_state *state,
> +		       struct intel_encoder *encoder,
> +		       const struct intel_crtc_state *crtc_state,
> +		       const struct drm_connector_state *conn_state)
> +{
> +	/* Enable hdcp if it's desired */
> +	if (conn_state->content_protection ==
> +	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
> +		_intel_hdcp_enable(state, encoder, crtc_state, conn_state);
> +}
> +
>  int intel_hdcp_disable(struct intel_connector *connector)
>  {
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> @@ -2491,7 +2502,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
>  	}
>  
>  	if (desired_and_not_enabled || content_protection_type_changed)
> -		intel_hdcp_enable(state, encoder, crtc_state, conn_state);
> +		_intel_hdcp_enable(state, encoder, crtc_state, conn_state);
>  }
>  
>  void intel_hdcp_component_fini(struct drm_i915_private *i915)
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
> index 5997c52a0958..a9c784fd9ba5 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
> @@ -28,10 +28,10 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
>  int intel_hdcp_init(struct intel_connector *connector,
>  		    struct intel_digital_port *dig_port,
>  		    const struct intel_hdcp_shim *hdcp_shim);
> -int intel_hdcp_enable(struct intel_atomic_state *state,
> -		      struct intel_encoder *encoder,
> -		      const struct intel_crtc_state *pipe_config,
> -		      const struct drm_connector_state *conn_state);
> +void intel_hdcp_enable(struct intel_atomic_state *state,
> +		       struct intel_encoder *encoder,
> +		       const struct intel_crtc_state *pipe_config,
> +		       const struct drm_connector_state *conn_state);
>  int intel_hdcp_disable(struct intel_connector *connector);
>  void intel_hdcp_update_pipe(struct intel_atomic_state *state,
>  			    struct intel_encoder *encoder,

-- 
Jani Nikula, Intel
