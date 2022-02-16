Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B66844B8605
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 11:40:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5D6410E344;
	Wed, 16 Feb 2022 10:40:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7685F10E344
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 10:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645008029; x=1676544029;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4C9GjrTqxDVqQ5GHzHYYjObSuDUFYj63bfmSVAkC/CQ=;
 b=Vav0jM0ZIubqtXWHNG738pNpWWqS8PNV4oZJKKK0c6akHXDbQLC1I9DQ
 O/eEHrycLKDFk6+5xYEJtC1Qb4f1IDDD7i/rAdB93KD1SrSUyIT4CwHY7
 SV8rMMDVpjrmwJ6D155ARh0QzCvGSfdBliC4NAITU1lKe/gENTFPl9fcj
 KUlpfCxy0A2fwsQlmYrtwKYz8YWb173Hpbzfu7W6cCkkYZlP94mRPOZEQ
 tftBcSfjgyVB54gJ3+8Fcgl41rlkvvfzUg9HMi0k+nK5N5GF797IrQXcd
 i9dL5NIKHXTKuUO11R8smv44xv2zue3xXwHFoKwAJ8YdHdwFMUHiecO6r A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="234115939"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="234115939"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 02:40:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="498736989"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 16 Feb 2022 02:40:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Feb 2022 12:40:26 +0200
Date: Wed, 16 Feb 2022 12:40:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YgzUmn39XmIk3p5Y@intel.com>
References: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
 <20220211090629.15555-9-ville.syrjala@linux.intel.com>
 <87o8373xzz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87o8373xzz.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 8/8] drm/i915: Polish ilk+ wm register bits
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

On Wed, Feb 16, 2022 at 12:29:52PM +0200, Jani Nikula wrote:
> On Fri, 11 Feb 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Use REG_GENMASK() & co. for ilk+ watermarm registers.
> 
> *watermark
> 
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  .../drm/i915/display/intel_display_debugfs.c  |  2 +-
> >  drivers/gpu/drm/i915/i915_reg.h               | 41 +++++++------
> >  drivers/gpu/drm/i915/intel_pm.c               | 57 +++++++++----------
> >  3 files changed, 49 insertions(+), 51 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index f4de004d470f..b219e162f1d1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -78,7 +78,7 @@ static int i915_sr_status(struct seq_file *m, void *unused)
> >  	if (DISPLAY_VER(dev_priv) >= 9)
> >  		/* no global SR status; inspect per-plane WM */;
> >  	else if (HAS_PCH_SPLIT(dev_priv))
> > -		sr_enabled = intel_de_read(dev_priv, WM1_LP_ILK) & WM1_LP_SR_EN;
> > +		sr_enabled = intel_de_read(dev_priv, WM1_LP_ILK) & WM_LP_ENABLE;
> >  	else if (IS_I965GM(dev_priv) || IS_G4X(dev_priv) ||
> >  		 IS_I945G(dev_priv) || IS_I945GM(dev_priv))
> >  		sr_enabled = intel_de_read(dev_priv, FW_BLC_SELF) & FW_BLC_SELF_EN;
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 278c9cbc6f3c..0dd4d34e7cd7 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -4298,33 +4298,32 @@
> >  #define _WM0_PIPEC_IVB		0x45200
> >  #define WM0_PIPE_ILK(pipe)	_MMIO_PIPE3((pipe), _WM0_PIPEA_ILK, \
> >  					    _WM0_PIPEB_ILK, _WM0_PIPEC_IVB)
> > -#define  WM0_PIPE_PLANE_MASK	(0xffff << 16)
> > -#define  WM0_PIPE_PLANE_SHIFT	16
> > -#define  WM0_PIPE_SPRITE_MASK	(0xff << 8)
> > -#define  WM0_PIPE_SPRITE_SHIFT	8
> > -#define  WM0_PIPE_CURSOR_MASK	(0xff)
> > +#define  WM0_PIPE_PRIMARY_MASK	REG_GENMASK(23, 16)
> 
> Should be (31,16) to match current WM0_PIPE_PLANE_MASK.
> 
> I didn't try to find the bspec, but if this is an intentional fix,
> should be split out to a separate patch.

Right. Forgot that I refined the bitfield sizes here. I'll
split that part out.

An easy way to double check these w/o a spec is
ilk_{plane,cursor}_wm_reg_max(). Assuming those are correct
of course :) Hmm, I guess I could also think about rewriting
those to use the *_MASK defines. Though I'd have to define
separate masks for each platform variant...

> 
> Other than that,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks.

> 
> > +#define  WM0_PIPE_SPRITE_MASK	REG_GENMASK(15, 8)
> > +#define  WM0_PIPE_CURSOR_MASK	REG_GENMASK(5, 0)
> > +#define  WM0_PIPE_PRIMARY(x)	REG_FIELD_PREP(WM0_PIPE_PRIMARY_MASK, (x))
> > +#define  WM0_PIPE_SPRITE(x)	REG_FIELD_PREP(WM0_PIPE_SPRITE_MASK, (x))
> > +#define  WM0_PIPE_CURSOR(x)	REG_FIELD_PREP(WM0_PIPE_CURSOR_MASK, (x))
> >  #define WM1_LP_ILK		_MMIO(0x45108)
> > -#define  WM1_LP_SR_EN		(1 << 31)
> > -#define  WM1_LP_LATENCY_SHIFT	24
> > -#define  WM1_LP_LATENCY_MASK	(0x7f << 24)
> > -#define  WM1_LP_FBC_MASK	(0xf << 20)
> > -#define  WM1_LP_FBC_SHIFT	20
> > -#define  WM1_LP_FBC_SHIFT_BDW	19
> > -#define  WM1_LP_SR_MASK		(0x7ff << 8)
> > -#define  WM1_LP_SR_SHIFT	8
> > -#define  WM1_LP_CURSOR_MASK	(0xff)
> >  #define WM2_LP_ILK		_MMIO(0x4510c)
> > -#define  WM2_LP_EN		(1 << 31)
> >  #define WM3_LP_ILK		_MMIO(0x45110)
> > -#define  WM3_LP_EN		(1 << 31)
> > +#define  WM_LP_ENABLE		REG_BIT(31)
> > +#define  WM_LP_LATENCY_MASK	REG_GENMASK(30, 24)
> > +#define  WM_LP_FBC_MASK_BDW	REG_GENMASK(23, 19)
> > +#define  WM_LP_FBC_MASK_ILK	REG_GENMASK(23, 20)
> > +#define  WM_LP_PRIMARY_MASK	REG_GENMASK(18, 8)
> > +#define  WM_LP_CURSOR_MASK	REG_GENMASK(7, 0)
> > +#define  WM_LP_LATENCY(x)	REG_FIELD_PREP(WM_LP_LATENCY_MASK, (x))
> > +#define  WM_LP_FBC_BDW(x)	REG_FIELD_PREP(WM_LP_FBC_MASK_BDW, (x))
> > +#define  WM_LP_FBC_ILK(x)	REG_FIELD_PREP(WM_LP_FBC_MASK_ILK, (x))
> > +#define  WM_LP_PRIMARY(x)	REG_FIELD_PREP(WM_LP_PRIMARY_MASK, (x))
> > +#define  WM_LP_CURSOR(x)	REG_FIELD_PREP(WM_LP_CURSOR_MASK, (x))
> >  #define WM1S_LP_ILK		_MMIO(0x45120)
> >  #define WM2S_LP_IVB		_MMIO(0x45124)
> >  #define WM3S_LP_IVB		_MMIO(0x45128)
> > -#define  WM1S_LP_EN		(1 << 31)
> > -
> > -#define HSW_WM_LP_VAL(lat, fbc, pri, cur) \
> > -	(WM3_LP_EN | ((lat) << WM1_LP_LATENCY_SHIFT) | \
> > -	 ((fbc) << WM1_LP_FBC_SHIFT) | ((pri) << WM1_LP_SR_SHIFT) | (cur))
> > +#define  WM_LP_SPRITE_ENABLE	REG_BIT(31) /* ilk/snb WM1S only */
> > +#define  WM_LP_SPRITE_MASK	REG_GENMASK(10, 0)
> > +#define  WM_LP_SPRITE(x)	REG_FIELD_PREP(WM_LP_SPRITE_MASK, (x))
> >  
> >  /* Memory latency timer register */
> >  #define MLTR_ILK		_MMIO(0x11222)
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > index 605944551e1b..9382284134e6 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -3409,29 +3409,28 @@ static void ilk_compute_wm_results(struct drm_i915_private *dev_priv,
> >  		 * disabled. Doing otherwise could cause underruns.
> >  		 */
> >  		results->wm_lp[wm_lp - 1] =
> > -			(ilk_wm_lp_latency(dev_priv, level) << WM1_LP_LATENCY_SHIFT) |
> > -			(r->pri_val << WM1_LP_SR_SHIFT) |
> > -			r->cur_val;
> > +			WM_LP_LATENCY(ilk_wm_lp_latency(dev_priv, level)) |
> > +			WM_LP_PRIMARY(r->pri_val) |
> > +			WM_LP_CURSOR(r->cur_val);
> >  
> >  		if (r->enable)
> > -			results->wm_lp[wm_lp - 1] |= WM1_LP_SR_EN;
> > +			results->wm_lp[wm_lp - 1] |= WM_LP_ENABLE;
> >  
> >  		if (DISPLAY_VER(dev_priv) >= 8)
> > -			results->wm_lp[wm_lp - 1] |=
> > -				r->fbc_val << WM1_LP_FBC_SHIFT_BDW;
> > +			results->wm_lp[wm_lp - 1] |= WM_LP_FBC_BDW(r->fbc_val);
> >  		else
> > -			results->wm_lp[wm_lp - 1] |=
> > -				r->fbc_val << WM1_LP_FBC_SHIFT;
> > +			results->wm_lp[wm_lp - 1] |= WM_LP_FBC_ILK(r->fbc_val);
> > +
> > +		results->wm_lp_spr[wm_lp - 1] = WM_LP_SPRITE(r->spr_val);
> >  
> >  		/*
> > -		 * Always set WM1S_LP_EN when spr_val != 0, even if the
> > +		 * Always set WM_LP_SPRITE_EN when spr_val != 0, even if the
> >  		 * level is disabled. Doing otherwise could cause underruns.
> >  		 */
> >  		if (DISPLAY_VER(dev_priv) <= 6 && r->spr_val) {
> >  			drm_WARN_ON(&dev_priv->drm, wm_lp != 1);
> > -			results->wm_lp_spr[wm_lp - 1] = WM1S_LP_EN | r->spr_val;
> > -		} else
> > -			results->wm_lp_spr[wm_lp - 1] = r->spr_val;
> > +			results->wm_lp_spr[wm_lp - 1] |= WM_LP_SPRITE_ENABLE;
> > +		}
> >  	}
> >  
> >  	/* LP0 register values */
> > @@ -3444,9 +3443,9 @@ static void ilk_compute_wm_results(struct drm_i915_private *dev_priv,
> >  			continue;
> >  
> >  		results->wm_pipe[pipe] =
> > -			(r->pri_val << WM0_PIPE_PLANE_SHIFT) |
> > -			(r->spr_val << WM0_PIPE_SPRITE_SHIFT) |
> > -			r->cur_val;
> > +			WM0_PIPE_PRIMARY(r->pri_val) |
> > +			WM0_PIPE_SPRITE(r->spr_val) |
> > +			WM0_PIPE_CURSOR(r->cur_val);
> >  	}
> >  }
> >  
> > @@ -3538,24 +3537,24 @@ static bool _ilk_disable_lp_wm(struct drm_i915_private *dev_priv,
> >  	struct ilk_wm_values *previous = &dev_priv->wm.hw;
> >  	bool changed = false;
> >  
> > -	if (dirty & WM_DIRTY_LP(3) && previous->wm_lp[2] & WM1_LP_SR_EN) {
> > -		previous->wm_lp[2] &= ~WM1_LP_SR_EN;
> > +	if (dirty & WM_DIRTY_LP(3) && previous->wm_lp[2] & WM_LP_ENABLE) {
> > +		previous->wm_lp[2] &= ~WM_LP_ENABLE;
> >  		intel_uncore_write(&dev_priv->uncore, WM3_LP_ILK, previous->wm_lp[2]);
> >  		changed = true;
> >  	}
> > -	if (dirty & WM_DIRTY_LP(2) && previous->wm_lp[1] & WM1_LP_SR_EN) {
> > -		previous->wm_lp[1] &= ~WM1_LP_SR_EN;
> > +	if (dirty & WM_DIRTY_LP(2) && previous->wm_lp[1] & WM_LP_ENABLE) {
> > +		previous->wm_lp[1] &= ~WM_LP_ENABLE;
> >  		intel_uncore_write(&dev_priv->uncore, WM2_LP_ILK, previous->wm_lp[1]);
> >  		changed = true;
> >  	}
> > -	if (dirty & WM_DIRTY_LP(1) && previous->wm_lp[0] & WM1_LP_SR_EN) {
> > -		previous->wm_lp[0] &= ~WM1_LP_SR_EN;
> > +	if (dirty & WM_DIRTY_LP(1) && previous->wm_lp[0] & WM_LP_ENABLE) {
> > +		previous->wm_lp[0] &= ~WM_LP_ENABLE;
> >  		intel_uncore_write(&dev_priv->uncore, WM1_LP_ILK, previous->wm_lp[0]);
> >  		changed = true;
> >  	}
> >  
> >  	/*
> > -	 * Don't touch WM1S_LP_EN here.
> > +	 * Don't touch WM_LP_SPRITE_ENABLE here.
> >  	 * Doing so could cause underruns.
> >  	 */
> >  
> > @@ -6803,9 +6802,9 @@ static void ilk_pipe_wm_get_hw_state(struct intel_crtc *crtc)
> >  		 * multiple pipes are active.
> >  		 */
> >  		active->wm[0].enable = true;
> > -		active->wm[0].pri_val = (tmp & WM0_PIPE_PLANE_MASK) >> WM0_PIPE_PLANE_SHIFT;
> > -		active->wm[0].spr_val = (tmp & WM0_PIPE_SPRITE_MASK) >> WM0_PIPE_SPRITE_SHIFT;
> > -		active->wm[0].cur_val = tmp & WM0_PIPE_CURSOR_MASK;
> > +		active->wm[0].pri_val = REG_FIELD_GET(WM0_PIPE_PRIMARY_MASK, tmp);
> > +		active->wm[0].spr_val = REG_FIELD_GET(WM0_PIPE_SPRITE_MASK, tmp);
> > +		active->wm[0].cur_val = REG_FIELD_GET(WM0_PIPE_CURSOR_MASK, tmp);
> >  	} else {
> >  		int level, max_level = ilk_wm_max_level(dev_priv);
> >  
> > @@ -7229,12 +7228,12 @@ void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
> >   */
> >  static void ilk_init_lp_watermarks(struct drm_i915_private *dev_priv)
> >  {
> > -	intel_uncore_write(&dev_priv->uncore, WM3_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM3_LP_ILK) & ~WM1_LP_SR_EN);
> > -	intel_uncore_write(&dev_priv->uncore, WM2_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM2_LP_ILK) & ~WM1_LP_SR_EN);
> > -	intel_uncore_write(&dev_priv->uncore, WM1_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM1_LP_ILK) & ~WM1_LP_SR_EN);
> > +	intel_uncore_write(&dev_priv->uncore, WM3_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM3_LP_ILK) & ~WM_LP_ENABLE);
> > +	intel_uncore_write(&dev_priv->uncore, WM2_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM2_LP_ILK) & ~WM_LP_ENABLE);
> > +	intel_uncore_write(&dev_priv->uncore, WM1_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM1_LP_ILK) & ~WM_LP_ENABLE);
> >  
> >  	/*
> > -	 * Don't touch WM1S_LP_EN here.
> > +	 * Don't touch WM_LP_SPRITE_ENABLE here.
> >  	 * Doing so could cause underruns.
> >  	 */
> >  }
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
