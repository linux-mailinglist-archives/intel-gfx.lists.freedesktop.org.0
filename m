Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D07AF29D6A4
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 23:17:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 288586E7D2;
	Wed, 28 Oct 2020 22:17:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AABE06E7D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 22:16:59 +0000 (UTC)
IronPort-SDR: sA9lTNI3xLt/ngO6tLUoTnpNkGDoL8pqBgsBnwwtuzq1jxmBUzmVuRiHqFmykqxR2zozqFchLE
 t6arcsfL4i2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="148202082"
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="148202082"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 15:16:58 -0700
IronPort-SDR: HLJkEJxenRiFsPYR6O6vu3Bn+966km2l+REx2Dnqh0LVYAdk7HBehk+267g2XyLUC49SiHpqX+
 PD+/lb/v9kxQ==
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="536411762"
Received: from nsato-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.254.182.129])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 15:16:57 -0700
Date: Wed, 28 Oct 2020 15:16:57 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201028221657.lizjycr7kxwl274n@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20201028213323.5423-1-ville.syrjala@linux.intel.com>
 <20201028213323.5423-18-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201028213323.5423-18-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 17/19] drm/i915: Enable hpd logic only
 for ports that are present
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

On Wed, Oct 28, 2020 at 11:33:21PM +0200, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>Let's enable the hardware hpd logic only for the ports we
>can actually use.
>
>In theory this may save some miniscule amounts of power,
>and more importantly it eliminates a lot if platform specific
>codepaths since the generic thing can now deal with any
>combination of ports being present on each SKU.
>
>v2: Deal with DG1
>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/i915_irq.c | 302 ++++++++++++++++++++++----------
> drivers/gpu/drm/i915/i915_reg.h |  17 --
> 2 files changed, 205 insertions(+), 114 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index fa8a07c2f82d..2337416e581c 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -61,6 +61,8 @@
>  */
>
> typedef bool (*long_pulse_detect_func)(enum hpd_pin pin, u32 val);
>+typedef u32 (*hotplug_enables_func)(struct drm_i915_private *i915,
>+				    enum hpd_pin pin);
>
> static const u32 hpd_ilk[HPD_NUM_PINS] =3D {
> 	[HPD_PORT_A] =3D DE_DP_A_HOTPLUG,
>@@ -1230,6 +1232,18 @@ static u32 intel_hpd_hotplug_irqs(struct drm_i915_p=
rivate *dev_priv,
> 	return hotplug_irqs;
> }
>
>+static u32 intel_hpd_hotplug_enables(struct drm_i915_private *i915,
>+				     hotplug_enables_func hotplug_enables)
>+{
>+	struct intel_encoder *encoder;
>+	u32 hotplug =3D 0;
>+
>+	for_each_intel_encoder(&i915->drm, encoder)
>+		hotplug |=3D hotplug_enables(i915, encoder->hpd_pin);
>+
>+	return hotplug;
>+}
>+
> static void gmbus_irq_handler(struct drm_i915_private *dev_priv)
> {
> 	wake_up_all(&dev_priv->gmbus_wait_queue);
>@@ -3152,6 +3166,31 @@ static void cherryview_irq_reset(struct drm_i915_pr=
ivate *dev_priv)
> 	spin_unlock_irq(&dev_priv->irq_lock);
> }
>
>+static u32 ibx_hotplug_enables(struct drm_i915_private *i915,
>+			       enum hpd_pin pin)
>+{
>+	switch (pin) {
>+	case HPD_PORT_A:
>+		/*
>+		 * When CPU and PCH are on the same package, port A
>+		 * HPD must be enabled in both north and south.
>+		 */
>+		return HAS_PCH_LPT_LP(i915) ?
>+			PORTA_HOTPLUG_ENABLE : 0;
>+	case HPD_PORT_B:
>+		return PORTB_HOTPLUG_ENABLE |
>+			PORTB_PULSE_DURATION_2ms;
>+	case HPD_PORT_C:
>+		return PORTC_HOTPLUG_ENABLE |
>+			PORTC_PULSE_DURATION_2ms;
>+	case HPD_PORT_D:
>+		return PORTD_HOTPLUG_ENABLE |
>+			PORTD_PULSE_DURATION_2ms;
>+	default:
>+		return 0;
>+	}
>+}
>+
> static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
> {
> 	u32 hotplug;
>@@ -3162,18 +3201,14 @@ static void ibx_hpd_detection_setup(struct drm_i91=
5_private *dev_priv)
> 	 * The pulse duration bits are reserved on LPT+.
> 	 */
> 	hotplug =3D I915_READ(PCH_PORT_HOTPLUG);
>-	hotplug &=3D ~(PORTB_PULSE_DURATION_MASK |
>+	hotplug &=3D ~(PORTA_HOTPLUG_ENABLE |
>+		     PORTB_HOTPLUG_ENABLE |
>+		     PORTC_HOTPLUG_ENABLE |
>+		     PORTD_HOTPLUG_ENABLE |
>+		     PORTB_PULSE_DURATION_MASK |
> 		     PORTC_PULSE_DURATION_MASK |
> 		     PORTD_PULSE_DURATION_MASK);
>-	hotplug |=3D PORTB_HOTPLUG_ENABLE | PORTB_PULSE_DURATION_2ms;
>-	hotplug |=3D PORTC_HOTPLUG_ENABLE | PORTC_PULSE_DURATION_2ms;
>-	hotplug |=3D PORTD_HOTPLUG_ENABLE | PORTD_PULSE_DURATION_2ms;
>-	/*
>-	 * When CPU and PCH are on the same package, port A
>-	 * HPD must be enabled in both north and south.
>-	 */
>-	if (HAS_PCH_LPT_LP(dev_priv))
>-		hotplug |=3D PORTA_HOTPLUG_ENABLE;
>+	hotplug |=3D intel_hpd_hotplug_enables(dev_priv, ibx_hotplug_enables);
> 	I915_WRITE(PCH_PORT_HOTPLUG, hotplug);
> }
>
>@@ -3189,28 +3224,63 @@ static void ibx_hpd_irq_setup(struct drm_i915_priv=
ate *dev_priv)
> 	ibx_hpd_detection_setup(dev_priv);
> }
>
>-static void icp_ddi_hpd_detection_setup(struct drm_i915_private *dev_priv,
>-					u32 enable_mask)
>+static u32 icp_ddi_hotplug_enables(struct drm_i915_private *i915,
>+				   enum hpd_pin pin)
>+{
>+	switch (pin) {
>+	case HPD_PORT_A:
>+	case HPD_PORT_B:
>+	case HPD_PORT_C:
>+		return SHOTPLUG_CTL_DDI_HPD_ENABLE(pin);
>+	default:
>+		return 0;
>+	}
>+}
>+
>+static u32 icp_tc_hotplug_enables(struct drm_i915_private *i915,
>+				  enum hpd_pin pin)
>+{
>+	switch (pin) {
>+	case HPD_PORT_TC1:
>+	case HPD_PORT_TC2:
>+	case HPD_PORT_TC3:
>+	case HPD_PORT_TC4:
>+	case HPD_PORT_TC5:
>+	case HPD_PORT_TC6:
>+		return ICP_TC_HPD_ENABLE(pin);
>+	default:
>+		return 0;
>+	}
>+}
>+
>+static void icp_ddi_hpd_detection_setup(struct drm_i915_private *dev_priv)
> {
> 	u32 hotplug;
>
> 	hotplug =3D I915_READ(SHOTPLUG_CTL_DDI);
>-	hotplug |=3D enable_mask;
>+	hotplug &=3D ~(SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_A) |
>+		     SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_B) |
>+		     SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_C));
>+	hotplug |=3D intel_hpd_hotplug_enables(dev_priv, icp_ddi_hotplug_enables=
);
> 	I915_WRITE(SHOTPLUG_CTL_DDI, hotplug);
> }
>
>-static void icp_tc_hpd_detection_setup(struct drm_i915_private *dev_priv,
>-				       u32 enable_mask)
>+static void icp_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
> {
> 	u32 hotplug;
>
> 	hotplug =3D I915_READ(SHOTPLUG_CTL_TC);
>-	hotplug |=3D enable_mask;
>+	hotplug &=3D ~(ICP_TC_HPD_ENABLE(HPD_PORT_TC1) |
>+		     ICP_TC_HPD_ENABLE(HPD_PORT_TC2) |
>+		     ICP_TC_HPD_ENABLE(HPD_PORT_TC3) |
>+		     ICP_TC_HPD_ENABLE(HPD_PORT_TC4) |
>+		     ICP_TC_HPD_ENABLE(HPD_PORT_TC5) |
>+		     ICP_TC_HPD_ENABLE(HPD_PORT_TC6));
>+	hotplug |=3D intel_hpd_hotplug_enables(dev_priv, icp_tc_hotplug_enables);
> 	I915_WRITE(SHOTPLUG_CTL_TC, hotplug);
> }
>
>-static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv,
>-			      u32 ddi_enable_mask, u32 tc_enable_mask)
>+static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
> {
> 	u32 hotplug_irqs, enabled_irqs;
>
>@@ -3222,30 +3292,24 @@ static void icp_hpd_irq_setup(struct drm_i915_priv=
ate *dev_priv,
>
> 	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
>
>-	icp_ddi_hpd_detection_setup(dev_priv, ddi_enable_mask);
>-	if (tc_enable_mask)
>-		icp_tc_hpd_detection_setup(dev_priv, tc_enable_mask);
>+	icp_ddi_hpd_detection_setup(dev_priv);
>+	icp_tc_hpd_detection_setup(dev_priv);
> }
>
>-/*
>- * EHL doesn't need most of gen11_hpd_irq_setup, it's handling only the
>- * equivalent of SDE.
>- */
>-static void mcc_hpd_irq_setup(struct drm_i915_private *dev_priv)
>+static u32 gen11_hotplug_enables(struct drm_i915_private *i915,
>+				 enum hpd_pin pin)
> {
>-	icp_hpd_irq_setup(dev_priv,
>-			  ICP_DDI_HPD_ENABLE_MASK, ICP_TC_HPD_ENABLE(HPD_PORT_TC1));
>-}
>-
>-/*
>- * JSP behaves exactly the same as MCC above except that port C is mapped=
 to
>- * the DDI-C pins instead of the TC1 pins.  This means we should follow T=
GP's
>- * masks & tables rather than ICP's masks & tables.
>- */
>-static void jsp_hpd_irq_setup(struct drm_i915_private *dev_priv)
>-{
>-	icp_hpd_irq_setup(dev_priv,
>-			  TGP_DDI_HPD_ENABLE_MASK, 0);
>+	switch (pin) {
>+	case HPD_PORT_TC1:
>+	case HPD_PORT_TC2:
>+	case HPD_PORT_TC3:
>+	case HPD_PORT_TC4:
>+	case HPD_PORT_TC5:
>+	case HPD_PORT_TC6:
>+		return GEN11_HOTPLUG_CTL_ENABLE(pin);
>+	default:
>+		return 0;
>+	}
> }
>
> static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
>@@ -3259,8 +3323,7 @@ static void dg1_hpd_irq_setup(struct drm_i915_privat=
e *dev_priv)
> 		INVERT_DDID_HPD);
> 	I915_WRITE(SOUTH_CHICKEN1, val);
>
>-	icp_hpd_irq_setup(dev_priv,
>-			  DG1_DDI_HPD_ENABLE_MASK, 0);
>+	icp_hpd_irq_setup(dev_priv);
> }
>
> static void gen11_tc_hpd_detection_setup(struct drm_i915_private *dev_pri=
v)
>@@ -3268,12 +3331,13 @@ static void gen11_tc_hpd_detection_setup(struct dr=
m_i915_private *dev_priv)
> 	u32 hotplug;
>
> 	hotplug =3D I915_READ(GEN11_TC_HOTPLUG_CTL);
>-	hotplug |=3D GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC2) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC3) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC4) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6);
>+	hotplug &=3D ~(GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
>+		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC2) |
>+		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC3) |
>+		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC4) |
>+		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
>+		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6));
>+	hotplug |=3D intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables);
> 	I915_WRITE(GEN11_TC_HOTPLUG_CTL, hotplug);
> }
>
>@@ -3282,12 +3346,13 @@ static void gen11_tbt_hpd_detection_setup(struct d=
rm_i915_private *dev_priv)
> 	u32 hotplug;
>
> 	hotplug =3D I915_READ(GEN11_TBT_HOTPLUG_CTL);
>-	hotplug |=3D GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC2) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC3) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC4) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
>-		   GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6);
>+	hotplug &=3D ~(GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
>+		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC2) |
>+		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC3) |
>+		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC4) |
>+		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
>+		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6));
>+	hotplug |=3D intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables);
> 	I915_WRITE(GEN11_TBT_HOTPLUG_CTL, hotplug);
> }
>
>@@ -3308,12 +3373,36 @@ static void gen11_hpd_irq_setup(struct drm_i915_pr=
ivate *dev_priv)
> 	gen11_tc_hpd_detection_setup(dev_priv);
> 	gen11_tbt_hpd_detection_setup(dev_priv);
>
>-	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_TGP)
>-		icp_hpd_irq_setup(dev_priv,
>-				  TGP_DDI_HPD_ENABLE_MASK, TGP_TC_HPD_ENABLE_MASK);
>-	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
>-		icp_hpd_irq_setup(dev_priv,
>-				  ICP_DDI_HPD_ENABLE_MASK, ICP_TC_HPD_ENABLE_MASK);
>+	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
>+		icp_hpd_irq_setup(dev_priv);
>+}
>+
>+static u32 spt_hotplug_enables(struct drm_i915_private *i915,
>+			       enum hpd_pin pin)
>+{
>+	switch (pin) {
>+	case HPD_PORT_A:
>+		return PORTA_HOTPLUG_ENABLE;
>+	case HPD_PORT_B:
>+		return PORTB_HOTPLUG_ENABLE;
>+	case HPD_PORT_C:
>+		return PORTC_HOTPLUG_ENABLE;
>+	case HPD_PORT_D:
>+		return PORTD_HOTPLUG_ENABLE;
>+	default:
>+		return 0;
>+	}
>+}
>+
>+static u32 spt_hotplug2_enables(struct drm_i915_private *i915,
>+				enum hpd_pin pin)
>+{
>+	switch (pin) {
>+	case HPD_PORT_E:
>+		return PORTE_HOTPLUG_ENABLE;
>+	default:
>+		return 0;
>+	}
> }
>
> static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)
>@@ -3330,14 +3419,16 @@ static void spt_hpd_detection_setup(struct drm_i91=
5_private *dev_priv)
>
> 	/* Enable digital hotplug on the PCH */
> 	hotplug =3D I915_READ(PCH_PORT_HOTPLUG);
>-	hotplug |=3D PORTA_HOTPLUG_ENABLE |
>-		   PORTB_HOTPLUG_ENABLE |
>-		   PORTC_HOTPLUG_ENABLE |
>-		   PORTD_HOTPLUG_ENABLE;
>+	hotplug &=3D ~(PORTA_HOTPLUG_ENABLE |
>+		     PORTB_HOTPLUG_ENABLE |
>+		     PORTC_HOTPLUG_ENABLE |
>+		     PORTD_HOTPLUG_ENABLE);
>+	hotplug |=3D intel_hpd_hotplug_enables(dev_priv, spt_hotplug_enables);
> 	I915_WRITE(PCH_PORT_HOTPLUG, hotplug);
>
> 	hotplug =3D I915_READ(PCH_PORT_HOTPLUG2);
>-	hotplug |=3D PORTE_HOTPLUG_ENABLE;
>+	hotplug &=3D ~PORTE_HOTPLUG_ENABLE;
>+	hotplug |=3D intel_hpd_hotplug_enables(dev_priv, spt_hotplug2_enables);
> 	I915_WRITE(PCH_PORT_HOTPLUG2, hotplug);
> }
>
>@@ -3356,6 +3447,18 @@ static void spt_hpd_irq_setup(struct drm_i915_priva=
te *dev_priv)
> 	spt_hpd_detection_setup(dev_priv);
> }
>
>+static u32 ilk_hotplug_enables(struct drm_i915_private *i915,
>+			       enum hpd_pin pin)
>+{
>+	switch (pin) {
>+	case HPD_PORT_A:
>+		return DIGITAL_PORTA_HOTPLUG_ENABLE |
>+			DIGITAL_PORTA_PULSE_DURATION_2ms;
>+	default:
>+		return 0;
>+	}
>+}
>+
> static void ilk_hpd_detection_setup(struct drm_i915_private *dev_priv)
> {
> 	u32 hotplug;
>@@ -3366,9 +3469,9 @@ static void ilk_hpd_detection_setup(struct drm_i915_=
private *dev_priv)
> 	 * The pulse duration bits are reserved on HSW+.
> 	 */
> 	hotplug =3D I915_READ(DIGITAL_PORT_HOTPLUG_CNTRL);
>-	hotplug &=3D ~DIGITAL_PORTA_PULSE_DURATION_MASK;
>-	hotplug |=3D DIGITAL_PORTA_HOTPLUG_ENABLE |
>-		   DIGITAL_PORTA_PULSE_DURATION_2ms;
>+	hotplug &=3D ~(DIGITAL_PORTA_HOTPLUG_ENABLE |
>+		     DIGITAL_PORTA_PULSE_DURATION_MASK);
>+	hotplug |=3D intel_hpd_hotplug_enables(dev_priv, ilk_hotplug_enables);
> 	I915_WRITE(DIGITAL_PORT_HOTPLUG_CNTRL, hotplug);
> }
>
>@@ -3389,35 +3492,44 @@ static void ilk_hpd_irq_setup(struct drm_i915_priv=
ate *dev_priv)
> 	ibx_hpd_irq_setup(dev_priv);
> }
>
>-static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv,
>-				    u32 enabled_irqs)
>+static u32 bxt_hotplug_enables(struct drm_i915_private *i915,
>+			       enum hpd_pin pin)
>+{
>+	u32 hotplug;
>+
>+	switch (pin) {
>+	case HPD_PORT_A:
>+		hotplug =3D PORTA_HOTPLUG_ENABLE;
>+		if (intel_bios_is_port_hpd_inverted(i915, PORT_A))
>+			hotplug |=3D BXT_DDIA_HPD_INVERT;
>+		return hotplug;
>+	case HPD_PORT_B:
>+		hotplug =3D PORTB_HOTPLUG_ENABLE;
>+		if (intel_bios_is_port_hpd_inverted(i915, PORT_B))
>+			hotplug |=3D BXT_DDIB_HPD_INVERT;
>+		return hotplug;
>+	case HPD_PORT_C:
>+		hotplug =3D PORTC_HOTPLUG_ENABLE;
>+		if (intel_bios_is_port_hpd_inverted(i915, PORT_C))
>+			hotplug |=3D BXT_DDIC_HPD_INVERT;
>+		return hotplug;
>+	default:
>+		return 0;
>+	}
>+}
>+
>+static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv)
> {
> 	u32 hotplug;
>
> 	hotplug =3D I915_READ(PCH_PORT_HOTPLUG);
>-	hotplug |=3D PORTA_HOTPLUG_ENABLE |
>-		   PORTB_HOTPLUG_ENABLE |
>-		   PORTC_HOTPLUG_ENABLE;
>-
>-	drm_dbg_kms(&dev_priv->drm,
>-		    "Invert bit setting: hp_ctl:%x hp_port:%x\n",
>-		    hotplug, enabled_irqs);
>-	hotplug &=3D ~BXT_DDI_HPD_INVERT_MASK;
>-
>-	/*
>-	 * For BXT invert bit has to be set based on AOB design
>-	 * for HPD detection logic, update it based on VBT fields.
>-	 */
>-	if ((enabled_irqs & GEN8_DE_PORT_HOTPLUG(HPD_PORT_A)) &&
>-	    intel_bios_is_port_hpd_inverted(dev_priv, PORT_A))
>-		hotplug |=3D BXT_DDIA_HPD_INVERT;
>-	if ((enabled_irqs & GEN8_DE_PORT_HOTPLUG(HPD_PORT_B)) &&
>-	    intel_bios_is_port_hpd_inverted(dev_priv, PORT_B))
>-		hotplug |=3D BXT_DDIB_HPD_INVERT;
>-	if ((enabled_irqs & GEN8_DE_PORT_HOTPLUG(HPD_PORT_C)) &&
>-	    intel_bios_is_port_hpd_inverted(dev_priv, PORT_C))
>-		hotplug |=3D BXT_DDIC_HPD_INVERT;
>-
>+	hotplug &=3D ~(PORTA_HOTPLUG_ENABLE |
>+		     PORTB_HOTPLUG_ENABLE |
>+		     PORTC_HOTPLUG_ENABLE |
>+		     BXT_DDIA_HPD_INVERT |
>+		     BXT_DDIB_HPD_INVERT |
>+		     BXT_DDIC_HPD_INVERT);
>+	hotplug |=3D intel_hpd_hotplug_enables(dev_priv, bxt_hotplug_enables);
> 	I915_WRITE(PCH_PORT_HOTPLUG, hotplug);
> }
>
>@@ -3430,7 +3542,7 @@ static void bxt_hpd_irq_setup(struct drm_i915_privat=
e *dev_priv)
>
> 	bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
>
>-	bxt_hpd_detection_setup(dev_priv, enabled_irqs);
>+	bxt_hpd_detection_setup(dev_priv);
> }
>
> static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
>@@ -4145,10 +4257,6 @@ void intel_irq_init(struct drm_i915_private *dev_pr=
iv)
> 	} else {
> 		if (HAS_PCH_DG1(dev_priv))
> 			dev_priv->display.hpd_irq_setup =3D dg1_hpd_irq_setup;
>-		else if (HAS_PCH_JSP(dev_priv))
>-			dev_priv->display.hpd_irq_setup =3D jsp_hpd_irq_setup;
>-		else if (HAS_PCH_MCC(dev_priv))
>-			dev_priv->display.hpd_irq_setup =3D mcc_hpd_irq_setup;
> 		else if (INTEL_GEN(dev_priv) >=3D 11)
> 			dev_priv->display.hpd_irq_setup =3D gen11_hpd_irq_setup;
> 		else if (IS_GEN9_LP(dev_priv))
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index eacec3c46a4d..a5c55e0af2db 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -8443,23 +8443,6 @@ enum {
> #define SHPD_FILTER_CNT				_MMIO(0xc4038)
> #define   SHPD_FILTER_CNT_500_ADJ		0x001D9
>
>-#define ICP_DDI_HPD_ENABLE_MASK		(SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_B)=
 | \
>-					 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_A))
>-#define ICP_TC_HPD_ENABLE_MASK		(ICP_TC_HPD_ENABLE(HPD_PORT_TC4) | \
>-					 ICP_TC_HPD_ENABLE(HPD_PORT_TC3) | \
>-					 ICP_TC_HPD_ENABLE(HPD_PORT_TC2) | \
>-					 ICP_TC_HPD_ENABLE(HPD_PORT_TC1))
>-#define TGP_DDI_HPD_ENABLE_MASK		(SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_C)=
 | \
>-					 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_B) | \
>-					 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_A))
>-#define TGP_TC_HPD_ENABLE_MASK		(ICP_TC_HPD_ENABLE(HPD_PORT_TC6) | \
>-					 ICP_TC_HPD_ENABLE(HPD_PORT_TC5) | \
>-					 ICP_TC_HPD_ENABLE_MASK)
>-#define DG1_DDI_HPD_ENABLE_MASK		(SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_D)=
 | \
>-					 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_C) | \
>-					 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_B) | \
>-					 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_A))
>-
> #define _PCH_DPLL_A              0xc6014
> #define _PCH_DPLL_B              0xc6018
> #define PCH_DPLL(pll) _MMIO((pll) =3D=3D 0 ? _PCH_DPLL_A : _PCH_DPLL_B)
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
