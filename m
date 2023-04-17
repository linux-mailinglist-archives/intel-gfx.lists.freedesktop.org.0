Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2446A6E49B0
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 15:17:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A066510E4E0;
	Mon, 17 Apr 2023 13:17:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C06A910E4DE
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 13:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681737459; x=1713273459;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hzUA8FiRCIJ7tO1Ra6rJHeRPGGSCbRzGw0TKV9jZggI=;
 b=BVuj/+GR5seKc/m8Dc/M+tBhvrNBhD8P9kFJDREFzfqRr0q0rL/1ejXD
 ChsDx7Lf5q9E6aP4psfQkytdl7SIQAXThRZo0q8WA7sD9JL2ZyQMjU6oY
 Z/y0xboYUNic+wpfBUf332x0CbQcwA/sPgAs9D6DOhWxjuFXv5O1HhcAA
 9sHXVE6eos8kCd7OMtXueGwpaCJFN2KURQRde1ziiAzHSwEmBNSgKMqMs
 6lmLTgljux0izaGNQVFpy8RzmbbHR+6naEDcJcHRbMl0ksk4JcMQgYJwk
 p8cpVq7JKjzHFjy7auQi6odE8WpD3N9mKW3wJDqtQ41bBji2EK7eQ7Tmi w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="329057591"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="329057591"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 06:17:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="640953247"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="640953247"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga003.jf.intel.com with SMTP; 17 Apr 2023 06:17:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 Apr 2023 16:17:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Apr 2023 16:17:26 +0300
Message-Id: <20230417131728.7705-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230417131728.7705-1-ville.syrjala@linux.intel.com>
References: <20230417131728.7705-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915: Introduce
 intel_hpd_enable_detection()
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

Add a mechanism by which we can enable the HPD sense for
individual encoders.

This will be used during eDP probing to figure out if
anything is actually connected. The normal intel_hpd_irq_setup()
thing doesn't work since we only do that after probing the
outputs, and we only enable HPD sense for encoders that were
successfully probed.

The other idea that crossed my minds was to just turn on
HPD sense for all pins before output probing and let hpd_irq_setup()
clean it up afterwards. But that doesn't work for BXT/GLK where
the HPD invert information comes from the VBT child device.
So looks like this really needs to be per-encoder.

v2: Give it a better name (Jani)
v3: Deal with mtl

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com> #v2
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 199 ++++++++++++++++++++++++++++++--
 drivers/gpu/drm/i915/i915_irq.h |   2 +
 2 files changed, 193 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 273ffce9807a..3505fafcfb7b 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2988,6 +2988,15 @@ static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
 			 intel_hpd_hotplug_enables(dev_priv, ibx_hotplug_enables));
 }
 
+static void ibx_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG,
+			 ibx_hotplug_mask(encoder->hpd_pin),
+			 ibx_hotplug_enables(encoder));
+}
+
 static void ibx_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_irqs, enabled_irqs;
@@ -3048,6 +3057,15 @@ static void icp_ddi_hpd_detection_setup(struct drm_i915_private *dev_priv)
 			 intel_hpd_hotplug_enables(dev_priv, icp_ddi_hotplug_enables));
 }
 
+static void icp_ddi_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_uncore_rmw(&i915->uncore, SHOTPLUG_CTL_DDI,
+			 icp_ddi_hotplug_mask(encoder->hpd_pin),
+			 icp_ddi_hotplug_enables(encoder));
+}
+
 static void icp_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
 	intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_TC,
@@ -3060,6 +3078,21 @@ static void icp_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
 			 intel_hpd_hotplug_enables(dev_priv, icp_tc_hotplug_enables));
 }
 
+static void icp_tc_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_uncore_rmw(&i915->uncore, SHOTPLUG_CTL_TC,
+			 icp_tc_hotplug_mask(encoder->hpd_pin),
+			 icp_tc_hotplug_enables(encoder));
+}
+
+static void icp_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	icp_ddi_hpd_enable_detection(encoder);
+	icp_tc_hpd_enable_detection(encoder);
+}
+
 static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_irqs, enabled_irqs;
@@ -3105,6 +3138,14 @@ static void dg1_hpd_invert(struct drm_i915_private *i915)
 	intel_uncore_rmw(&i915->uncore, SOUTH_CHICKEN1, 0, val);
 }
 
+static void dg1_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	dg1_hpd_invert(i915);
+	icp_hpd_enable_detection(encoder);
+}
+
 static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	dg1_hpd_invert(dev_priv);
@@ -3123,6 +3164,15 @@ static void gen11_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
 			 intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
 }
 
+static void gen11_tc_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_uncore_rmw(&i915->uncore, GEN11_TC_HOTPLUG_CTL,
+			 gen11_hotplug_mask(encoder->hpd_pin),
+			 gen11_hotplug_enables(encoder));
+}
+
 static void gen11_tbt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
 	intel_uncore_rmw(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL,
@@ -3135,6 +3185,26 @@ static void gen11_tbt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 			 intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
 }
 
+static void gen11_tbt_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_uncore_rmw(&i915->uncore, GEN11_TBT_HOTPLUG_CTL,
+			 gen11_hotplug_mask(encoder->hpd_pin),
+			 gen11_hotplug_enables(encoder));
+}
+
+static void gen11_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	gen11_tc_hpd_enable_detection(encoder);
+	gen11_tbt_hpd_enable_detection(encoder);
+
+	if (INTEL_PCH_TYPE(i915) >= PCH_ICP)
+		icp_hpd_enable_detection(encoder);
+}
+
 static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_irqs, enabled_irqs;
@@ -3195,6 +3265,15 @@ static void mtp_ddi_hpd_detection_setup(struct drm_i915_private *i915)
 		     intel_hpd_hotplug_enables(i915, mtp_ddi_hotplug_enables));
 }
 
+static void mtp_ddi_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_de_rmw(i915, SHOTPLUG_CTL_DDI,
+		     mtp_ddi_hotplug_mask(encoder->hpd_pin),
+		     mtp_ddi_hotplug_enables(encoder));
+}
+
 static void mtp_tc_hpd_detection_setup(struct drm_i915_private *i915)
 {
 	intel_de_rmw(i915, SHOTPLUG_CTL_TC,
@@ -3205,6 +3284,15 @@ static void mtp_tc_hpd_detection_setup(struct drm_i915_private *i915)
 		     intel_hpd_hotplug_enables(i915, mtp_tc_hotplug_enables));
 }
 
+static void mtp_tc_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_de_rmw(i915, SHOTPLUG_CTL_DDI,
+		     mtp_tc_hotplug_mask(encoder->hpd_pin),
+		     mtp_tc_hotplug_enables(encoder));
+}
+
 static void mtp_hpd_invert(struct drm_i915_private *i915)
 {
 	u32 val = (INVERT_DDIA_HPD |
@@ -3219,6 +3307,15 @@ static void mtp_hpd_invert(struct drm_i915_private *i915)
 	intel_de_rmw(i915, SOUTH_CHICKEN1, 0, val);
 }
 
+static void mtp_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	mtp_hpd_invert(i915);
+	mtp_ddi_hpd_enable_detection(encoder);
+	mtp_tc_hpd_enable_detection(encoder);
+}
+
 static void mtp_hpd_irq_setup(struct drm_i915_private *i915)
 {
 	u32 hotplug_irqs, enabled_irqs;
@@ -3235,25 +3332,50 @@ static void mtp_hpd_irq_setup(struct drm_i915_private *i915)
 	mtp_tc_hpd_detection_setup(i915);
 }
 
+static bool is_xelpdp_pica_hpd_pin(enum hpd_pin hpd_pin)
+{
+	return hpd_pin >= HPD_PORT_TC1 && hpd_pin <= HPD_PORT_TC4;
+}
+
+static void _xelpdp_pica_hpd_detection_setup(struct drm_i915_private *i915,
+					     enum hpd_pin hpd_pin, bool enable)
+{
+	u32 mask = XELPDP_TBT_HOTPLUG_ENABLE |
+		XELPDP_DP_ALT_HOTPLUG_ENABLE;
+
+	if (!is_xelpdp_pica_hpd_pin(hpd_pin))
+		return;
+
+	intel_de_rmw(i915, XELPDP_PORT_HOTPLUG_CTL(hpd_pin),
+		     mask, enable ? mask : 0);
+}
+
+static void xelpdp_pica_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	_xelpdp_pica_hpd_detection_setup(i915, encoder->hpd_pin, true);
+}
+
 static void xelpdp_pica_hpd_detection_setup(struct drm_i915_private *i915)
 {
 	struct intel_encoder *encoder;
-	enum hpd_pin pin;
 	u32 available_pins = 0;
+	enum hpd_pin pin;
 
 	BUILD_BUG_ON(BITS_PER_TYPE(available_pins) < HPD_NUM_PINS);
 
 	for_each_intel_encoder(&i915->drm, encoder)
 		available_pins |= BIT(encoder->hpd_pin);
 
-	for (pin = HPD_PORT_TC1; pin <= HPD_PORT_TC4; pin++) {
-		u32 mask = XELPDP_TBT_HOTPLUG_ENABLE |
-			   XELPDP_DP_ALT_HOTPLUG_ENABLE;
+	for_each_hpd_pin(pin)
+		_xelpdp_pica_hpd_detection_setup(i915, pin, available_pins & BIT(pin));
+}
 
-		intel_de_rmw(i915, XELPDP_PORT_HOTPLUG_CTL(pin),
-			     mask,
-			     available_pins & BIT(pin) ?  mask : 0);
-	}
+static void xelpdp_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	xelpdp_pica_hpd_enable_detection(encoder);
+	mtp_hpd_enable_detection(encoder);
 }
 
 static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)
@@ -3330,6 +3452,26 @@ static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 			 intel_hpd_hotplug_enables(dev_priv, spt_hotplug2_enables));
 }
 
+static void spt_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	/* Display WA #1179 WaHardHangonHotPlug: cnp */
+	if (HAS_PCH_CNP(i915)) {
+		intel_uncore_rmw(&i915->uncore, SOUTH_CHICKEN1,
+				 CHASSIS_CLK_REQ_DURATION_MASK,
+				 CHASSIS_CLK_REQ_DURATION(0xf));
+	}
+
+	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG,
+			 spt_hotplug_mask(encoder->hpd_pin),
+			 spt_hotplug_enables(encoder));
+
+	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG2,
+			 spt_hotplug2_mask(encoder->hpd_pin),
+			 spt_hotplug2_enables(encoder));
+}
+
 static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_irqs, enabled_irqs;
@@ -3379,6 +3521,17 @@ static void ilk_hpd_detection_setup(struct drm_i915_private *dev_priv)
 			 intel_hpd_hotplug_enables(dev_priv, ilk_hotplug_enables));
 }
 
+static void ilk_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_uncore_rmw(&i915->uncore, DIGITAL_PORT_HOTPLUG_CNTRL,
+			 ilk_hotplug_mask(encoder->hpd_pin),
+			 ilk_hotplug_enables(encoder));
+
+	ibx_hpd_enable_detection(encoder);
+}
+
 static void ilk_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_irqs, enabled_irqs;
@@ -3444,6 +3597,15 @@ static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 			 intel_hpd_hotplug_enables(dev_priv, bxt_hotplug_enables));
 }
 
+static void bxt_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG,
+			 bxt_hotplug_mask(encoder->hpd_pin),
+			 bxt_hotplug_enables(encoder));
+}
+
 static void bxt_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_irqs, enabled_irqs;
@@ -4121,6 +4283,15 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
 	i915_enable_asle_pipestat(dev_priv);
 }
 
+static void i915_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	u32 hotplug_en = hpd_mask_i915[encoder->hpd_pin];
+
+	/* HPD sense and interrupt enable are one and the same */
+	i915_hotplug_interrupt_update(i915, hotplug_en, hotplug_en);
+}
+
 static void i915_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_en;
@@ -4206,12 +4377,16 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
 }
 
 struct intel_hotplug_funcs {
+	/* Enable HPD sense and interrupts for all present encoders */
 	void (*hpd_irq_setup)(struct drm_i915_private *i915);
+	/* Enable HPD sense for a single encoder */
+	void (*hpd_enable_detection)(struct intel_encoder *encoder);
 };
 
 #define HPD_FUNCS(platform)					 \
 static const struct intel_hotplug_funcs platform##_hpd_funcs = { \
 	.hpd_irq_setup = platform##_hpd_irq_setup,		 \
+	.hpd_enable_detection = platform##_hpd_enable_detection, \
 }
 
 HPD_FUNCS(i915);
@@ -4224,6 +4399,14 @@ HPD_FUNCS(spt);
 HPD_FUNCS(ilk);
 #undef HPD_FUNCS
 
+void intel_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	if (i915->display.funcs.hotplug)
+		i915->display.funcs.hotplug->hpd_enable_detection(encoder);
+}
+
 void intel_hpd_irq_setup(struct drm_i915_private *i915)
 {
 	if (i915->display_irqs_enabled && i915->display.funcs.hotplug)
diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
index 03ee4c8b1ed3..3717a66f97c6 100644
--- a/drivers/gpu/drm/i915/i915_irq.h
+++ b/drivers/gpu/drm/i915/i915_irq.h
@@ -17,6 +17,7 @@ struct drm_device;
 struct drm_display_mode;
 struct drm_i915_private;
 struct intel_crtc;
+struct intel_encoder;
 struct intel_uncore;
 
 void intel_irq_init(struct drm_i915_private *dev_priv);
@@ -37,6 +38,7 @@ i915_disable_pipestat(struct drm_i915_private *dev_priv, enum pipe pipe,
 void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv);
 void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv);
 
+void intel_hpd_enable_detection(struct intel_encoder *encoder);
 void intel_hpd_irq_setup(struct drm_i915_private *i915);
 void i915_hotplug_interrupt_update(struct drm_i915_private *dev_priv,
 				   u32 mask,
-- 
2.39.2

