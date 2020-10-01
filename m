Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE88280545
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Oct 2020 19:31:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D36C6E128;
	Thu,  1 Oct 2020 17:31:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D690C6E128
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Oct 2020 17:31:54 +0000 (UTC)
IronPort-SDR: VGEubPQspvSO4qeRVOVkf1CoZOYd91TZld+Uy30YZZ+DpV0pQopzV3dHBD5fk9l1zQPm+UPNDo
 b3F8v4BO3xJQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9761"; a="163648072"
X-IronPort-AV: E=Sophos;i="5.77,324,1596524400"; d="scan'208";a="163648072"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 10:31:50 -0700
IronPort-SDR: RLI7SnjEl/iwUp2OnvTTrRNaJ3qtRUjnpeFQC70j6Mt6FyvUMoUikRP9M9HM3aS+cF+62IC4j6
 uD5a+VNNQyGw==
X-IronPort-AV: E=Sophos;i="5.77,324,1596524400"; d="scan'208";a="504634598"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 10:31:49 -0700
Date: Thu, 1 Oct 2020 20:31:45 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20201001173145.GD897207@ideak-desk.fi.intel.com>
References: <20200929002929.783620-1-imre.deak@intel.com>
 <20200929002929.783620-4-imre.deak@intel.com>
 <20201001164429.GV6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201001164429.GV6112@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/icl: Cross check the combo PLL
 WRPLL parameters wrt. hard-coded PLL freqs
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

On Thu, Oct 01, 2020 at 07:44:29PM +0300, Ville Syrj=E4l=E4 wrote:
> On Tue, Sep 29, 2020 at 03:29:27AM +0300, Imre Deak wrote:
> > When selecting the WRPLL dividers for a given port clock/PLL freq, the
> > hard-coded PLL freq in a table entry can be calculated using the rest of
> > parameters in the same entry. Cross-check if the hard coded values match
> > what we calculate with the formula.
> =

> We've never done this on any other plaform I think. Why is this special?

clock in icl_combo_pll_params is already defined by WRPLL params in the
same entry along with refclock. The driver needs to calculate already
this same clock when reading out the PLL HW state, so I thought it makes
sense to determine clock from WRPLL params when looking up an entry from
the PLL params table.

It's also used by the last patch in the patchset that needs to calculate
the clock both with the fractional divider WA applied and not applied.

> Also, shouldn't the state checker catch this anyway?

Afaics the PLL state verification only checks if the calculated /
programmed WRPLL parameters match what we read out.  But the point in
this patch was only to make the table lookup and the clock calculation
during HW readout uniform.

> > =

> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 26 ++++++++++++++++++-
> >  1 file changed, 25 insertions(+), 1 deletion(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gp=
u/drm/i915/display/intel_dpll_mgr.c
> > index e3370c8dccc8..ded2b2dfe319 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -3002,6 +3002,30 @@ static const struct skl_wrpll_params tgl_tbt_pll=
_38_4MHz_values =3D {
> >  	.pdiv =3D 0, .kdiv =3D 0, .qdiv_mode =3D 0, .qdiv_ratio =3D 0,
> >  };
> >  =

> > +static int icl_wrpll_ref_clock(struct drm_i915_private *i915);
> > +
> > +static bool icl_dp_combo_pll_clock_match(struct drm_i915_private *i915=
, int clock,
> > +					 const struct icl_combo_pll_params *p)
> > +{
> > +	int ref_clock =3D icl_wrpll_ref_clock(i915);
> > +	int pll_freq;
> > +	u32 pdiv;
> > +	u32 qdiv;
> > +	u32 kdiv;
> > +
> > +	cnl_wrpll_decode_divs(&p->wrpll, &pdiv, &qdiv, &kdiv);
> > +
> > +	pll_freq =3D skl_wrpll_calc_freq(ref_clock,
> > +				       p->wrpll.dco_integer, p->wrpll.dco_fraction,
> > +				       pdiv, qdiv, kdiv);
> > +	drm_WARN_ON(&i915->drm, pll_freq !=3D p->clock);
> > +
> > +	if (clock =3D=3D pll_freq)
> > +		return true;
> > +
> > +	return false;
> > +}
> > +
> >  static bool icl_calc_dp_combo_pll(struct intel_crtc_state *crtc_state,
> >  				  struct skl_wrpll_params *pll_params)
> >  {
> > @@ -3014,7 +3038,7 @@ static bool icl_calc_dp_combo_pll(struct intel_cr=
tc_state *crtc_state,
> >  	int i;
> >  =

> >  	for (i =3D 0; i < ARRAY_SIZE(icl_dp_combo_pll_24MHz_values); i++) {
> > -		if (clock =3D=3D params[i].clock) {
> > +		if (icl_dp_combo_pll_clock_match(dev_priv, clock, &params[i])) {
> >  			*pll_params =3D params[i].wrpll;
> >  			return true;
> >  		}
> > -- =

> > 2.25.1
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
