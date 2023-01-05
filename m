Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D74E65EB70
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 13:59:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFCF710E71A;
	Thu,  5 Jan 2023 12:59:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B658210E719
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 12:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672923591; x=1704459591;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+tuYq5HvQWJMrOEm+uIxVxEnjUGhCj0dlnv1ZRjxSSo=;
 b=MKyUwtra8XXY2jrrbZ3PYplNF6yf8H/ejN3WNtUw/ZeBgjgQVsZtTfDt
 wThzzp/0afs1zk+3ZddqTLZVnfCoOKEhqAMenFzodP3J42zPOu2dc9Z61
 zQIrxyAyfr50G7v57I/CeXW+cgEQR0fOBxGWQkp49yuW+LOsPwgdh48rU
 bWsPHmJaX5SlBvtnMNTvBuHAtNW4k+oKuCkFeQpcx116+ELRTa6+x1YBj
 +3HsWPLXiDCW6L43FO0ryDvS40Zjrv41XXzjG4gdpmMVw1Sv4PYTVH50x
 UfprWbpaiY7x4D+8MiMqfQ/S57LiEOfK/3QvzEKBA32vp2HdHgfgaP3RK g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="305697759"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="305697759"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 04:59:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="829540964"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="829540964"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 05 Jan 2023 04:59:48 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 14:54:32 +0200
Message-Id: <20230105125446.960504-8-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230105125446.960504-1-mika.kahola@intel.com>
References: <20230105125446.960504-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/21] drm/i915/mtl: Add support for PM DEMAND
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Display14 introduces a new way to instruct the PUnit with
power and bandwidth requirements of DE. Add the functionality
to program the registers and handle waits using interrupts.
The current wait time for timeouts is programmed for 10 msecs to
factor in the worst case scenarios. Changes made to use REG_BIT
for a register that we touched(GEN8_DE_MISC_IER _MMIO).

Bspec: 66451, 64636, 64602, 64603

v2: Moved pmdemand to be part of "struct intel_display"

Cc: Matt Atwood <matthew.s.atwood@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20221014124740.774835-8-mika.kahola@intel.com
---
 drivers/gpu/drm/i915/display/intel_bw.c       |   4 +-
 drivers/gpu/drm/i915/display/intel_bw.h       |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  |  14 +
 .../gpu/drm/i915/display/intel_display_core.h |   6 +
 .../drm/i915/display/intel_display_power.c    |   8 +
 drivers/gpu/drm/i915/i915_irq.c               |  22 +-
 drivers/gpu/drm/i915/i915_reg.h               |  33 +-
 drivers/gpu/drm/i915/intel_pm.c               | 286 ++++++++++++++++++
 drivers/gpu/drm/i915/intel_pm.h               |  35 +++
 9 files changed, 405 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 1c236f02b380..179dfa0a2284 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -717,8 +717,8 @@ static unsigned int intel_bw_num_active_planes(struct drm_i915_private *dev_priv
 	return num_active_planes;
 }
 
-static unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
-				       const struct intel_bw_state *bw_state)
+unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
+				const struct intel_bw_state *bw_state)
 {
 	unsigned int data_rate = 0;
 	enum pipe pipe;
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index cb7ee3a24a58..b3eb82a71e6c 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -62,6 +62,8 @@ int intel_bw_init(struct drm_i915_private *dev_priv);
 int intel_bw_atomic_check(struct intel_atomic_state *state);
 void intel_bw_crtc_update(struct intel_bw_state *bw_state,
 			  const struct intel_crtc_state *crtc_state);
+unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
+				const struct intel_bw_state *bw_state);
 int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 				  u32 points_mask);
 int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 655e1c86a1eb..87cd6a808938 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1089,6 +1089,9 @@ intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
 		num_encoders++;
 	}
 
+	if (!encoder)
+		return NULL;
+
 	drm_WARN(encoder->base.dev, num_encoders != 1,
 		 "%d encoders for pipe %c\n",
 		 num_encoders, pipe_name(master_crtc->pipe));
@@ -6868,6 +6871,10 @@ static int intel_atomic_check(struct drm_device *dev,
 		ret = intel_modeset_calc_cdclk(state);
 		if (ret)
 			return ret;
+
+		ret = intel_pmdemand_atomic_check(state);
+		if (ret)
+			goto fail;
 	}
 
 	ret = intel_atomic_check_crtcs(state);
@@ -7484,6 +7491,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	}
 
 	intel_sagv_pre_plane_update(state);
+	intel_pmdemand_pre_plane_update(state);
 
 	/* Complete the events for pipes that have now been disabled */
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
@@ -7596,6 +7604,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		intel_verify_planes(state);
 
 	intel_sagv_post_plane_update(state);
+	intel_pmdemand_post_plane_update(state);
 
 	drm_atomic_helper_commit_hw_done(&state->base);
 
@@ -8327,6 +8336,7 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
 	intel_color_init_hooks(dev_priv);
 	intel_init_cdclk_hooks(dev_priv);
 	intel_audio_hooks_init(dev_priv);
+	intel_init_pmdemand(dev_priv);
 
 	intel_dpll_init_clock_hook(dev_priv);
 
@@ -8667,6 +8677,10 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
 	if (ret)
 		goto cleanup_vga_client_pw_domain_dmc;
 
+	ret = intel_pmdemand_init(i915);
+	if (ret)
+		goto cleanup_vga_client_pw_domain_dmc;
+
 	init_llist_head(&i915->display.atomic_helper.free_list);
 	INIT_WORK(&i915->display.atomic_helper.free_work,
 		  intel_atomic_helper_free_state_worker);
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 57ddce3ba02b..c74bf0c5b88d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -321,6 +321,12 @@ struct intel_display {
 		struct intel_global_obj obj;
 	} dbuf;
 
+	struct {
+		wait_queue_head_t waitqueue;
+		struct mutex lock;
+		struct intel_global_obj obj;
+	} pmdemand;
+
 	struct {
 		/*
 		 * dkl.phy_lock protects against concurrent access of the
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 40f157208a81..a8da1b07fa43 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -19,6 +19,7 @@
 #include "intel_mchbar_regs.h"
 #include "intel_pch_refclk.h"
 #include "intel_pcode.h"
+#include "intel_pm.h"
 #include "intel_snps_phy.h"
 #include "skl_watermark.h"
 #include "vlv_sideband.h"
@@ -1081,6 +1082,10 @@ static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
 	dev_priv->display.dbuf.enabled_slices =
 		intel_enabled_dbuf_slices_mask(dev_priv);
 
+	if (DISPLAY_VER(dev_priv) >= 14)
+		intel_program_dbuf_pmdemand(dev_priv, BIT(DBUF_S1) |
+					    dev_priv->display.dbuf.enabled_slices);
+
 	/*
 	 * Just power up at least 1 slice, we will
 	 * figure out later which slices we have and what we need.
@@ -1092,6 +1097,9 @@ static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
 static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)
 {
 	gen9_dbuf_slices_update(dev_priv, 0);
+
+	if (DISPLAY_VER(dev_priv) >= 14)
+		intel_program_dbuf_pmdemand(dev_priv, 0);
 }
 
 static void gen12_dbuf_slices_config(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 54ea28cf8a1a..15dfef6d93a9 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2320,6 +2320,11 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
 		return GEN8_DE_PIPE_IRQ_FAULT_ERRORS;
 }
 
+static void intel_pmdemand_irq_handler(struct drm_i915_private *dev_priv)
+{
+	wake_up_all(&dev_priv->display.pmdemand.waitqueue);
+}
+
 static void
 gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 {
@@ -2356,6 +2361,18 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 		}
 	}
 
+	if (iir & XELPDP_PMDEMAND_RSPTOUT_ERR) {
+		drm_dbg(&dev_priv->drm,
+			"Error waiting for Punit PM Demand Response\n");
+		intel_pmdemand_irq_handler(dev_priv);
+		found = true;
+	}
+
+	if (iir & XELPDP_PMDEMAND_RSP) {
+		intel_pmdemand_irq_handler(dev_priv);
+		found = true;
+	}
+
 	if (!found)
 		drm_err(&dev_priv->drm, "Unexpected DE Misc interrupt\n");
 }
@@ -3728,7 +3745,10 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 		de_port_masked |= BXT_DE_PORT_GMBUS;
 
-	if (DISPLAY_VER(dev_priv) >= 11) {
+	if (DISPLAY_VER(dev_priv) >= 14)
+		de_misc_masked |= XELPDP_PMDEMAND_RSPTOUT_ERR |
+				  XELPDP_PMDEMAND_RSP;
+	else if (DISPLAY_VER(dev_priv) >= 11) {
 		enum port port;
 
 		if (intel_bios_is_dsi_present(dev_priv, &port))
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8d4b626874db..065905723c09 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5516,8 +5516,10 @@
 #define GEN8_DE_MISC_IMR _MMIO(0x44464)
 #define GEN8_DE_MISC_IIR _MMIO(0x44468)
 #define GEN8_DE_MISC_IER _MMIO(0x4446c)
-#define  GEN8_DE_MISC_GSE		(1 << 27)
-#define  GEN8_DE_EDP_PSR		(1 << 19)
+#define  XELPDP_PMDEMAND_RSPTOUT_ERR	REG_BIT(27)
+#define  GEN8_DE_MISC_GSE		REG_BIT(27)
+#define  GEN8_DE_EDP_PSR		REG_BIT(19)
+#define  XELPDP_PMDEMAND_RSP		REG_BIT(3)
 
 #define GEN8_PCU_ISR _MMIO(0x444e0)
 #define GEN8_PCU_IMR _MMIO(0x444e4)
@@ -5580,6 +5582,33 @@
 #define  GEN11_HOTPLUG_CTL_SHORT_DETECT(hpd_pin)	(1 << (_HPD_PIN_TC(hpd_pin) * 4))
 #define  GEN11_HOTPLUG_CTL_NO_DETECT(hpd_pin)		(0 << (_HPD_PIN_TC(hpd_pin) * 4))
 
+#define XELPDP_INITIATE_PMDEMAND_REQUEST(dword)		_MMIO(0x45230 + 4 * (dword))
+#define  XELPDP_PMDEMAND_QCLK_GV_BW_MASK		REG_GENMASK(31, 16)
+#define  XELPDP_PMDEMAND_QCLK_GV_BW(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, x)
+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK		REG_GENMASK(14, 12)
+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, x)
+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK		REG_GENMASK(11, 8)
+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, x)
+#define  XELPDP_PMDEMAND_PIPES_MASK			REG_GENMASK(7, 6)
+#define  XELPDP_PMDEMAND_PIPES(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_PIPES_MASK, x)
+#define  XELPDP_PMDEMAND_DBUFS_MASK			REG_GENMASK(5, 4)
+#define  XELPDP_PMDEMAND_DBUFS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DBUFS_MASK, x)
+#define  XELPDP_PMDEMAND_PHYS_MASK			REG_GENMASK(2, 0)
+#define  XELPDP_PMDEMAND_PHYS(x)				REG_FIELD_PREP(XELPDP_PMDEMAND_PHYS_MASK, x)
+
+#define  XELPDP_PMDEMAND_REQ_ENABLE			REG_BIT(31)
+#define  XELPDP_PMDEMAND_CDCLK_FREQ_MASK		REG_GENMASK(30, 20)
+#define  XELPDP_PMDEMAND_CDCLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, x)
+#define  XELPDP_PMDEMAND_DDICLK_FREQ_MASK		REG_GENMASK(18, 8)
+#define  XELPDP_PMDEMAND_DDICLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, x)
+#define  XELPDP_PMDEMAND_SCALERS_MASK			REG_GENMASK(6, 4)
+#define  XELPDP_PMDEMAND_SCALERS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_SCALERS_MASK, x)
+#define  XELPDP_PMDEMAND_PLLS_MASK			REG_GENMASK(2, 0)
+#define  XELPDP_PMDEMAND_PLLS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_PLLS_MASK, x)
+
+#define GEN12_DCPR_STATUS_1				_MMIO(0x46440)
+#define  XELPDP_PMDEMAND_INFLIGHT_STATUS		REG_BIT(26)
+
 #define ILK_DISPLAY_CHICKEN2	_MMIO(0x42004)
 /* Required on all Ironlake and Sandybridge according to the B-Spec. */
 #define  ILK_ELPIN_409_SELECT	(1 << 25)
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 73c88b1c9545..1679ea1ea860 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -25,6 +25,11 @@
  *
  */
 
+#include <linux/bitops.h>
+
+#include "display/intel_bw.h"
+#include "display/intel_cdclk.h"
+#include "display/intel_cx0_phy.h"
 #include "display/intel_de.h"
 #include "display/intel_display_trace.h"
 #include "display/skl_watermark.h"
@@ -4085,6 +4090,287 @@ void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv)
 		!(intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) & DISP_FBC_WM_DIS);
 }
 
+static struct intel_global_state *intel_pmdemand_duplicate_state(struct intel_global_obj *obj)
+{
+	struct intel_pmdemand_state *pmdmnd_state;
+
+	pmdmnd_state = kmemdup(obj->state, sizeof(*pmdmnd_state), GFP_KERNEL);
+	if (!pmdmnd_state)
+		return NULL;
+
+	return &pmdmnd_state->base;
+}
+
+static void intel_pmdemand_destroy_state(struct intel_global_obj *obj,
+					 struct intel_global_state *state)
+{
+	kfree(state);
+}
+
+static const struct intel_global_state_funcs intel_pmdemand_funcs = {
+	.atomic_duplicate_state = intel_pmdemand_duplicate_state,
+	.atomic_destroy_state = intel_pmdemand_destroy_state,
+};
+
+struct intel_pmdemand_state *
+intel_atomic_get_pmdemand_state(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_global_state *pmdemand_state;
+
+	pmdemand_state = intel_atomic_get_global_obj_state(state, &dev_priv->display.pmdemand.obj);
+	if (IS_ERR(pmdemand_state))
+		return ERR_CAST(pmdemand_state);
+
+	return to_intel_pmdemand_state(pmdemand_state);
+}
+
+int intel_pmdemand_init(struct drm_i915_private *dev_priv)
+{
+	struct intel_pmdemand_state *pmdemand_state;
+
+	pmdemand_state = kzalloc(sizeof(*pmdemand_state), GFP_KERNEL);
+	if (!pmdemand_state)
+		return -ENOMEM;
+
+	intel_atomic_global_obj_init(dev_priv, &dev_priv->display.pmdemand.obj,
+				     &pmdemand_state->base, &intel_pmdemand_funcs);
+
+	return 0;
+}
+
+void intel_init_pmdemand(struct drm_i915_private *dev_priv)
+{
+	mutex_init(&dev_priv->display.pmdemand.lock);
+	init_waitqueue_head(&dev_priv->display.pmdemand.waitqueue);
+}
+
+int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_pmdemand_state *new_pmdemand_state = NULL;
+	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
+	struct intel_crtc *crtc;
+	struct intel_encoder *encoder;
+	struct intel_bw_state *new_bw_state;
+	const struct intel_dbuf_state *new_dbuf_state;
+	const struct intel_cdclk_state *new_cdclk_state;
+	int port_clock = 0;
+	unsigned int data_rate;
+	enum phy phy;
+	int i, ret;
+
+	if (DISPLAY_VER(dev_priv) < 14)
+		return 0;
+
+	new_pmdemand_state = intel_atomic_get_pmdemand_state(state);
+	if (IS_ERR(new_pmdemand_state))
+		return PTR_ERR(new_pmdemand_state);
+
+	ret = intel_atomic_lock_global_state(&new_pmdemand_state->base);
+	if (ret)
+		return ret;
+
+	/* Punit figures out the voltage index based on bandwidth*/
+	new_bw_state = intel_atomic_get_bw_state(state);
+	if (IS_ERR(new_bw_state))
+		return PTR_ERR(new_bw_state);
+
+	/* firmware will calculate the qclck_gc_index, requirement is set to 0 */
+	new_pmdemand_state->qclk_gv_index = 0;
+
+	data_rate = intel_bw_data_rate(dev_priv, new_bw_state);
+	/* To MBs then to multiples of 100MBs */
+	data_rate = DIV_ROUND_UP(data_rate, 1000);
+	data_rate = DIV_ROUND_UP(data_rate, 100);
+	new_pmdemand_state->qclk_gv_bw = data_rate;
+
+	new_dbuf_state = intel_atomic_get_dbuf_state(state);
+	if (IS_ERR(new_dbuf_state))
+		return PTR_ERR(new_dbuf_state);
+
+	i = hweight8(new_dbuf_state->active_pipes);
+	new_pmdemand_state->active_pipes = min(i, 3);
+
+	new_cdclk_state = intel_atomic_get_cdclk_state(state);
+	if (IS_ERR(new_cdclk_state))
+		return PTR_ERR(new_cdclk_state);
+
+	new_pmdemand_state->voltage_index = new_cdclk_state->logical.voltage_level;
+	/* KHz to MHz */
+	new_pmdemand_state->cdclk_freq_mhz = DIV_ROUND_UP(new_cdclk_state->logical.cdclk, 1000);
+
+	new_pmdemand_state->active_phys_plls_mask = 0;
+
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
+		if (!new_crtc_state->hw.active)
+			continue;
+
+		encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
+		if (!encoder)
+			continue;
+
+		phy = intel_port_to_phy(dev_priv, encoder->port);
+
+		if (intel_is_c10phy(dev_priv, phy))
+			new_pmdemand_state->active_phys_plls_mask |= BIT(phy);
+
+		port_clock = max(port_clock, new_crtc_state->port_clock);
+	}
+
+	/* To MHz */
+	new_pmdemand_state->ddiclk_freq_mhz = DIV_ROUND_UP(port_clock, 1000);
+
+	/*
+	 * Setting scalers to max as it can not be calculated during flips and
+	 * fastsets without taking global states locks.
+	 */
+	new_pmdemand_state->scalers = 7;
+
+	return 0;
+}
+
+static bool intel_pmdemand_check_prev_transaction(struct drm_i915_private *dev_priv)
+{
+	return !((intel_de_read(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1)) & XELPDP_PMDEMAND_REQ_ENABLE) ||
+		(intel_de_read(dev_priv, GEN12_DCPR_STATUS_1) & XELPDP_PMDEMAND_INFLIGHT_STATUS));
+}
+
+static bool intel_pmdemand_req_complete(struct drm_i915_private *dev_priv)
+{
+	return !(intel_de_read(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1)) & XELPDP_PMDEMAND_REQ_ENABLE);
+}
+
+static int intel_pmdemand_wait(struct drm_i915_private *dev_priv)
+{
+	DEFINE_WAIT(wait);
+	int ret;
+	const unsigned int timeout_ms = 10;
+
+	add_wait_queue(&dev_priv->display.pmdemand.waitqueue, &wait);
+
+	ret = wait_event_timeout(dev_priv->display.pmdemand.waitqueue,
+				 intel_pmdemand_req_complete(dev_priv),
+				 msecs_to_jiffies_timeout(timeout_ms));
+	if (ret < 0)
+		drm_err(&dev_priv->drm,
+			"timed out waiting for Punit PM Demand Response\n");
+
+	remove_wait_queue(&dev_priv->display.pmdemand.waitqueue, &wait);
+
+	return ret;
+}
+
+/* Required to be programmed during Display Init Sequences. */
+void intel_program_dbuf_pmdemand(struct drm_i915_private *dev_priv,
+				 u8 dbuf_slices)
+{
+	mutex_lock(&dev_priv->display.pmdemand.lock);
+	if (drm_WARN_ON(&dev_priv->drm,
+			!intel_pmdemand_check_prev_transaction(dev_priv)))
+		goto unlock;
+
+	intel_de_rmw(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
+		     XELPDP_PMDEMAND_DBUFS_MASK,
+		     XELPDP_PMDEMAND_DBUFS(hweight32(dbuf_slices)));
+	intel_de_rmw(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
+		     XELPDP_PMDEMAND_REQ_ENABLE);
+
+	intel_pmdemand_wait(dev_priv);
+unlock:
+	mutex_unlock(&dev_priv->display.pmdemand.lock);
+}
+
+static void intel_program_pmdemand(struct drm_i915_private *dev_priv,
+				   const struct intel_pmdemand_state *new,
+				   const struct intel_pmdemand_state *old)
+{
+	u32 val, tmp;
+
+#define UPDATE_PMDEMAND_VAL(val, F, f) do {            \
+	val &= (~(XELPDP_PMDEMAND_##F##_MASK));         \
+	val |= (XELPDP_PMDEMAND_##F((u32)(old ? max(old->f, new->f) : new->f))); \
+} while (0)
+
+	mutex_lock(&dev_priv->display.pmdemand.lock);
+	if (drm_WARN_ON(&dev_priv->drm,
+			!intel_pmdemand_check_prev_transaction(dev_priv)))
+		goto unlock;
+
+	/*
+	 * TODO: Update programming PM Demand for
+	 * PHYS, PLLS, DDI_CLKFREQ, SCALARS
+	 */
+	val = intel_de_read(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(0));
+	UPDATE_PMDEMAND_VAL(val, QCLK_GV_INDEX, qclk_gv_index);
+	UPDATE_PMDEMAND_VAL(val, QCLK_GV_BW, qclk_gv_bw);
+	UPDATE_PMDEMAND_VAL(val, VOLTAGE_INDEX, voltage_index);
+	UPDATE_PMDEMAND_VAL(val, PIPES, active_pipes);
+	UPDATE_PMDEMAND_VAL(val, DBUFS, dbufs);
+	tmp = hweight32(new->active_phys_plls_mask);
+	if (old)
+		tmp = max(tmp, hweight32(old->active_phys_plls_mask));
+	val |= XELPDP_PMDEMAND_PHYS(tmp);
+
+	intel_de_write(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(0), val);
+
+	val = intel_de_read(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1));
+	UPDATE_PMDEMAND_VAL(val, CDCLK_FREQ, cdclk_freq_mhz);
+	UPDATE_PMDEMAND_VAL(val, DDICLK_FREQ, ddiclk_freq_mhz);
+	UPDATE_PMDEMAND_VAL(val, SCALERS, scalers);
+	/*
+	 * Active_PLLs starts with 1 because of CDCLK PLL.
+	 * TODO: Missing to account genlock filter when it gets used.
+	 */
+	val |= XELPDP_PMDEMAND_PLLS(tmp + 1);
+
+	intel_de_write(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1), val);
+
+#undef UPDATE_PM_DEMAND_VAL
+
+	intel_de_rmw(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0, XELPDP_PMDEMAND_REQ_ENABLE);
+
+	intel_pmdemand_wait(dev_priv);
+unlock:
+	mutex_unlock(&dev_priv->display.pmdemand.lock);
+}
+
+void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	const struct intel_pmdemand_state *new_pmdmnd_state =
+		intel_atomic_get_new_pmdemand_state(state);
+	const struct intel_pmdemand_state *old_pmdmnd_state =
+		intel_atomic_get_old_pmdemand_state(state);
+
+	if (DISPLAY_VER(dev_priv) < 14)
+		return;
+
+	if (!new_pmdmnd_state ||
+	    memcmp(new_pmdmnd_state, old_pmdmnd_state, sizeof(*new_pmdmnd_state)) == 0)
+		return;
+
+	intel_program_pmdemand(dev_priv, new_pmdmnd_state, old_pmdmnd_state);
+}
+
+void intel_pmdemand_post_plane_update(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	const struct intel_pmdemand_state *new_pmdmnd_state =
+		intel_atomic_get_new_pmdemand_state(state);
+	const struct intel_pmdemand_state *old_pmdmnd_state =
+		intel_atomic_get_old_pmdemand_state(state);
+
+	if (DISPLAY_VER(dev_priv) < 14)
+		return;
+
+	if (!new_pmdmnd_state ||
+	    memcmp(new_pmdmnd_state, old_pmdmnd_state, sizeof(*new_pmdmnd_state)) == 0)
+		return;
+
+	intel_program_pmdemand(dev_priv, new_pmdmnd_state, NULL);
+}
+
 static void ibx_init_clock_gating(struct drm_i915_private *dev_priv)
 {
 	/*
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
index c09b872d65c8..b4392dcdc0b6 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -8,6 +8,8 @@
 
 #include <linux/types.h>
 
+#include "display/intel_global_state.h"
+
 struct drm_i915_private;
 struct intel_crtc_state;
 struct intel_plane_state;
@@ -15,6 +17,7 @@ struct intel_plane_state;
 void intel_init_clock_gating(struct drm_i915_private *dev_priv);
 void intel_suspend_hw(struct drm_i915_private *dev_priv);
 int ilk_wm_max_level(const struct drm_i915_private *dev_priv);
+void intel_init_pmdemand(struct drm_i915_private *dev_priv);
 void intel_init_pm(struct drm_i915_private *dev_priv);
 void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);
 void intel_pm_setup(struct drm_i915_private *dev_priv);
@@ -31,4 +34,36 @@ void intel_print_wm_latency(struct drm_i915_private *dev_priv,
 
 bool intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enable);
 
+struct intel_pmdemand_state {
+	struct intel_global_state base;
+
+	u16 qclk_gv_bw;
+	u8 voltage_index;
+	u8 qclk_gv_index;
+	u8 active_pipes;
+	u8 dbufs;
+	u8 active_phys_plls_mask;
+	u16 cdclk_freq_mhz;
+	u16 ddiclk_freq_mhz;
+	u8 scalers;
+};
+
+int intel_pmdemand_init(struct drm_i915_private *dev_priv);
+
+struct intel_pmdemand_state *
+intel_atomic_get_pmdemand_state(struct intel_atomic_state *state);
+
+#define to_intel_pmdemand_state(x) container_of((x), struct intel_pmdemand_state, base)
+#define intel_atomic_get_old_pmdemand_state(state) \
+	to_intel_pmdemand_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->display.pmdemand.obj))
+#define intel_atomic_get_new_pmdemand_state(state) \
+	to_intel_pmdemand_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.pmdemand.obj))
+
+int intel_pmdemand_init(struct drm_i915_private *dev_priv);
+void intel_program_dbuf_pmdemand(struct drm_i915_private *dev_priv,
+				 u8 dbuf_slices);
+void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state);
+void intel_pmdemand_post_plane_update(struct intel_atomic_state *state);
+int intel_pmdemand_atomic_check(struct intel_atomic_state *state);
+
 #endif /* __INTEL_PM_H__ */
-- 
2.34.1

