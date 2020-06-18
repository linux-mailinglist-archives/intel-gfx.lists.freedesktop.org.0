Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA581FDA5F
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 02:43:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35E2A6E150;
	Thu, 18 Jun 2020 00:42:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 136706E209
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 00:42:51 +0000 (UTC)
IronPort-SDR: jcaD6gnM3Z726MrWXo8VI1VjO2pn3tzcU4aAY74g+bq0ZCFFRnQFfRG3Q0yYXKyNJSeNmVHVth
 YOJ6qzPJUP2Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 17:42:50 -0700
IronPort-SDR: gtbF4GbwaKUXzGftxrKbRpbVzAGPeH4VynotTMBGQ8FBM1FSR6mrQPlRgpKfbQs05A8F7bDVlE
 wvQSKPjBhEsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,524,1583222400"; d="scan'208";a="477011837"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jun 2020 17:42:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 17:42:11 -0700
Message-Id: <20200618004240.16263-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200618004240.16263-1-lucas.demarchi@intel.com>
References: <20200618004240.16263-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 03/32] drm/i915/rkl: Handle HTI
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matt Roper <matthew.d.roper@intel.com>

If HTI (also sometimes called HDPORT) is enabled at startup, it may be
using some of the PHYs and DPLLs making them unavailable for general
usage.  Let's read out the HDPORT_STATE register and avoid making use of
resources that HTI is already using.

v2:
 - Fix minor checkpatch warnings

Bspec: 49189
Bspec: 53707
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 30 ++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 21 +++++++++++++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  1 +
 drivers/gpu/drm/i915/i915_drv.h               |  3 ++
 drivers/gpu/drm/i915/i915_reg.h               |  6 ++++
 5 files changed, 57 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6c2bb3354b869..f16512eddc587 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -46,6 +46,7 @@
 #include "display/intel_ddi.h"
 #include "display/intel_dp.h"
 #include "display/intel_dp_mst.h"
+#include "display/intel_dpll_mgr.h"
 #include "display/intel_dsi.h"
 #include "display/intel_dvo.h"
 #include "display/intel_gmbus.h"
@@ -16814,6 +16815,13 @@ static void intel_pps_init(struct drm_i915_private *dev_priv)
 	intel_pps_unlock_regs_wa(dev_priv);
 }
 
+static bool hti_uses_phy(u32 hdport_state, enum phy phy)
+{
+	return hdport_state & HDPORT_ENABLED &&
+		(hdport_state & HDPORT_PHY_USED_DP(phy) ||
+		 hdport_state & HDPORT_PHY_USED_HDMI(phy));
+}
+
 static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 {
 	struct intel_encoder *encoder;
@@ -16825,10 +16833,22 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		return;
 
 	if (IS_ROCKETLAKE(dev_priv)) {
-		intel_ddi_init(dev_priv, PORT_A);
-		intel_ddi_init(dev_priv, PORT_B);
-		intel_ddi_init(dev_priv, PORT_D);	/* DDI TC1 */
-		intel_ddi_init(dev_priv, PORT_E);	/* DDI TC2 */
+		/*
+		 * If HTI (aka HDPORT) is enabled at boot, it may have taken
+		 * over some of the PHYs and made them unavailable to the
+		 * driver.  In that case we should skip initializing the
+		 * corresponding outputs.
+		 */
+		u32 hdport_state = intel_de_read(dev_priv, HDPORT_STATE);
+
+		if (!hti_uses_phy(hdport_state, PHY_A))
+			intel_ddi_init(dev_priv, PORT_A);
+		if (!hti_uses_phy(hdport_state, PHY_B))
+			intel_ddi_init(dev_priv, PORT_B);
+		if (!hti_uses_phy(hdport_state, PHY_C))
+			intel_ddi_init(dev_priv, PORT_D);	/* DDI TC1 */
+		if (!hti_uses_phy(hdport_state, PHY_D))
+			intel_ddi_init(dev_priv, PORT_E);	/* DDI TC2 */
 	} else if (INTEL_GEN(dev_priv) >= 12) {
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
@@ -18376,6 +18396,8 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 
 	intel_dpll_readout_hw_state(dev_priv);
 
+	dev_priv->hti_pll_mask = intel_get_hti_plls(dev_priv);
+
 	for_each_intel_encoder(dev, encoder) {
 		pipe = 0;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index b5f4d4cef682b..6f59f9ec453bf 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -265,6 +265,24 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
 	mutex_unlock(&dev_priv->dpll.lock);
 }
 
+/*
+ * HTI (aka HDPORT) may be using some of the platform's PLL's, making them
+ * unavailable for use.
+ */
+u32 intel_get_hti_plls(struct drm_i915_private *dev_priv)
+{
+	u32 hdport_state;
+
+	if (!IS_ROCKETLAKE(dev_priv))
+		return 0;
+
+	hdport_state = intel_de_read(dev_priv, HDPORT_STATE);
+	if (!(hdport_state & HDPORT_ENABLED))
+		return 0;
+
+	return REG_FIELD_GET(HDPORT_DPLL_USED_MASK, hdport_state);
+}
+
 static struct intel_shared_dpll *
 intel_find_shared_dpll(struct intel_atomic_state *state,
 		       const struct intel_crtc *crtc,
@@ -280,6 +298,9 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
 
 	drm_WARN_ON(&dev_priv->drm, dpll_mask & ~(BIT(I915_NUM_PLLS) - 1));
 
+	/* Eliminate DPLLs from consideration if reserved by HTI */
+	dpll_mask &= ~dev_priv->hti_pll_mask;
+
 	for_each_set_bit(i, &dpll_mask, I915_NUM_PLLS) {
 		pll = &dev_priv->dpll.shared_dplls[i];
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 49367847bfb55..edcc43f4670ff 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -390,6 +390,7 @@ void intel_shared_dpll_swap_state(struct intel_atomic_state *state);
 void intel_shared_dpll_init(struct drm_device *dev);
 void intel_dpll_readout_hw_state(struct drm_i915_private *dev_priv);
 void intel_dpll_sanitize_state(struct drm_i915_private *dev_priv);
+u32 intel_get_hti_plls(struct drm_i915_private *dev_priv);
 
 void intel_dpll_dump_hw_state(struct drm_i915_private *dev_priv,
 			      const struct intel_dpll_hw_state *hw_state);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 5649f8e502fef..b836032fa0deb 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1037,6 +1037,9 @@ struct drm_i915_private {
 
 	struct intel_l3_parity l3_parity;
 
+	/* Mask of PLLs reserved for use by HTI and unavailable to driver. */
+	u32 hti_pll_mask;
+
 	/*
 	 * edram size in MB.
 	 * Cannot be determined by PCIID. You must always read a register.
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 34f8698ac3aa6..34b2ec04ccd86 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2908,6 +2908,12 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define MBUS_BBOX_CTL_S1		_MMIO(0x45040)
 #define MBUS_BBOX_CTL_S2		_MMIO(0x45044)
 
+#define HDPORT_STATE			_MMIO(0x45050)
+#define   HDPORT_DPLL_USED_MASK		REG_GENMASK(14, 12)
+#define   HDPORT_PHY_USED_DP(phy)	REG_BIT(2 * (phy) + 2)
+#define   HDPORT_PHY_USED_HDMI(phy)	REG_BIT(2 * (phy) + 1)
+#define   HDPORT_ENABLED		REG_BIT(0)
+
 /* Make render/texture TLB fetches lower priorty than associated data
  *   fetches. This is not turned on by default
  */
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
