Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 702E569D72F
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 00:41:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4A9A10E2CC;
	Mon, 20 Feb 2023 23:41:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BE3410E2AE
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 23:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676936464; x=1708472464;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=V+59385l7M7e3P0PaD1StPkuGKUQ2z7Fx9gBjfac+eA=;
 b=M1AFqyzewOb5un/JYzEJU8yyoEo1etaFQqRNgx3xAF3T8tz/QAFdzwZG
 eOs9UzzlkJaZrK8ZcVrPHXHbzbdRanOcV418Fg0tRpE36fA0Zfr70Qs/t
 gXs4qNhW468W/IX8r9KGjiQanMJDmNhsD45jkxkQt1R5klgxWrZj+EfO/
 hgQDw6xiuRN8o86rcbCnnw6CyMEYOckAu+e4fPwCGunZDK3eY4E4I+9cK
 fJ5WlVsFVRgTT/rDl19FvQAjYiLTH/ZK+B5XKX07FrTC2nExdYPffbICP
 AmpwxtuVDKzYs40T0Sxk30uu8IS/BAXOwcpKJm930WURfXttt1xgF+HxE w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="394989029"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="394989029"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 15:41:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="664769677"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="664769677"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 20 Feb 2023 15:41:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Feb 2023 01:41:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 01:40:33 +0200
Message-Id: <20230220234046.29716-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230220234046.29716-1-ville.syrjala@linux.intel.com>
References: <20230220234046.29716-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/18] drm/i915: Introduce
 intel_hpd_detection()
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

Add a mechanism by which we can toggle the HPD sense for
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 132 ++++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_irq.h |   2 +
 2 files changed, 134 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index ecfa6dad145a..c5058d834f99 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2893,8 +2893,17 @@ static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
 			 ibx_hotplug_mask(dev_priv, HPD_PORT_D),
 			 intel_hpd_hotplug_enables(dev_priv, ibx_hotplug_enables));
 }
 
+static void ibx_hpd_detection(struct intel_encoder *encoder, bool enable)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG,
+			 ibx_hotplug_mask(i915, encoder->hpd_pin),
+			 enable ? ibx_hotplug_enables(encoder) : 0);
+}
+
 static void ibx_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_irqs, enabled_irqs;
 
@@ -2963,8 +2972,17 @@ static void icp_ddi_hpd_detection_setup(struct drm_i915_private *dev_priv)
 			 icp_ddi_hotplug_mask(dev_priv, HPD_PORT_D),
 			 intel_hpd_hotplug_enables(dev_priv, icp_ddi_hotplug_enables));
 }
 
+static void icp_ddi_hpd_detection(struct intel_encoder *encoder, bool enable)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_uncore_rmw(&i915->uncore, SHOTPLUG_CTL_DDI,
+			 icp_ddi_hotplug_mask(i915, encoder->hpd_pin),
+			 enable ? icp_ddi_hotplug_enables(encoder) : 0);
+}
+
 static void icp_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
 	intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_TC,
 			 icp_tc_hotplug_mask(dev_priv, HPD_PORT_TC1) |
@@ -2975,8 +2993,23 @@ static void icp_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
 			 icp_tc_hotplug_mask(dev_priv, HPD_PORT_TC6),
 			 intel_hpd_hotplug_enables(dev_priv, icp_tc_hotplug_enables));
 }
 
+static void icp_tc_hpd_detection(struct intel_encoder *encoder, bool enable)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_uncore_rmw(&i915->uncore, SHOTPLUG_CTL_TC,
+			 icp_tc_hotplug_mask(i915, encoder->hpd_pin),
+			 enable ? icp_tc_hotplug_enables(encoder) : 0);
+}
+
+static void icp_hpd_detection(struct intel_encoder *encoder, bool enable)
+{
+	icp_ddi_hpd_detection(encoder, enable);
+	icp_tc_hpd_detection(encoder, enable);
+}
+
 static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_irqs, enabled_irqs;
 
@@ -3025,8 +3058,16 @@ static void dg1_hpd_invert(struct drm_i915_private *i915)
 		   INVERT_DDID_HPD);
 	intel_uncore_rmw(&i915->uncore, SOUTH_CHICKEN1, 0, val);
 }
 
+static void dg1_hpd_detection(struct intel_encoder *encoder, bool enable)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	dg1_hpd_invert(i915);
+	icp_hpd_detection(encoder, enable);
+}
+
 static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	dg1_hpd_invert(dev_priv);
 	icp_hpd_irq_setup(dev_priv);
@@ -3043,8 +3084,17 @@ static void gen11_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
 			 gen11_hotplug_mask(dev_priv, HPD_PORT_TC6),
 			 intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
 }
 
+static void gen11_tc_hpd_detection(struct intel_encoder *encoder, bool enable)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_uncore_rmw(&i915->uncore, GEN11_TC_HOTPLUG_CTL,
+			 gen11_hotplug_mask(i915, encoder->hpd_pin),
+			 enable ? gen11_hotplug_enables(encoder) : 0);
+}
+
 static void gen11_tbt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
 	intel_uncore_rmw(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL,
 			 gen11_hotplug_mask(dev_priv, HPD_PORT_TC1) |
@@ -3055,8 +3105,28 @@ static void gen11_tbt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 			 gen11_hotplug_mask(dev_priv, HPD_PORT_TC6),
 			 intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
 }
 
+static void gen11_tbt_hpd_detection(struct intel_encoder *encoder, bool enable)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_uncore_rmw(&i915->uncore, GEN11_TBT_HOTPLUG_CTL,
+			 gen11_hotplug_mask(i915, encoder->hpd_pin),
+			 enable ? gen11_hotplug_enables(encoder) : 0);
+}
+
+static void gen11_hpd_detection(struct intel_encoder *encoder, bool enable)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	gen11_tc_hpd_detection(encoder, enable);
+	gen11_tbt_hpd_detection(encoder, enable);
+
+	if (INTEL_PCH_TYPE(i915) >= PCH_ICP)
+		icp_hpd_detection(encoder, enable);
+}
+
 static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_irqs, enabled_irqs;
 
@@ -3140,8 +3210,28 @@ static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 			 spt_hotplug2_mask(dev_priv, HPD_PORT_E),
 			 intel_hpd_hotplug_enables(dev_priv, spt_hotplug2_enables));
 }
 
+static void spt_hpd_detection(struct intel_encoder *encoder, bool enable)
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
+			 spt_hotplug_mask(i915, encoder->hpd_pin),
+			 enable ? spt_hotplug_enables(encoder) : 0);
+
+	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG2,
+			 spt_hotplug2_mask(i915, encoder->hpd_pin),
+			 enable ? spt_hotplug2_enables(encoder) : 0);
+}
+
 static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_irqs, enabled_irqs;
 
@@ -3189,8 +3279,19 @@ static void ilk_hpd_detection_setup(struct drm_i915_private *dev_priv)
 			 ilk_hotplug_mask(dev_priv, HPD_PORT_A),
 			 intel_hpd_hotplug_enables(dev_priv, ilk_hotplug_enables));
 }
 
+static void ilk_hpd_detection(struct intel_encoder *encoder, bool enable)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_uncore_rmw(&i915->uncore, DIGITAL_PORT_HOTPLUG_CNTRL,
+			 ilk_hotplug_mask(i915, encoder->hpd_pin),
+			 enable ? ilk_hotplug_enables(encoder) : 0);
+
+	ibx_hpd_detection(encoder, enable);
+}
+
 static void ilk_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_irqs, enabled_irqs;
 
@@ -3254,8 +3355,17 @@ static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 			 bxt_hotplug_mask(dev_priv, HPD_PORT_C),
 			 intel_hpd_hotplug_enables(dev_priv, bxt_hotplug_enables));
 }
 
+static void bxt_hpd_detection(struct intel_encoder *encoder, bool enable)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG,
+			 bxt_hotplug_mask(i915, encoder->hpd_pin),
+			 enable ? bxt_hotplug_enables(encoder) : 0);
+}
+
 static void bxt_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_irqs, enabled_irqs;
 
@@ -3885,8 +3995,18 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	i915_enable_asle_pipestat(dev_priv);
 }
 
+static void i915_hpd_detection(struct intel_encoder *encoder, bool enable)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	u32 hotplug_en = hpd_mask_i915[encoder->hpd_pin];
+
+	/* HPD sense and interrupt enable are one and the same */
+	i915_hotplug_interrupt_update(i915, hotplug_en,
+				      enable ? hotplug_en : 0);
+}
+
 static void i915_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_en;
 
@@ -3970,14 +4090,18 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
 	return ret;
 }
 
 struct intel_hotplug_funcs {
+	/* Enable HPD sense and interrupts for all present encoders */
 	void (*hpd_irq_setup)(struct drm_i915_private *i915);
+	/* Enable/disable HPD sense for a single encoder */
+	void (*hpd_detection)(struct intel_encoder *encoder, bool enable);
 };
 
 #define HPD_FUNCS(platform)					 \
 static const struct intel_hotplug_funcs platform##_hpd_funcs = { \
 	.hpd_irq_setup = platform##_hpd_irq_setup,		 \
+	.hpd_detection = platform##_hpd_detection,		 \
 }
 
 HPD_FUNCS(i915);
 HPD_FUNCS(dg1);
@@ -3987,8 +4111,16 @@ HPD_FUNCS(icp);
 HPD_FUNCS(spt);
 HPD_FUNCS(ilk);
 #undef HPD_FUNCS
 
+void intel_hpd_detection(struct intel_encoder *encoder, bool enable)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	if (i915->display.funcs.hotplug)
+		i915->display.funcs.hotplug->hpd_detection(encoder, enable);
+}
+
 void intel_hpd_irq_setup(struct drm_i915_private *i915)
 {
 	if (i915->display_irqs_enabled && i915->display.funcs.hotplug)
 		i915->display.funcs.hotplug->hpd_irq_setup(i915);
diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
index 03ee4c8b1ed3..a5eb85ed7537 100644
--- a/drivers/gpu/drm/i915/i915_irq.h
+++ b/drivers/gpu/drm/i915/i915_irq.h
@@ -16,8 +16,9 @@ struct drm_crtc;
 struct drm_device;
 struct drm_display_mode;
 struct drm_i915_private;
 struct intel_crtc;
+struct intel_encoder;
 struct intel_uncore;
 
 void intel_irq_init(struct drm_i915_private *dev_priv);
 void intel_irq_fini(struct drm_i915_private *dev_priv);
@@ -36,8 +37,9 @@ i915_disable_pipestat(struct drm_i915_private *dev_priv, enum pipe pipe,
 
 void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv);
 void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv);
 
+void intel_hpd_detection(struct intel_encoder *encoder, bool enable);
 void intel_hpd_irq_setup(struct drm_i915_private *i915);
 void i915_hotplug_interrupt_update(struct drm_i915_private *dev_priv,
 				   u32 mask,
 				   u32 bits);
-- 
2.39.2

