Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C727263684
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Sep 2020 21:17:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B545E6F49E;
	Wed,  9 Sep 2020 19:17:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9D176F49E
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Sep 2020 19:17:09 +0000 (UTC)
IronPort-SDR: jxbrBMaBITJ7gm9OmJXAf6rAsVxCy9dASKg2GmpEgWH+FBf+KciwmAMZSMgv2seJtmRRSrFQgA
 TPa1uGCybqZg==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="137924074"
X-IronPort-AV: E=Sophos;i="5.76,409,1592895600"; d="scan'208";a="137924074"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2020 12:17:09 -0700
IronPort-SDR: rP31+M9WUA6QWjiyebgS77++ipmPsabGFpXtmpO0AovQSaeYJmipNI3b+fEEhC4UbZLfr+BjAB
 qpaaK5s27a3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,409,1592895600"; d="scan'208";a="407542638"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 09 Sep 2020 12:17:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Sep 2020 22:17:06 +0300
Date: Wed, 9 Sep 2020 22:17:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200909191706.GQ6112@intel.com>
References: <20200630215601.28557-12-ville.syrjala@linux.intel.com>
 <d716a2310227ceca42abc51a75cae51fed79dc62.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d716a2310227ceca42abc51a75cae51fed79dc62.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [11/12] drm/i915: Introduce intel_hpd_hotplug_irqs()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 09, 2020 at 12:46:56AM +0000, Souza, Jose wrote:
> On Wed, 2020-07-01 at 00:56 +0300, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <
> > ville.syrjala@linux.intel.com
> > >
> > =

> > Introduce intel_hpd_hotplug_irqs() as a partner to
> > intel_hpd_enabled_irqs(). There's no need to care about the
> > encoders which we're not exposing, so we can avoid hardocoding
> =

> hard-coding
> =

> > the masks in various places.
> =

> Pretty nice patch, you only missed to do this change in the irq_handlers =
so we could nuke the SDE_DDI_MASKs, or are you planning to do this in a
> follow up patch? If later consider this

I didn't decide yet how to do that part. One option is to compute the
mask there too, but the other option to just use the full mask there
and rely on the fact that the IMR will keep the unused bits clear
in the IIR. Not sure if the latter approach is quite as scalable though.
Eg. in theory some new PCH type might repurpose some of the bits for
some totally different use.

> =

> Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> =

> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <
> > ville.syrjala@linux.intel.com
> > >
> > ---
> >  drivers/gpu/drm/i915/i915_irq.c | 50 +++++++++++++++------------------
> >  1 file changed, 23 insertions(+), 27 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i91=
5_irq.c
> > index 95ab4432a87d..b8a6a21f4c54 100644
> > --- a/drivers/gpu/drm/i915/i915_irq.c
> > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > @@ -2943,6 +2943,18 @@ static u32 intel_hpd_enabled_irqs(struct drm_i91=
5_private *dev_priv,
> >  	return enabled_irqs;
> >  }
> >  =

> > +static u32 intel_hpd_hotplug_irqs(struct drm_i915_private *dev_priv,
> > +				  const u32 hpd[HPD_NUM_PINS])
> > +{
> > +	struct intel_encoder *encoder;
> > +	u32 hotplug_irqs =3D 0;
> > +
> > +	for_each_intel_encoder(&dev_priv->drm, encoder)
> > +		hotplug_irqs |=3D hpd[encoder->hpd_pin];
> > +
> > +	return hotplug_irqs;
> > +}
> > +
> >  static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
> >  {
> >  	u32 hotplug;
> > @@ -2972,12 +2984,8 @@ static void ibx_hpd_irq_setup(struct drm_i915_pr=
ivate *dev_priv)
> >  {
> >  	u32 hotplug_irqs, enabled_irqs;
> >  =

> > -	if (HAS_PCH_IBX(dev_priv))
> > -		hotplug_irqs =3D SDE_HOTPLUG_MASK;
> > -	else
> > -		hotplug_irqs =3D SDE_HOTPLUG_MASK_CPT;
> > -
> >  	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.p=
ch_hpd);
> > +	hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.p=
ch_hpd);
> >  =

> >  	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
> >  =

> > @@ -3005,13 +3013,12 @@ static void icp_tc_hpd_detection_setup(struct d=
rm_i915_private *dev_priv,
> >  }
> >  =

> >  static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv,
> > -			      u32 sde_ddi_mask, u32 sde_tc_mask,
> >  			      u32 ddi_enable_mask, u32 tc_enable_mask)
> >  {
> >  	u32 hotplug_irqs, enabled_irqs;
> >  =

> > -	hotplug_irqs =3D sde_ddi_mask | sde_tc_mask;
> >  	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.p=
ch_hpd);
> > +	hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.p=
ch_hpd);
> >  =

> >  	I915_WRITE(SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
> >  =

> > @@ -3029,7 +3036,6 @@ static void icp_hpd_irq_setup(struct drm_i915_pri=
vate *dev_priv,
> >  static void mcc_hpd_irq_setup(struct drm_i915_private *dev_priv)
> >  {
> >  	icp_hpd_irq_setup(dev_priv,
> > -			  SDE_DDI_MASK_ICP, SDE_TC_HOTPLUG_ICP(PORT_TC1),
> >  			  ICP_DDI_HPD_ENABLE_MASK, ICP_TC_HPD_ENABLE(PORT_TC1));
> >  }
> >  =

> > @@ -3041,7 +3047,6 @@ static void mcc_hpd_irq_setup(struct drm_i915_pri=
vate *dev_priv)
> >  static void jsp_hpd_irq_setup(struct drm_i915_private *dev_priv)
> >  {
> >  	icp_hpd_irq_setup(dev_priv,
> > -			  SDE_DDI_MASK_TGP, 0,
> >  			  TGP_DDI_HPD_ENABLE_MASK, 0);
> >  }
> >  =

> > @@ -3074,7 +3079,7 @@ static void gen11_hpd_irq_setup(struct drm_i915_p=
rivate *dev_priv)
> >  	u32 val;
> >  =

> >  	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.h=
pd);
> > -	hotplug_irqs =3D GEN11_DE_TC_HOTPLUG_MASK | GEN11_DE_TBT_HOTPLUG_MASK;
> > +	hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.h=
pd);
> >  =

> >  	val =3D I915_READ(GEN11_DE_HPD_IMR);
> >  	val &=3D ~hotplug_irqs;
> > @@ -3085,10 +3090,10 @@ static void gen11_hpd_irq_setup(struct drm_i915=
_private *dev_priv)
> >  	gen11_hpd_detection_setup(dev_priv);
> >  =

> >  	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_TGP)
> > -		icp_hpd_irq_setup(dev_priv, SDE_DDI_MASK_TGP, SDE_TC_MASK_TGP,
> > +		icp_hpd_irq_setup(dev_priv,
> >  				  TGP_DDI_HPD_ENABLE_MASK, TGP_TC_HPD_ENABLE_MASK);
> >  	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> > -		icp_hpd_irq_setup(dev_priv, SDE_DDI_MASK_ICP, SDE_TC_MASK_ICP,
> > +		icp_hpd_irq_setup(dev_priv,
> >  				  ICP_DDI_HPD_ENABLE_MASK, ICP_TC_HPD_ENABLE_MASK);
> >  }
> >  =

> > @@ -3124,8 +3129,8 @@ static void spt_hpd_irq_setup(struct drm_i915_pri=
vate *dev_priv)
> >  	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_CNP)
> >  		I915_WRITE(SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
> >  =

> > -	hotplug_irqs =3D SDE_HOTPLUG_MASK_SPT;
> >  	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.p=
ch_hpd);
> > +	hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.p=
ch_hpd);
> >  =

> >  	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
> >  =

> > @@ -3152,22 +3157,13 @@ static void ilk_hpd_irq_setup(struct drm_i915_p=
rivate *dev_priv)
> >  {
> >  	u32 hotplug_irqs, enabled_irqs;
> >  =

> > -	if (INTEL_GEN(dev_priv) >=3D 8) {
> > -		hotplug_irqs =3D GEN8_PORT_DP_A_HOTPLUG;
> > -		enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.=
hpd);
> > +	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.h=
pd);
> > +	hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.h=
pd);
> >  =

> > +	if (INTEL_GEN(dev_priv) >=3D 8)
> >  		bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
> > -	} else if (INTEL_GEN(dev_priv) >=3D 7) {
> > -		hotplug_irqs =3D DE_DP_A_HOTPLUG_IVB;
> > -		enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.=
hpd);
> > -
> > +	else
> >  		ilk_update_display_irq(dev_priv, hotplug_irqs, enabled_irqs);
> > -	} else {
> > -		hotplug_irqs =3D DE_DP_A_HOTPLUG;
> > -		enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.=
hpd);
> > -
> > -		ilk_update_display_irq(dev_priv, hotplug_irqs, enabled_irqs);
> > -	}
> >  =

> >  	ilk_hpd_detection_setup(dev_priv);
> >  =

> > @@ -3216,7 +3212,7 @@ static void bxt_hpd_irq_setup(struct drm_i915_pri=
vate *dev_priv)
> >  	u32 hotplug_irqs, enabled_irqs;
> >  =

> >  	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.h=
pd);
> > -	hotplug_irqs =3D BXT_DE_PORT_HOTPLUG_MASK;
> > +	hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.h=
pd);
> >  =

> >  	bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
> >  =

> > =


-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
