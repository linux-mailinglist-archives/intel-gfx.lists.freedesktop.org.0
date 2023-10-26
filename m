Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 815957D7DAD
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 09:32:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6C7510E76B;
	Thu, 26 Oct 2023 07:32:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B01BF10E76D
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 07:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698305545; x=1729841545;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=qxcLWFNdqfjzJfLp9MwMbWsofVneHreReSAchNvYsAY=;
 b=TluFVIUR6X0FYDz3XJN6yx+VAAtpTKffI13G2JZR1QmzqJGIxaW1FSSw
 dHASaUedqx5NUk3OWBsfGsVNeXTVRI5pFkkif9pHw4HEQKConzBUC8ja0
 rAgRT/md/rhH0HJhRmE9m7CcTlK0yhIxJ7KU7T5fCm1g2r2sEdqIXsRCV
 9qzU6yGEaUGzujvoFe40M2OKsnGCFIGG90+nQJd8gLabzwrVA80/8Av6f
 nGahmWb6Xsi5HFJl1ElcWzXr7nRLffOWBa5Tr5c2Gp0dH920HGaEYc3nW
 DEacMfe7VMxl3VEp7CZWL9jQVSfTtOLnLnfkROkmwMeHYG+sZBmZKoWaU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="451715207"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="451715207"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 00:32:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="6834547"
Received: from tzirr-desk2.ger.corp.intel.com (HELO localhost) ([10.252.49.68])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 00:31:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20231026071540.974755-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231026071540.974755-1-suraj.kandpal@intel.com>
 <20231026071540.974755-2-suraj.kandpal@intel.com>
Date: Thu, 26 Oct 2023 10:32:19 +0300
Message-ID: <87bkcl96v0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Create a blanket hdcp
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

Let's call that function intel_hdcp_enable(), and hide all the details
inside intel_hdcp.c. These are the only callers outside of intel_hdcp.c.

BR,
Jani.

>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c    |  5 +----
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  5 +----
>  drivers/gpu/drm/i915/display/intel_hdcp.c   | 11 +++++++++++
>  drivers/gpu/drm/i915/display/intel_hdcp.h   |  4 ++++
>  4 files changed, 17 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 9151d5add960..338049b66e9c 100644
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
> +	intel_hdcp_try_enable(state, encoder, crtc_state, conn_state);
>  }
>  
>  static void intel_disable_ddi_dp(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 7b4628f4f124..cfcaf54a4a72 100644
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
> +	intel_hdcp_try_enable(state, encoder, pipe_config, conn_state);
>  }
>  
>  static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index c89da3568ebd..9d632a85309d 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2324,6 +2324,17 @@ intel_hdcp_set_streams(struct intel_digital_port *dig_port,
>  	return 0;
>  }
>  
> +void intel_hdcp_try_enable(struct intel_atomic_state *state,
> +			   struct intel_encoder *encoder,
> +			   const struct intel_crtc_state *crtc_state,
> +			   const struct drm_connector_state *conn_state)
> +{
> +	/* Enable hdcp if it's desired */
> +	if (conn_state->content_protection ==
> +	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
> +		intel_hdcp_enable(state, encoder, crtc_state, conn_state);
> +}
> +
>  int intel_hdcp_enable(struct intel_atomic_state *state,
>  		      struct intel_encoder *encoder,
>  		      const struct intel_crtc_state *pipe_config,
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
> index 5997c52a0958..280eaa4d1010 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
> @@ -44,5 +44,9 @@ void intel_hdcp_component_init(struct drm_i915_private *i915);
>  void intel_hdcp_component_fini(struct drm_i915_private *i915);
>  void intel_hdcp_cleanup(struct intel_connector *connector);
>  void intel_hdcp_handle_cp_irq(struct intel_connector *connector);
> +void intel_hdcp_try_enable(struct intel_atomic_state *state,
> +			   struct intel_encoder *encoder,
> +			   const struct intel_crtc_state *crtc_state,
> +			   const struct drm_connector_state *conn_state);
>  
>  #endif /* __INTEL_HDCP_H__ */

-- 
Jani Nikula, Intel
