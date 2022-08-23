Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D7D59D5A5
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 11:10:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3D62B1D33;
	Tue, 23 Aug 2022 09:09:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308:0:7ec:e79c:4e97:b6c4:f0ae])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17045B1D3D
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 09:09:39 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Aug 2022 11:01:25 +0200
Message-Id: <20220823090128.488008-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220823090128.488008-1-maarten.lankhorst@linux.intel.com>
References: <20220823090128.488008-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Move display pcode requests to
 intel_de
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

This will allow us not to use uncore from display code directly any more.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/hsw_ips.c        |  7 ++-
 drivers/gpu/drm/i915/display/intel_bw.c       | 22 ++++-----
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 45 +++++++++----------
 drivers/gpu/drm/i915/display/intel_de.h       | 30 +++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c  |  1 -
 .../drm/i915/display/intel_display_power.c    |  3 +-
 .../i915/display/intel_display_power_well.c   |  7 ++-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  3 +-
 8 files changed, 71 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index 861dcd2eb890..ab0032b78d7f 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -8,7 +8,6 @@
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
-#include "intel_pcode.h"
 
 static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
 {
@@ -28,8 +27,8 @@ static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
 
 	if (IS_BROADWELL(i915)) {
 		drm_WARN_ON(&i915->drm,
-			    snb_pcode_write(&i915->uncore, DISPLAY_IPS_CONTROL,
-					    IPS_ENABLE | IPS_PCODE_CONTROL));
+			    intel_de_pcode_write(i915, DISPLAY_IPS_CONTROL,
+						 IPS_ENABLE | IPS_PCODE_CONTROL));
 		/*
 		 * Quoting Art Runyan: "its not safe to expect any particular
 		 * value in IPS_CTL bit 31 after enabling IPS through the
@@ -62,7 +61,7 @@ bool hsw_ips_disable(const struct intel_crtc_state *crtc_state)
 
 	if (IS_BROADWELL(i915)) {
 		drm_WARN_ON(&i915->drm,
-			    snb_pcode_write(&i915->uncore, DISPLAY_IPS_CONTROL, 0));
+			    intel_de_pcode_write(i915, DISPLAY_IPS_CONTROL, 0));
 		/*
 		 * Wait for PCODE to finish disabling IPS. The BSpec specified
 		 * 42ms timeout value leads to occasional timeouts so use 100ms
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 79269d2c476b..8ecf4e3e2bc6 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -10,9 +10,9 @@
 #include "intel_atomic.h"
 #include "intel_bw.h"
 #include "intel_cdclk.h"
+#include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_mchbar_regs.h"
-#include "intel_pcode.h"
 #include "intel_pm.h"
 
 /* Parameters for Qclk Geyserville (QGV) */
@@ -78,9 +78,9 @@ static int icl_pcode_read_qgv_point_info(struct drm_i915_private *dev_priv,
 	u16 dclk;
 	int ret;
 
-	ret = snb_pcode_read(&dev_priv->uncore, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
-			     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point),
-			     &val, &val2);
+	ret = intel_de_pcode_read(dev_priv, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
+				  ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point),
+				  &val, &val2);
 	if (ret)
 		return ret;
 
@@ -104,8 +104,8 @@ static int adls_pcode_read_psf_gv_point_info(struct drm_i915_private *dev_priv,
 	int ret;
 	int i;
 
-	ret = snb_pcode_read(&dev_priv->uncore, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
-			     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO, &val, NULL);
+	ret = intel_de_pcode_read(dev_priv, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
+				  ADL_PCODE_MEM_SS_READ_PSF_GV_INFO, &val, NULL);
 	if (ret)
 		return ret;
 
@@ -123,11 +123,11 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 	int ret;
 
 	/* bspec says to keep retrying for at least 1 ms */
-	ret = skl_pcode_request(&dev_priv->uncore, ICL_PCODE_SAGV_DE_MEM_SS_CONFIG,
-				points_mask,
-				ICL_PCODE_REP_QGV_MASK | ADLS_PCODE_REP_PSF_MASK,
-				ICL_PCODE_REP_QGV_SAFE | ADLS_PCODE_REP_PSF_SAFE,
-				1);
+	ret = intel_de_pcode_request(dev_priv, ICL_PCODE_SAGV_DE_MEM_SS_CONFIG,
+				     points_mask,
+				     ICL_PCODE_REP_QGV_MASK | ADLS_PCODE_REP_PSF_MASK,
+				     ICL_PCODE_REP_QGV_SAFE | ADLS_PCODE_REP_PSF_SAFE,
+				     1);
 
 	if (ret < 0) {
 		drm_err(&dev_priv->drm, "Failed to disable qgv points (%d) points: 0x%x\n", ret, points_mask);
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 86a22c3766e5..15565406679c 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -34,7 +34,6 @@
 #include "intel_display_types.h"
 #include "intel_mchbar_regs.h"
 #include "intel_pci_config.h"
-#include "intel_pcode.h"
 #include "intel_psr.h"
 #include "vlv_sideband.h"
 
@@ -800,7 +799,7 @@ static void bdw_set_cdclk(struct drm_i915_private *dev_priv,
 		     "trying to change cdclk frequency with cdclk not enabled\n"))
 		return;
 
-	ret = snb_pcode_write(&dev_priv->uncore, BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ, 0x0);
+	ret = intel_de_pcode_write(dev_priv, BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ, 0x0);
 	if (ret) {
 		drm_err(&dev_priv->drm,
 			"failed to inform pcode about cdclk change\n");
@@ -828,8 +827,8 @@ static void bdw_set_cdclk(struct drm_i915_private *dev_priv,
 			 LCPLL_CD_SOURCE_FCLK_DONE) == 0, 1))
 		drm_err(&dev_priv->drm, "Switching back to LCPLL failed\n");
 
-	snb_pcode_write(&dev_priv->uncore, HSW_PCODE_DE_WRITE_FREQ_REQ,
-			cdclk_config->voltage_level);
+	intel_de_pcode_write(dev_priv, HSW_PCODE_DE_WRITE_FREQ_REQ,
+			     cdclk_config->voltage_level);
 
 	intel_de_write(dev_priv, CDCLK_FREQ,
 		       DIV_ROUND_CLOSEST(cdclk, 1000) - 1);
@@ -1086,10 +1085,10 @@ static void skl_set_cdclk(struct drm_i915_private *dev_priv,
 	drm_WARN_ON_ONCE(&dev_priv->drm,
 			 IS_SKYLAKE(dev_priv) && vco == 8640000);
 
-	ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
-				SKL_CDCLK_PREPARE_FOR_CHANGE,
-				SKL_CDCLK_READY_FOR_CHANGE,
-				SKL_CDCLK_READY_FOR_CHANGE, 3);
+	ret = intel_de_pcode_request(dev_priv, SKL_PCODE_CDCLK_CONTROL,
+				     SKL_CDCLK_PREPARE_FOR_CHANGE,
+				     SKL_CDCLK_READY_FOR_CHANGE,
+				     SKL_CDCLK_READY_FOR_CHANGE, 3);
 	if (ret) {
 		drm_err(&dev_priv->drm,
 			"Failed to inform PCU about cdclk change (%d)\n", ret);
@@ -1132,8 +1131,8 @@ static void skl_set_cdclk(struct drm_i915_private *dev_priv,
 	intel_de_posting_read(dev_priv, CDCLK_CTL);
 
 	/* inform PCU of the change */
-	snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
-			cdclk_config->voltage_level);
+	intel_de_pcode_write(dev_priv, SKL_PCODE_CDCLK_CONTROL,
+			     cdclk_config->voltage_level);
 
 	intel_update_cdclk(dev_priv);
 }
@@ -1702,18 +1701,18 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 
 	/* Inform power controller of upcoming frequency change. */
 	if (DISPLAY_VER(dev_priv) >= 11)
-		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
-					SKL_CDCLK_PREPARE_FOR_CHANGE,
-					SKL_CDCLK_READY_FOR_CHANGE,
-					SKL_CDCLK_READY_FOR_CHANGE, 3);
+		ret = intel_de_pcode_request(dev_priv, SKL_PCODE_CDCLK_CONTROL,
+					     SKL_CDCLK_PREPARE_FOR_CHANGE,
+					     SKL_CDCLK_READY_FOR_CHANGE,
+					     SKL_CDCLK_READY_FOR_CHANGE, 3);
 	else
 		/*
 		 * BSpec requires us to wait up to 150usec, but that leads to
 		 * timeouts; the 2ms used here is based on experiment.
 		 */
-		ret = snb_pcode_write_timeout(&dev_priv->uncore,
-					      HSW_PCODE_DE_WRITE_FREQ_REQ,
-					      0x80000000, 150, 2);
+		ret = intel_de_pcode_write_timeout(dev_priv,
+						   HSW_PCODE_DE_WRITE_FREQ_REQ,
+						   0x80000000, 150, 2);
 	if (ret) {
 		drm_err(&dev_priv->drm,
 			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
@@ -1774,8 +1773,8 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
 
 	if (DISPLAY_VER(dev_priv) >= 11) {
-		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
-				      cdclk_config->voltage_level);
+		ret = intel_de_pcode_write(dev_priv, SKL_PCODE_CDCLK_CONTROL,
+					   cdclk_config->voltage_level);
 	} else {
 		/*
 		 * The timeout isn't specified, the 2ms used here is based on
@@ -1783,10 +1782,10 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		 * FIXME: Waiting for the request completion could be delayed
 		 * until the next PCODE request based on BSpec.
 		 */
-		ret = snb_pcode_write_timeout(&dev_priv->uncore,
-					      HSW_PCODE_DE_WRITE_FREQ_REQ,
-					      cdclk_config->voltage_level,
-					      150, 2);
+		ret = intel_de_pcode_write_timeout(dev_priv,
+						   HSW_PCODE_DE_WRITE_FREQ_REQ,
+						   cdclk_config->voltage_level,
+						   150, 2);
 	}
 
 	if (ret) {
diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 9c104f65e4c8..d51e83a45dce 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -9,6 +9,7 @@
 #include "i915_drv.h"
 #include "i915_trace.h"
 #include "intel_uncore.h"
+#include "intel_pcode.h"
 
 static inline u32
 intel_de_read(struct drm_i915_private *i915, i915_reg_t reg)
@@ -81,4 +82,33 @@ intel_de_write_fw(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
 	intel_uncore_write_fw(&i915->uncore, reg, val);
 }
 
+static inline int
+intel_de_pcode_write_timeout(struct drm_i915_private *i915, u32 mbox, u32 val,
+			    int fast_timeout_us, int slow_timeout_ms)
+{
+	return snb_pcode_write_timeout(&i915->uncore, mbox, val,
+				       fast_timeout_us, slow_timeout_ms);
+}
+
+static inline int
+intel_de_pcode_write(struct drm_i915_private *i915, u32 mbox, u32 val)
+{
+
+	return snb_pcode_write(&i915->uncore, mbox, val);
+}
+
+static inline int
+intel_de_pcode_read(struct drm_i915_private *i915, u32 mbox, u32 *val, u32 *val1)
+{
+	return snb_pcode_read(&i915->uncore, mbox, val, val1);
+}
+
+static inline int intel_de_pcode_request(struct drm_i915_private *i915, u32 mbox,
+					 u32 request, u32 reply_mask, u32 reply,
+					 int timeout_base_ms)
+{
+	return skl_pcode_request(&i915->uncore, mbox, request, reply_mask, reply,
+				 timeout_base_ms);
+}
+
 #endif /* __INTEL_DE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 533fff79aeda..e8ddbfc1618e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -104,7 +104,6 @@
 #include "intel_panel.h"
 #include "intel_pch_display.h"
 #include "intel_pch_refclk.h"
-#include "intel_pcode.h"
 #include "intel_pipe_crc.h"
 #include "intel_plane_initial.h"
 #include "intel_pm.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index f7e8d1ff62cf..3d2ac2c5b0d2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -18,7 +18,6 @@
 #include "intel_dmc.h"
 #include "intel_mchbar_regs.h"
 #include "intel_pch_refclk.h"
-#include "intel_pcode.h"
 #include "intel_pm.h"
 #include "intel_snps_phy.h"
 #include "vlv_sideband.h"
@@ -1197,7 +1196,7 @@ static u32 hsw_read_dcomp(struct drm_i915_private *dev_priv)
 static void hsw_write_dcomp(struct drm_i915_private *dev_priv, u32 val)
 {
 	if (IS_HASWELL(dev_priv)) {
-		if (snb_pcode_write(&dev_priv->uncore, GEN6_PCODE_WRITE_D_COMP, val))
+		if (intel_de_pcode_write(dev_priv, GEN6_PCODE_WRITE_D_COMP, val))
 			drm_dbg_kms(&dev_priv->drm,
 				    "Failed to write to D_COMP\n");
 	} else {
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 7044016d4d98..eee50b954f83 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -16,7 +16,6 @@
 #include "intel_dpio_phy.h"
 #include "intel_dpll.h"
 #include "intel_hotplug.h"
-#include "intel_pcode.h"
 #include "intel_pm.h"
 #include "intel_pps.h"
 #include "intel_tc.h"
@@ -475,8 +474,8 @@ static void icl_tc_cold_exit(struct drm_i915_private *i915)
 	int ret, tries = 0;
 
 	while (1) {
-		ret = snb_pcode_write_timeout(&i915->uncore, ICL_PCODE_EXIT_TCCOLD, 0,
-					      250, 1);
+		ret = intel_de_pcode_write_timeout(i915, ICL_PCODE_EXIT_TCCOLD, 0,
+						   250, 1);
 		if (ret != -EAGAIN || ++tries == 3)
 			break;
 		msleep(1);
@@ -1740,7 +1739,7 @@ tgl_tc_cold_request(struct drm_i915_private *i915, bool block)
 		 * Spec states that we should timeout the request after 200us
 		 * but the function below will timeout after 500us
 		 */
-		ret = snb_pcode_read(&i915->uncore, TGL_PCODE_TCCOLD, &low_val, &high_val);
+		ret = intel_de_pcode_read(i915, TGL_PCODE_TCCOLD, &low_val, &high_val);
 		if (ret == 0) {
 			if (block &&
 			    (low_val & TGL_PCODE_EXIT_TCCOLD_DATA_L_EXIT_FAILED))
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index c5e9e86bb4cb..f819b29906bd 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -24,7 +24,6 @@
 #include "intel_display_types.h"
 #include "intel_hdcp.h"
 #include "intel_hdcp_regs.h"
-#include "intel_pcode.h"
 
 #define KEY_LOAD_TRIES	5
 #define HDCP2_LC_RETRY_CNT			3
@@ -299,7 +298,7 @@ static int intel_hdcp_load_keys(struct drm_i915_private *dev_priv)
 	 * Mailbox interface.
 	 */
 	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv)) {
-		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_LOAD_HDCP_KEYS, 1);
+		ret = intel_de_pcode_write(dev_priv, SKL_PCODE_LOAD_HDCP_KEYS, 1);
 		if (ret) {
 			drm_err(&dev_priv->drm,
 				"Failed to initiate HDCP key load (%d)\n",
-- 
2.34.1

