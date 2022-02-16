Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DA84B91A6
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 20:44:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FB9A10E63A;
	Wed, 16 Feb 2022 19:44:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0373110E63A
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 19:44:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645040673; x=1676576673;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=IdJB1WZ99FfXFmiEBaPVETz4/IHfaKA8JlXpODD+j/Q=;
 b=WYVvDbbH5rvUelaYOmMJihCD6DDHk94BRXZKlQLEAqec1UtpmgCLrSmu
 z3YA6ry9nV3h1NnX5fvpERVtWyM1/5e4XyO62QWBIMv+3RBjeQsT+a23g
 9wnwzgZbQJk1/G4Ka+Y0cOl4QXj1pWzGm/JWzFEVIuIKnNygPvbnhPDc6
 aP1MEGPGjCFQ84SiZd7xpDiNkYlMS6LnaiNXbwsOoidHCHFB+lWzAK72Z
 YyIDyTYCVEO8nnrwMW7Qv1ID6ijqQBtYdBrn9vL82e01e1SDXKfWOnJkA
 g7amhxq5rug+aEJso4TAcdnAaOSC3hXu2puGvuiP27LXw9fDzBF/nEf41 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="248309381"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="248309381"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 11:44:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="681655608"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 16 Feb 2022 11:44:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Feb 2022 21:44:29 +0200
Date: Wed, 16 Feb 2022 21:44:29 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <Yg1UHfkb7B1t3M7M@intel.com>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
 <20220215183208.6143-7-ville.syrjala@linux.intel.com>
 <20220216193538.GD27285@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220216193538.GD27285@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 06/12] drm/i915: Extract
 intel_crtc_compute_pipe_src()
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

On Wed, Feb 16, 2022 at 11:35:39AM -0800, Navare, Manasi wrote:
> On Tue, Feb 15, 2022 at 08:32:02PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > intel_crtc_compute_config() doesn't really tell a unified story.
> > Let's chunk it up into pieces. We'll start with
> > intel_crtc_compute_pipe_src().
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
> 
> with just one clarification below
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 62 ++++++++++++--------
> >  1 file changed, 39 insertions(+), 23 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 19417ff975c6..3d3fddd3f452 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -2798,18 +2798,55 @@ static void intel_encoder_get_config(struct intel_encoder *encoder,
> >  	intel_crtc_readout_derived_state(crtc_state);
> >  }
> >  
> > +static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
> > +{
> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > +
> > +	if (crtc_state->bigjoiner)
> > +		crtc_state->pipe_src_w /= 2;
> > +
> > +	/*
> > +	 * Pipe horizontal size must be even in:
> > +	 * - DVO ganged mode
> > +	 * - LVDS dual channel mode
> > +	 * - Double wide pipe
> > +	 */
> > +	if (crtc_state->pipe_src_w & 1) {
> > +		if (crtc_state->double_wide) {
> > +			drm_dbg_kms(&i915->drm,
> > +				    "[CRTC:%d:%s] Odd pipe source width not supported with double wide pipe\n",
> > +				    crtc->base.base.id, crtc->base.name);
> > +			return -EINVAL;
> > +		}
> > +
> > +		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS) &&
> > +		    intel_is_dual_link_lvds(i915)) {
> > +			drm_dbg_kms(&i915->drm,
> > +				    "[CRTC:%d:%s] Odd pipe source width not supported with dual link LVDS\n",
> > +				    crtc->base.base.id, crtc->base.name);
> > +			return -EINVAL;
> > +		}
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> >  static int intel_crtc_compute_config(struct intel_crtc *crtc,
> >  				     struct intel_crtc_state *crtc_state)
> >  {
> >  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> >  	struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
> >  	int clock_limit = i915->max_dotclk_freq;
> > +	int ret;
> > +
> > +	ret = intel_crtc_compute_pipe_src(crtc_state);
> 
> Here crtc_state->pipe_src_w would already have been populated right?
> Just wanted to double check since we are moving this earlier in the function

Yeah it's initially set up already in intel_modeset_pipe_config()
before even calling the encoder compute_config() hooks, and
intel_crtc_compute_config() gets called after those.

I'd actually prefer to calculate it completely here, but we
currently set up the panel fitter stuff already in the 
encoder->compute_config() hook. So the order has to as is,
for the moment at least.

-- 
Ville Syrjälä
Intel
