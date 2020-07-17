Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DF72241F4
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 19:37:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96A886E061;
	Fri, 17 Jul 2020 17:37:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 219C96E061
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 17:37:38 +0000 (UTC)
IronPort-SDR: vlHfnNYYuVTcxsby2MLLlXvgfH2Hb3BBAmKwZgkfMAhgt6lK9sA4FUX8/dGMctep+iOKePuQr0
 o7h4oaAJt9hQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="234497729"
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="234497729"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 10:37:37 -0700
IronPort-SDR: eKfMH0NxCz8b9wgOeHQwvlsKpuJToDKwO5ERjOAqaWYRibCKrf5QNiTPQhtXCX9K+0sCvefW/g
 aP1JeI4ZoG4Q==
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="460918461"
Received: from ideak-desk.fi.intel.com ([10.237.68.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 10:37:36 -0700
Date: Fri, 17 Jul 2020 20:37:23 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200717173723.GC693@ideak-desk.fi.intel.com>
References: <20200714163236.14105-1-imre.deak@intel.com>
 <20200717161039.GX6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200717161039.GX6112@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl+: Fix Combo PHY DPLL
 fractional divider for 38.4MHz ref clock
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 17, 2020 at 07:10:39PM +0300, Ville Syrj=E4l=E4 wrote:
> On Tue, Jul 14, 2020 at 07:32:36PM +0300, Imre Deak wrote:
> > Apply Display WA #22010492432 for combo PHY PLLs too. This should fix a
> > problem where the PLL output frequency is slightly off with the current
> > PLL fractional divider value.
> > =

> > I haven't seen an actual case where this causes a problem, but let's
> > follow the spec. It's also needed on some EHL platforms, but for that we
> > also need a way to distinguish the affected EHL SKUs, so I leave that
> > for a follow-up.
> > =

> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 54 +++++++++++++++++--
> >  1 file changed, 49 insertions(+), 5 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gp=
u/drm/i915/display/intel_dpll_mgr.c
> > index aeb6ee395cce..aee9101f5e7c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -2887,7 +2887,7 @@ static const struct icl_combo_pll_params icl_dp_c=
ombo_pll_24MHz_values[] =3D {
> >  };
> >  =

> >  =

> > -/* Also used for 38.4 MHz values. */
> > +/* On ICL also used for 38.4 MHz values. */
> >  static const struct icl_combo_pll_params icl_dp_combo_pll_19_2MHz_valu=
es[] =3D {
> >  	{ 540000,
> >  	  { .dco_integer =3D 0x1A5, .dco_fraction =3D 0x7000,		/* [0]: 5.4 */
> > @@ -2915,6 +2915,37 @@ static const struct icl_combo_pll_params icl_dp_=
combo_pll_19_2MHz_values[] =3D {
> >  	    .pdiv =3D 0x1 /* 2 */, .kdiv =3D 1, .qdiv_mode =3D 0, .qdiv_ratio=
 =3D 0, }, },
> >  };
> >  =

> > +/*
> > + * Display WA #22010492432: tgl
> > + * Divide the nominal .dco_fraction value by 2.
> > + */
> > +static const struct icl_combo_pll_params tgl_dp_combo_pll_38_4MHz_valu=
es[] =3D {
> > +	{ 540000,
> > +	  { .dco_integer =3D 0x1A5, .dco_fraction =3D 0x3800,		/* [0]: 5.4 */
> > +	    .pdiv =3D 0x2 /* 3 */, .kdiv =3D 1, .qdiv_mode =3D 0, .qdiv_ratio=
 =3D 0, }, },
> > +	{ 270000,
> > +	  { .dco_integer =3D 0x1A5, .dco_fraction =3D 0x3800,		/* [1]: 2.7 */
> > +	    .pdiv =3D 0x2 /* 3 */, .kdiv =3D 2, .qdiv_mode =3D 0, .qdiv_ratio=
 =3D 0, }, },
> > +	{ 162000,
> > +	  { .dco_integer =3D 0x1A5, .dco_fraction =3D 0x3800,		/* [2]: 1.62 */
> > +	    .pdiv =3D 0x4 /* 5 */, .kdiv =3D 2, .qdiv_mode =3D 0, .qdiv_ratio=
 =3D 0, }, },
> > +	{ 324000,
> > +	  { .dco_integer =3D 0x1A5, .dco_fraction =3D 0x3800,		/* [3]: 3.24 */
> > +	    .pdiv =3D 0x4 /* 5 */, .kdiv =3D 1, .qdiv_mode =3D 0, .qdiv_ratio=
 =3D 0, }, },
> > +	{ 216000,
> > +	  { .dco_integer =3D 0x1C2, .dco_fraction =3D 0x0000,		/* [4]: 2.16 */
> > +	    .pdiv =3D 0x1 /* 2 */, .kdiv =3D 2, .qdiv_mode =3D 1, .qdiv_ratio=
 =3D 2, }, },
> > +	{ 432000,
> > +	  { .dco_integer =3D 0x1C2, .dco_fraction =3D 0x0000,		/* [5]: 4.32 */
> > +	    .pdiv =3D 0x1 /* 2 */, .kdiv =3D 2, .qdiv_mode =3D 0, .qdiv_ratio=
 =3D 0, }, },
> > +	{ 648000,
> > +	  { .dco_integer =3D 0x1FA, .dco_fraction =3D 0x1000,		/* [6]: 6.48 */
> > +	    .pdiv =3D 0x2 /* 3 */, .kdiv =3D 1, .qdiv_mode =3D 0, .qdiv_ratio=
 =3D 0, }, },
> > +	{ 810000,
> > +	  { .dco_integer =3D 0x1A5, .dco_fraction =3D 0x3800,		/* [7]: 8.1 */
> > +	    .pdiv =3D 0x1 /* 2 */, .kdiv =3D 1, .qdiv_mode =3D 0, .qdiv_ratio=
 =3D 0, }, },
> > +};
> > +
> >  static const struct skl_wrpll_params icl_tbt_pll_24MHz_values =3D {
> >  	.dco_integer =3D 0x151, .dco_fraction =3D 0x4000,
> >  	.pdiv =3D 0x4 /* 5 */, .kdiv =3D 1, .qdiv_mode =3D 0, .qdiv_ratio =3D=
 0,
> > @@ -2950,13 +2981,26 @@ static bool icl_calc_dp_combo_pll(struct intel_=
crtc_state *crtc_state,
> >  				  struct skl_wrpll_params *pll_params)
> >  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->=
dev);
> > -	const struct icl_combo_pll_params *params =3D
> > -		dev_priv->dpll.ref_clks.nssc =3D=3D 24000 ?
> > -		icl_dp_combo_pll_24MHz_values :
> > -		icl_dp_combo_pll_19_2MHz_values;
> > +	const struct icl_combo_pll_params *params;
> >  	int clock =3D crtc_state->port_clock;
> >  	int i;
> >  =

> > +	switch (dev_priv->dpll.ref_clks.nssc) {
> > +	case 19200:
> > +		params =3D icl_dp_combo_pll_19_2MHz_values;
> > +		break;
> > +	case 24000:
> > +		params =3D icl_dp_combo_pll_24MHz_values;
> > +		break;
> > +	case 38400:
> > +		/* TODO: Apply WA #22010492432 on EHL too. */
> > +		if (IS_TIGERLAKE(dev_priv))
> > +			params =3D tgl_dp_combo_pll_38_4MHz_values;
> > +		else
> > +			params =3D icl_dp_combo_pll_19_2MHz_values;
> > +		break;
> > +	}
> =

> Hmm. This only takes care of DP AFAICS. What about HDMI?
> Also doesn't readout need some tweaking too?

Err, I missed those, thanks for catching it.

> Should we rather consider pushing this w/a deeper into
> the register progamming/readout code?

Yes, would be better to have it in a single spot. Could you confirm if
icl_calc_dpll_state() and __cnl_ddi_wrpll_get_freq() is the right place
for those, while relying on tbt returning the correct fixed freq for the
dot clock readout?

> =

> > +
> >  	for (i =3D 0; i < ARRAY_SIZE(icl_dp_combo_pll_24MHz_values); i++) {
> >  		if (clock =3D=3D params[i].clock) {
> >  			*pll_params =3D params[i].wrpll;
> > -- =

> > 2.23.1
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
