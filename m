Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1412E8216
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Dec 2020 22:01:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2650689C1B;
	Thu, 31 Dec 2020 21:01:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFB8189C1B
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Dec 2020 21:01:55 +0000 (UTC)
IronPort-SDR: Bd7f9KleXH82P0i7bIeFRTlm1V7eGYr/1iLQwtdBi9dxvmtwDVB9UPyHJFwow41BYXytPkvoPX
 kvSXLaYNme4A==
X-IronPort-AV: E=McAfee;i="6000,8403,9851"; a="156530236"
X-IronPort-AV: E=Sophos;i="5.78,464,1599548400"; d="scan'208";a="156530236"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2020 13:01:55 -0800
IronPort-SDR: ha4/s9rSELFG2NMX7XOcMO8lOJvRWprB7hxXHlV0pFRkmQch9Sw59vQRTIGdM20fM2PzWyyi1D
 pc/QUV5fKRvQ==
X-IronPort-AV: E=Sophos;i="5.78,464,1599548400"; d="scan'208";a="460941498"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2020 13:01:54 -0800
Date: Thu, 31 Dec 2020 13:01:53 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Surendrakumar Upadhyay,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Message-ID: <20201231210153.GF3894148@mdroper-desk1.amr.corp.intel.com>
References: <20201228061235.29384-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <20201231000103.GD3894148@mdroper-desk1.amr.corp.intel.com>
 <SN6PR11MB3421FDA5F04C9ED11F44E49CDFD60@SN6PR11MB3421.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR11MB3421FDA5F04C9ED11F44E49CDFD60@SN6PR11MB3421.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/cml : Add TGP PCH support
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandey, Hariom" <hariom.pandey@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 31, 2020 at 12:48:06AM -0800, Surendrakumar Upadhyay, Tejaskuma=
rX wrote:
> =

> =

> > -----Original Message-----
> > From: Matt Roper <matthew.d.roper@intel.com>
> > Sent: 31 December 2020 05:31
> > To: Surendrakumar Upadhyay, TejaskumarX
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Pandey, Hariom
> > <hariom.pandey@intel.com>
> > Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/cml : Add TGP PCH support
> >
> > On Mon, Dec 28, 2020 at 11:42:35AM +0530, Tejas Upadhyay wrote:
> > > We have TGP PCH support for Tigerlake and Rocketlake. Similarly now
> > > TGP PCH can be used with Cometlake CPU.
> >
> > Based on the 'compatibility' section of bspec 49181, I think the TGP PC=
H can
> > technically be compatible with any gen9bc platform, not just CML.
> > Although it seems unlikely that anyone is going to go back and create n=
ew
> > products with a SKL+TGP pairing or something at this point, it's still =
probably
> > best to write this patch based on GEN9_BC rather than CML.
> >
> =

> =

> Tejas : This patch is generated to support DELL's requirement where they =
are using CML CPU + TGP PCH. But I agree if we want to change CML with GEN9=
_BC. Please have a look at https://gitlab.freedesktop.org/drm/intel/-/issue=
s/2742 and this patch has been verified by DELL as working for all of their=
 platforms with CML CPU + TGP PCH (Off course it worked after I gave local =
workaround of Lee Shawn's patch https://patchwork.freedesktop.org/patch/401=
301/?series=3D83154&rev=3D5). Also this patch + https://patchwork.freedeskt=
op.org/patch/401301/?series=3D83154&rev=3D5 (Lee Shawn's patch reviewed by =
you) + Adding IS_COMETLAKE check to Lee Shawn's patch needs to be merged by=
 Jan 4th to complete upstreaming for CML CPU + TGP PCH. DELL is having crit=
ical requirement to finish upstreaming by Jan 4th.

The changes from Shawn are to make RKL (a gen12 platform) work with the
older gen9-style CMP PCH.  What you're doing here is making a gen9
platform work with a newer gen12-style TGP PCH.  Although those are
converses of each other, I don't think the driver changes should depend
on each other.  Shawn's series shouldn't be necessary for your work or
vice versa.  I'm not sure when Shawn plans to merge his series; I had
some further changes suggested, so he might be working on those before
merging his work.

I'm not sure what leads to the Jan 4th date, but assuming "finish
upstreaming" means that you want the patch to land in a final release
kernel by that date, there's pretty much no way that would be possible
at this point.  Getting patches like this reviewed and applied to an
Intel tree is only the first step along the maintainer chain that
eventually leads to a release from Linus or a stable kernel maintainer.
Plus when a customer says they want something upstream, one of the most
important things for them is that the patch has been fully reviewed and
tested and has a relatively high chance of being correct.  We can't rush
patches in to meet deadlines if we think they're only going to work in
certain situations and cause problems for other ones.

One other thing that I don't see addressed anywhere in this patch is
that the driver doesn't consider gen9 + TGP to be a valid combination
and will throw a warning in intel_pch_type() if detected.

> =

> > >
> > > Changes since V1 :
> > > - Matched HPD Pin mapping for PORT C and PORT D of CML CPU.
> > >
> > > Cc : Matt Roper <matthew.d.roper@intel.com> Cc : Ville Syrj=E4l=E4
> > > <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Tejas Upadhyay
> > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_ddi.c     | 7 +++++--
> > >  drivers/gpu/drm/i915/display/intel_display.c | 5 +++++
> > >  drivers/gpu/drm/i915/display/intel_hdmi.c    | 3 ++-
> > >  3 files changed, 12 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > index 17eaa56c5a99..181d60a5e145 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -5301,7 +5301,9 @@ static enum hpd_pin dg1_hpd_pin(struct
> > > drm_i915_private *dev_priv,  static enum hpd_pin tgl_hpd_pin(struct
> > drm_i915_private *dev_priv,
> > >  enum port port)
> > >  {
> > > -if (port >=3D PORT_TC1)
> > > +if (IS_COMETLAKE(dev_priv) && port >=3D PORT_C)
> > > +return HPD_PORT_TC1 + port + 1 - PORT_TC1;

Why is the offset written as "port + 1 - PORT_TC1?"  This platform
doesn't have TC ports as inputs, so it's completely unintuitive how
"+ 1 - PORT_TC1" would relate to PORT_C unless you go lookup the enum
values (plus the unexpected "+1" part is really easy to overlook as I
did the first time I looked through this patch).

This should just be written with a more straightforward offset as:

        return HPD_PORT_TC1 + port - PORT_C;

> > > +else if (port >=3D PORT_TC1)
> > >  return HPD_PORT_TC1 + port - PORT_TC1;
> > >  else
> > >  return HPD_PORT_A + port - PORT_A;
> > > @@ -5455,7 +5457,8 @@ void intel_ddi_init(struct drm_i915_private
> > > *dev_priv, enum port port)
> > >
> > >  if (IS_DG1(dev_priv))
> > >  encoder->hpd_pin =3D dg1_hpd_pin(dev_priv, port);
> > > -else if (IS_ROCKETLAKE(dev_priv))
> > > +else if (IS_ROCKETLAKE(dev_priv) || (IS_COMETLAKE(dev_priv) &&
> > > +     HAS_PCH_TGP(dev_priv)))
> > >  encoder->hpd_pin =3D rkl_hpd_pin(dev_priv, port);
> > >  else if (INTEL_GEN(dev_priv) >=3D 12)
> >
> > I'd suggest leaving the RKL condition alone since nothing here has anyt=
hing to
> > do with RKL.  Instead change the gen12+ condition to
> > HAS_PCH_TGP() and update the TGP-specific handler to do the port mapping
> > described on bspec 49181.
> >
> Tejas : Ok.
> =

> > Plus I don't think what you have here would map the ports correctly any=
way.
> > gen9 PORT_C/PORT_D would map to HPD_PORT_C/HPD_PORT_TC1 with the
> > logic here, whereas the bspec says they should map to
> > HPD_PORT_TC1/HPD_PORT_TC2.
> >
> Tejas : This have been taken care in tgl_hpd_pin() API with right HPD pin=
 mapping and its tested working on RVP as well as by DELL.
> =

> > >  encoder->hpd_pin =3D tgl_hpd_pin(dev_priv, port); diff --git
> > > a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index f2c48e5cdb43..47014471658f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -16163,6 +16163,11 @@ static void intel_setup_outputs(struct
> > drm_i915_private *dev_priv)
> > >  intel_ddi_init(dev_priv, PORT_F);
> > >
> > >  icl_dsi_init(dev_priv);
> > > +} else if (IS_COMETLAKE(dev_priv) && HAS_PCH_TGP(dev_priv)) {
> > > +intel_ddi_init(dev_priv, PORT_A);
> > > +intel_ddi_init(dev_priv, PORT_B);
> > > +intel_ddi_init(dev_priv, PORT_C);
> > > +intel_ddi_init(dev_priv, PORT_D);
> >
> > As noted before, this relates to gen9bc in general, not just CML.
> >
> Tejas : I will add GEN9BC check here with TGP specific handle.
> =

> > Is the only reason for this block because TGP's instance of SFUSE_STRAP
> > doesn't have output presence bits anymore?  If you want, you could keep
> > using the existing gen9bc block for consistency, but make the SFUSE_STR=
AP
> > checks themselves conditional on a platform that has the presence bits.=
  E.g.,
> >
> Tejas : I am not much familiar with STRAP, can I go ahead with above appr=
oach GEN9BC && TGP PCH check?

The output initialization is already a bit of a mess (and we plan to
overhaul the design soon), so adding special case conditions like this
just makes it more complicated and harder to follow.  I'm asking what
led you to create a new block rather than just letting the existing
block continue to be used.  I can see where TGP's lack of strap bits
could be a problem (since reading those bits as 0 would incorrectly lead
you to believe that the output didn't exist), but if that's the only
thing you were trying to avoid, then it's probably simpler to just
update the place we read the fuse value.  Were there other reasons you
also decided to create a new block?


> =

> >     /* ICP+ no longer has port presence bits */
> >     found =3D INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP ?
> >         ~0 : intel_de_read(dev_priv, SFUSE_STRAP);
> >
> > >  } else if (IS_GEN9_LP(dev_priv)) {
> > >  /*
> > >   * FIXME: Broxton doesn't support port detection via the diff -
> > -git
> > > a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > index c5959590562b..540c9d54b595 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > @@ -3174,7 +3174,8 @@ static u8 intel_hdmi_ddc_pin(struct
> > > intel_encoder *encoder)
> > >
> > >  if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_DG1)
> > >  ddc_pin =3D dg1_port_to_ddc_pin(dev_priv, port);
> > > -else if (IS_ROCKETLAKE(dev_priv))
> > > +else if (IS_ROCKETLAKE(dev_priv) || (IS_COMETLAKE(dev_priv) &&
> > > +     HAS_PCH_TGP(dev_priv)))
> > >  ddc_pin =3D rkl_port_to_ddc_pin(dev_priv, port);
> >
> > As above, none of the changes in this patch have any relation to RKL, s=
o it
> > doesn't make sense to update the RKL condition.  Instead just add the g=
en9bc
> > port mapping logic to icl_port_to_ddc_pin().
> >
> Tejas : Ok.
> > Plus, it looks like what you have here right now will make the same map=
ping
> > mistake for C and D that the HPD logic did.
> >
> Tejas : It is doing proper pin mapping. Its tested by us on RVP and by DE=
LL.

Are you sure this was fully tested and you didn't forget any of the
outputs?  The first thing the function does is

        WARN_ON(port =3D=3D PORT_C);

which means that you should have immediately started seeing warnings on
any CML platforms with an HDMI output on DDI-C (which is a valid setup).
What we should be warning on is PORT_A since gen9 platforms like CML
can't handle HDMI on port A.


Matt

> >
> > Matt
> >
> > >  else if (HAS_PCH_MCC(dev_priv))
> > >  ddc_pin =3D mcc_port_to_ddc_pin(dev_priv, port);
> > > --
> > > 2.28.0
> > >
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> >
> > --
> > Matt Roper
> > Graphics Software Engineer
> > VTT-OSGC Platform Enablement
> > Intel Corporation
> > (916) 356-2795

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
