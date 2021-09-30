Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C1A41DEB8
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 18:18:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD0B76EC05;
	Thu, 30 Sep 2021 16:18:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFFB76EC05
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 16:18:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="204708833"
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="204708833"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 09:16:02 -0700
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="555833727"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 09:16:00 -0700
Date: Thu, 30 Sep 2021 19:15:51 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210930161551.GF2418125@ideak-desk.fi.intel.com>
References: <20210930134310.31669-1-ville.syrjala@linux.intel.com>
 <20210930134310.31669-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210930134310.31669-4-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Nuke local copies/pointers of
 intel_dp->DP
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

On Thu, Sep 30, 2021 at 04:43:10PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Get rid of the local copies and pointers of intel_dp->DP and
> instead just poke at it directly. Makes it much easier to see
> where it actually gets used/modified.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c | 45 ++++++++++++---------------
>  1 file changed, 20 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 8e0620ae2ed1..69a2e5ad2317 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -426,7 +426,6 @@ intel_dp_link_down(struct intel_encoder *encoder,
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
>  	enum port port = encoder->port;
> -	u32 DP = intel_dp->DP;
>  
>  	if (drm_WARN_ON(&dev_priv->drm,
>  			(intel_de_read(dev_priv, intel_dp->output_reg) &
> @@ -437,17 +436,17 @@ intel_dp_link_down(struct intel_encoder *encoder,
>  
>  	if ((IS_IVYBRIDGE(dev_priv) && port == PORT_A) ||
>  	    (HAS_PCH_CPT(dev_priv) && port != PORT_A)) {
> -		DP &= ~DP_LINK_TRAIN_MASK_CPT;
> -		DP |= DP_LINK_TRAIN_PAT_IDLE_CPT;
> +		intel_dp->DP &= ~DP_LINK_TRAIN_MASK_CPT;
> +		intel_dp->DP |= DP_LINK_TRAIN_PAT_IDLE_CPT;
>  	} else {
> -		DP &= ~DP_LINK_TRAIN_MASK;
> -		DP |= DP_LINK_TRAIN_PAT_IDLE;
> +		intel_dp->DP &= ~DP_LINK_TRAIN_MASK;
> +		intel_dp->DP |= DP_LINK_TRAIN_PAT_IDLE;
>  	}
> -	intel_de_write(dev_priv, intel_dp->output_reg, DP);
> +	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
>  	intel_de_posting_read(dev_priv, intel_dp->output_reg);
>  
> -	DP &= ~(DP_PORT_EN | DP_AUDIO_OUTPUT_ENABLE);
> -	intel_de_write(dev_priv, intel_dp->output_reg, DP);
> +	intel_dp->DP &= ~(DP_PORT_EN | DP_AUDIO_OUTPUT_ENABLE);
> +	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
>  	intel_de_posting_read(dev_priv, intel_dp->output_reg);
>  
>  	/*
> @@ -464,14 +463,14 @@ intel_dp_link_down(struct intel_encoder *encoder,
>  		intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, false);
>  
>  		/* always enable with pattern 1 (as per spec) */
> -		DP &= ~(DP_PIPE_SEL_MASK | DP_LINK_TRAIN_MASK);
> -		DP |= DP_PORT_EN | DP_PIPE_SEL(PIPE_A) |
> +		intel_dp->DP &= ~(DP_PIPE_SEL_MASK | DP_LINK_TRAIN_MASK);
> +		intel_dp->DP |= DP_PORT_EN | DP_PIPE_SEL(PIPE_A) |
>  			DP_LINK_TRAIN_PAT_1;
> -		intel_de_write(dev_priv, intel_dp->output_reg, DP);
> +		intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
>  		intel_de_posting_read(dev_priv, intel_dp->output_reg);
>  
> -		DP &= ~DP_PORT_EN;
> -		intel_de_write(dev_priv, intel_dp->output_reg, DP);
> +		intel_dp->DP &= ~DP_PORT_EN;
> +		intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
>  		intel_de_posting_read(dev_priv, intel_dp->output_reg);
>  
>  		intel_wait_for_vblank_if_active(dev_priv, PIPE_A);
> @@ -481,8 +480,6 @@ intel_dp_link_down(struct intel_encoder *encoder,
>  
>  	msleep(intel_dp->pps.panel_power_down_delay);
>  
> -	intel_dp->DP = DP;
> -
>  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
>  		intel_wakeref_t wakeref;
>  
> @@ -582,19 +579,18 @@ cpt_set_link_train(struct intel_dp *intel_dp,
>  		   u8 dp_train_pat)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> -	u32 *DP = &intel_dp->DP;
>  
> -	*DP &= ~DP_LINK_TRAIN_MASK_CPT;
> +	intel_dp->DP &= ~DP_LINK_TRAIN_MASK_CPT;
>  
>  	switch (intel_dp_training_pattern_symbol(dp_train_pat)) {
>  	case DP_TRAINING_PATTERN_DISABLE:
> -		*DP |= DP_LINK_TRAIN_OFF_CPT;
> +		intel_dp->DP |= DP_LINK_TRAIN_OFF_CPT;
>  		break;
>  	case DP_TRAINING_PATTERN_1:
> -		*DP |= DP_LINK_TRAIN_PAT_1_CPT;
> +		intel_dp->DP |= DP_LINK_TRAIN_PAT_1_CPT;
>  		break;
>  	case DP_TRAINING_PATTERN_2:
> -		*DP |= DP_LINK_TRAIN_PAT_2_CPT;
> +		intel_dp->DP |= DP_LINK_TRAIN_PAT_2_CPT;
>  		break;
>  	default:
>  		MISSING_CASE(intel_dp_training_pattern_symbol(dp_train_pat));
> @@ -611,19 +607,18 @@ g4x_set_link_train(struct intel_dp *intel_dp,
>  		   u8 dp_train_pat)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> -	u32 *DP = &intel_dp->DP;
>  
> -	*DP &= ~DP_LINK_TRAIN_MASK;
> +	intel_dp->DP &= ~DP_LINK_TRAIN_MASK;
>  
>  	switch (intel_dp_training_pattern_symbol(dp_train_pat)) {
>  	case DP_TRAINING_PATTERN_DISABLE:
> -		*DP |= DP_LINK_TRAIN_OFF;
> +		intel_dp->DP |= DP_LINK_TRAIN_OFF;
>  		break;
>  	case DP_TRAINING_PATTERN_1:
> -		*DP |= DP_LINK_TRAIN_PAT_1;
> +		intel_dp->DP |= DP_LINK_TRAIN_PAT_1;
>  		break;
>  	case DP_TRAINING_PATTERN_2:
> -		*DP |= DP_LINK_TRAIN_PAT_2;
> +		intel_dp->DP |= DP_LINK_TRAIN_PAT_2;
>  		break;
>  	default:
>  		MISSING_CASE(intel_dp_training_pattern_symbol(dp_train_pat));
> -- 
> 2.32.0
> 
