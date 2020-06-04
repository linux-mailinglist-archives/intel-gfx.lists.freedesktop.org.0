Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E501EEE36
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 01:18:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CEBD6E7D5;
	Thu,  4 Jun 2020 23:18:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9FA86E7D5
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 23:18:50 +0000 (UTC)
IronPort-SDR: gF+1nmYrieobsU9Ys/3bs+xDIzWt324dmq9KO1fOxyLmV4C8Q8o9+SXE+hSgn2VWDrk/JSGQe1
 AV0ZX7Tc/h/w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 16:18:49 -0700
IronPort-SDR: Bd4iPB2Xeb0I7zdcaC+vvWGxTZ0arRtz/ZC7h6msU7y0Z4O+VasVKp3hAD3Z9B8c6hr7Z+4Cmi
 eiu6nOjjAKrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="259026619"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga008.fm.intel.com with ESMTP; 04 Jun 2020 16:18:49 -0700
Date: Thu, 4 Jun 2020 16:18:49 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200604231849.GE3023929@mdroper-desk1.amr.corp.intel.com>
References: <20200603211529.3005059-1-matthew.d.roper@intel.com>
 <20200603211529.3005059-8-matthew.d.roper@intel.com>
 <20200604182919.GB6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604182919.GB6112@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 07/15] drm/i915/rkl: Update TGP's pin
 mapping when paired with RKL
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

On Thu, Jun 04, 2020 at 09:29:19PM +0300, Ville Syrj=E4l=E4 wrote:
> On Wed, Jun 03, 2020 at 02:15:21PM -0700, Matt Roper wrote:
> > When TGP is paired with RKL it uses a different HPD pin mapping than
> > when paired with TGL.
> > =

> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_irq.c | 15 ++++++++++++++-
> >  1 file changed, 14 insertions(+), 1 deletion(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i91=
5_irq.c
> > index 490574669eaa..f3ea81a17352 100644
> > --- a/drivers/gpu/drm/i915/i915_irq.c
> > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > @@ -167,6 +167,17 @@ static const u32 hpd_tgp[HPD_NUM_PINS] =3D {
> >  	[HPD_PORT_I] =3D SDE_TC_HOTPLUG_ICP(PORT_TC6),
> >  };
> >  =

> > +/*
> > + * TGP when paired with RKL has different pin mappings than when paired
> > + * with TGL.
> > + */
> > +static const u32 hpd_rkl_tgp[HPD_NUM_PINS] =3D {
> > +	[HPD_PORT_A] =3D SDE_DDI_HOTPLUG_ICP(PORT_A),
> > +	[HPD_PORT_B] =3D SDE_DDI_HOTPLUG_ICP(PORT_B),
> > +	[HPD_PORT_C] =3D SDE_TC_HOTPLUG_ICP(PORT_TC1),
> > +	[HPD_PORT_D] =3D SDE_TC_HOTPLUG_ICP(PORT_TC2),
> > +};
> =

> Hmm. So basically it looks like we'd want to pick the hpd_pin
> based on the DDI rather than the PHY on this platform?

I may be misinterpreting the table on bspec 49181, but I *think* it
looks like we use the DDI when paired with a TGP PCH and the PHY when
paired with CMP PCH.  So if I just set the hpd_pin based on the DDI,
then I think that will break the CMP-based systems (although I haven't
tested on one of those, so I'm not 100% sure).


Matt

> =

> OK, I guess we need to remap somehow. The question is
> whether we want to do it before or after selecting hpd_pin...
> I think we would want to do it before, as otherwise the
> long_detect() stuff won't work right AFAICS. Or am I
> missing something?
> =

> Side note: we should probably convert the long_detect()
> switches to arrays just like we have for the isr bits here.
> Would potentially avoid having to touch that code every time
> they tweak these thinhs in hw.
> =

> And in fact it looks like icp already has all the same hpd
> pins as tgp, so I'm thinking we should just s/hpd_tgp/hpd_icp/
> and for icl/jsl we should remap hpd_pin as well. Oh and the
> mcc case would just need a slightly different mapping of
> port C -> HPD_PORT_D (aka. tc1).
> =

> This way all the hpd[] arrays and whatnot would just be based
> on the actual pch type and not based on what it happens to be
> paired with.
> =

> Anwyays, most of that is out of scope for this rkl stuff, so
> I guess for now just add a bit of logic to remap hpd_pin for rkl?
> =

> > +
> >  static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
> >  {
> >  	struct i915_hotplug *hpd =3D &dev_priv->hotplug;
> > @@ -196,7 +207,9 @@ static void intel_hpd_init_pins(struct drm_i915_pri=
vate *dev_priv)
> >  	if (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv))
> >  		return;
> >  =

> > -	if (HAS_PCH_TGP(dev_priv) || HAS_PCH_JSP(dev_priv))
> > +	if (HAS_PCH_TGP(dev_priv) && IS_ROCKETLAKE(dev_priv))
> > +		hpd->pch_hpd =3D hpd_rkl_tgp;
> > +	else if (HAS_PCH_TGP(dev_priv) || HAS_PCH_JSP(dev_priv))
> >  		hpd->pch_hpd =3D hpd_tgp;
> >  	else if (HAS_PCH_ICP(dev_priv) || HAS_PCH_MCC(dev_priv))
> >  		hpd->pch_hpd =3D hpd_icp;
> > -- =

> > 2.24.1
> =

> -- =

> Ville Syrj=E4l=E4
> Intel

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
