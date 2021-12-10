Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5BB46FEEE
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 11:47:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D64310E3C5;
	Fri, 10 Dec 2021 10:47:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52A5310E3C5
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 10:47:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="262436013"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="262436013"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 02:46:39 -0800
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="462503057"
Received: from mpcorrig-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.4.173])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 02:46:38 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211210073451.2526909-1-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211210073451.2526909-1-anusha.srivatsa@intel.com>
Date: Fri, 10 Dec 2021 12:46:31 +0200
Message-ID: <8735n03fg8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC] drm/i915/display: Move cdclk checks to atomic
 check
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

On Thu, 09 Dec 2021, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> i915 has squashing for DG2 and crawling for ADLP.
> Moving the checks to atomic check phase so
> at a later phase we know how the cdclk changes.

Just some high level comments:

- Functions named intel_cdclk_can_foo() must *not* change the state,
  that's unexpected and surprising.

- There's a bunch of state handling already for cdclk, please don't just
  dump new state in drm_i915_private, outside of the existing states. In
  particular, storing yet another copy of cdclk is suspicious.

- Please don't add short stuff like CRAWL and SQUASH to our module
  namespace.


BR,
Jani.


>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 49 +++++++++++++---------
>  drivers/gpu/drm/i915/i915_drv.h            | 11 +++++
>  2 files changed, 41 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 639a64733f61..9382dd24d889 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1707,9 +1707,27 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  		return;
>  	}
>  
> -	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->cdclk.hw.vco > 0 && vco > 0) {
> -		if (dev_priv->cdclk.hw.vco != vco)
> -			adlp_cdclk_pll_crawl(dev_priv, vco);
> +	if (DISPLAY_VER(dev_priv) >= 12) {
> +		int i = 0;
> +		u32 squash_ctl = 0;
> +		struct cdclk_steps *cdclk_steps = dev_priv->cdclk.steps;
> +
> +		for (i = 0; i < CDCLK_ACTIONS; i++) {
> +			switch (cdclk_steps[i].action) {
> +			case CRAWL:
> +				adlp_cdclk_pll_crawl(dev_priv, vco);
> +				break;
> +			case SQUASH:
> +				waveform =  cdclk_squash_waveform(dev_priv, cdclk_steps[i].cdclk);
> +				clock = vco / 2;
> +				squash_ctl = CDCLK_SQUASH_ENABLE |
> +				CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
> +				intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
> +				break;
> +			default:
> +				break;
> +			}
> +		}
>  	} else if (DISPLAY_VER(dev_priv) >= 11) {
>  		if (dev_priv->cdclk.hw.vco != 0 &&
>  		    dev_priv->cdclk.hw.vco != vco)
> @@ -1726,22 +1744,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  			bxt_de_pll_enable(dev_priv, vco);
>  	}
>  
> -	waveform = cdclk_squash_waveform(dev_priv, cdclk);
> -
> -	if (waveform)
> -		clock = vco / 2;
> -	else
> -		clock = cdclk;
> -
> -	if (has_cdclk_squasher(dev_priv)) {
> -		u32 squash_ctl = 0;
> -
> -		if (waveform)
> -			squash_ctl = CDCLK_SQUASH_ENABLE |
> -				CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
> -
> -		intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
> -	}
> +	clock = cdclk;
>  
>  	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
>  		bxt_cdclk_cd2x_pipe(dev_priv, pipe) |
> @@ -1934,6 +1937,7 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
>  				  const struct intel_cdclk_config *a,
>  				  const struct intel_cdclk_config *b)
>  {
> +	struct cdclk_steps *cdclk_transition = dev_priv->cdclk.steps;
>  	int a_div, b_div;
>  
>  	if (!HAS_CDCLK_CRAWL(dev_priv))
> @@ -1946,6 +1950,9 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
>  	a_div = DIV_ROUND_CLOSEST(a->vco, a->cdclk);
>  	b_div = DIV_ROUND_CLOSEST(b->vco, b->cdclk);
>  
> +	cdclk_transition[0].action = CRAWL;
> +	cdclk_transition[0].cdclk = b->cdclk;
> +
>  	return a->vco != 0 && b->vco != 0 &&
>  		a->vco != b->vco &&
>  		a_div == b_div &&
> @@ -1956,6 +1963,7 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
>  				   const struct intel_cdclk_config *a,
>  				   const struct intel_cdclk_config *b)
>  {
> +	struct cdclk_steps *cdclk_transition = dev_priv->cdclk.steps;
>  	/*
>  	 * FIXME should store a bit more state in intel_cdclk_config
>  	 * to differentiate squasher vs. cd2x divider properly. For
> @@ -1965,6 +1973,9 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
>  	if (!has_cdclk_squasher(dev_priv))
>  		return false;
>  
> +	cdclk_transition[0].action = SQUASH;
> +	cdclk_transition[0].cdclk = b->cdclk;
> +
>  	return a->cdclk != b->cdclk &&
>  		a->vco != 0 &&
>  		a->vco == b->vco &&
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index ae7dc7862b5d..c03299253b81 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -117,6 +117,12 @@
>  
>  struct drm_i915_gem_object;
>  
> +enum cdclk_actions {
> +	SQUASH = 0,
> +	CRAWL,
> +	CDCLK_ACTIONS
> +};
> +
>  /* Threshold == 5 for long IRQs, 50 for short */
>  #define HPD_STORM_DEFAULT_THRESHOLD 50
>  
> @@ -782,6 +788,11 @@ struct drm_i915_private {
>  		const struct intel_cdclk_vals *table;
>  
>  		struct intel_global_obj obj;
> +
> +		struct cdclk_steps {
> +			enum cdclk_actions action;
> +			u32 cdclk;
> +		} steps[CDCLK_ACTIONS];
>  	} cdclk;
>  
>  	struct {

-- 
Jani Nikula, Intel Open Source Graphics Center
