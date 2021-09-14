Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDAC740A888
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 09:48:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03C1E6E422;
	Tue, 14 Sep 2021 07:48:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5BB96E422
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 07:48:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="221967679"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="221967679"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 00:48:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="515813782"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 14 Sep 2021 00:48:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Sep 2021 10:48:46 +0300
Date: Tue, 14 Sep 2021 10:48:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>,
 "Navare, Manasi D" <manasi.d.navare@intel.com>
Message-ID: <YUBT3ljaDzwtXkwq@intel.com>
References: <20210913143923.21119-1-vandita.kulkarni@intel.com>
 <YUBPJrm1IZWwukS5@intel.com>
 <9dd78b35e9bf41f8816a0e7dedf75c64@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9dd78b35e9bf41f8816a0e7dedf75c64@intel.com>
X-Patchwork-Hint: comment
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

On Tue, Sep 14, 2021 at 07:31:46AM +0000, Kulkarni, Vandita wrote:
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Tuesday, September 14, 2021 12:59 PM
> > To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>;
> > Navare, Manasi D <manasi.d.navare@intel.com>
> > Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Enable second VDSC
> > engine for higher moderates
> > 
> > On Mon, Sep 13, 2021 at 08:09:23PM +0530, Vandita Kulkarni wrote:
> > > Each VDSC operates with 1ppc throughput, hence enable the second VDSC
> > > engine when moderate is higher that the current cdclk.
> > >
> > > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++++++--
> > >  1 file changed, 10 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 161c33b2c869..55878f65f724 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -70,6 +70,7 @@
> > >  #include "intel_tc.h"
> > >  #include "intel_vdsc.h"
> > >  #include "intel_vrr.h"
> > > +#include "intel_cdclk.h"
> > >
> > >  #define DP_DPRX_ESI_LEN 14
> > >
> > > @@ -1291,10 +1292,13 @@ static int intel_dp_dsc_compute_config(struct
> > intel_dp *intel_dp,
> > >  				       struct drm_connector_state *conn_state,
> > >  				       struct link_config_limits *limits)  {
> > > +	struct intel_cdclk_state *cdclk_state;
> > >  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> > >  	struct drm_i915_private *dev_priv = to_i915(dig_port-
> > >base.base.dev);
> > >  	const struct drm_display_mode *adjusted_mode =
> > >  		&pipe_config->hw.adjusted_mode;
> > > +	struct intel_atomic_state *state =
> > > +				to_intel_atomic_state(pipe_config-
> > >uapi.state);
> > >  	int pipe_bpp;
> > >  	int ret;
> > >
> > > @@ -1373,12 +1377,16 @@ static int intel_dp_dsc_compute_config(struct
> > intel_dp *intel_dp,
> > >  		}
> > >  	}
> > >
> > > +	cdclk_state = intel_atomic_get_cdclk_state(state);
> > > +	if (IS_ERR(cdclk_state))
> > > +		return PTR_ERR(cdclk_state);
> > > +
> > >  	/*
> > >  	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
> > > -	 * is greater than the maximum Cdclock and if slice count is even
> > > +	 * is greater than the current Cdclock and if slice count is even
> > >  	 * then we need to use 2 VDSC instances.
> > >  	 */
> > > -	if (adjusted_mode->crtc_clock > dev_priv->max_cdclk_freq ||
> > > +	if (adjusted_mode->crtc_clock > cdclk_state->actual.cdclk ||
> > 
> > This is wrong. We compute the cdclk based on the requirements of the
> > mode/etc., not the other way around.
> 
> Okay , So you suggest that we set the cd clock to max when we have such requirement, than enabling the second engine?

That seems like the easiest solution. Another option might be to come up
with some lower dotclock limit for the use of the second vdsc. But not
sure we know where the tipping point is wrt. powr consumption.

-- 
Ville Syrjälä
Intel
