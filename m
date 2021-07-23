Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C97033D3F12
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 19:43:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FD2F6FBB1;
	Fri, 23 Jul 2021 17:43:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 696B86FBA2
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 17:43:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10054"; a="211644170"
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; d="scan'208";a="211644170"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 10:42:52 -0700
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; d="scan'208";a="463229121"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 10:42:52 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Jul 2021 10:42:36 -0700
Message-Id: <20210723174239.1551352-28-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210723174239.1551352-1-matthew.d.roper@intel.com>
References: <20210723174239.1551352-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 27/30] drm/i915/dg2: Wait for SNPS PHY
 calibration during display init
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

Initialization of the PHY is handled by the hardware/firmware, but the
driver should wait up to 25ms for the PHY to report that its calibration
has completed.

Bspec: 49189
Bspec: 50107
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 .../gpu/drm/i915/display/intel_display_power.c    |  5 +++++
 drivers/gpu/drm/i915/display/intel_snps_phy.c     | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_snps_phy.h     |  3 +++
 drivers/gpu/drm/i915/i915_reg.h                   |  1 +
 4 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 81efc77bada0..39cb55f3a648 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -18,6 +18,7 @@
 #include "intel_pm.h"
 #include "intel_pps.h"
 #include "intel_sideband.h"
+#include "intel_snps_phy.h"
 #include "intel_tc.h"
 #include "intel_vga.h"
 
@@ -5901,6 +5902,10 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 	if (DISPLAY_VER(dev_priv) >= 12)
 		tgl_bw_buddy_init(dev_priv);
 
+	/* 8. Ensure PHYs have completed calibration and adaptation */
+	if (IS_DG2(dev_priv))
+		intel_snps_phy_wait_for_calibration(dev_priv);
+
 	if (resume && intel_dmc_has_payload(dev_priv))
 		intel_dmc_load_program(dev_priv);
 
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 77759bda98a4..f0c30d3d2dfb 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -21,6 +21,21 @@
  * since it is not handled by the shared DPLL framework as on other platforms.
  */
 
+void intel_snps_phy_wait_for_calibration(struct drm_i915_private *dev_priv)
+{
+	enum phy phy;
+
+	for_each_phy_masked(phy, ~0) {
+		if (!intel_phy_is_snps(dev_priv, phy))
+			continue;
+
+		if (intel_de_wait_for_clear(dev_priv, ICL_PHY_MISC(phy),
+					    DG2_PHY_DP_TX_ACK_MASK, 25))
+			DRM_ERROR("SNPS PHY %c failed to calibrate after 25ms.\n",
+				  phy);
+	}
+}
+
 static const u32 dg2_ddi_translations[] = {
 	/* VS 0, pre-emph 0 */
 	REG_FIELD_PREP(SNPS_PHY_TX_EQ_MAIN, 26),
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.h b/drivers/gpu/drm/i915/display/intel_snps_phy.h
index 3ce92d424f66..6aa33ff729ec 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.h
@@ -8,10 +8,13 @@
 
 #include <linux/types.h>
 
+struct drm_i915_private;
 struct intel_encoder;
 struct intel_crtc_state;
 struct intel_mpllb_state;
 
+void intel_snps_phy_wait_for_calibration(struct drm_i915_private *dev_priv);
+
 int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
 			   struct intel_encoder *encoder);
 void intel_mpllb_enable(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2e028350c32d..d990f9364157 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -12461,6 +12461,7 @@ enum skl_power_gate {
 						 _ICL_PHY_MISC_B)
 #define  ICL_PHY_MISC_MUX_DDID			(1 << 28)
 #define  ICL_PHY_MISC_DE_IO_COMP_PWR_DOWN	(1 << 23)
+#define  DG2_PHY_DP_TX_ACK_MASK			REG_GENMASK(23, 20)
 
 /* Icelake Display Stream Compression Registers */
 #define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
