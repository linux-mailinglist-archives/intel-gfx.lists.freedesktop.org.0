Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A2F79205C
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Sep 2023 07:25:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 569AD891B4;
	Tue,  5 Sep 2023 05:25:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 193A810E420
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Sep 2023 05:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693891521; x=1725427521;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DdriZWkA/RYMWU8MTXesaxCKyLgNh65pdRqG/S2QLm8=;
 b=ha+HP1lXcjF/hefz7cs6mEM4EafuyCbBc5HqE6ZWEqmzFC9eqPNyaCV7
 BtCjJujfqBT9u9v5UGMe+ngSWwav1/3qPXNeXckxAOpdapK9XWwBpiTQV
 quinIzmjMZDSbDl9nR4dHUIl8IIDnqq8wFgrey3CHNVW1S3vBglCu0ipx
 vIWGV45z1JljuZT9TyEfU3XYOacbtTfJ8bD8LkLBFz+zWxW+Lz7bD5w6p
 RsxYYdKWjEboIIj25+qycmVVtggF6m5skpT1t0RwIYmDmNhkk6L8JE12x
 rKoHqvbeBNr3HVmiB7a0aWm/IJYFQJ47FmeOUaVisj5fz64rXU0uynYh0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10823"; a="379425734"
X-IronPort-AV: E=Sophos;i="6.02,228,1688454000"; d="scan'208";a="379425734"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2023 22:25:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10823"; a="776060713"
X-IronPort-AV: E=Sophos;i="6.02,228,1688454000"; d="scan'208";a="776060713"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga001.jf.intel.com with SMTP; 04 Sep 2023 22:25:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Sep 2023 08:25:17 +0300
Date: Tue, 5 Sep 2023 08:25:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZPa7vdxwCnD1shU8@intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
 <20230824080517.693621-5-imre.deak@intel.com>
 <ZPVTiYWRnRRyIViQ@intel.com>
 <ZPW6tkb73MXs7NuP@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZPW6tkb73MXs7NuP@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 04/22] drm/i915/dp: Update the link bpp
 limits for DSC mode
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

On Mon, Sep 04, 2023 at 02:08:38PM +0300, Imre Deak wrote:
> On Mon, Sep 04, 2023 at 06:48:25AM +0300, Ville Syrjälä wrote:
> > On Thu, Aug 24, 2023 at 11:04:59AM +0300, Imre Deak wrote:
> > > In non-DSC mode the link bpp can be set in 2*3 bpp steps in the pipe bpp
> > > range, while in DSC mode it can be set in 1/16 bpp steps to any value
> > > up to the maximum pipe bpp. Update the limits accordingly in both modes
> > > to prepare for a follow-up patch which may need to reduce the max link
> > > bpp value and starts to check the link bpp limits in DSC mode as well.
> > > 
> > > While at it add more detail to the link limit debug print and print it
> > > also for DSC mode.
> > > 
> > > v2:
> > > - Add to_bpp_frac_dec() instead of open coding it. (Jani)
> > > 
> > > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_display_types.h    |  5 ++
> > >  drivers/gpu/drm/i915/display/intel_dp.c       | 89 +++++++++++++++----
> > >  drivers/gpu/drm/i915/display/intel_dp.h       |  6 ++
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 23 +++--
> > >  4 files changed, 101 insertions(+), 22 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index 5875eff5012ce..a0a404967b5d2 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -2113,6 +2113,11 @@ static inline int to_bpp_int(int bpp_x16)
> > >  	return bpp_x16 >> 4;
> > >  }
> > >  
> > > +static inline int to_bpp_frac_dec(int bpp_x16)
> > > +{
> > > +	return (bpp_x16 & 0xf) * 625;
> > > +}
> > 
> > This gives me the impression that this would be somehow
> > generally useful, but I presume we only use it for the printk?
> > So maybe should just have some printk FMT+ARG macros for
> > this stuff?
> 
> Yes, only used by printks. Make sense to define the FMT+ARG helpers at
> one place, can add these here.
> 
> > 
> > > +
> > >  static inline int to_bpp_x16(int bpp)
> > >  {
> > >  	return bpp << 4;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index c580472c06b85..9ce861a7fd418 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -2189,16 +2189,68 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
> > >  	return 0;
> > >  }
> > >  
> > > -static void
> > > +/**
> > > + * intel_dp_compute_config_link_bpp_limits - compute output link bpp limits
> > > + * @intel_dp: intel DP
> > > + * @crtc_state: crtc state
> > > + * @dsc: DSC compression mode
> > > + * @limits: link configuration limits
> > > + *
> > > + * Calculates the output link min, max bpp values in @limits based on the
> > > + * pipe bpp range, @crtc_state and @dsc mode.
> > > + *
> > > + * Returns %true in case of success.
> > > + */
> > > +bool
> > > +intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
> > > +					const struct intel_crtc_state *crtc_state,
> > > +					bool dsc,
> > > +					struct link_config_limits *limits)
> > > +{
> > > +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> > > +	const struct drm_display_mode *adjusted_mode =
> > > +		&crtc_state->hw.adjusted_mode;
> > > +	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > > +	const struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> > > +	int max_link_bpp_x16;
> > > +
> > > +	max_link_bpp_x16 = to_bpp_x16(limits->pipe.max_bpp);
> > > +
> > > +	if (!dsc) {
> > > +		max_link_bpp_x16 = rounddown(max_link_bpp_x16, to_bpp_x16(2 * 3));
> > > +
> > > +		if (max_link_bpp_x16 < to_bpp_x16(limits->pipe.min_bpp))
> > > +			return false;
> > 
> > Quite a few to_bpp_x16()'s in there. Seems like it would a bit simpler
> > to just do that once at the end.
> 
> At the moment yes, but in a later patch max_link_bpp_x16 starts out as
> crtc_state->max_link_bpp_x16 limited value (with a non-zero fractional
> part).
> 
> > 
> > > +
> > > +		limits->link.min_bpp_x16 = to_bpp_x16(limits->pipe.min_bpp);
> > > +	} else {
> > > +		limits->link.min_bpp_x16 = 0;
> > 
> > Why is that zero? Don't we now have some helpers to fill
> > this stuff correctly?
> 
> At the moment it's calculated only later in
> intel_edp_dsc_compute_pipe_bpp() /  intel_dp_dsc_compute_pipe_bpp().
> 
> It should be inited already here, but I wanted to do that only as a
> follow-up, since there's been other DSC changes from Ankit still under
> review. Is that ok, adding a TODO: here?

Sure.

-- 
Ville Syrjälä
Intel
