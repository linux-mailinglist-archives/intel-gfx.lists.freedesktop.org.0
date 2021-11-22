Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 820F0458D26
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 12:15:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99E7589C1F;
	Mon, 22 Nov 2021 11:15:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5FE589C1F
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 11:15:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="221649091"
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="221649091"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 03:15:35 -0800
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="739622324"
Received: from rmcdonax-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.19.217])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 03:15:32 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Nov 2021 13:15:04 +0200
Message-Id: <20211122111504.223248-4-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122111504.223248-1-jani.nikula@intel.com>
References: <20211122111504.223248-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/dsi: split out icl_dsi.h
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
 drivers/gpu/drm/i915/display/icl_dsi.c       |  1 +
 drivers/gpu/drm/i915/display/icl_dsi.h       | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_crtc.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 drivers/gpu/drm/i915/display/intel_dsi.h     |  5 -----
 5 files changed, 18 insertions(+), 6 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/icl_dsi.h

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 2f15b322d78f..5781e9fac8b4 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -28,6 +28,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_mipi_dsi.h>
 
+#include "icl_dsi.h"
 #include "intel_atomic.h"
 #include "intel_backlight.h"
 #include "intel_combo_phy.h"
diff --git a/drivers/gpu/drm/i915/display/icl_dsi.h b/drivers/gpu/drm/i915/display/icl_dsi.h
new file mode 100644
index 000000000000..b4861b56b5b2
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/icl_dsi.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef __ICL_DSI_H__
+#define __ICL_DSI_H__
+
+struct drm_i915_private;
+struct intel_crtc_state;
+
+void icl_dsi_init(struct drm_i915_private *i915);
+void icl_dsi_frame_update(struct intel_crtc_state *crtc_state);
+
+#endif /* __ICL_DSI_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index eb5444f90e77..243d5cc29734 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -14,7 +14,7 @@
 
 #include "i915_trace.h"
 #include "i915_vgpu.h"
-
+#include "icl_dsi.h"
 #include "intel_atomic.h"
 #include "intel_atomic_plane.h"
 #include "intel_color.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2ffed63dd498..b2d51cd79d6c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -73,6 +73,7 @@
 #include "g4x_dp.h"
 #include "g4x_hdmi.h"
 #include "i915_drv.h"
+#include "icl_dsi.h"
 #include "intel_acpi.h"
 #include "intel_atomic.h"
 #include "intel_atomic_plane.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i915/display/intel_dsi.h
index dd913ad35232..a3a906cb097e 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.h
+++ b/drivers/gpu/drm/i915/display/intel_dsi.h
@@ -166,11 +166,6 @@ static inline u16 intel_dsi_encoder_ports(struct intel_encoder *encoder)
 	return enc_to_intel_dsi(encoder)->ports;
 }
 
-/* icl_dsi.c */
-void icl_dsi_init(struct drm_i915_private *dev_priv);
-void icl_dsi_frame_update(struct intel_crtc_state *crtc_state);
-
-/* intel_dsi.c */
 int intel_dsi_bitrate(const struct intel_dsi *intel_dsi);
 int intel_dsi_tlpx_ns(const struct intel_dsi *intel_dsi);
 enum drm_panel_orientation
-- 
2.30.2

