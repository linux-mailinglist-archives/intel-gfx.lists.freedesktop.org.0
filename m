Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B79A28430B
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 01:50:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A3FD6E1A8;
	Mon,  5 Oct 2020 23:50:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A50286E1A8
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Oct 2020 23:50:28 +0000 (UTC)
IronPort-SDR: B++iGemBGlZNx71NDlK/wrZT+jql3pOUvoddDF1p4HQeIC1RoqoZ4ocoADOnmRZMDGVsTAi35d
 WKkf9ajSyOxA==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="228310476"
X-IronPort-AV: E=Sophos;i="5.77,341,1596524400"; d="scan'208";a="228310476"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2020 16:04:38 -0700
IronPort-SDR: 3Xegpdh8S3zqsZoVpxKbLG5J3xiqAESdV/xhN/UuU4NkVCP7JQkFV4mqFb4Kwp7oKqC7dukA5J
 H3SpNu90n49Q==
X-IronPort-AV: E=Sophos;i="5.77,340,1596524400"; d="scan'208";a="460059543"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2020 13:26:20 -0700
Date: Mon, 5 Oct 2020 23:26:05 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20201005202605.GA1378377@ideak-desk.fi.intel.com>
References: <20201003001846.1271151-1-imre.deak@intel.com>
 <20201003001846.1271151-2-imre.deak@intel.com>
 <20201005200819.GJ6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201005200819.GJ6112@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/skl: Work around incorrect
 BIOS WRPLL PDIV programming
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

On Mon, Oct 05, 2020 at 11:08:19PM +0300, Ville Syrj=E4l=E4 wrote:
> On Sat, Oct 03, 2020 at 03:18:42AM +0300, Imre Deak wrote:
> > The BIOS of at least one ASUS-Z170M system with an SKL I have programs
> > the 101b WRPLL PDIV divider value, which is the encoding for PDIV=3D7 w=
ith
> > bit#0 incorrectly set.
> > =

> > This happens with the
> > =

> > "3840x2160": 30 262750 3840 3888 3920 4000 2160 2163 2168 2191 0x48 0x9
> > =

> > HDMI mode (scaled from a 1024x768 src fb) set by BIOS and the
> > =

> > ref_clock=3D24000, dco_integer=3D383, dco_fraction=3D5802, pdiv=3D7, qd=
iv=3D1, kdiv=3D1
> > =

> > WRPLL parameters (assuming PDIV=3D7 was the intended setting). This
> > corresponds to 262749 PLL frequency/port clock.
> > =

> > Later the driver sets the same mode for which it calculates the same
> > dco_int/dco_frac/div WRPLL parameters (with the correct PDIV=3D7 encodi=
ng).
> > =

> > Based on the above, let's assume that PDIV=3D7 was intended and the HW
> > just ignores bit#0 in the PDIV register field for this setting, treating
> > 100b and 101b encodings the same way.
> > =

> > While at it add the MISSING_CASE() for the p0,p2 divider decodings.
> > =

> > v2: (Ville)
> > - Add a define for the incorrect divider value.
> > - Emit only a debug message when detecting the incorrect divider value.
> > - Use fallthrough from the incorrect divider value case.
> > - Add the MISSING_CASE()s.
> > =

> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 14 ++++++++++++++
> >  drivers/gpu/drm/i915/i915_reg.h               |  1 +
> >  2 files changed, 15 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gp=
u/drm/i915/display/intel_dpll_mgr.c
> > index e08684e34078..61cb558c60d1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -1602,12 +1602,26 @@ static int skl_ddi_wrpll_get_freq(struct drm_i9=
15_private *i915,
> >  	case DPLL_CFGCR2_PDIV_3:
> >  		p0 =3D 3;
> >  		break;
> > +	default:
> > +		if (p0 =3D=3D DPLL_CFGCR2_PDIV_7_INVALID)
> =

> Why not just 'case DPLL_CFGCR2_PDIV_7_INVALID:' ?

So we can use fallthrough for both this one and the default case.

> =

> > +			/*
> > +			 * Incorrect ASUS-Z170M BIOS setting, the HW seems to ignore bit#0,
> > +			 * handling it the same way as PDIV_7.
> > +			 */
> > +			drm_dbg_kms(&i915->drm, "Invalid WRPLL PDIV divider value, fixing i=
t.\n");
> > +		else
> > +			MISSING_CASE(p0);
> > +
> > +		fallthrough;
> >  	case DPLL_CFGCR2_PDIV_7:
> >  		p0 =3D 7;
> >  		break;
> >  	}
> >  =

> >  	switch (p2) {
> > +	default:
> > +		MISSING_CASE(p2);
> > +		fallthrough;
> =

> Is there a specific reason we fall through to the 5 and 7 cases for
> bogus values?

Just to default to dividers that result in the minimum PLL freq.

> =

> >  	case DPLL_CFGCR2_KDIV_5:
> >  		p2 =3D 5;
> >  		break;
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i91=
5_reg.h
> > index 88c215cf97d4..d911583526db 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -10261,6 +10261,7 @@ enum skl_power_gate {
> >  #define  DPLL_CFGCR2_PDIV_2 (1 << 2)
> >  #define  DPLL_CFGCR2_PDIV_3 (2 << 2)
> >  #define  DPLL_CFGCR2_PDIV_7 (4 << 2)
> > +#define  DPLL_CFGCR2_PDIV_7_INVALID	(5 << 2)
> >  #define  DPLL_CFGCR2_CENTRAL_FREQ_MASK	(3)
> >  =

> >  #define DPLL_CFGCR1(id)	_MMIO_PIPE((id) - SKL_DPLL1, _DPLL1_CFGCR1, _D=
PLL2_CFGCR1)
> > -- =

> > 2.25.1
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
