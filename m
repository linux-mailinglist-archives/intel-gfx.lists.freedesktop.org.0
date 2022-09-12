Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9790B5B5EA0
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 18:55:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE31910E609;
	Mon, 12 Sep 2022 16:55:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7131810E2F0
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 16:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663001707; x=1694537707;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g+o7zCUdB2CEdRkSCM+EclRMGyoto531VaMUambcMw8=;
 b=DhrQyIbfVIXjmITDUlD1W0YsUaqJkL4rMbnhIHdL+493ZVRNjTcRX2fU
 TnOOzVThbqSQNslWI87rbpUnTXDMDqAfpLQW4jPK+BqoeOBcgLLJCnFDR
 QuaiapuiqNi4DJR25F3u7XkG276MtavNOQ2ToEBHgBuohEC21OR/ApfQB
 DNa2J4sDZeiFk6AMDiv1pj9kgQ74ybEdIYjnmxyElfq1BJu5xnXHdr73x
 I/O8pJJxkEO2rj6fLJdxgiLqP7DGpi5x7P8pQpC+I+5xm3VlyH0EiMyl1
 0ELN8X83g057+1lZPM1DZB0q/5QluBuwbPuxqCONcWNZNcUK7WThR8KWY A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="280935388"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="280935388"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:55:06 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="646546358"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:55:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 19:54:28 +0300
Message-Id: <96db84d87af399cf4d497906bc9ba817c4ca0e85.1662999695.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662999695.git.jani.nikula@intel.com>
References: <cover.1662999695.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/15] drm/i915/dpio: move dpio_channel and
 dpio_phy enums to intel_dpio_phy.h
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reduce the size of intel_display.h by moving out the dpio_channel and
dpio_phy enums.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h        | 11 -----------
 .../gpu/drm/i915/display/intel_display_power_well.h |  2 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.h       | 13 +++++++++++--
 drivers/gpu/drm/i915/gvt/display.c                  |  2 ++
 drivers/gpu/drm/i915/gvt/handlers.c                 |  1 +
 drivers/gpu/drm/i915/gvt/mmio.c                     |  1 +
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c         |  1 +
 drivers/gpu/drm/i915/vlv_sideband.c                 |  2 ++
 8 files changed, 19 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 85395c8e58f9..63ca58c5636b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -261,17 +261,6 @@ enum tc_port_mode {
 	TC_PORT_LEGACY,
 };
 
-enum dpio_channel {
-	DPIO_CH0,
-	DPIO_CH1
-};
-
-enum dpio_phy {
-	DPIO_PHY0,
-	DPIO_PHY1,
-	DPIO_PHY2,
-};
-
 enum aux_ch {
 	AUX_CH_A,
 	AUX_CH_B,
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index 31a898176ebb..cef36f27755f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -7,8 +7,8 @@
 
 #include <linux/types.h>
 
-#include "intel_display.h"
 #include "intel_display_power.h"
+#include "intel_dpio_phy.h"
 
 struct drm_i915_private;
 struct i915_power_well;
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.h b/drivers/gpu/drm/i915/display/intel_dpio_phy.h
index 828ad58624d8..9c7725dacb47 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.h
@@ -8,8 +8,6 @@
 
 #include <linux/types.h>
 
-enum dpio_channel;
-enum dpio_phy;
 enum pipe;
 enum port;
 struct drm_i915_private;
@@ -17,6 +15,17 @@ struct intel_crtc_state;
 struct intel_digital_port;
 struct intel_encoder;
 
+enum dpio_channel {
+	DPIO_CH0,
+	DPIO_CH1,
+};
+
+enum dpio_phy {
+	DPIO_PHY0,
+	DPIO_PHY1,
+	DPIO_PHY2,
+};
+
 void bxt_port_to_phy_channel(struct drm_i915_private *dev_priv, enum port port,
 			     enum dpio_phy *phy, enum dpio_channel *ch);
 void bxt_ddi_phy_set_signal_levels(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index c7722c818b4d..c033249e73f4 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -36,6 +36,8 @@
 #include "i915_reg.h"
 #include "gvt.h"
 
+#include "display/intel_dpio_phy.h"
+
 static int get_edp_pipe(struct intel_vgpu *vgpu)
 {
 	u32 data = vgpu_vreg(vgpu, _TRANS_DDI_FUNC_CTL_EDP);
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index daac2050d77d..08beaeadadb7 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -43,6 +43,7 @@
 #include "intel_mchbar_regs.h"
 #include "display/intel_display_types.h"
 #include "display/intel_dmc_regs.h"
+#include "display/intel_dpio_phy.h"
 #include "display/intel_fbc.h"
 #include "display/vlv_dsi_pll_regs.h"
 #include "gt/intel_gt_regs.h"
diff --git a/drivers/gpu/drm/i915/gvt/mmio.c b/drivers/gpu/drm/i915/gvt/mmio.c
index 9acc00505fde..5b5def6ddef7 100644
--- a/drivers/gpu/drm/i915/gvt/mmio.c
+++ b/drivers/gpu/drm/i915/gvt/mmio.c
@@ -37,6 +37,7 @@
 #include "i915_reg.h"
 #include "gvt.h"
 
+#include "display/intel_dpio_phy.h"
 #include "gt/intel_gt_regs.h"
 
 /**
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 8279dc580a3e..33a65d1a82b5 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -6,6 +6,7 @@
 #include "display/intel_audio_regs.h"
 #include "display/intel_backlight_regs.h"
 #include "display/intel_dmc_regs.h"
+#include "display/intel_dpio_phy.h"
 #include "display/vlv_dsi_pll_regs.h"
 #include "gt/intel_gt_regs.h"
 #include "gvt/gvt.h"
diff --git a/drivers/gpu/drm/i915/vlv_sideband.c b/drivers/gpu/drm/i915/vlv_sideband.c
index c26001300ebd..6eea6e1a99c0 100644
--- a/drivers/gpu/drm/i915/vlv_sideband.c
+++ b/drivers/gpu/drm/i915/vlv_sideband.c
@@ -8,6 +8,8 @@
 #include "i915_reg.h"
 #include "vlv_sideband.h"
 
+#include "display/intel_dpio_phy.h"
+
 /*
  * IOSF sideband, see VLV2_SidebandMsg_HAS.docx and
  * VLV_VLV2_PUNIT_HAS_0.8.docx
-- 
2.34.1

