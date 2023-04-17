Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C70C6E49AD
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 15:17:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92AFA10E4DD;
	Mon, 17 Apr 2023 13:17:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 806AE10E4DD
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 13:17:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681737455; x=1713273455;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1N75RzieiF708SWUmhMl1AunUxGwL2kXCkyJcbvCbGE=;
 b=Qd5N5cofX2cvxDLeIoBzRWLuBRQNavgNpuF5JsnMGBvdv+udYyz4guwM
 LVVQlbMNtCqBDTABp9ufTaYyzWuzX4xqmeOjdhTiRyQf7KdksU85JS6q7
 ac4EVTO7Tz8wFo/l9p7xRzWZlVFRYxr9XERA+qnWcAxVzxvMBVu+cSsBm
 RsdWPAIMofXFDmK3YMoHO/j0+imBlQJ2VvBp1HI37y2IF8k5hZ2wfaH0m
 Yktdk80/YQbJSYkCYRNx+i5e4HCYKM+oGV/NWONsYfV8GHd2JlXYgXAvA
 a6FCjgA3kcGoj6l99qBE+lMLPTx12Csb2DctAw/n52BtTUDOxjXbCZ+Gk Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="329057579"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="329057579"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 06:17:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="640953225"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="640953225"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga003.jf.intel.com with SMTP; 17 Apr 2023 06:17:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 Apr 2023 16:17:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Apr 2023 16:17:25 +0300
Message-Id: <20230417131728.7705-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230417131728.7705-1-ville.syrjala@linux.intel.com>
References: <20230417131728.7705-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915: Introduce
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
v3: Drop the _foo_hotplug_enables() redirection too
v4: Deal with mtp

Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com> #v3
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 201 ++++++++++++++++++++++----------
 1 file changed, 137 insertions(+), 64 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index dea1a117f3fa..273ffce9807a 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2931,6 +2931,22 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
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
@@ -2965,13 +2981,10 @@ static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
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
 
@@ -2987,53 +3000,63 @@ static void ibx_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	ibx_hpd_detection_setup(dev_priv);
 }
 
-static u32 icp_ddi_hotplug_enables(struct intel_encoder *encoder)
+static u32 icp_ddi_hotplug_mask(enum hpd_pin hpd_pin)
 {
-	switch (encoder->hpd_pin) {
+	switch (hpd_pin) {
 	case HPD_PORT_A:
 	case HPD_PORT_B:
 	case HPD_PORT_C:
 	case HPD_PORT_D:
-		return SHOTPLUG_CTL_DDI_HPD_ENABLE(encoder->hpd_pin);
+		return SHOTPLUG_CTL_DDI_HPD_ENABLE(hpd_pin);
 	default:
 		return 0;
 	}
 }
 
-static u32 icp_tc_hotplug_enables(struct intel_encoder *encoder)
+static u32 icp_ddi_hotplug_enables(struct intel_encoder *encoder)
 {
-	switch (encoder->hpd_pin) {
+	return icp_ddi_hotplug_mask(encoder->hpd_pin);
+}
+
+static u32 icp_tc_hotplug_mask(enum hpd_pin hpd_pin)
+{
+	switch (hpd_pin) {
 	case HPD_PORT_TC1:
 	case HPD_PORT_TC2:
 	case HPD_PORT_TC3:
 	case HPD_PORT_TC4:
 	case HPD_PORT_TC5:
 	case HPD_PORT_TC6:
-		return ICP_TC_HPD_ENABLE(encoder->hpd_pin);
+		return ICP_TC_HPD_ENABLE(hpd_pin);
 	default:
 		return 0;
 	}
 }
 
+static u32 icp_tc_hotplug_enables(struct intel_encoder *encoder)
+{
+	return icp_tc_hotplug_mask(encoder->hpd_pin);
+}
+
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
 
@@ -3053,21 +3076,26 @@ static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	icp_tc_hpd_detection_setup(dev_priv);
 }
 
-static u32 gen11_hotplug_enables(struct intel_encoder *encoder)
+static u32 gen11_hotplug_mask(enum hpd_pin hpd_pin)
 {
-	switch (encoder->hpd_pin) {
+	switch (hpd_pin) {
 	case HPD_PORT_TC1:
 	case HPD_PORT_TC2:
 	case HPD_PORT_TC3:
 	case HPD_PORT_TC4:
 	case HPD_PORT_TC5:
 	case HPD_PORT_TC6:
-		return GEN11_HOTPLUG_CTL_ENABLE(encoder->hpd_pin);
+		return GEN11_HOTPLUG_CTL_ENABLE(hpd_pin);
 	default:
 		return 0;
 	}
 }
 
+static u32 gen11_hotplug_enables(struct intel_encoder *encoder)
+{
+	return gen11_hotplug_mask(encoder->hpd_pin);
+}
+
 static void dg1_hpd_invert(struct drm_i915_private *i915)
 {
 	u32 val = (INVERT_DDIA_HPD |
@@ -3086,24 +3114,24 @@ static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
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
 
@@ -3125,45 +3153,55 @@ static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
 		icp_hpd_irq_setup(dev_priv);
 }
 
-static u32 mtp_ddi_hotplug_enables(struct intel_encoder *encoder)
+static u32 mtp_ddi_hotplug_mask(enum hpd_pin hpd_pin)
 {
-	switch (encoder->hpd_pin) {
+	switch (hpd_pin) {
 	case HPD_PORT_A:
 	case HPD_PORT_B:
-		return SHOTPLUG_CTL_DDI_HPD_ENABLE(encoder->hpd_pin);
+		return SHOTPLUG_CTL_DDI_HPD_ENABLE(hpd_pin);
 	default:
 		return 0;
 	}
 }
 
-static u32 mtp_tc_hotplug_enables(struct intel_encoder *encoder)
+static u32 mtp_ddi_hotplug_enables(struct intel_encoder *encoder)
 {
-	switch (encoder->hpd_pin) {
+	return mtp_ddi_hotplug_mask(encoder->hpd_pin);
+}
+
+static u32 mtp_tc_hotplug_mask(enum hpd_pin hpd_pin)
+{
+	switch (hpd_pin) {
 	case HPD_PORT_TC1:
 	case HPD_PORT_TC2:
 	case HPD_PORT_TC3:
 	case HPD_PORT_TC4:
-		return ICP_TC_HPD_ENABLE(encoder->hpd_pin);
+		return ICP_TC_HPD_ENABLE(hpd_pin);
 	default:
 		return 0;
 	}
 }
 
+static u32 mtp_tc_hotplug_enables(struct intel_encoder *encoder)
+{
+	return mtp_tc_hotplug_mask(encoder->hpd_pin);
+}
+
 static void mtp_ddi_hpd_detection_setup(struct drm_i915_private *i915)
 {
 	intel_de_rmw(i915, SHOTPLUG_CTL_DDI,
-		     (SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_A) |
-		      SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_B)),
+		     mtp_ddi_hotplug_mask(HPD_PORT_A) |
+		     mtp_ddi_hotplug_mask(HPD_PORT_B),
 		     intel_hpd_hotplug_enables(i915, mtp_ddi_hotplug_enables));
 }
 
 static void mtp_tc_hpd_detection_setup(struct drm_i915_private *i915)
 {
 	intel_de_rmw(i915, SHOTPLUG_CTL_TC,
-		     (ICP_TC_HPD_ENABLE(HPD_PORT_TC1) |
-		      ICP_TC_HPD_ENABLE(HPD_PORT_TC2) |
-		      ICP_TC_HPD_ENABLE(HPD_PORT_TC3) |
-		      ICP_TC_HPD_ENABLE(HPD_PORT_TC4)),
+		     mtp_tc_hotplug_mask(HPD_PORT_TC1) |
+		     mtp_tc_hotplug_mask(HPD_PORT_TC2) |
+		     mtp_tc_hotplug_mask(HPD_PORT_TC3) |
+		     mtp_tc_hotplug_mask(HPD_PORT_TC4),
 		     intel_hpd_hotplug_enables(i915, mtp_tc_hotplug_enables));
 }
 
@@ -3235,9 +3273,9 @@ static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)
 		mtp_hpd_irq_setup(i915);
 }
 
-static u32 spt_hotplug_enables(struct intel_encoder *encoder)
+static u32 spt_hotplug_mask(enum hpd_pin hpd_pin)
 {
-	switch (encoder->hpd_pin) {
+	switch (hpd_pin) {
 	case HPD_PORT_A:
 		return PORTA_HOTPLUG_ENABLE;
 	case HPD_PORT_B:
@@ -3251,9 +3289,14 @@ static u32 spt_hotplug_enables(struct intel_encoder *encoder)
 	}
 }
 
-static u32 spt_hotplug2_enables(struct intel_encoder *encoder)
+static u32 spt_hotplug_enables(struct intel_encoder *encoder)
 {
-	switch (encoder->hpd_pin) {
+	return spt_hotplug_mask(encoder->hpd_pin);
+}
+
+static u32 spt_hotplug2_mask(enum hpd_pin hpd_pin)
+{
+	switch (hpd_pin) {
 	case HPD_PORT_E:
 		return PORTE_HOTPLUG_ENABLE;
 	default:
@@ -3261,6 +3304,11 @@ static u32 spt_hotplug2_enables(struct intel_encoder *encoder)
 	}
 }
 
+static u32 spt_hotplug2_enables(struct intel_encoder *encoder)
+{
+	return spt_hotplug2_mask(encoder->hpd_pin);
+}
+
 static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
 	/* Display WA #1179 WaHardHangonHotPlug: cnp */
@@ -3271,13 +3319,14 @@ static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 
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
 
@@ -3296,6 +3345,17 @@ static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)
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
@@ -3315,7 +3375,7 @@ static void ilk_hpd_detection_setup(struct drm_i915_private *dev_priv)
 	 * The pulse duration bits are reserved on HSW+.
 	 */
 	intel_uncore_rmw(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL,
-			 DIGITAL_PORTA_HOTPLUG_ENABLE | DIGITAL_PORTA_PULSE_DURATION_MASK,
+			 ilk_hotplug_mask(HPD_PORT_A),
 			 intel_hpd_hotplug_enables(dev_priv, ilk_hotplug_enables));
 }
 
@@ -3336,6 +3396,20 @@ static void ilk_hpd_irq_setup(struct drm_i915_private *dev_priv)
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
@@ -3364,10 +3438,9 @@ static u32 bxt_hotplug_enables(struct intel_encoder *encoder)
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

