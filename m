Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 658EA6063F8
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 17:14:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA1E510E135;
	Thu, 20 Oct 2022 15:14:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11AF410E135
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 15:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666278883; x=1697814883;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=S/W8S0x85dpWpM2Lo3jdOBkYQWpOfSjvYKbnbdrY1iU=;
 b=HQLEne+OZcx/yjlyg2YdWmGEqC2QN3M/1/SIsRYDKQTho+USd6MJMbx+
 GqSuejKZbF/1a8Mw/4e3+JGL3GRJJMeaRJcmHNWlpUueChvq07+R30Sin
 rVdSl/J977t+ssbchp3E9fXP4cB6f+GHjB6EKsAk/2AIQO3fgME049w9r
 kukHLm/ajCFG3aGubxq/Wx4d3fxF+3VmoJB4bIGDpJZvgxhzmCyzL0R6o
 RcshOsgO7SpbBBCOxDE2EQkdod/KCVoq5vOsUwjidqhPbsXR9F5ZmXusK
 Fbb4mg2DTDWMYxTA1FZW7qQt3nJKoGRCU1J/Ga7mri0PSmQvmh6CsFyMQ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="370951967"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="370951967"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 08:14:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="719115748"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="719115748"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 20 Oct 2022 08:14:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 20 Oct 2022 18:14:38 +0300
Date: Thu, 20 Oct 2022 18:14:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Message-ID: <Y1Fl3l3/0Xieq9iG@intel.com>
References: <20221013233223.103381-1-anusha.srivatsa@intel.com>
 <Y1FePEl7ySsHWxBg@bala-ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y1FePEl7ySsHWxBg@bala-ubuntu>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 20, 2022 at 08:12:04PM +0530, Balasubramani Vivekanandan wrote:
> On 13.10.2022 16:32, Anusha Srivatsa wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > For MTL, changing cdclk from between certain frequencies has
> > both squash and crawl. Use the current cdclk config and
> > the new(desired) cdclk config to construtc a mid cdclk config.
> > Set the cdclk twice:
> > - Current cdclk -> mid cdclk
> > - mid cdclk -> desired cdclk
> > 
> > v2: Add check in intel_modeset_calc_cdclk() to avoid cdclk
> > change via modeset for platforms that support squash_crawl sequences(Ville)
> > 
> > v3: Add checks for:
> > - scenario where only slow clock is used and
> > cdclk is actually 0 (bringing up display).
> > - PLLs are on before looking up the waveform.
> > - Squash and crawl capability checks.(Ville)
> > 
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Please add the Bspec number.
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 157 +++++++++++++++++----
> >  1 file changed, 128 insertions(+), 29 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index ad401357ab66..430b4cb0a8ab 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1675,7 +1675,7 @@ static u32 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
> >  	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
> >  	int i;
> >  
> > -	if (cdclk == dev_priv->display.cdclk.hw.bypass)
> > +	if (cdclk == dev_priv->display.cdclk.hw.bypass || cdclk == 0)
> >  		return 0;
> >  
> >  	for (i = 0; table[i].refclk; i++)
> > @@ -1689,37 +1689,72 @@ static u32 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
> >  	return 0xffff;
> >  }
> >  
> > -static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > -			  const struct intel_cdclk_config *cdclk_config,
> > -			  enum pipe pipe)
> > +static int cdclk_squash_divider(u16 waveform)
> > +{
> > +	return hweight16(waveform ?: 0xffff);
> > +}
> > +
> > +static bool cdclk_crawl_and_squash(struct drm_i915_private *i915,
> > +				   const struct intel_cdclk_config *old_cdclk_config,
> > +				   const struct intel_cdclk_config *new_cdclk_config,
> > +				   struct intel_cdclk_config *mid_cdclk_config)
> > +{
> 
> I was thinking of asking to rename this function to a more descriptive
> one, but then I myself was not able to come up with one.
> For a fresh eyes, it is difficult to make out what this function is
> actually doing.  Can you please add a summary as a comment above this
> function pointing out what is mid_cdclk and whats the meaning of its
> return value.
> 
> > +	u16 old_waveform = cdclk_squash_waveform(i915, old_cdclk_config->cdclk);
> > +	u16 new_waveform = cdclk_squash_waveform(i915, new_cdclk_config->cdclk);
> > +	u16 mid_waveform;
> > +	int size = 16;
> > +	int div = 2;
> > +
> > +	/* Return if both Squash and Crawl are not present */
> > +	if (!HAS_CDCLK_CRAWL(i915) || !has_cdclk_squasher(i915))
> > +		return false;
> 
> Can cdclk_squasher feature availability be also made a part of
> device_info structure like cdclk_crawl and create a macro similar to
> HAS_CDCLK_CRAWL?
> Like Ville said it looks bit weird. Also we would avoid adding platform
> checks inside has_cdclk_squasher() function like it is done now in your
> second patch.
> 
> > +
> > +	/* Return if Squash only or Crawl only is the desired action */
> > +	if (old_cdclk_config->vco <= 0 || new_cdclk_config->vco <= 0 ||
> > +	    old_cdclk_config->vco == new_cdclk_config->vco ||
> > +	    old_waveform == new_waveform)
> > +		return false;
> > +
> > +	*mid_cdclk_config = *new_cdclk_config;
> > +
> > +	/* If moving to a higher cdclk(squash) the mid cdclk config
> > +	 * should have the new (squash) waveform.
> > +	 * If moving to a lower cdclk (crawl) the mid cdclk config
> > +	 * should have the new vco.
> > +	 */
> > +
> > +	if (cdclk_squash_divider(new_waveform) > cdclk_squash_divider(old_waveform)) {
> > +		mid_cdclk_config->vco = old_cdclk_config->vco;
> > +		mid_waveform = new_waveform;
> > +	} else {
> > +		mid_cdclk_config->vco = new_cdclk_config->vco;
> > +		mid_waveform = old_waveform;
> > +	}
> > +
> > +	mid_cdclk_config->cdclk = DIV_ROUND_CLOSEST(cdclk_squash_divider(mid_waveform) *
> > +						    mid_cdclk_config->vco, size * div);
> > +
> > +	/* make sure the mid clock came out sane */
> > +
> > +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk <
> > +		    min(old_cdclk_config->cdclk, new_cdclk_config->cdclk));
> > +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk >
> > +		    i915->display.cdclk.max_cdclk_freq);
> > +	drm_WARN_ON(&i915->drm, cdclk_squash_waveform(i915, mid_cdclk_config->cdclk) !=
> > +		    mid_waveform);
> > +
> > +	return true;
> > +}
> > +
> > +static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > +			   const struct intel_cdclk_config *cdclk_config,
> > +			   enum pipe pipe)
> >  {
> >  	int cdclk = cdclk_config->cdclk;
> >  	int vco = cdclk_config->vco;
> >  	u32 val;
> >  	u16 waveform;
> >  	int clock;
> > -	int ret;
> > -
> > -	/* Inform power controller of upcoming frequency change. */
> > -	if (DISPLAY_VER(dev_priv) >= 11)
> > -		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> > -					SKL_CDCLK_PREPARE_FOR_CHANGE,
> > -					SKL_CDCLK_READY_FOR_CHANGE,
> > -					SKL_CDCLK_READY_FOR_CHANGE, 3);
> > -	else
> > -		/*
> > -		 * BSpec requires us to wait up to 150usec, but that leads to
> > -		 * timeouts; the 2ms used here is based on experiment.
> > -		 */
> > -		ret = snb_pcode_write_timeout(&dev_priv->uncore,
> > -					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> > -					      0x80000000, 150, 2);
> > -	if (ret) {
> > -		drm_err(&dev_priv->drm,
> > -			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
> > -			ret, cdclk);
> > -		return;
> > -	}
> >  
> >  	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0) {
> >  		if (dev_priv->display.cdclk.hw.vco != vco)
> > @@ -1772,6 +1807,44 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> >  
> >  	if (pipe != INVALID_PIPE)
> >  		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
> > +}
> > +
> > +static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > +			  const struct intel_cdclk_config *cdclk_config,
> > +			  enum pipe pipe)
> > +{
> 
> bxt_set_cdclk() is now bloated as it is reused for new platforms with
> new features resulting in too many condition checks. I see it is now
> time to switch to a new set_cdclk() function. I would prefer a new
> function for platforms starting from which supports squash/crawl feature
> and add this new crawl_and_squash feature implementation to the same
> function. But definitely I dislike using bxt_set_cdclk for MTL.

bxt vs. icl split might make sense since there are a bunch
of if-else along those lines. Beyond that it all we'd achieve
is code duplication I think.

Well, we might be able to avoid some code duplication if
we managed to chunk the different parts of bxt_set_cdclk()
into lower level subfunctions, and just cobble together
higher level variants (crawl+squash,just crawl,just squash,
neither). But basically all of those are just subsets of the
crawl+squash version, hence the duplication.

Another approach I was musing about was to add vfuncs for
lower level operations (pll enable, pll disable, etc.) to
get rid of the if-else stuff. But dunno if enough of the
platforms would fit that model to make it sensible.

> 
> > +	struct intel_cdclk_config mid_cdclk_config;
> > +	int cdclk = cdclk_config->cdclk;
> > +	int ret;
> > +
> > +	/* Inform power controller of upcoming frequency change. */
> > +	if (DISPLAY_VER(dev_priv) >= 11)
> > +		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> > +					SKL_CDCLK_PREPARE_FOR_CHANGE,
> > +					SKL_CDCLK_READY_FOR_CHANGE,
> > +					SKL_CDCLK_READY_FOR_CHANGE, 3);
> > +	else
> > +		/*
> > +		 * BSpec requires us to wait up to 150usec, but that leads to
> > +		 * timeouts; the 2ms used here is based on experiment.
> > +		 */
> > +		ret = snb_pcode_write_timeout(&dev_priv->uncore,
> > +					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> > +					      0x80000000, 150, 2);
> > +	if (ret) {
> > +		drm_err(&dev_priv->drm,
> > +			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
> > +			ret, cdclk);
> > +		return;
> > +	}
> > +
> > +	if (cdclk_crawl_and_squash(dev_priv, &dev_priv->display.cdclk.hw,
> > +				   cdclk_config, &mid_cdclk_config)) {
> > +		_bxt_set_cdclk(dev_priv, &mid_cdclk_config, pipe);
> > +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> > +	} else {
> > +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> > +	}
> >  
> >  	if (DISPLAY_VER(dev_priv) >= 11) {
> >  		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> > @@ -1944,6 +2017,27 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
> >  		skl_cdclk_uninit_hw(i915);
> >  }
> >  
> > +static bool intel_cdclk_can_crawl_and_squash(struct drm_i915_private *i915,
> > +					     const struct intel_cdclk_config *a,
> > +					     const struct intel_cdclk_config *b)
> > +{
> > +	u16 old_waveform;
> > +	u16 new_waveform;
> > +
> > +	if (a->vco == 0 || b->vco == 0)
> > +		return false;
> > +
> > +	if (HAS_CDCLK_CRAWL(i915) && has_cdclk_squasher(i915)) {
> > +		old_waveform = cdclk_squash_waveform(i915, a->cdclk);
> > +		new_waveform = cdclk_squash_waveform(i915, b->cdclk);
> > +	} else {
> > +		return false;
> > +	}
> > +
> > +	return a->vco != b->vco &&
> > +	       old_waveform != new_waveform;
> > +}
> > +
> >  static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
> >  				  const struct intel_cdclk_config *a,
> >  				  const struct intel_cdclk_config *b)
> > @@ -2750,9 +2844,14 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
> >  			pipe = INVALID_PIPE;
> >  	}
> >  
> > -	if (intel_cdclk_can_squash(dev_priv,
> > -				   &old_cdclk_state->actual,
> > -				   &new_cdclk_state->actual)) {
> > +	if (intel_cdclk_can_crawl_and_squash(dev_priv,
> > +					     &old_cdclk_state->actual,
> > +					     &new_cdclk_state->actual)) {
> > +		drm_dbg_kms(&dev_priv->drm,
> > +			    "Can change cdclk via crawler and squasher\n");
> > +	} else if (intel_cdclk_can_squash(dev_priv,
> > +					&old_cdclk_state->actual,
> > +					&new_cdclk_state->actual)) {
> 
> In the bxt_set_cdclk(), we perform crawl_and_squash only if neither crawl
> and squash alone can't accomplish cdclk change. So move the
> intel_cdclk_can_crawl_and_squash() check to after the checks for crawl
> and squash individually.
> This would just make sure the logs reflect how actually the cdclk is
> changed.

The current order seems fine to me. intel_cdclk_can_crawl_and_squash()
shouldn't say yes unless both crawl and squash are needed.

> 
> Regards,
> Bala
> 
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "Can change cdclk via squasher\n");
> >  	} else if (intel_cdclk_can_crawl(dev_priv,
> > -- 
> > 2.25.1
> > 

-- 
Ville Syrjälä
Intel
