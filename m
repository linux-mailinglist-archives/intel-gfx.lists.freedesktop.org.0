Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB06529D3E6
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 22:47:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 242DD6E5CD;
	Wed, 28 Oct 2020 21:47:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 420C16E5CD
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 21:47:52 +0000 (UTC)
IronPort-SDR: hWyeJ06k0fwiD6iAIPF71C9vzO7Igynlv+GWBWe1jCkx3d6zqUmT1+eOMjloTxAhNx+5t7aixz
 t5CP3OKN/q6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="168442572"
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="168442572"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 14:47:51 -0700
IronPort-SDR: Xr8lZqk4pwzHF3ho+QWgGZMIcTooPS91qVtkKcQPyIRt3n9o06fZkkYZpi0pJ9Kz8dTWdGENxq
 KfbQ9pVVYoug==
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="536404373"
Received: from nsato-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.254.182.129])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 14:47:50 -0700
Date: Wed, 28 Oct 2020 14:47:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201028214750.mk3rovnzh2lv5wma@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20201028213323.5423-1-ville.syrjala@linux.intel.com>
 <20201028213323.5423-15-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201028213323.5423-15-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 14/19] drm/i915: Don't enable hpd
 detection logic from irq_postinstall()
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 28, 2020 at 11:33:18PM +0200, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>No reason that I can see why we should enable the hpd detection logic
>already during irq postinstall phase. We don't even do this on all
>the platforms. We just need it before we actually enable the hotplug
>interrupts in .hpd_irq_setup(), and in fact we already do it there as
>well. Let's just eliminate the redundant early setup.

yep, it makes sense. If CI is happy and doesn't explode in something
neither of us antecipated, I'm happy too.


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>---
> drivers/gpu/drm/i915/i915_irq.c | 40 +++------------------------------
> 1 file changed, 3 insertions(+), 37 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index 43e3e7f70c14..3ff5747e755d 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -3407,8 +3407,8 @@ static void ilk_hpd_irq_setup(struct drm_i915_privat=
e *dev_priv)
> 	ibx_hpd_irq_setup(dev_priv);
> }
>
>-static void __bxt_hpd_detection_setup(struct drm_i915_private *dev_priv,
>-				      u32 enabled_irqs)
>+static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv,
>+				    u32 enabled_irqs)
> {
> 	u32 hotplug;
>
>@@ -3439,11 +3439,6 @@ static void __bxt_hpd_detection_setup(struct drm_i9=
15_private *dev_priv,
> 	I915_WRITE(PCH_PORT_HOTPLUG, hotplug);
> }
>
>-static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv)
>-{
>-	__bxt_hpd_detection_setup(dev_priv, BXT_DE_PORT_HOTPLUG_MASK);
>-}
>-
> static void bxt_hpd_irq_setup(struct drm_i915_private *dev_priv)
> {
> 	u32 hotplug_irqs, enabled_irqs;
>@@ -3453,7 +3448,7 @@ static void bxt_hpd_irq_setup(struct drm_i915_privat=
e *dev_priv)
>
> 	bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
>
>-	__bxt_hpd_detection_setup(dev_priv, enabled_irqs);
>+	bxt_hpd_detection_setup(dev_priv, enabled_irqs);
> }
>
> static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
>@@ -3472,12 +3467,6 @@ static void ibx_irq_postinstall(struct drm_i915_pri=
vate *dev_priv)
>
> 	gen3_assert_iir_is_zero(&dev_priv->uncore, SDEIIR);
> 	I915_WRITE(SDEIMR, ~mask);
>-
>-	if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv) ||
>-	    HAS_PCH_LPT(dev_priv))
>-		ibx_hpd_detection_setup(dev_priv);
>-	else
>-		spt_hpd_detection_setup(dev_priv);
> }
>
> static void ilk_irq_postinstall(struct drm_i915_private *dev_priv)
>@@ -3517,8 +3506,6 @@ static void ilk_irq_postinstall(struct drm_i915_priv=
ate *dev_priv)
> 	GEN3_IRQ_INIT(uncore, DE, dev_priv->irq_mask,
> 		      display_mask | extra_mask);
>
>-	ilk_hpd_detection_setup(dev_priv);
>-
> 	ibx_irq_postinstall(dev_priv);
> }
>
>@@ -3639,12 +3626,6 @@ static void gen8_de_irq_postinstall(struct drm_i915=
_private *dev_priv)
>
> 		GEN3_IRQ_INIT(uncore, GEN11_DE_HPD_, ~de_hpd_masked,
> 			      de_hpd_enables);
>-		gen11_tc_hpd_detection_setup(dev_priv);
>-		gen11_tbt_hpd_detection_setup(dev_priv);
>-	} else if (IS_GEN9_LP(dev_priv)) {
>-		bxt_hpd_detection_setup(dev_priv);
>-	} else if (IS_BROADWELL(dev_priv)) {
>-		ilk_hpd_detection_setup(dev_priv);
> 	}
> }
>
>@@ -3672,21 +3653,6 @@ static void icp_irq_postinstall(struct drm_i915_pri=
vate *dev_priv)
>
> 	gen3_assert_iir_is_zero(&dev_priv->uncore, SDEIIR);
> 	I915_WRITE(SDEIMR, ~mask);
>-
>-	if (HAS_PCH_DG1(dev_priv))
>-		icp_ddi_hpd_detection_setup(dev_priv, DG1_DDI_HPD_ENABLE_MASK);
>-	else if (HAS_PCH_TGP(dev_priv)) {
>-		icp_ddi_hpd_detection_setup(dev_priv, TGP_DDI_HPD_ENABLE_MASK);
>-		icp_tc_hpd_detection_setup(dev_priv, TGP_TC_HPD_ENABLE_MASK);
>-	} else if (HAS_PCH_JSP(dev_priv)) {
>-		icp_ddi_hpd_detection_setup(dev_priv, TGP_DDI_HPD_ENABLE_MASK);
>-	} else if (HAS_PCH_MCC(dev_priv)) {
>-		icp_ddi_hpd_detection_setup(dev_priv, ICP_DDI_HPD_ENABLE_MASK);
>-		icp_tc_hpd_detection_setup(dev_priv, ICP_TC_HPD_ENABLE(HPD_PORT_TC1));
>-	} else {
>-		icp_ddi_hpd_detection_setup(dev_priv, ICP_DDI_HPD_ENABLE_MASK);
>-		icp_tc_hpd_detection_setup(dev_priv, ICP_TC_HPD_ENABLE_MASK);
>-	}
> }
>
> static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
>-- =

>2.26.2
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
