Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3420F40AE83
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 15:03:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 242116E49C;
	Tue, 14 Sep 2021 13:03:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8149F6E49C
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 13:03:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="221655278"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="221655278"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 06:03:45 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="470136305"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 06:03:42 -0700
Date: Tue, 14 Sep 2021 16:04:25 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Navare, Manasi D" <manasi.d.navare@intel.com>
Message-ID: <20210914130425.GA27850@intel.com>
References: <20210913143923.21119-1-vandita.kulkarni@intel.com>
 <YUBPJrm1IZWwukS5@intel.com>
 <9dd78b35e9bf41f8816a0e7dedf75c64@intel.com>
 <YUBT3ljaDzwtXkwq@intel.com> <20210914085958.GA27514@intel.com>
 <87k0jj2wjo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87k0jj2wjo.fsf@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Enable second VDSC engine
 for higher moderates
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

On Tue, Sep 14, 2021 at 03:04:11PM +0300, Jani Nikula wrote:
> On Tue, 14 Sep 2021, "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com> wrote:
> > On Tue, Sep 14, 2021 at 10:48:46AM +0300, Ville Syrjälä wrote:
> >> On Tue, Sep 14, 2021 at 07:31:46AM +0000, Kulkarni, Vandita wrote:
> >> > > -----Original Message-----
> >> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> > > Sent: Tuesday, September 14, 2021 12:59 PM
> >> > > To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> >> > > Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>;
> >> > > Navare, Manasi D <manasi.d.navare@intel.com>
> >> > > Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Enable second VDSC
> >> > > engine for higher moderates
> >> > > 
> >> > > On Mon, Sep 13, 2021 at 08:09:23PM +0530, Vandita Kulkarni wrote:
> >> > > > Each VDSC operates with 1ppc throughput, hence enable the second VDSC
> >> > > > engine when moderate is higher that the current cdclk.
> >> > > >
> >> > > > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> >> > > > ---
> >> > > >  drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++++++--
> >> > > >  1 file changed, 10 insertions(+), 2 deletions(-)
> >> > > >
> >> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> >> > > > b/drivers/gpu/drm/i915/display/intel_dp.c
> >> > > > index 161c33b2c869..55878f65f724 100644
> >> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> > > > @@ -70,6 +70,7 @@
> >> > > >  #include "intel_tc.h"
> >> > > >  #include "intel_vdsc.h"
> >> > > >  #include "intel_vrr.h"
> >> > > > +#include "intel_cdclk.h"
> >> > > >
> >> > > >  #define DP_DPRX_ESI_LEN 14
> >> > > >
> >> > > > @@ -1291,10 +1292,13 @@ static int intel_dp_dsc_compute_config(struct
> >> > > intel_dp *intel_dp,
> >> > > >  				       struct drm_connector_state *conn_state,
> >> > > >  				       struct link_config_limits *limits)  {
> >> > > > +	struct intel_cdclk_state *cdclk_state;
> >> > > >  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> >> > > >  	struct drm_i915_private *dev_priv = to_i915(dig_port-
> >> > > >base.base.dev);
> >> > > >  	const struct drm_display_mode *adjusted_mode =
> >> > > >  		&pipe_config->hw.adjusted_mode;
> >> > > > +	struct intel_atomic_state *state =
> >> > > > +				to_intel_atomic_state(pipe_config-
> >> > > >uapi.state);
> >> > > >  	int pipe_bpp;
> >> > > >  	int ret;
> >> > > >
> >> > > > @@ -1373,12 +1377,16 @@ static int intel_dp_dsc_compute_config(struct
> >> > > intel_dp *intel_dp,
> >> > > >  		}
> >> > > >  	}
> >> > > >
> >> > > > +	cdclk_state = intel_atomic_get_cdclk_state(state);
> >> > > > +	if (IS_ERR(cdclk_state))
> >> > > > +		return PTR_ERR(cdclk_state);
> >> > > > +
> >> > > >  	/*
> >> > > >  	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
> >> > > > -	 * is greater than the maximum Cdclock and if slice count is even
> >> > > > +	 * is greater than the current Cdclock and if slice count is even
> >> > > >  	 * then we need to use 2 VDSC instances.
> >> > > >  	 */
> >> > > > -	if (adjusted_mode->crtc_clock > dev_priv->max_cdclk_freq ||
> >> > > > +	if (adjusted_mode->crtc_clock > cdclk_state->actual.cdclk ||
> >> > > 
> >> > > This is wrong. We compute the cdclk based on the requirements of the
> >> > > mode/etc., not the other way around.
> >
> > According to BSpec guideline, we decide whether we enable or disable second VDSC engine, based
> > on that condition. As I understand that one is about DSC config calculation, based on CDCLK
> > which was calculated. 
> 
> Point is, at the time compute_config gets called, what guarantees are
> there that cdclk_state->actual.cdclk contains anything useful? This is
> the design we have.

That is actually good question, was willing to check that as well.

> 
> > If we bump up CDCLK, to avoid this, will we even then use a second VDSC ever?
> 
> I think we'll eventually need better logic than unconditionally bumping
> to max, and it needs to take *both* the cdclk and the number of dsc
> engines into account. The referenced bspec only has the vdsc clock
> perspective, not overall perspective.

What we need to clarify here is that how this is supposed to work in theory.
Basically same issue can be fixed by both increasing the CDCLK or enabling
2nd VDSC engine.
There should be some guideline telling us, how to prioritize. 
From overall perspective as I understand, by default, we are able to keep
CDCLK 2 times less than pixel rate(see intel_pixel_rate_to_cdclk), however
due to that VDSC limitation that it can use only 1 ppc this becomes, not
applicable anymore(at least as of BSpec 49259), so we have to increase amount
of VDSC instances then.

So the question is now - what is more optimal here?
Also if we bump up CDCLK(which we have done many times already in fact), we
then need to add some logic to intel_compute_min_cdclk to check if we are using
DSC or not, because otherwise we don't really need to do that.

Stan

> 
> BR,
> Jani.
> 
> > Another thing is that probably enabling second VDSC is cheaper in terms of power consumption,
> > than bumping up the CDCLK.
> >
> > Stan
> >
> >> > 
> >> > Okay , So you suggest that we set the cd clock to max when we have such requirement, than enabling the second engine?
> >> 
> >> That seems like the easiest solution. Another option might be to come up
> >> with some lower dotclock limit for the use of the second vdsc. But not
> >> sure we know where the tipping point is wrt. powr consumption.
> >> 
> >> -- 
> >> Ville Syrjälä
> >> Intel
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
