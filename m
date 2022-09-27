Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 551845ECC0D
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 20:19:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70BF110E0A7;
	Tue, 27 Sep 2022 18:19:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9316D10E0A7
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 18:19:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664302771; x=1695838771;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2ywlh54e3Bg89SI+s4Kf4TVILCeLPmqtUb8/CpZHb2I=;
 b=aqSSx5le0Nq7auwqqLle/5L1KCUVJDmBUikMJmyJE0MuXKNkrItYf6Am
 gqU51zr0srZUAgaxcxfA2btmzQqhEjL5+tUqkXJH8X9WTthVkSF7osZ4G
 N4Ribjjj4yWXGSpZrf6eAPK20Wf67jQN6tqlbwyVA9rpN8HJjwmAV4Zkd
 0/j0QK2OFKjx9WyH1mNq/fxWmiVAesNJLncHiEAp19TwA2z0ahXjBqdQV
 BtqcAkgKppLah32vOjPLOt/1zE0nf2CrTVdiV4Z5DZj72LEzwOrEdkyc/
 Jx1Eg8/fp8CeR+Y6WSvqx1moVt9HQ8ikySEiFm6KjLP3cFWXUHpDrryvs w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="300112035"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="300112035"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 11:19:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="599273980"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="599273980"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 27 Sep 2022 11:19:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 27 Sep 2022 21:19:27 +0300
Date: Tue, 27 Sep 2022 21:19:27 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <YzM+r/geJQj38vg5@intel.com>
References: <20220927175632.171507-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220927175632.171507-1-anusha.srivatsa@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Do both crawl and squash
 when changing cdclk
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

On Tue, Sep 27, 2022 at 10:56:32AM -0700, Anusha Srivatsa wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> For MTL, changing cdclk from between certain frequencies has
> both squash and crawl. Use the current cdclk config and
> the new(desired) cdclk config to construct a mid cdclk config.
> Set the cdclk twice:
> - Current cdclk -> mid cdclk
> - mid cdclk -> desired cdclk

I might have said we don't need any logic in intel_modeset_calc_cdclk()
but I didn't mean it entirely literally :) I think we do need a bit
of logic there to avoid taking the "force full modeset" path.

So some kind of
can_crawl_and_squash() {
	return has_crawl && has_squash && old_vco != 0 && new_vco != 0;
}
should be sufficient I think.

Hmm, but I guess that would mean the debug message won't be 100%
accurate. So your idea of using the same logic from
cdclk_crawl_and_squash() here too might be the best option after
all.

> 
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 121 ++++++++++++++++-----
>  1 file changed, 96 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index a12e86d92783..e7faded38e66 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1689,37 +1689,70 @@ static u32 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
>  	return 0xffff;
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
> +	u16 old_waveform = cdclk_squash_waveform(i915, old_cdclk_config->cdclk);
> +	u16 new_waveform = cdclk_squash_waveform(i915, new_cdclk_config->cdclk);
> +	u16 mid_waveform;
> +	int size = 16;
> +	int div = 2;
> +
> +	if (!HAS_CDCLK_CRAWL(i915) || !has_cdclk_squasher(i915))
> +		return false;
> +
> +	/* Return if Squash only or Crawl only is the desired action */
> +	if (old_cdclk_config->vco <= 0 || new_cdclk_config->vco <= 0 ||
> +	    old_cdclk_config->vco == new_cdclk_config->vco ||
> +	    old_waveform == new_waveform)
> +		return false;
> +
> +	*mid_cdclk_config = *new_cdclk_config;
> +
> +	/* If moving to a higher cdclk(squash) the mid cdclk config
> +	 * should have the new (squash) waveform.
> +	 * If moving to a lower cdclk (crawl) the mid cdclk config
> +	 * should have the new vco.
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
> @@ -1772,6 +1805,44 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
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
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
