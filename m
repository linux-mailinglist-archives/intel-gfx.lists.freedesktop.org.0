Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3327C285016
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 18:43:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77C9B6E4D0;
	Tue,  6 Oct 2020 16:43:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C144A6E4C5
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 16:43:11 +0000 (UTC)
IronPort-SDR: phVASnM/j5mdR7c9T8XqxuxA8Yu+qM5+Mk9EpDXP4UHoUDGCDZwiciwUJ84KEeg5vwyIWe36CZ
 bsufO9+pL1Gg==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="144480381"
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="144480381"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 09:43:04 -0700
IronPort-SDR: nJ/dAyGCcMt/qvrZA1oAc0pJIlj9gwboichOSU2MaV8YlTxqoMqGaglDUBH/iaTyjdn97Q+nt3
 vr+84X0p0vqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="327627931"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 06 Oct 2020 09:43:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Oct 2020 19:43:01 +0300
Date: Tue, 6 Oct 2020 19:43:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20201006164301.GX6112@intel.com>
References: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
 <20201006143349.5561-16-ville.syrjala@linux.intel.com>
 <20201006162046.GA1523425@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201006162046.GA1523425@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 15/20] drm/i915: Don't enable hpd detection
 logic from irq_postinstall()
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

On Tue, Oct 06, 2020 at 07:20:46PM +0300, Imre Deak wrote:
> On Tue, Oct 06, 2020 at 05:33:44PM +0300, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > No reason that I can see why we should enable the hpd detection logic
> > already during irq postinstall phase. We don't even do this on all
> > the platforms. We just need it before we actually enable the hotplug
> > interrupts in .hpd_irq_setup(), and in fact we already do it there as
> > well. Let's just eliminate the redundant early setup.
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> It's needed by LSPCON resume, which happens before initing HPD
> interrupts. I suppose that could be done later, after HPD interrupt init,
> I don't see now why it would need to be done at encoder->reset() time.

Hmm. The ordering of the .reset() hooks vs. other init/resume stuff
looks somewhat random. Might need to think how to make this consistent.
At init time we no longer have the early lspcon probe, exept Uma
probably has to add it back for the HDR stuff. This looks like it
might need some actual thought :(

> =

> > ---
> >  drivers/gpu/drm/i915/i915_irq.c | 38 +++------------------------------
> >  1 file changed, 3 insertions(+), 35 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i91=
5_irq.c
> > index 0886369e3890..b1c56a29376c 100644
> > --- a/drivers/gpu/drm/i915/i915_irq.c
> > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > @@ -3378,8 +3378,8 @@ static void ilk_hpd_irq_setup(struct drm_i915_pri=
vate *dev_priv)
> >  	ibx_hpd_irq_setup(dev_priv);
> >  }
> >  =

> > -static void __bxt_hpd_detection_setup(struct drm_i915_private *dev_pri=
v,
> > -				      u32 enabled_irqs)
> > +static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv,
> > +				    u32 enabled_irqs)
> >  {
> >  	u32 hotplug;
> >  =

> > @@ -3410,11 +3410,6 @@ static void __bxt_hpd_detection_setup(struct drm=
_i915_private *dev_priv,
> >  	I915_WRITE(PCH_PORT_HOTPLUG, hotplug);
> >  }
> >  =

> > -static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv)
> > -{
> > -	__bxt_hpd_detection_setup(dev_priv, BXT_DE_PORT_HOTPLUG_MASK);
> > -}
> > -
> >  static void bxt_hpd_irq_setup(struct drm_i915_private *dev_priv)
> >  {
> >  	u32 hotplug_irqs, enabled_irqs;
> > @@ -3424,7 +3419,7 @@ static void bxt_hpd_irq_setup(struct drm_i915_pri=
vate *dev_priv)
> >  =

> >  	bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
> >  =

> > -	__bxt_hpd_detection_setup(dev_priv, enabled_irqs);
> > +	bxt_hpd_detection_setup(dev_priv, enabled_irqs);
> >  }
> >  =

> >  static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
> > @@ -3443,12 +3438,6 @@ static void ibx_irq_postinstall(struct drm_i915_=
private *dev_priv)
> >  =

> >  	gen3_assert_iir_is_zero(&dev_priv->uncore, SDEIIR);
> >  	I915_WRITE(SDEIMR, ~mask);
> > -
> > -	if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv) ||
> > -	    HAS_PCH_LPT(dev_priv))
> > -		ibx_hpd_detection_setup(dev_priv);
> > -	else
> > -		spt_hpd_detection_setup(dev_priv);
> >  }
> >  =

> >  static void ilk_irq_postinstall(struct drm_i915_private *dev_priv)
> > @@ -3485,8 +3474,6 @@ static void ilk_irq_postinstall(struct drm_i915_p=
rivate *dev_priv)
> >  =

> >  	gen5_gt_irq_postinstall(&dev_priv->gt);
> >  =

> > -	ilk_hpd_detection_setup(dev_priv);
> > -
> >  	ibx_irq_postinstall(dev_priv);
> >  =

> >  	if (IS_IRONLAKE_M(dev_priv)) {
> > @@ -3618,12 +3605,6 @@ static void gen8_de_irq_postinstall(struct drm_i=
915_private *dev_priv)
> >  =

> >  		GEN3_IRQ_INIT(uncore, GEN11_DE_HPD_, ~de_hpd_masked,
> >  			      de_hpd_enables);
> > -		gen11_tc_hpd_detection_setup(dev_priv);
> > -		gen11_tbt_hpd_detection_setup(dev_priv);
> > -	} else if (IS_GEN9_LP(dev_priv)) {
> > -		bxt_hpd_detection_setup(dev_priv);
> > -	} else if (IS_BROADWELL(dev_priv)) {
> > -		ilk_hpd_detection_setup(dev_priv);
> >  	}
> >  }
> >  =

> > @@ -3651,19 +3632,6 @@ static void icp_irq_postinstall(struct drm_i915_=
private *dev_priv)
> >  =

> >  	gen3_assert_iir_is_zero(&dev_priv->uncore, SDEIIR);
> >  	I915_WRITE(SDEIMR, ~mask);
> > -
> > -	if (HAS_PCH_TGP(dev_priv)) {
> > -		icp_ddi_hpd_detection_setup(dev_priv, TGP_DDI_HPD_ENABLE_MASK);
> > -		icp_tc_hpd_detection_setup(dev_priv, TGP_TC_HPD_ENABLE_MASK);
> > -	} else if (HAS_PCH_JSP(dev_priv)) {
> > -		icp_ddi_hpd_detection_setup(dev_priv, TGP_DDI_HPD_ENABLE_MASK);
> > -	} else if (HAS_PCH_MCC(dev_priv)) {
> > -		icp_ddi_hpd_detection_setup(dev_priv, ICP_DDI_HPD_ENABLE_MASK);
> > -		icp_tc_hpd_detection_setup(dev_priv, ICP_TC_HPD_ENABLE(HPD_PORT_TC1)=
);
> > -	} else {
> > -		icp_ddi_hpd_detection_setup(dev_priv, ICP_DDI_HPD_ENABLE_MASK);
> > -		icp_tc_hpd_detection_setup(dev_priv, ICP_TC_HPD_ENABLE_MASK);
> > -	}
> >  }
> >  =

> >  static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
> > -- =

> > 2.26.2
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
