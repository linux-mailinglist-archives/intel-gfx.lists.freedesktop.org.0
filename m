Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C07458D23
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 12:15:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D17F789BF6;
	Mon, 22 Nov 2021 11:15:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E594D89BF1
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 11:15:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="214795448"
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="214795448"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 03:15:17 -0800
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="596251065"
Received: from rmcdonax-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.19.217])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 03:15:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Nov 2021 13:15:02 +0200
Message-Id: <20211122111504.223248-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122111504.223248-1-jani.nikula@intel.com>
References: <20211122111504.223248-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/dsi: split out vlv_dsi_pll.h
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

Follow the convention of corresponding .h for .c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 drivers/gpu/drm/i915/display/intel_dsi.h     | 23 ------------
 drivers/gpu/drm/i915/display/vlv_dsi.c       |  1 +
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c   |  1 +
 drivers/gpu/drm/i915/display/vlv_dsi_pll.h   | 38 ++++++++++++++++++++
 6 files changed, 42 insertions(+), 24 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/vlv_dsi_pll.h

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index c870a0e50cb1..840f13b75492 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -26,7 +26,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dpll.h"
-#include "intel_dsi.h"
+#include "vlv_dsi_pll.h"
 
 #define CTM_COEFF_SIGN	(1ULL << 63)
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f3c9208a30b1..1de813a99ffd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -109,6 +109,7 @@
 #include "i9xx_plane.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
+#include "vlv_dsi_pll.h"
 #include "vlv_sideband.h"
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i915/display/intel_dsi.h
index e3571ca7db5c..39a0eae45a0d 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.h
+++ b/drivers/gpu/drm/i915/display/intel_dsi.h
@@ -187,27 +187,4 @@ struct intel_dsi_host *intel_dsi_host_init(struct intel_dsi *intel_dsi,
 					   enum port port);
 void vlv_dsi_init(struct drm_i915_private *dev_priv);
 
-/* vlv_dsi_pll.c */
-int vlv_dsi_pll_compute(struct intel_encoder *encoder,
-			struct intel_crtc_state *config);
-void vlv_dsi_pll_enable(struct intel_encoder *encoder,
-			const struct intel_crtc_state *config);
-void vlv_dsi_pll_disable(struct intel_encoder *encoder);
-u32 vlv_dsi_get_pclk(struct intel_encoder *encoder,
-		     struct intel_crtc_state *config);
-void vlv_dsi_reset_clocks(struct intel_encoder *encoder, enum port port);
-
-bool bxt_dsi_pll_is_enabled(struct drm_i915_private *dev_priv);
-int bxt_dsi_pll_compute(struct intel_encoder *encoder,
-			struct intel_crtc_state *config);
-void bxt_dsi_pll_enable(struct intel_encoder *encoder,
-			const struct intel_crtc_state *config);
-void bxt_dsi_pll_disable(struct intel_encoder *encoder);
-u32 bxt_dsi_get_pclk(struct intel_encoder *encoder,
-		     struct intel_crtc_state *config);
-void bxt_dsi_reset_clocks(struct intel_encoder *encoder, enum port port);
-
-void assert_dsi_pll_enabled(struct drm_i915_private *i915);
-void assert_dsi_pll_disabled(struct drm_i915_private *i915);
-
 #endif /* _INTEL_DSI_H */
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index be070a1afcd0..ed2a0d764f37 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -42,6 +42,7 @@
 #include "intel_fifo_underrun.h"
 #include "intel_panel.h"
 #include "skl_scaler.h"
+#include "vlv_dsi_pll.h"
 #include "vlv_sideband.h"
 
 /* return pixels in terms of txbyteclkhs */
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
index 5413b52ab6ba..1b81797dd02e 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
@@ -31,6 +31,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dsi.h"
+#include "vlv_dsi_pll.h"
 #include "vlv_sideband.h"
 
 static const u16 lfsr_converts[] = {
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.h b/drivers/gpu/drm/i915/display/vlv_dsi_pll.h
new file mode 100644
index 000000000000..ab9291ad1e79
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.h
@@ -0,0 +1,38 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef __VLV_DSI_PLL_H__
+#define __VLV_DSI_PLL_H__
+
+#include <linux/types.h>
+
+enum port;
+struct drm_i915_private;
+struct intel_crtc_state;
+struct intel_encoder;
+
+int vlv_dsi_pll_compute(struct intel_encoder *encoder,
+			struct intel_crtc_state *config);
+void vlv_dsi_pll_enable(struct intel_encoder *encoder,
+			const struct intel_crtc_state *config);
+void vlv_dsi_pll_disable(struct intel_encoder *encoder);
+u32 vlv_dsi_get_pclk(struct intel_encoder *encoder,
+		     struct intel_crtc_state *config);
+void vlv_dsi_reset_clocks(struct intel_encoder *encoder, enum port port);
+
+bool bxt_dsi_pll_is_enabled(struct drm_i915_private *dev_priv);
+int bxt_dsi_pll_compute(struct intel_encoder *encoder,
+			struct intel_crtc_state *config);
+void bxt_dsi_pll_enable(struct intel_encoder *encoder,
+			const struct intel_crtc_state *config);
+void bxt_dsi_pll_disable(struct intel_encoder *encoder);
+u32 bxt_dsi_get_pclk(struct intel_encoder *encoder,
+		     struct intel_crtc_state *config);
+void bxt_dsi_reset_clocks(struct intel_encoder *encoder, enum port port);
+
+void assert_dsi_pll_enabled(struct drm_i915_private *i915);
+void assert_dsi_pll_disabled(struct drm_i915_private *i915);
+
+#endif /* __VLV_DSI_PLL_H__ */
-- 
2.30.2

