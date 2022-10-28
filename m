Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EB1610CB6
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 11:05:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0F2A10E131;
	Fri, 28 Oct 2022 09:05:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEA3E10E131
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 09:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666947913; x=1698483913;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=zTRSzwkpkdylH5qX8jaOXjoCJjU1cZRvYAbjXoynUJs=;
 b=eP3R4wM2xVRpW3jzvPXMTw9OG8Yau3hCYoY7og6NDJPPGAan0lfMLtF3
 jyD/62wZJ94uWGhGjUNIy1FrgCaRl3JMLEMEQNtyG8YzTSG8WV7LiEuX+
 LjYQ04+numRjWFOton9v41eBUSDUWvLEADSevkk9UpiUMtWY+Km4EUaM6
 PVvj1kDPpDVcC2ihEKeca6WSXtHwm/qqAjCl+vDtN61t9cLNtOgl53rDq
 wL/k/2RpxSdshv/LvkxFdwJ9XWzRIuXkArW3nrE3BgP/9lIponkUw4x7u
 gWw7wWQM0U8b+Zi9JXbnpAPnThkQXMPiBsFxhhjFfCYHJzi+eBTK+PwLl g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="306057667"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="306057667"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 02:05:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="738036810"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="738036810"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 28 Oct 2022 02:05:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Oct 2022 12:05:09 +0300
Date: Fri, 28 Oct 2022 12:05:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <Y1ubRT9waxFO8wPt@intel.com>
References: <20221026232257.281240-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221026232257.281240-1-anusha.srivatsa@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Do both crawl and
 squash when changing cdclk
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
Cc: intel-gfx@lists.freedesktop.org,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 26, 2022 at 04:22:56PM -0700, Anusha Srivatsa wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> For MTL, changing cdclk from between certain frequencies has
> both squash and crawl. Use the current cdclk config and
> the new(desired) cdclk config to construtc a mid cdclk config.
> Set the cdclk twice:
> - Current cdclk -> mid cdclk
> - mid cdclk -> desired cdclk
> 
> v2: Add check in intel_modeset_calc_cdclk() to avoid cdclk
> change via modeset for platforms that support squash_crawl sequences(Ville)
> 
> v3: Add checks for:
> - scenario where only slow clock is used and
> cdclk is actually 0 (bringing up display).
> - PLLs are on before looking up the waveform.
> - Squash and crawl capability checks.(Ville)
> 
> v4: Rebase
> - Move checks to be more consistent (Ville)
> - Add comments (Bala)
> 
> Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 157 +++++++++++++++++----
>  1 file changed, 129 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index eada931cb1c8..6a775367f02a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1716,37 +1716,74 @@ static void dg2_cdclk_squash_program(struct drm_i915_private *i915,
>  	intel_de_write(i915, CDCLK_SQUASH_CTL, squash_ctl);
>  }
>  
> -static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> -			  const struct intel_cdclk_config *cdclk_config,
> -			  enum pipe pipe)
> +static int cdclk_squash_divider(u16 waveform)
> +{
> +	return hweight16(waveform ?: 0xffff);
> +}
> +
> +static bool cdclk_crawl_and_squash(struct drm_i915_private *i915,
> +				   const struct intel_cdclk_config *old_cdclk_config,
> +				   const struct intel_cdclk_config *new_cdclk_config,
> +				   struct intel_cdclk_config *mid_cdclk_config)
> +{
> +	u16 old_waveform, new_waveform, mid_waveform;
> +	int size = 16;
> +	int div = 2;
> +
> +	/* Return if both Squash and Crawl are not present */
> +	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
> +		return false;
> +
> +	/* Return if Squash only or Crawl only is the desired action */
> +	if (old_cdclk_config->vco <= 0 || new_cdclk_config->vco <= 0 ||
> +	    old_cdclk_config->vco == new_cdclk_config->vco ||
> +	    old_waveform == new_waveform)

Those are not yet initialized.

> +		return false;
> +
> +	old_waveform = cdclk_squash_waveform(i915, old_cdclk_config->cdclk);
> +	new_waveform = cdclk_squash_waveform(i915, new_cdclk_config->cdclk);
> +
> +	*mid_cdclk_config = *new_cdclk_config;
> +
> +	/* Populate the mid_cdclk_config accordingly.
> +	 * - If moving to a higher cdclk, the desired action is squashing.
> +	 * The mid cdclk config should have the new (squash) waveform.
> +	 * - If moving to a lower cdclk, the desired action is crawling.
> +	 * The mid cdclk config should have the new vco.
> +	 */
> +
> +	if (cdclk_squash_divider(new_waveform) > cdclk_squash_divider(old_waveform)) {
> +		mid_cdclk_config->vco = old_cdclk_config->vco;
> +		mid_waveform = new_waveform;
> +	} else {
> +		mid_cdclk_config->vco = new_cdclk_config->vco;
> +		mid_waveform = old_waveform;
> +	}
> +
> +	mid_cdclk_config->cdclk = DIV_ROUND_CLOSEST(cdclk_squash_divider(mid_waveform) *
> +						    mid_cdclk_config->vco, size * div);
> +
> +	/* make sure the mid clock came out sane */
> +
> +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk <
> +		    min(old_cdclk_config->cdclk, new_cdclk_config->cdclk));
> +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk >
> +		    i915->display.cdclk.max_cdclk_freq);
> +	drm_WARN_ON(&i915->drm, cdclk_squash_waveform(i915, mid_cdclk_config->cdclk) !=
> +		    mid_waveform);
> +
> +	return true;
> +}
> +
> +static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> +			   const struct intel_cdclk_config *cdclk_config,
> +			   enum pipe pipe)
>  {
>  	int cdclk = cdclk_config->cdclk;
>  	int vco = cdclk_config->vco;
>  	u32 val;
>  	u16 waveform;
>  	int clock;
> -	int ret;
> -
> -	/* Inform power controller of upcoming frequency change. */
> -	if (DISPLAY_VER(dev_priv) >= 11)
> -		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> -					SKL_CDCLK_PREPARE_FOR_CHANGE,
> -					SKL_CDCLK_READY_FOR_CHANGE,
> -					SKL_CDCLK_READY_FOR_CHANGE, 3);
> -	else
> -		/*
> -		 * BSpec requires us to wait up to 150usec, but that leads to
> -		 * timeouts; the 2ms used here is based on experiment.
> -		 */
> -		ret = snb_pcode_write_timeout(&dev_priv->uncore,
> -					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> -					      0x80000000, 150, 2);
> -	if (ret) {
> -		drm_err(&dev_priv->drm,
> -			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
> -			ret, cdclk);
> -		return;
> -	}
>  
>  	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0) {
>  		if (dev_priv->display.cdclk.hw.vco != vco)
> @@ -1781,6 +1818,44 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  
>  	if (pipe != INVALID_PIPE)
>  		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
> +}
> +
> +static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> +			  const struct intel_cdclk_config *cdclk_config,
> +			  enum pipe pipe)
> +{
> +	struct intel_cdclk_config mid_cdclk_config;
> +	int cdclk = cdclk_config->cdclk;
> +	int ret;
> +
> +	/* Inform power controller of upcoming frequency change. */
> +	if (DISPLAY_VER(dev_priv) >= 11)
> +		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> +					SKL_CDCLK_PREPARE_FOR_CHANGE,
> +					SKL_CDCLK_READY_FOR_CHANGE,
> +					SKL_CDCLK_READY_FOR_CHANGE, 3);
> +	else
> +		/*
> +		 * BSpec requires us to wait up to 150usec, but that leads to
> +		 * timeouts; the 2ms used here is based on experiment.
> +		 */
> +		ret = snb_pcode_write_timeout(&dev_priv->uncore,
> +					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> +					      0x80000000, 150, 2);
> +	if (ret) {
> +		drm_err(&dev_priv->drm,
> +			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
> +			ret, cdclk);
> +		return;
> +	}
> +
> +	if (cdclk_crawl_and_squash(dev_priv, &dev_priv->display.cdclk.hw,
> +				   cdclk_config, &mid_cdclk_config)) {
> +		_bxt_set_cdclk(dev_priv, &mid_cdclk_config, pipe);
> +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> +	} else {
> +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> +	}
>  
>  	if (DISPLAY_VER(dev_priv) >= 11) {
>  		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> @@ -1953,6 +2028,27 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
>  		skl_cdclk_uninit_hw(i915);
>  }
>  
> +static bool intel_cdclk_can_crawl_and_squash(struct drm_i915_private *i915,
> +					     const struct intel_cdclk_config *a,
> +					     const struct intel_cdclk_config *b)
> +{
> +	u16 old_waveform;
> +	u16 new_waveform;
> +
> +	if (a->vco == 0 || b->vco == 0)
> +		return false;
> +
> +	if (HAS_CDCLK_CRAWL(i915) && HAS_CDCLK_SQUASH(i915)) {
> +		old_waveform = cdclk_squash_waveform(i915, a->cdclk);
> +		new_waveform = cdclk_squash_waveform(i915, b->cdclk);
> +	} else {
> +		return false;
> +	}

Still weird.

> +
> +	return a->vco != b->vco &&
> +	       old_waveform != new_waveform;
> +}
> +
>  static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
>  				  const struct intel_cdclk_config *a,
>  				  const struct intel_cdclk_config *b)
> @@ -2759,9 +2855,14 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
>  			pipe = INVALID_PIPE;
>  	}
>  
> -	if (intel_cdclk_can_squash(dev_priv,
> -				   &old_cdclk_state->actual,
> -				   &new_cdclk_state->actual)) {
> +	if (intel_cdclk_can_crawl_and_squash(dev_priv,
> +					     &old_cdclk_state->actual,
> +					     &new_cdclk_state->actual)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Can change cdclk via crawling and squashing\n");
> +	} else if (intel_cdclk_can_squash(dev_priv,
> +					&old_cdclk_state->actual,
> +					&new_cdclk_state->actual)) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Can change cdclk via squashing\n");
>  	} else if (intel_cdclk_can_crawl(dev_priv,
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
