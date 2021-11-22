Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6DA458D24
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 12:15:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2C0389B83;
	Mon, 22 Nov 2021 11:15:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B217089B83
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 11:15:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="221988572"
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="221988572"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 03:15:27 -0800
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="508484208"
Received: from rmcdonax-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.19.217])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 03:15:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Nov 2021 13:15:03 +0200
Message-Id: <20211122111504.223248-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122111504.223248-1-jani.nikula@intel.com>
References: <20211122111504.223248-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/dsi: split out vlv_dsi.h
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
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 drivers/gpu/drm/i915/display/intel_dsi.h     |  5 -----
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c |  1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c       |  1 +
 drivers/gpu/drm/i915/display/vlv_dsi.h       | 19 +++++++++++++++++++
 5 files changed, 22 insertions(+), 5 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/vlv_dsi.h

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1de813a99ffd..2ffed63dd498 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -111,6 +111,7 @@
 #include "skl_universal_plane.h"
 #include "vlv_dsi_pll.h"
 #include "vlv_sideband.h"
+#include "vlv_dsi.h"
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i915/display/intel_dsi.h
index 39a0eae45a0d..dd913ad35232 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.h
+++ b/drivers/gpu/drm/i915/display/intel_dsi.h
@@ -175,16 +175,11 @@ int intel_dsi_bitrate(const struct intel_dsi *intel_dsi);
 int intel_dsi_tlpx_ns(const struct intel_dsi *intel_dsi);
 enum drm_panel_orientation
 intel_dsi_get_panel_orientation(struct intel_connector *connector);
-
-/* vlv_dsi.c */
-void vlv_dsi_wait_for_fifo_empty(struct intel_dsi *intel_dsi, enum port port);
-enum mipi_dsi_pixel_format pixel_format_from_register_bits(u32 fmt);
 int intel_dsi_get_modes(struct drm_connector *connector);
 enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
 					  struct drm_display_mode *mode);
 struct intel_dsi_host *intel_dsi_host_init(struct intel_dsi *intel_dsi,
 					   const struct mipi_dsi_host_ops *funcs,
 					   enum port port);
-void vlv_dsi_init(struct drm_i915_private *dev_priv);
 
 #endif /* _INTEL_DSI_H */
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index c29a13619224..0da91849efde 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -42,6 +42,7 @@
 #include "intel_display_types.h"
 #include "intel_dsi.h"
 #include "intel_dsi_vbt.h"
+#include "vlv_dsi.h"
 #include "vlv_sideband.h"
 
 #define MIPI_TRANSFER_MODE_SHIFT	0
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index ed2a0d764f37..20141f33ed64 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -42,6 +42,7 @@
 #include "intel_fifo_underrun.h"
 #include "intel_panel.h"
 #include "skl_scaler.h"
+#include "vlv_dsi.h"
 #include "vlv_dsi_pll.h"
 #include "vlv_sideband.h"
 
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.h b/drivers/gpu/drm/i915/display/vlv_dsi.h
new file mode 100644
index 000000000000..0c2b279df9d4
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef __VLV_DSI_H__
+#define __VLV_DSI_H__
+
+#include <linux/types.h>
+
+enum port;
+struct drm_i915_private;
+struct intel_dsi;
+
+void vlv_dsi_wait_for_fifo_empty(struct intel_dsi *intel_dsi, enum port port);
+enum mipi_dsi_pixel_format pixel_format_from_register_bits(u32 fmt);
+void vlv_dsi_init(struct drm_i915_private *dev_priv);
+
+#endif /* __VLV_DSI_H__ */
-- 
2.30.2

