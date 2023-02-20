Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD6269D236
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 18:45:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A68F10E739;
	Mon, 20 Feb 2023 17:45:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7377D10E744
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 17:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676915100; x=1708451100;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8ReEJZ412XCYmZOK/xAtdAi8di1iwOyEiBM2uI0e+E4=;
 b=CaEPRlG6fBEEpcW5FIdz4FrB5Ri2Ckxy9MJaF1KnMKrkXqLWIR/mrPKO
 DSZ/hvQ/WPhvzmUSWP9pBnjyjJattxAjBT4QTRRQusWtppq1O8UyqrkxH
 XeFf53JGc30JjR8CuDCoB2EY4JcDmLHXvF48ZrS0loCNpOCEKMpLk2dn1
 FQRzX2MVKUeO3U6bXejbnI9LQBkgerR22YWJWvT+OZxPyES2BcMCScYWi
 PWApPLDKagCWi2oQ5o0ZaUkQkfWqc/m2gK8XZcB3Ldc1f7iRRCJlP8d8z
 eiNhd1lxaZLyIQgVQ+0EjOFX+P5TDd4qeB/BK/Qm05mExnU5p1LpGdkgg g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="312085262"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="312085262"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 09:45:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="701745021"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="701745021"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 20 Feb 2023 09:44:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Feb 2023 19:44:57 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 19:44:34 +0200
Message-Id: <20230220174448.7611-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230220174448.7611-1-ville.syrjala@linux.intel.com>
References: <20230220174448.7611-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/17] drm/i915: Introduce
 <platoform>_hotplug_mask()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pair each <platform>_hotplug_enables() function with
a corresponding <platform>_hotplug_mask() function so that
we can determine right bits to clear on a per hpd_pin basis.
We'll need this for turning on HPD sense for a specific
encoder rather than just all of them.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 231 ++++++++++++++++++++++----------
 1 file changed, 160 insertions(+), 71 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index b024a3a7ca19..340d2226f9a4 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2833,8 +2833,25 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
 		vlv_display_irq_reset(dev_priv);
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
+static u32 ibx_hotplug_mask(struct drm_i915_private *i915,
+			    enum hpd_pin hpd_pin)
+{
+	switch (hpd_pin) {
+	case HPD_PORT_A:
+		return PORTA_HOTPLUG_ENABLE;
+	case HPD_PORT_B:
+		return PORTB_HOTPLUG_ENABLE | PORTB_PULSE_DURATION_MASK;
+	case HPD_PORT_C:
+		return PORTC_HOTPLUG_ENABLE | PORTC_PULSE_DURATION_MASK;
+	case HPD_PORT_D:
+		return PORTD_HOTPLUG_ENABLE | PORTD_PULSE_DURATION_MASK;
+	default:
+		return 0;
+	}
+}
+
 static u32 ibx_hotplug_enables(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 
@@ -2867,15 +2884,12 @@ static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
 	 * duration to 2ms (which is the minimum in the Display Port spec).
 	 * The pulse duration bits are reserved on LPT+.
 	 */
 	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
-			 PORTA_HOTPLUG_ENABLE |
-			 PORTB_HOTPLUG_ENABLE |
-			 PORTC_HOTPLUG_ENABLE |
-			 PORTD_HOTPLUG_ENABLE |
-			 PORTB_PULSE_DURATION_MASK |
-			 PORTC_PULSE_DURATION_MASK |
-			 PORTD_PULSE_DURATION_MASK,
+			 ibx_hotplug_mask(dev_priv, HPD_PORT_A) |
+			 ibx_hotplug_mask(dev_priv, HPD_PORT_B) |
+			 ibx_hotplug_mask(dev_priv, HPD_PORT_C) |
+			 ibx_hotplug_mask(dev_priv, HPD_PORT_D),
 			 intel_hpd_hotplug_enables(dev_priv, ibx_hotplug_enables));
 }
 
 static void ibx_hpd_irq_setup(struct drm_i915_private *dev_priv)
@@ -2889,55 +2903,75 @@ static void ibx_hpd_irq_setup(struct drm_i915_private *dev_priv)
 
 	ibx_hpd_detection_setup(dev_priv);
 }
 
+static u32 _icp_ddi_hotplug_enables(enum hpd_pin hpd_pin)
+{
+	switch (hpd_pin) {
+	case HPD_PORT_A:
+	case HPD_PORT_B:
+	case HPD_PORT_C:
+	case HPD_PORT_D:
+		return SHOTPLUG_CTL_DDI_HPD_ENABLE(hpd_pin);
+	default:
+		return 0;
+	}
+}
+
+static u32 icp_ddi_hotplug_mask(struct drm_i915_private *i915, enum hpd_pin hpd_pin)
+{
+	return _icp_ddi_hotplug_enables(hpd_pin);
+}
+
 static u32 icp_ddi_hotplug_enables(struct intel_encoder *encoder)
 {
-	switch (encoder->hpd_pin) {
-	case HPD_PORT_A:
-	case HPD_PORT_B:
-	case HPD_PORT_C:
-	case HPD_PORT_D:
-		return SHOTPLUG_CTL_DDI_HPD_ENABLE(encoder->hpd_pin);
+	return _icp_ddi_hotplug_enables(encoder->hpd_pin);
+}
+
+static u32 _icp_tc_hotplug_enables(enum hpd_pin hpd_pin)
+{
+	switch (hpd_pin) {
+	case HPD_PORT_TC1:
+	case HPD_PORT_TC2:
+	case HPD_PORT_TC3:
+	case HPD_PORT_TC4:
+	case HPD_PORT_TC5:
+	case HPD_PORT_TC6:
+		return ICP_TC_HPD_ENABLE(hpd_pin);
 	default:
 		return 0;
 	}
 }
 
+static u32 icp_tc_hotplug_mask(struct drm_i915_private *i915, enum hpd_pin hpd_pin)
+{
+	return _icp_tc_hotplug_enables(hpd_pin);
+}
+
 static u32 icp_tc_hotplug_enables(struct intel_encoder *encoder)
 {
-	switch (encoder->hpd_pin) {
-	case HPD_PORT_TC1:
-	case HPD_PORT_TC2:
-	case HPD_PORT_TC3:
-	case HPD_PORT_TC4:
-	case HPD_PORT_TC5:
-	case HPD_PORT_TC6:
-		return ICP_TC_HPD_ENABLE(encoder->hpd_pin);
-	default:
-		return 0;
-	}
+	return _icp_tc_hotplug_enables(encoder->hpd_pin);
 }
 
 static void icp_ddi_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
 	intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_DDI,
-			 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_A) |
-			 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_B) |
-			 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_C) |
-			 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_D),
+			 icp_ddi_hotplug_mask(dev_priv, HPD_PORT_A) |
+			 icp_ddi_hotplug_mask(dev_priv, HPD_PORT_B) |
+			 icp_ddi_hotplug_mask(dev_priv, HPD_PORT_C) |
+			 icp_ddi_hotplug_mask(dev_priv, HPD_PORT_D),
 			 intel_hpd_hotplug_enables(dev_priv, icp_ddi_hotplug_enables));
 }
 
 static void icp_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
 	intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_TC,
-			 ICP_TC_HPD_ENABLE(HPD_PORT_TC1) |
-			 ICP_TC_HPD_ENABLE(HPD_PORT_TC2) |
-			 ICP_TC_HPD_ENABLE(HPD_PORT_TC3) |
-			 ICP_TC_HPD_ENABLE(HPD_PORT_TC4) |
-			 ICP_TC_HPD_ENABLE(HPD_PORT_TC5) |
-			 ICP_TC_HPD_ENABLE(HPD_PORT_TC6),
+			 icp_tc_hotplug_mask(dev_priv, HPD_PORT_TC1) |
+			 icp_tc_hotplug_mask(dev_priv, HPD_PORT_TC2) |
+			 icp_tc_hotplug_mask(dev_priv, HPD_PORT_TC3) |
+			 icp_tc_hotplug_mask(dev_priv, HPD_PORT_TC4) |
+			 icp_tc_hotplug_mask(dev_priv, HPD_PORT_TC5) |
+			 icp_tc_hotplug_mask(dev_priv, HPD_PORT_TC6),
 			 intel_hpd_hotplug_enables(dev_priv, icp_tc_hotplug_enables));
 }
 
 static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
@@ -2955,21 +2989,31 @@ static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	icp_ddi_hpd_detection_setup(dev_priv);
 	icp_tc_hpd_detection_setup(dev_priv);
 }
 
+static u32 _gen11_hotplug_enables(enum hpd_pin hpd_pin)
+{
+	switch (hpd_pin) {
+	case HPD_PORT_TC1:
+	case HPD_PORT_TC2:
+	case HPD_PORT_TC3:
+	case HPD_PORT_TC4:
+	case HPD_PORT_TC5:
+	case HPD_PORT_TC6:
+		return GEN11_HOTPLUG_CTL_ENABLE(hpd_pin);
+	default:
+		return 0;
+	}
+}
+
+static u32 gen11_hotplug_mask(struct drm_i915_private *i915, enum hpd_pin hpd_pin)
+{
+	return _gen11_hotplug_enables(hpd_pin);
+}
+
 static u32 gen11_hotplug_enables(struct intel_encoder *encoder)
 {
-	switch (encoder->hpd_pin) {
-	case HPD_PORT_TC1:
-	case HPD_PORT_TC2:
-	case HPD_PORT_TC3:
-	case HPD_PORT_TC4:
-	case HPD_PORT_TC5:
-	case HPD_PORT_TC6:
-		return GEN11_HOTPLUG_CTL_ENABLE(encoder->hpd_pin);
-	default:
-		return 0;
-	}
+	return _gen11_hotplug_enables(encoder->hpd_pin);
 }
 
 static void dg1_hpd_invert(struct drm_i915_private *i915)
 {
@@ -2988,26 +3032,26 @@ static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
 
 static void gen11_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
 	intel_uncore_rmw(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL,
-			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
-			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC2) |
-			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC3) |
-			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC4) |
-			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
-			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6),
+			 gen11_hotplug_mask(dev_priv, HPD_PORT_TC1) |
+			 gen11_hotplug_mask(dev_priv, HPD_PORT_TC2) |
+			 gen11_hotplug_mask(dev_priv, HPD_PORT_TC3) |
+			 gen11_hotplug_mask(dev_priv, HPD_PORT_TC4) |
+			 gen11_hotplug_mask(dev_priv, HPD_PORT_TC5) |
+			 gen11_hotplug_mask(dev_priv, HPD_PORT_TC6),
 			 intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
 }
 
 static void gen11_tbt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
 	intel_uncore_rmw(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL,
-			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
-			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC2) |
-			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC3) |
-			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC4) |
-			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
-			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6),
+			 gen11_hotplug_mask(dev_priv, HPD_PORT_TC1) |
+			 gen11_hotplug_mask(dev_priv, HPD_PORT_TC2) |
+			 gen11_hotplug_mask(dev_priv, HPD_PORT_TC3) |
+			 gen11_hotplug_mask(dev_priv, HPD_PORT_TC4) |
+			 gen11_hotplug_mask(dev_priv, HPD_PORT_TC5) |
+			 gen11_hotplug_mask(dev_priv, HPD_PORT_TC6),
 			 intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
 }
 
 static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
@@ -3027,11 +3071,11 @@ static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
 		icp_hpd_irq_setup(dev_priv);
 }
 
-static u32 spt_hotplug_enables(struct intel_encoder *encoder)
+static u32 _spt_hotplug_enables(enum hpd_pin hpd_pin)
 {
-	switch (encoder->hpd_pin) {
+	switch (hpd_pin) {
 	case HPD_PORT_A:
 		return PORTA_HOTPLUG_ENABLE;
 	case HPD_PORT_B:
 		return PORTB_HOTPLUG_ENABLE;
@@ -3043,18 +3087,38 @@ static u32 spt_hotplug_enables(struct intel_encoder *encoder)
 		return 0;
 	}
 }
 
-static u32 spt_hotplug2_enables(struct intel_encoder *encoder)
+static u32 spt_hotplug_mask(struct drm_i915_private *i915, enum hpd_pin hpd_pin)
 {
-	switch (encoder->hpd_pin) {
+	return _spt_hotplug_enables(hpd_pin);
+}
+
+static u32 spt_hotplug_enables(struct intel_encoder *encoder)
+{
+	return _spt_hotplug_enables(encoder->hpd_pin);
+}
+
+static u32 _spt_hotplug2_enables(enum hpd_pin hpd_pin)
+{
+	switch (hpd_pin) {
 	case HPD_PORT_E:
 		return PORTE_HOTPLUG_ENABLE;
 	default:
 		return 0;
 	}
 }
 
+static u32 spt_hotplug2_mask(struct drm_i915_private *i915, enum hpd_pin hpd_pin)
+{
+	return _spt_hotplug2_enables(hpd_pin);
+}
+
+static u32 spt_hotplug2_enables(struct intel_encoder *encoder)
+{
+	return _spt_hotplug2_enables(encoder->hpd_pin);
+}
+
 static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
 	/* Display WA #1179 WaHardHangonHotPlug: cnp */
 	if (HAS_PCH_CNP(dev_priv)) {
@@ -3063,15 +3127,16 @@ static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 	}
 
 	/* Enable digital hotplug on the PCH */
 	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
-			 PORTA_HOTPLUG_ENABLE |
-			 PORTB_HOTPLUG_ENABLE |
-			 PORTC_HOTPLUG_ENABLE |
-			 PORTD_HOTPLUG_ENABLE,
+			 spt_hotplug_mask(dev_priv, HPD_PORT_A) |
+			 spt_hotplug_mask(dev_priv, HPD_PORT_B) |
+			 spt_hotplug_mask(dev_priv, HPD_PORT_C) |
+			 spt_hotplug_mask(dev_priv, HPD_PORT_D),
 			 intel_hpd_hotplug_enables(dev_priv, spt_hotplug_enables));
 
-	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG2, PORTE_HOTPLUG_ENABLE,
+	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG2,
+			 spt_hotplug2_mask(dev_priv, HPD_PORT_E),
 			 intel_hpd_hotplug_enables(dev_priv, spt_hotplug2_enables));
 }
 
 static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)
@@ -3088,8 +3153,19 @@ static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)
 
 	spt_hpd_detection_setup(dev_priv);
 }
 
+static u32 ilk_hotplug_mask(struct drm_i915_private *i915, enum hpd_pin hpd_pin)
+{
+	switch (hpd_pin) {
+	case HPD_PORT_A:
+		return DIGITAL_PORTA_HOTPLUG_ENABLE |
+			DIGITAL_PORTA_PULSE_DURATION_MASK;
+	default:
+		return 0;
+	}
+}
+
 static u32 ilk_hotplug_enables(struct intel_encoder *encoder)
 {
 	switch (encoder->hpd_pin) {
 	case HPD_PORT_A:
@@ -3107,9 +3183,9 @@ static void ilk_hpd_detection_setup(struct drm_i915_private *dev_priv)
 	 * duration to 2ms (which is the minimum in the Display Port spec)
 	 * The pulse duration bits are reserved on HSW+.
 	 */
 	intel_uncore_rmw(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL,
-			 DIGITAL_PORTA_HOTPLUG_ENABLE | DIGITAL_PORTA_PULSE_DURATION_MASK,
+			 ilk_hotplug_mask(dev_priv, HPD_PORT_A),
 			 intel_hpd_hotplug_enables(dev_priv, ilk_hotplug_enables));
 }
 
 static void ilk_hpd_irq_setup(struct drm_i915_private *dev_priv)
@@ -3128,8 +3204,22 @@ static void ilk_hpd_irq_setup(struct drm_i915_private *dev_priv)
 
 	ibx_hpd_irq_setup(dev_priv);
 }
 
+static u32 bxt_hotplug_mask(struct drm_i915_private *i915, enum hpd_pin hpd_pin)
+{
+	switch (hpd_pin) {
+	case HPD_PORT_A:
+		return PORTA_HOTPLUG_ENABLE | BXT_DDIA_HPD_INVERT;
+	case HPD_PORT_B:
+		return PORTB_HOTPLUG_ENABLE | BXT_DDIB_HPD_INVERT;
+	case HPD_PORT_C:
+		return PORTC_HOTPLUG_ENABLE | BXT_DDIC_HPD_INVERT;
+	default:
+		return 0;
+	}
+}
+
 static u32 bxt_hotplug_enables(struct intel_encoder *encoder)
 {
 	u32 hotplug;
 
@@ -3156,12 +3246,11 @@ static u32 bxt_hotplug_enables(struct intel_encoder *encoder)
 
 static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
 	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
-			 PORTA_HOTPLUG_ENABLE |
-			 PORTB_HOTPLUG_ENABLE |
-			 PORTC_HOTPLUG_ENABLE |
-			 BXT_DDI_HPD_INVERT_MASK,
+			 bxt_hotplug_mask(dev_priv, HPD_PORT_A) |
+			 bxt_hotplug_mask(dev_priv, HPD_PORT_B) |
+			 bxt_hotplug_mask(dev_priv, HPD_PORT_C),
 			 intel_hpd_hotplug_enables(dev_priv, bxt_hotplug_enables));
 }
 
 static void bxt_hpd_irq_setup(struct drm_i915_private *dev_priv)
-- 
2.39.2

