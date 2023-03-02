Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D2A6A85E8
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 17:11:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF0B410E150;
	Thu,  2 Mar 2023 16:11:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E527A10E145
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 16:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677773501; x=1709309501;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CkQGxC67SzDLgIfjVI+hBfKHw+LxheRDwUMuVPmh06U=;
 b=LqizvfHdprIhRhD6RwrA5Q2GBSmdkjKZrQg0DALQUbFDBuBew8XqHLSn
 2QGp2/EH8BWV2oRM9jfrzAklena6o5IX7Ij5vTCOcH2X0WRbjUTk6DV8y
 OKLxu54JXBTcrHgLfWOmYCZkaXev+FlpQa0zcGq2rmck2WrfrWN/lxdvR
 FxuBqhgwFKtmce/Lb8rzoferivntLRGjH68RCc3mPTIP/kPrHgFlPWG4Y
 +xqjp34RGJYuW+CWu8mxDnSxESYPYjdR1AzIzukPH/KNWETtPw2RgXuMb
 atLUKOPTT4TiZf9WLLzsmCkpTXBbHVdUXsT5ocjdbVcjJ1bHN4LAmXN0n A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="323057912"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="323057912"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 08:10:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="784889079"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="784889079"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 02 Mar 2023 08:10:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Mar 2023 18:10:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Mar 2023 18:10:10 +0200
Message-Id: <20230302161013.29213-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230302161013.29213-1-ville.syrjala@linux.intel.com>
References: <20230302161013.29213-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915: Introduce
 <platform>_hotplug_mask()
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pair each <platform>_hotplug_enables() function with
a corresponding <platform>_hotplug_mask() function so that
we can determine right bits to clear on a per hpd_pin basis.
We'll need this for turning on HPD sense for a specific
encoder rather than just all of them.

v2: Drop the unused 'i915' param (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 230 ++++++++++++++++++++++----------
 1 file changed, 159 insertions(+), 71 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index cc3d016f76d1..1e6a6f14a968 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2836,6 +2836,22 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
+static u32 ibx_hotplug_mask(enum hpd_pin hpd_pin)
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
@@ -2870,13 +2886,10 @@ static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
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
+			 ibx_hotplug_mask(HPD_PORT_A) |
+			 ibx_hotplug_mask(HPD_PORT_B) |
+			 ibx_hotplug_mask(HPD_PORT_C) |
+			 ibx_hotplug_mask(HPD_PORT_D),
 			 intel_hpd_hotplug_enables(dev_priv, ibx_hotplug_enables));
 }
 
@@ -2892,53 +2905,73 @@ static void ibx_hpd_irq_setup(struct drm_i915_private *dev_priv)
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
+static u32 icp_ddi_hotplug_mask(enum hpd_pin hpd_pin)
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
 
+static u32 icp_tc_hotplug_mask(enum hpd_pin hpd_pin)
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
+			 icp_ddi_hotplug_mask(HPD_PORT_A) |
+			 icp_ddi_hotplug_mask(HPD_PORT_B) |
+			 icp_ddi_hotplug_mask(HPD_PORT_C) |
+			 icp_ddi_hotplug_mask(HPD_PORT_D),
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
+			 icp_tc_hotplug_mask(HPD_PORT_TC1) |
+			 icp_tc_hotplug_mask(HPD_PORT_TC2) |
+			 icp_tc_hotplug_mask(HPD_PORT_TC3) |
+			 icp_tc_hotplug_mask(HPD_PORT_TC4) |
+			 icp_tc_hotplug_mask(HPD_PORT_TC5) |
+			 icp_tc_hotplug_mask(HPD_PORT_TC6),
 			 intel_hpd_hotplug_enables(dev_priv, icp_tc_hotplug_enables));
 }
 
@@ -2958,19 +2991,29 @@ static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
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
+static u32 gen11_hotplug_mask(enum hpd_pin hpd_pin)
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
@@ -2991,24 +3034,24 @@ static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
 static void gen11_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
 	intel_uncore_rmw(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL,
-			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
-			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC2) |
-			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC3) |
-			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC4) |
-			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
-			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6),
+			 gen11_hotplug_mask(HPD_PORT_TC1) |
+			 gen11_hotplug_mask(HPD_PORT_TC2) |
+			 gen11_hotplug_mask(HPD_PORT_TC3) |
+			 gen11_hotplug_mask(HPD_PORT_TC4) |
+			 gen11_hotplug_mask(HPD_PORT_TC5) |
+			 gen11_hotplug_mask(HPD_PORT_TC6),
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
+			 gen11_hotplug_mask(HPD_PORT_TC1) |
+			 gen11_hotplug_mask(HPD_PORT_TC2) |
+			 gen11_hotplug_mask(HPD_PORT_TC3) |
+			 gen11_hotplug_mask(HPD_PORT_TC4) |
+			 gen11_hotplug_mask(HPD_PORT_TC5) |
+			 gen11_hotplug_mask(HPD_PORT_TC6),
 			 intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
 }
 
@@ -3030,9 +3073,9 @@ static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
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
@@ -3046,9 +3089,19 @@ static u32 spt_hotplug_enables(struct intel_encoder *encoder)
 	}
 }
 
-static u32 spt_hotplug2_enables(struct intel_encoder *encoder)
+static u32 spt_hotplug_mask(enum hpd_pin hpd_pin)
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
@@ -3056,6 +3109,16 @@ static u32 spt_hotplug2_enables(struct intel_encoder *encoder)
 	}
 }
 
+static u32 spt_hotplug2_mask(enum hpd_pin hpd_pin)
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
@@ -3066,13 +3129,14 @@ static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 
 	/* Enable digital hotplug on the PCH */
 	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
-			 PORTA_HOTPLUG_ENABLE |
-			 PORTB_HOTPLUG_ENABLE |
-			 PORTC_HOTPLUG_ENABLE |
-			 PORTD_HOTPLUG_ENABLE,
+			 spt_hotplug_mask(HPD_PORT_A) |
+			 spt_hotplug_mask(HPD_PORT_B) |
+			 spt_hotplug_mask(HPD_PORT_C) |
+			 spt_hotplug_mask(HPD_PORT_D),
 			 intel_hpd_hotplug_enables(dev_priv, spt_hotplug_enables));
 
-	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG2, PORTE_HOTPLUG_ENABLE,
+	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG2,
+			 spt_hotplug2_mask(HPD_PORT_E),
 			 intel_hpd_hotplug_enables(dev_priv, spt_hotplug2_enables));
 }
 
@@ -3091,6 +3155,17 @@ static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	spt_hpd_detection_setup(dev_priv);
 }
 
+static u32 ilk_hotplug_mask(enum hpd_pin hpd_pin)
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
@@ -3110,7 +3185,7 @@ static void ilk_hpd_detection_setup(struct drm_i915_private *dev_priv)
 	 * The pulse duration bits are reserved on HSW+.
 	 */
 	intel_uncore_rmw(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL,
-			 DIGITAL_PORTA_HOTPLUG_ENABLE | DIGITAL_PORTA_PULSE_DURATION_MASK,
+			 ilk_hotplug_mask(HPD_PORT_A),
 			 intel_hpd_hotplug_enables(dev_priv, ilk_hotplug_enables));
 }
 
@@ -3131,6 +3206,20 @@ static void ilk_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	ibx_hpd_irq_setup(dev_priv);
 }
 
+static u32 bxt_hotplug_mask(enum hpd_pin hpd_pin)
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
@@ -3159,10 +3248,9 @@ static u32 bxt_hotplug_enables(struct intel_encoder *encoder)
 static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
 	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
-			 PORTA_HOTPLUG_ENABLE |
-			 PORTB_HOTPLUG_ENABLE |
-			 PORTC_HOTPLUG_ENABLE |
-			 BXT_DDI_HPD_INVERT_MASK,
+			 bxt_hotplug_mask(HPD_PORT_A) |
+			 bxt_hotplug_mask(HPD_PORT_B) |
+			 bxt_hotplug_mask(HPD_PORT_C),
 			 intel_hpd_hotplug_enables(dev_priv, bxt_hotplug_enables));
 }
 
-- 
2.39.2

