Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B214040AA0F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 10:59:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C1FF89B0B;
	Tue, 14 Sep 2021 08:59:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2C0789B0B
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 08:59:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="282932752"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="282932752"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 01:59:16 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="471902616"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 01:59:14 -0700
Date: Tue, 14 Sep 2021 11:59:58 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>,
 "Navare, Manasi D" <manasi.d.navare@intel.com>
Message-ID: <20210914085958.GA27514@intel.com>
References: <20210913143923.21119-1-vandita.kulkarni@intel.com>
 <YUBPJrm1IZWwukS5@intel.com>
 <9dd78b35e9bf41f8816a0e7dedf75c64@intel.com>
 <YUBT3ljaDzwtXkwq@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YUBT3ljaDzwtXkwq@intel.com>
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

On Tue, Sep 14, 2021 at 10:48:46AM +0300, Ville Syrjälä wrote:
> On Tue, Sep 14, 2021 at 07:31:46AM +0000, Kulkarni, Vandita wrote:
> > > -----Original Message-----
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > Sent: Tuesday, September 14, 2021 12:59 PM
> > > To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>;
> > > Navare, Manasi D <manasi.d.navare@intel.com>
> > > Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Enable second VDSC
> > > engine for higher moderates
> > > 
> > > On Mon, Sep 13, 2021 at 08:09:23PM +0530, Vandita Kulkarni wrote:
> > > > Each VDSC operates with 1ppc throughput, hence enable the second VDSC
> > > > engine when moderate is higher that the current cdclk.
> > > >
> > > > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++++++--
> > > >  1 file changed, 10 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > index 161c33b2c869..55878f65f724 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -70,6 +70,7 @@
> > > >  #include "intel_tc.h"
> > > >  #include "intel_vdsc.h"
> > > >  #include "intel_vrr.h"
> > > > +#include "intel_cdclk.h"
> > > >
> > > >  #define DP_DPRX_ESI_LEN 14
> > > >
> > > > @@ -1291,10 +1292,13 @@ static int intel_dp_dsc_compute_config(struct
> > > intel_dp *intel_dp,
> > > >  				       struct drm_connector_state *conn_state,
> > > >  				       struct link_config_limits *limits)  {
> > > > +	struct intel_cdclk_state *cdclk_state;
> > > >  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> > > >  	struct drm_i915_private *dev_priv = to_i915(dig_port-
> > > >base.base.dev);
> > > >  	const struct drm_display_mode *adjusted_mode =
> > > >  		&pipe_config->hw.adjusted_mode;
> > > > +	struct intel_atomic_state *state =
> > > > +				to_intel_atomic_state(pipe_config-
> > > >uapi.state);
> > > >  	int pipe_bpp;
> > > >  	int ret;
> > > >
> > > > @@ -1373,12 +1377,16 @@ static int intel_dp_dsc_compute_config(struct
> > > intel_dp *intel_dp,
> > > >  		}
> > > >  	}
> > > >
> > > > +	cdclk_state = intel_atomic_get_cdclk_state(state);
> > > > +	if (IS_ERR(cdclk_state))
> > > > +		return PTR_ERR(cdclk_state);
> > > > +
> > > >  	/*
> > > >  	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
> > > > -	 * is greater than the maximum Cdclock and if slice count is even
> > > > +	 * is greater than the current Cdclock and if slice count is even
> > > >  	 * then we need to use 2 VDSC instances.
> > > >  	 */
> > > > -	if (adjusted_mode->crtc_clock > dev_priv->max_cdclk_freq ||
> > > > +	if (adjusted_mode->crtc_clock > cdclk_state->actual.cdclk ||
> > > 
> > > This is wrong. We compute the cdclk based on the requirements of the
> > > mode/etc., not the other way around.

According to BSpec guideline, we decide whether we enable or disable second VDSC engine, based
on that condition. As I understand that one is about DSC config calculation, based on CDCLK
which was calculated. 

If we bump up CDCLK, to avoid this, will we even then use a second VDSC ever?

Another thing is that probably enabling second VDSC is cheaper in terms of power consumption,
than bumping up the CDCLK.

Stan

> > 
> > Okay , So you suggest that we set the cd clock to max when we have such requirement, than enabling the second engine?
> 
> That seems like the easiest solution. Another option might be to come up
> with some lower dotclock limit for the use of the second vdsc. But not
> sure we know where the tipping point is wrt. powr consumption.
> 
> -- 
> Ville Syrjälä
> Intel
