Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B3528046D
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Oct 2020 19:01:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94BDF6E05D;
	Thu,  1 Oct 2020 17:01:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB7516E05D
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Oct 2020 17:01:05 +0000 (UTC)
IronPort-SDR: VbMWAVbsYJQoEjfs16NTMDORv42IfgSehQsxZ8w17D912ms09Iwqwi8Sf5mFNkQg6eiKookpZE
 9W56Z+9bSxXA==
X-IronPort-AV: E=McAfee;i="6000,8403,9761"; a="160192644"
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="160192644"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 10:01:02 -0700
IronPort-SDR: D5S9hPG4oVvcU84vg68X4MRWPLVU3IiHjhW0Przy9tsBpjOdzaAWmLsJya8hlH3T0PaJlI17FU
 2AYWL+05E2lA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="346150700"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 01 Oct 2020 10:01:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 01 Oct 2020 20:00:59 +0300
Date: Thu, 1 Oct 2020 20:00:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20201001170059.GX6112@intel.com>
References: <20200929002929.783620-1-imre.deak@intel.com>
 <20200929002929.783620-4-imre.deak@intel.com>
 <20201001164429.GV6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201001164429.GV6112@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
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

I think if we do this we should do at init time for all such tables.
Ideally we'd do it at compile time but no constexpr in C :(

> Also, shouldn't the state checker catch this anyway?
> =

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

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
