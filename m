Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6EC6A85E9
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 17:11:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 668E010E183;
	Thu,  2 Mar 2023 16:11:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FEF710E14A
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 16:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677773502; x=1709309502;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s2C4or70/j8Xa8Yh8Nrm6xV8Ht/1EloQvOw/h2Twzmo=;
 b=TEI1dW4v7gpO/N/fTWbQ1BlvmJJQ4KPymzxiBfHjwPw8m5Z9FyNIADM0
 RcAcLFwULBAWJSzpI8rb6eDG6kR/LgS6rB0mFDRMjOzI4+g6EcZVgV4qV
 ly1kVBUVFRZJCyBVJzznE4pt5ccRClfYQ17nM7mhOjVsAD/CaDKiICaNt
 j9ulBhE3TkHvtNWL5jpnaWG/wNz571njFuKWRqJFnyRbkLrZrARV38ZiD
 ve/Be+zFA88GhB1cZr74PJUrFPocpRUnP11KEr2O8x0JNl44xk8705a6L
 /ku6CZm+nQgLmO2dL/DRNFn0qc5/nuVljDZWH32w9sImjf7Hoc8KUV+w3 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="323057922"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="323057922"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 08:10:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="784889114"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="784889114"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 02 Mar 2023 08:10:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Mar 2023 18:10:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Mar 2023 18:10:11 +0200
Message-Id: <20230302161013.29213-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230302161013.29213-1-ville.syrjala@linux.intel.com>
References: <20230302161013.29213-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/7] drm/i915: Introduce
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
Cc: Jani Nikula <jani.nikula@intel.com>
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

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 131 ++++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_irq.h |   2 +
 2 files changed, 133 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 1e6a6f14a968..9d00b840727c 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2893,6 +2893,15 @@ static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
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
@@ -2963,6 +2972,15 @@ static void icp_ddi_hpd_detection_setup(struct drm_i915_private *dev_priv)
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
@@ -2975,6 +2993,21 @@ static void icp_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
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
@@ -3025,6 +3058,14 @@ static void dg1_hpd_invert(struct drm_i915_private *i915)
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
@@ -3043,6 +3084,15 @@ static void gen11_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
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
@@ -3055,6 +3105,26 @@ static void gen11_tbt_hpd_detection_setup(struct drm_i915_private *dev_priv)
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
@@ -3140,6 +3210,26 @@ static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)
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
@@ -3189,6 +3279,17 @@ static void ilk_hpd_detection_setup(struct drm_i915_private *dev_priv)
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
@@ -3254,6 +3355,15 @@ static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv)
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
@@ -3913,6 +4023,15 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
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
@@ -3998,12 +4117,16 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
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
@@ -4015,6 +4138,14 @@ HPD_FUNCS(spt);
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

