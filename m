Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 204D1280450
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Oct 2020 18:53:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27C926E8D7;
	Thu,  1 Oct 2020 16:53:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D29EE6E8D7
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Oct 2020 16:53:45 +0000 (UTC)
IronPort-SDR: IaY4j46rpxU5iNxUMs3UcSt8sGI/fc/GGLaAZzCpj5T6SzYArrBoaXz2zeVVVpO8icnakLMx2Y
 JItZDD7xoZ9Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9761"; a="162019863"
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="162019863"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 09:53:41 -0700
IronPort-SDR: ikK7B5R6Lv5s04mA5ULvOVJxpaxalAJXSnqGJdQbH9ZfKItkNhy383GxU8dyjfbHqu/2ujgliO
 R1HbIWy5mh3g==
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="504447097"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 09:53:39 -0700
Date: Thu, 1 Oct 2020 19:53:36 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20201001165336.GC897207@ideak-desk.fi.intel.com>
References: <20200929002929.783620-1-imre.deak@intel.com>
 <20200929002929.783620-2-imre.deak@intel.com>
 <20201001164148.GU6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201001164148.GU6112@intel.com>
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

On Thu, Oct 01, 2020 at 07:41:48PM +0300, Ville Syrj=E4l=E4 wrote:
> On Tue, Sep 29, 2020 at 03:29:25AM +0300, Imre Deak wrote:
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

> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 8 ++++++++
> >  drivers/gpu/drm/i915/i915_reg.h               | 1 +
> >  2 files changed, 9 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gp=
u/drm/i915/display/intel_dpll_mgr.c
> > index e08684e34078..095b53fe3a21 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -1602,6 +1602,14 @@ static int skl_ddi_wrpll_get_freq(struct drm_i91=
5_private *i915,
> >  	case DPLL_CFGCR2_PDIV_3:
> >  		p0 =3D 3;
> >  		break;
> > +	case DPLL_CFGCR2_PDIV_7 | (1 << DPLL_CFGCR2_PDIV_SHIFT):
> =

> Maybe we want a define for this?

Ok.

> =

> > +		/*
> > +		 * Incorrect ASUS-Z170M BIOS setting, the HW seems to ignore bit#0,
> > +		 * handling it the same way as PDIV_7.
> > +		 */
> > +		drm_err(&i915->drm, "Invalid WRPLL PDIV divider value, fixing it.\n"=
);
> =

> I wonder how many bug reports that will generate. Might want to make
> it debug insteead.

I thought having reports for this is actually good, since BIOS vendors
should be notified then, but can change this to debug.

> =

> > +		p0 =3D 7;
> > +		break;
> =

> Or maybe fallthrough?

can do if you have an idea how to do that with the MISSING_CASE() added
later setting pdiv=3D7 by default.

> =

> >  	case DPLL_CFGCR2_PDIV_7:
> >  		p0 =3D 7;
> >  		break;
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i91=
5_reg.h
> > index 47730a176698..f70e45bd3810 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -10253,6 +10253,7 @@ enum skl_power_gate {
> >  #define  DPLL_CFGCR2_KDIV_3 (2 << 5)
> >  #define  DPLL_CFGCR2_KDIV_1 (3 << 5)
> >  #define  DPLL_CFGCR2_PDIV_MASK		(7 << 2)
> > +#define  DPLL_CFGCR2_PDIV_SHIFT		2
> >  #define  DPLL_CFGCR2_PDIV(x)		((x) << 2)
> >  #define  DPLL_CFGCR2_PDIV_1 (0 << 2)
> >  #define  DPLL_CFGCR2_PDIV_2 (1 << 2)
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
