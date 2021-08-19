Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D4C3F1F69
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Aug 2021 19:54:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C075F6E8E4;
	Thu, 19 Aug 2021 17:54:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE7196E8E4
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Aug 2021 17:54:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="203761652"
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="203761652"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 10:54:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="506179685"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 19 Aug 2021 10:54:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Aug 2021 20:54:00 +0300
Date: Thu, 19 Aug 2021 20:54:00 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, manasi.d.navare@intel.com
Message-ID: <YR6auH3eLZoZqbWj@intel.com>
References: <cover.1629310010.git.jani.nikula@intel.com>
 <5e884a5108fe9897593b6d9a6e7011ddb795958e.1629310010.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5e884a5108fe9897593b6d9a6e7011ddb795958e.1629310010.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 15/17] drm/i915/dg2: use 128b/132b
 transcoder DDI mode
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

On Wed, Aug 18, 2021 at 09:10:50PM +0300, Jani Nikula wrote:
> 128b/132b has a separate transcoder DDI mode, which also requires the
> MST transport select to be set. Note that we'll use DP MST also for
> single-stream 128b/132b.
> 
> Having the FDI and 128b/132b modes share the register mode value
> complicates things a bit.
> 
> Bspec: 50493
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 27 ++++++++++++++++++------
>  1 file changed, 20 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 8b8f5d679b72..1ee817348bf5 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -505,7 +505,10 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
>  		temp |= TRANS_DDI_MODE_SELECT_FDI_OR_128B132B;
>  		temp |= (crtc_state->fdi_lanes - 1) << 1;
>  	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
> -		temp |= TRANS_DDI_MODE_SELECT_DP_MST;
> +		if (crtc_state->port_clock > 1000000)
> +			temp |= TRANS_DDI_MODE_SELECT_FDI_OR_128B132B;
> +		else
> +			temp |= TRANS_DDI_MODE_SELECT_DP_MST;
>  		temp |= DDI_PORT_WIDTH(crtc_state->lane_count);
>  
>  		if (DISPLAY_VER(dev_priv) >= 12) {
> @@ -693,7 +696,12 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
>  		break;
>  
>  	case TRANS_DDI_MODE_SELECT_FDI_OR_128B132B:
> -		ret = type == DRM_MODE_CONNECTOR_VGA;
> +		if (IS_DG2(dev_priv))
> +			/* 128b/132b */
> +			ret = false;

Maybe introduce HAS_FDI() or something to avoid these platform checks
all over?

> +		else
> +			/* FDI */
> +			ret = type == DRM_MODE_CONNECTOR_VGA;
>  		break;
>  
>  	default:
> @@ -780,8 +788,9 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
>  		if ((tmp & port_mask) != ddi_select)
>  			continue;
>  
> -		if ((tmp & TRANS_DDI_MODE_SELECT_MASK) ==
> -		    TRANS_DDI_MODE_SELECT_DP_MST)
> +		if ((tmp & TRANS_DDI_MODE_SELECT_MASK) == TRANS_DDI_MODE_SELECT_DP_MST ||
> +		    (IS_DG2(dev_priv) &&
> +		     (tmp & TRANS_DDI_MODE_SELECT_MASK) == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B))
>  			mst_pipe_mask |= BIT(p);
>  
>  		*pipe_mask |= BIT(p);
> @@ -3572,9 +3581,6 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
>  		pipe_config->output_types |= BIT(INTEL_OUTPUT_HDMI);
>  		pipe_config->lane_count = 4;
>  		break;
> -	case TRANS_DDI_MODE_SELECT_FDI_OR_128B132B:
> -		pipe_config->output_types |= BIT(INTEL_OUTPUT_ANALOG);
> -		break;
>  	case TRANS_DDI_MODE_SELECT_DP_SST:
>  		if (encoder->type == INTEL_OUTPUT_EDP)
>  			pipe_config->output_types |= BIT(INTEL_OUTPUT_EDP);
> @@ -3603,6 +3609,13 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
>  			pipe_config->infoframes.enable |=
>  				intel_hdmi_infoframes_enabled(encoder, pipe_config);
>  		break;
> +	case TRANS_DDI_MODE_SELECT_FDI_OR_128B132B:
> +		if (!IS_DG2(dev_priv)) {
> +			/* FDI */
> +			pipe_config->output_types |= BIT(INTEL_OUTPUT_ANALOG);
> +			break;
> +		}
> +		fallthrough; /* 128b/132b */
>  	case TRANS_DDI_MODE_SELECT_DP_MST:
>  		pipe_config->output_types |= BIT(INTEL_OUTPUT_DP_MST);
>  		pipe_config->lane_count =
> -- 
> 2.20.1

-- 
Ville Syrjälä
Intel
