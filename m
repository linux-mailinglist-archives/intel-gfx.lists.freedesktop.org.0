Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9405D29D703
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 23:20:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD5226E7D1;
	Wed, 28 Oct 2020 22:20:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3993B6E7D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 22:20:03 +0000 (UTC)
IronPort-SDR: I/IAXvxdL16GDLLx4Ye9PlK5H+PFJRIH5zhpGfSdZmpNd/WKhxj5vQ+TDoQXT0e+Bqp7AAYHac
 9afmk85VRJtA==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="186118328"
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="186118328"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 15:20:02 -0700
IronPort-SDR: MAY1OEg/BPLII5Q1+Spw8eimY1L0UP6YpdNOYHUwrmBoUZOImnIXUcddXBqCW82GZ1DZjwdUAm
 fJmyobLNMslg==
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="536412623"
Received: from nsato-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.254.182.129])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 15:20:02 -0700
Date: Wed, 28 Oct 2020 15:20:02 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201028222002.sisj2jgc4whtqoq2@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20201028213323.5423-1-ville.syrjala@linux.intel.com>
 <20201028213323.5423-20-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201028213323.5423-20-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 19/19] drm/i915: Get rid of
 ibx_irq_pre_postinstall()
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

On Wed, Oct 28, 2020 at 11:33:23PM +0200, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>ibx_irq_pre_postinstall() looks totally pointless. We can just
>init both SDEIMR and SDEIER at the same time before enabling the
>master intererupt. It's equally racy as the other order due

master interrupt

>to doing all of this from the postinstall stage with the interrupt
>handler already in place. That is, safe with MSI but racy with
>shared legacy interrupts. Fortunately we should have MSI on all ilk+.
>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/i915_irq.c | 46 ++++++++++++---------------------
> 1 file changed, 17 insertions(+), 29 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index 95268fca2fbc..fdd132e2ec76 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -2910,24 +2910,6 @@ static void ibx_irq_reset(struct drm_i915_private *=
dev_priv)
> 		I915_WRITE(SERR_INT, 0xffffffff);
> }
>
>-/*
>- * SDEIER is also touched by the interrupt handler to work around missed =
PCH
>- * interrupts. Hence we can't update it after the interrupt handler is en=
abled -
>- * instead we unconditionally enable all PCH interrupt sources here, but =
then
>- * only unmask them as needed with SDEIMR.
>- *
>- * This function needs to be called before interrupts are enabled.
>- */
>-static void ibx_irq_pre_postinstall(struct drm_i915_private *dev_priv)
>-{
>-	if (HAS_PCH_NOP(dev_priv))
>-		return;
>-
>-	drm_WARN_ON(&dev_priv->drm, I915_READ(SDEIER) !=3D 0);
>-	I915_WRITE(SDEIER, 0xffffffff);
>-	POSTING_READ(SDEIER);
>-}
>-
> static void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
> {
> 	struct intel_uncore *uncore =3D &dev_priv->uncore;
>@@ -3545,8 +3527,20 @@ static void bxt_hpd_irq_setup(struct drm_i915_priva=
te *dev_priv)
> 	bxt_hpd_detection_setup(dev_priv);
> }
>
>+/*
>+ * SDEIER is also touched by the interrupt handler to work around missed =
PCH
>+ * interrupts. Hence we can't update it after the interrupt handler is en=
abled -
>+ * instead we unconditionally enable all PCH interrupt sources here, but =
then
>+ * only unmask them as needed with SDEIMR.
>+ *
>+ * Note that we currently do this after installing the interrupt handler,
>+ * but before we enable the master interrupt. That should be sufficient
>+ * to avoid races with the irq handler, assuming we have MSI. Shared lega=
cy
>+ * interrupts could still race.
>+ */
> static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
> {
>+	struct intel_uncore *uncore =3D &dev_priv->uncore;
> 	u32 mask;
>
> 	if (HAS_PCH_NOP(dev_priv))
>@@ -3559,8 +3553,7 @@ static void ibx_irq_postinstall(struct drm_i915_priv=
ate *dev_priv)
> 	else
> 		mask =3D SDE_GMBUS_CPT;
>
>-	gen3_assert_iir_is_zero(&dev_priv->uncore, SDEIIR);
>-	I915_WRITE(SDEIMR, ~mask);
>+	GEN3_IRQ_INIT(uncore, SDE, ~mask, 0xffffffff);
> }
>
> static void ilk_irq_postinstall(struct drm_i915_private *dev_priv)
>@@ -3593,14 +3586,12 @@ static void ilk_irq_postinstall(struct drm_i915_pr=
ivate *dev_priv)
>
> 	dev_priv->irq_mask =3D ~display_mask;
>
>-	ibx_irq_pre_postinstall(dev_priv);
>+	ibx_irq_postinstall(dev_priv);
>
> 	gen5_gt_irq_postinstall(&dev_priv->gt);
>
> 	GEN3_IRQ_INIT(uncore, DE, dev_priv->irq_mask,
> 		      display_mask | extra_mask);
>-
>-	ibx_irq_postinstall(dev_priv);
> }
>
> void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
>@@ -3725,15 +3716,12 @@ static void gen8_de_irq_postinstall(struct drm_i91=
5_private *dev_priv)
>
> static void gen8_irq_postinstall(struct drm_i915_private *dev_priv)
> {
>-	if (HAS_PCH_SPLIT(dev_priv))
>-		ibx_irq_pre_postinstall(dev_priv);
>-
>-	gen8_gt_irq_postinstall(&dev_priv->gt);
>-	gen8_de_irq_postinstall(dev_priv);
>-
> 	if (HAS_PCH_SPLIT(dev_priv))
> 		ibx_irq_postinstall(dev_priv);
>
>+	gen8_gt_irq_postinstall(&dev_priv->gt);
>+	gen8_de_irq_postinstall(dev_priv);
>+
> 	gen8_master_intr_enable(dev_priv->uncore.regs);
> }
>
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
