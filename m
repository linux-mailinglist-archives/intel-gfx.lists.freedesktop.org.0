Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8723F4AFDD1
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 20:57:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE68D10E1FF;
	Wed,  9 Feb 2022 19:57:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4019E10E1FF
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 19:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644436666; x=1675972666;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=TCv7eq6sofeD7yX2QVaSttVlMGWul6WMvbcZFOubou4=;
 b=Zp7cNArAAJwYhCC1iYc2uPe5ycSm8tM/wvHV0c4I1Bl5Zz9rhbeW6XB4
 Tn4X7G+Wv4mvmWpQsDuOpUYipSCMzvBGQj8Y+vh385+POyflpBAtXvZiG
 W/iPaSEl0JanYdeo/poUJTvEWcWChIEW27uD7l4WuhWIAyYcuxfYecG5u
 NmJh2eyiNCrVmJcNUyWFPRxzu9TN3Uqk1sJmZGPuIInfOc+M0qM8vI+vI
 IFK6qmF0XsLMTR2s3exvW5xG0WuPNb6wsnYWZUzuA36dPrIG2sC9uqut3
 HYSPWSTSPzdmE/Hr+DFZOCBaS/8Zyd2g4rEX0FeIVwc2DR6N4e381iItr A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="273864990"
X-IronPort-AV: E=Sophos;i="5.88,356,1635231600"; d="scan'208";a="273864990"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 11:57:45 -0800
X-IronPort-AV: E=Sophos;i="5.88,356,1635231600"; d="scan'208";a="537062945"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 11:57:45 -0800
Date: Wed, 9 Feb 2022 11:57:51 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220209195751.GA31646@labuser-Z97X-UD5H>
References: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
 <20220203183823.22890-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220203183823.22890-8-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 07/10] drm/i915: Convert
 for_each_intel_crtc_mask() to take a pipe mask instead
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 03, 2022 at 08:38:20PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Often using pipes is more convenient than crtc indices.
> Convert the current for_each_intel_crtc_mask() to take a
> pipe mask instead of a crtc index mask, and rename it to
> for_each_intel_crtc_in_pipe_mask() to make it clear what
> it does.
> 
> The current users of for_each_intel_crtc_mask() don't really
> care which kind of mask we use, but for other uses a pipe
> mask if better.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.h |  4 +--
>  drivers/gpu/drm/i915/display/intel_dp.c      | 34 ++++++++++----------
>  2 files changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 22e5f0d6e171..fe9eb3acee65 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -430,11 +430,11 @@ enum hpd_pin {
>  			    &(dev)->mode_config.crtc_list,		\
>  			    base.head)
>  
> -#define for_each_intel_crtc_mask(dev, intel_crtc, crtc_mask)		\
> +#define for_each_intel_crtc_in_pipe_mask(dev, intel_crtc, pipe_mask)	\
>  	list_for_each_entry(intel_crtc,					\
>  			    &(dev)->mode_config.crtc_list,		\
>  			    base.head)					\
> -		for_each_if((crtc_mask) & drm_crtc_mask(&intel_crtc->base))
> +		for_each_if((pipe_mask) & BIT(intel_crtc->pipe))
>  
>  #define for_each_intel_encoder(dev, intel_encoder)		\
>  	list_for_each_entry(intel_encoder,			\
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 146b83916005..3fb9f643ebb9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3810,14 +3810,14 @@ static bool intel_dp_has_connector(struct intel_dp *intel_dp,
>  
>  static int intel_dp_prep_link_retrain(struct intel_dp *intel_dp,
>  				      struct drm_modeset_acquire_ctx *ctx,
> -				      u32 *crtc_mask)
> +				      u8 *pipe_mask)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	struct drm_connector_list_iter conn_iter;
>  	struct intel_connector *connector;
>  	int ret = 0;
>  
> -	*crtc_mask = 0;
> +	*pipe_mask = 0;
>  
>  	if (!intel_dp_needs_link_retrain(intel_dp))
>  		return 0;
> @@ -3851,12 +3851,12 @@ static int intel_dp_prep_link_retrain(struct intel_dp *intel_dp,
>  		    !try_wait_for_completion(&conn_state->commit->hw_done))
>  			continue;
>  
> -		*crtc_mask |= drm_crtc_mask(&crtc->base);
> +		*pipe_mask |= BIT(crtc->pipe);
>  	}
>  	drm_connector_list_iter_end(&conn_iter);
>  
>  	if (!intel_dp_needs_link_retrain(intel_dp))
> -		*crtc_mask = 0;
> +		*pipe_mask = 0;
>  
>  	return ret;
>  }
> @@ -3875,7 +3875,7 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	struct intel_crtc *crtc;
> -	u32 crtc_mask;
> +	u8 pipe_mask;
>  	int ret;
>  
>  	if (!intel_dp_is_connected(intel_dp))
> @@ -3886,17 +3886,17 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
>  	if (ret)
>  		return ret;
>  
> -	ret = intel_dp_prep_link_retrain(intel_dp, ctx, &crtc_mask);
> +	ret = intel_dp_prep_link_retrain(intel_dp, ctx, &pipe_mask);
>  	if (ret)
>  		return ret;
>  
> -	if (crtc_mask == 0)
> +	if (pipe_mask == 0)
>  		return 0;
>  
>  	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] retraining link\n",
>  		    encoder->base.base.id, encoder->base.name);
>  
> -	for_each_intel_crtc_mask(&dev_priv->drm, crtc, crtc_mask) {
> +	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
>  		const struct intel_crtc_state *crtc_state =
>  			to_intel_crtc_state(crtc->base.state);
>  
> @@ -3907,7 +3907,7 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
>  							      intel_crtc_pch_transcoder(crtc), false);
>  	}
>  
> -	for_each_intel_crtc_mask(&dev_priv->drm, crtc, crtc_mask) {
> +	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
>  		const struct intel_crtc_state *crtc_state =
>  			to_intel_crtc_state(crtc->base.state);
>  
> @@ -3924,7 +3924,7 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
>  		break;
>  	}
>  
> -	for_each_intel_crtc_mask(&dev_priv->drm, crtc, crtc_mask) {
> +	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
>  		const struct intel_crtc_state *crtc_state =
>  			to_intel_crtc_state(crtc->base.state);
>  
> @@ -3942,14 +3942,14 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
>  
>  static int intel_dp_prep_phy_test(struct intel_dp *intel_dp,
>  				  struct drm_modeset_acquire_ctx *ctx,
> -				  u32 *crtc_mask)
> +				  u8 *pipe_mask)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	struct drm_connector_list_iter conn_iter;
>  	struct intel_connector *connector;
>  	int ret = 0;
>  
> -	*crtc_mask = 0;
> +	*pipe_mask = 0;
>  
>  	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
>  	for_each_intel_connector_iter(connector, &conn_iter) {
> @@ -3980,7 +3980,7 @@ static int intel_dp_prep_phy_test(struct intel_dp *intel_dp,
>  		    !try_wait_for_completion(&conn_state->commit->hw_done))
>  			continue;
>  
> -		*crtc_mask |= drm_crtc_mask(&crtc->base);
> +		*pipe_mask |= BIT(crtc->pipe);
>  	}
>  	drm_connector_list_iter_end(&conn_iter);
>  
> @@ -3993,7 +3993,7 @@ static int intel_dp_do_phy_test(struct intel_encoder *encoder,
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	struct intel_crtc *crtc;
> -	u32 crtc_mask;
> +	u8 pipe_mask;
>  	int ret;
>  
>  	ret = drm_modeset_lock(&dev_priv->drm.mode_config.connection_mutex,
> @@ -4001,17 +4001,17 @@ static int intel_dp_do_phy_test(struct intel_encoder *encoder,
>  	if (ret)
>  		return ret;
>  
> -	ret = intel_dp_prep_phy_test(intel_dp, ctx, &crtc_mask);
> +	ret = intel_dp_prep_phy_test(intel_dp, ctx, &pipe_mask);
>  	if (ret)
>  		return ret;
>  
> -	if (crtc_mask == 0)
> +	if (pipe_mask == 0)
>  		return 0;
>  
>  	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] PHY test\n",
>  		    encoder->base.base.id, encoder->base.name);
>  
> -	for_each_intel_crtc_mask(&dev_priv->drm, crtc, crtc_mask) {
> +	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
>  		const struct intel_crtc_state *crtc_state =
>  			to_intel_crtc_state(crtc->base.state);
>  
> -- 
> 2.34.1
> 
