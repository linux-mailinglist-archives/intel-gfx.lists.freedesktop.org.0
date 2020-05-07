Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B56891C8514
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 10:48:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 609506E09E;
	Thu,  7 May 2020 08:48:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 953526E09E
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 08:48:46 +0000 (UTC)
IronPort-SDR: 1cjOJmwfj0af6uhoJaAv5UAyk/LhYOTuVsk/hcklWlhtFybHd87joB66guH8jR85p95W/cY+b0
 JwrgR904SXAQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 01:48:46 -0700
IronPort-SDR: y2qsp9ixQBaJcqvfYJPEK7ahlYbJfzrsV+rsuQg8weM55S0QgeZrJidVMXMkrwR5KNt+SgEu8R
 czflMnfUI+iw==
X-IronPort-AV: E=Sophos;i="5.73,363,1583222400"; d="scan'208";a="407558227"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 01:48:44 -0700
Date: Thu, 7 May 2020 11:48:06 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200507084806.GB15324@ideak-desk.fi.intel.com>
References: <20200311155422.3043-1-ville.syrjala@linux.intel.com>
 <20200311155422.3043-3-ville.syrjala@linux.intel.com>
 <20200506160341.GB8813@ideak-desk.fi.intel.com>
 <20200507065313.GX6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507065313.GX6112@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 2/3] drm/i915: Stash hpd status bits
 under dev_priv
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

On Thu, May 07, 2020 at 09:53:13AM +0300, Ville Syrj=E4l=E4 wrote:
> On Wed, May 06, 2020 at 07:03:41PM +0300, Imre Deak wrote:
> > On Wed, Mar 11, 2020 at 05:54:21PM +0200, Ville Syrjala wrote:
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > =

> > > Instead of constnantly having to figure out which hpd status bit
> > > array to use let's store them under dev_priv.
> > > =

> > > Should perhaps take this further and stash even more stuff to
> > > make the hpd handling more abstract yet.
> > > =

> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_drv.h |   2 +
> > >  drivers/gpu/drm/i915/i915_irq.c | 198 ++++++++++++++++++------------=
--
> > >  2 files changed, 111 insertions(+), 89 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i=
915_drv.h
> > > index 19195bde4921..b5afbabf4c3b 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -149,6 +149,8 @@ enum hpd_pin {
> > >  struct i915_hotplug {
> > >  	struct delayed_work hotplug_work;
> > >  =

> > > +	const u32 *hpd, *pch_hpd;
> > > +
> > >  	struct {
> > >  		unsigned long last_jiffies;
> > >  		int count;
> > > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i=
915_irq.c
> > > index 9f0653cf0510..b95d952bd47d 100644
> > > --- a/drivers/gpu/drm/i915/i915_irq.c
> > > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > > @@ -124,7 +124,6 @@ static const u32 hpd_status_i915[HPD_NUM_PINS] =
=3D {
> > >  	[HPD_PORT_D] =3D PORTD_HOTPLUG_INT_STATUS,
> > >  };
> > >  =

> > > -/* BXT hpd list */
> > >  static const u32 hpd_bxt[HPD_NUM_PINS] =3D {
> > >  	[HPD_PORT_A] =3D BXT_DE_PORT_HP_DDIA,
> > >  	[HPD_PORT_B] =3D BXT_DE_PORT_HP_DDIB,
> > > @@ -168,6 +167,44 @@ static const u32 hpd_tgp[HPD_NUM_PINS] =3D {
> > >  	[HPD_PORT_I] =3D SDE_TC_HOTPLUG_ICP(PORT_TC6),
> > >  };
> > >  =

> > > +static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
> > > +{
> > > +	struct i915_hotplug *hpd =3D &dev_priv->hotplug;
> > > +
> > > +	if (HAS_GMCH(dev_priv)) {
> > > +		if (IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
> > > +		    IS_CHERRYVIEW(dev_priv))
> > > +			hpd->hpd =3D hpd_status_g4x;
> > > +		else
> > > +			hpd->hpd =3D hpd_status_i915;
> > > +		return;
> > > +	}
> > > +
> > > +	if (INTEL_GEN(dev_priv) >=3D 12)
> > > +		hpd->hpd =3D hpd_gen12;
> > > +	else if (INTEL_GEN(dev_priv) >=3D 11)
> > > +		hpd->hpd =3D hpd_gen11;
> > > +	else if (IS_GEN9_LP(dev_priv))
> > > +		hpd->hpd =3D hpd_bxt;
> > > +	else if (INTEL_GEN(dev_priv) >=3D 8)
> > > +		hpd->hpd =3D hpd_bdw;
> > > +	else if (INTEL_GEN(dev_priv) >=3D 7)
> > > +		hpd->hpd =3D hpd_ivb;
> > > +	else
> > > +		hpd->hpd =3D hpd_ilk;
> > > +
> > > +	if (HAS_PCH_TGP(dev_priv) || HAS_PCH_JSP(dev_priv))
> > > +		hpd->pch_hpd =3D hpd_tgp;
> > > +	else if (HAS_PCH_ICP(dev_priv) || HAS_PCH_MCC(dev_priv))
> > > +		hpd->pch_hpd =3D hpd_icp;
> > > +	else if (HAS_PCH_SPT(dev_priv))
> > =

> > What about CNP?
> =

> Argh. We have too many of these. Do we even need all of them?

Not sure, but atm it's special cased in a few places (ddc/hpd setup, and
rawclk readout). Here it's just the same as SPT.

> > > +		hpd->pch_hpd =3D hpd_spt;
> > > +	else if (HAS_PCH_LPT(dev_priv) || HAS_PCH_CPT(dev_priv))
> > > +		hpd->pch_hpd =3D hpd_cpt;
> > > +	else if (HAS_PCH_IBX(dev_priv))
> > > +		hpd->pch_hpd =3D hpd_ibx;
> > =

> > Can we add MISSING_CASE for PCH platforms?
> =

> else if (HAS_PCH_SPLIT())
> 	MISSING_CASE(INTEL_PCH_TYPE())
> ?

Yes, with && !PCH_NOP.

> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
