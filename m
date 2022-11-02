Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAA5616090
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 11:09:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD6DC10E47C;
	Wed,  2 Nov 2022 10:08:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C97C10E47D
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 10:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667383733; x=1698919733;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ptTZK1q23em71Z2A99AdRn3SpuhcWvZJ/KFfkkrbPx4=;
 b=Zr0gW19WhI5k1pe+wpu8eFnPZ0woANY/0k2ohzCFViGAbYojA3XbUZGc
 xU8XrNvnPmJo300kAADAEHeP8bD5snVq2XGTHJ37ASsAhUyNiu824C+r4
 vRrEt7whOulsIfekXf9FPreClc6OlNJSKGP3pcPERbgbTcNBYYHq7W+8f
 GcX+ICq1sXvFJecggXGG9Xi7HoLVsUeT2WGA7xV1FdkT5yIdcWBNXLT90
 OFCtD0KsbECPnflqky5Oh2hCUnA8c/OTIBYEK5n4BTFoXcNRVo8zflsVQ
 Wg/hRy1BzU9P15QevgATpnRT/R6yJwGN0Rb9rGUC8Hi35NG3JWUjDsD+I w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="296807619"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="296807619"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:08:53 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="963469032"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="963469032"
Received: from cjokeeff-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.15.91])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:08:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 12:08:14 +0200
Message-Id: <7c3ee7a6482540a0267f7b2974d22cab8188707a.1667383630.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1667383630.git.jani.nikula@intel.com>
References: <cover.1667383630.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 06/16] drm/i915/dpio: move dpio_channel and
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
index c7bc481ea3ff..56a443118809 100644
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
index e13b521e322a..ba7cb977e7c7 100644
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
index 1cb388484bf0..735fc83e7026 100644
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
index 638b77d64bf4..ce6b3c3b636a 100644
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

