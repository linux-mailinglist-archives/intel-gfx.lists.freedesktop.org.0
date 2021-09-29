Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F6941CD36
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 22:09:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43F0F89394;
	Wed, 29 Sep 2021 20:09:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C1B489394
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 20:09:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="221823652"
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="221823652"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 13:09:12 -0700
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="708495733"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 13:09:07 -0700
Date: Wed, 29 Sep 2021 23:09:03 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210929200903.GG2192289@ideak-desk.fi.intel.com>
References: <20210927182455.27119-1-ville.syrjala@linux.intel.com>
 <20210927182455.27119-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210927182455.27119-6-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915: Hoover the level>=n_entries
 WARN into intel_ddi_level()
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

On Mon, Sep 27, 2021 at 09:24:51PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> All callers of intel_ddi_level() duplicate the check+WARN
> to make sure the returned level is actually present in the
> appropriate buf_trans table. Let's push that stuff into
> intel_ddi_level() so the callers don't have to worry about it.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 27 ++++++++++---------
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c |  2 --
>  drivers/gpu/drm/i915/display/intel_snps_phy.c |  2 --
>  3 files changed, 15 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 970a796a4f52..0fd67d2487ad 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -141,8 +141,6 @@ static void hsw_prepare_hdmi_ddi_buffers(struct intel_encoder *encoder,
>  	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
>  	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
>  		return;
> -	if (drm_WARN_ON_ONCE(&dev_priv->drm, level >= n_entries))
> -		level = n_entries - 1;
>  
>  	/* If we're boosting the current, set bit 31 of trans1 */
>  	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv) &&
> @@ -977,8 +975,6 @@ static void skl_ddi_set_iboost(struct intel_encoder *encoder,
>  		trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
>  		if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
>  			return;
> -		if (drm_WARN_ON_ONCE(&dev_priv->drm, level >= n_entries))
> -			level = n_entries - 1;
>  
>  		iboost = trans->entries[level].hsw.i_boost;
>  	}
> @@ -1037,8 +1033,6 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
>  	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
>  	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
>  		return;
> -	if (drm_WARN_ON_ONCE(&dev_priv->drm, level >= n_entries))
> -		level = n_entries - 1;
>  
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
>  		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> @@ -1163,8 +1157,6 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
>  	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
>  	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
>  		return;
> -	if (drm_WARN_ON_ONCE(&dev_priv->drm, level >= n_entries))
> -		level = n_entries - 1;
>  
>  	/* Set MG_TX_LINK_PARAMS cri_use_fs32 to 0. */
>  	for (ln = 0; ln < 2; ln++) {
> @@ -1286,8 +1278,6 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
>  	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
>  	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
>  		return;
> -	if (drm_WARN_ON_ONCE(&dev_priv->drm, level >= n_entries))
> -		level = n_entries - 1;
>  
>  	dpcnt_mask = (DKL_TX_PRESHOOT_COEFF_MASK |
>  		      DKL_TX_DE_EMPAHSIS_COEFF_MASK |
> @@ -1357,10 +1347,23 @@ static int intel_ddi_dp_level(struct intel_dp *intel_dp)
>  int intel_ddi_level(struct intel_encoder *encoder,
>  		    const struct intel_crtc_state *crtc_state)
>  {
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	const struct intel_ddi_buf_trans *trans;
> +	int level, n_entries;
> +
> +	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> +	if (drm_WARN_ON_ONCE(&i915->drm, !trans))
> +		return 0;
> +
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		return intel_ddi_hdmi_level(encoder, crtc_state);
> +		level = intel_ddi_hdmi_level(encoder, crtc_state);
>  	else
> -		return intel_ddi_dp_level(enc_to_intel_dp(encoder));
> +		level = intel_ddi_dp_level(enc_to_intel_dp(encoder));
> +
> +	if (drm_WARN_ON_ONCE(&i915->drm, level >= n_entries))
> +		level = n_entries - 1;
> +
> +	return level;
>  }
>  
>  static void
> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> index 4d604e4cfa5d..96650369164d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> @@ -282,8 +282,6 @@ void bxt_ddi_phy_set_signal_levels(struct intel_encoder *encoder,
>  	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
>  	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
>  		return;
> -	if (drm_WARN_ON_ONCE(&dev_priv->drm, level >= n_entries))
> -		level = n_entries - 1;
>  
>  	bxt_port_to_phy_channel(dev_priv, encoder->port, &phy, &ch);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> index f59cc320ce9c..7a9771dbb63f 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> @@ -64,8 +64,6 @@ void intel_snps_phy_set_signal_levels(struct intel_encoder *encoder,
>  	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
>  	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
>  		return;
> -	if (drm_WARN_ON_ONCE(&dev_priv->drm, level < 0 || level >= n_entries))
> -		level = n_entries - 1;
>  
>  	for (ln = 0; ln < 4; ln++) {
>  		u32 val = 0;
> -- 
> 2.32.0
> 
