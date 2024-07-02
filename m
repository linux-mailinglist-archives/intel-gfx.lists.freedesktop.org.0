Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3799241E2
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2024 17:08:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD67310E628;
	Tue,  2 Jul 2024 15:08:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WQJ2rAf6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18BE410E627;
 Tue,  2 Jul 2024 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719932896; x=1751468896;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wSKrjxvzc0XiqJVDZpDEnmizsLkcEOBrN8/jxkVK298=;
 b=WQJ2rAf6mZZnFD8mfSk5Dmkg8mctNlyWlGNzzxi2wUkefyIN7sq6mr/O
 T8bZKQwLgh5HBJr5G1Z2l5nK3Oq8hlnyj7sixLnm979Y9WMKmeLHgFev4
 LFPAXjXb4Z5ZNdaTnT7rBkZO1TthlzmrtRuyukpfNHJxTE3y7cYeXKQTa
 JQk4ofZoLuLLMz8iQEAnmDU1A9QpFhGPMH1ebId6Ysm/gqaEEX8dBh4kg
 WZ+Y0d8Z6lU2Pr/P0FU6HgQZB91yAR2YIV/nuizhpVj66vOgmTT8/6j0Y
 TxJrCtI5SYj26k2Rk1ADYOeDxH4WIDPZNBm28/DZsxOY2W3iPDMHGOaR5 w==;
X-CSE-ConnectionGUID: MbdDK6gwTaiYwDzqraQWBw==
X-CSE-MsgGUID: qZurYc1gRBmkFZuokzun9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="27715107"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="27715107"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 08:08:16 -0700
X-CSE-ConnectionGUID: /t265b6eSISd5nr8l+rX8A==
X-CSE-MsgGUID: EMDV2kGFQQm4MefuxFKRBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="69128645"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO mwauld-desk.intel.com)
 ([10.245.244.129])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 08:08:14 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH v3 2/2] drm/i915: disable fbc due to Wa_16023588340
Date: Tue,  2 Jul 2024 16:06:09 +0100
Message-ID: <20240702150609.155245-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240702150609.155245-3-matthew.auld@intel.com>
References: <20240702150609.155245-3-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

On BMG-G21 we need to disable fbc due to complications around the WA.

v2:
 - Try to handle with i915_drv.h and compat layer. (Rodrigo)
v3:
 - For simplicity retreat back to the original design for now.
 - Drop the extra \ from the Makefile (Jani)

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_wa.h |  8 ++++++++
 drivers/gpu/drm/i915/display/intel_fbc.c        |  6 ++++++
 drivers/gpu/drm/xe/Makefile                     |  4 +++-
 drivers/gpu/drm/xe/display/xe_display_wa.c      | 16 ++++++++++++++++
 4 files changed, 33 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/xe/display/xe_display_wa.c

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index 63201d09852c..be644ab6ae00 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -6,8 +6,16 @@
 #ifndef __INTEL_DISPLAY_WA_H__
 #define __INTEL_DISPLAY_WA_H__
 
+#include <linux/types.h>
+
 struct drm_i915_private;
 
 void intel_display_wa_apply(struct drm_i915_private *i915);
 
+#ifdef I915
+static inline bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915) { return false; }
+#else
+bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915);
+#endif
+
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 67116c9f1464..8488f82143a4 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -56,6 +56,7 @@
 #include "intel_display_device.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
+#include "intel_display_wa.h"
 #include "intel_fbc.h"
 #include "intel_fbc_regs.h"
 #include "intel_frontbuffer.h"
@@ -1237,6 +1238,11 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 		return 0;
 	}
 
+	if (intel_display_needs_wa_16023588340(i915)) {
+		plane_state->no_fbc_reason = "Wa_16023588340";
+		return 0;
+	}
+
 	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
 	if (i915_vtd_active(i915) && (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
 		plane_state->no_fbc_reason = "VT-d enabled";
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 970c5c09e20a..9e1bb2f6e03c 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -36,7 +36,8 @@ uses_generated_oob := \
 	$(obj)/xe_ring_ops.o \
 	$(obj)/xe_vm.o \
 	$(obj)/xe_wa.o \
-	$(obj)/xe_ttm_stolen_mgr.o
+	$(obj)/xe_ttm_stolen_mgr.o \
+	$(obj)/display/xe_display_wa.o
 
 $(uses_generated_oob): $(generated_oob)
 
@@ -194,6 +195,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	display/xe_display.o \
 	display/xe_display_misc.o \
 	display/xe_display_rps.o \
+	display/xe_display_wa.o \
 	display/xe_dsb_buffer.o \
 	display/xe_fb_pin.o \
 	display/xe_hdcp_gsc.o \
diff --git a/drivers/gpu/drm/xe/display/xe_display_wa.c b/drivers/gpu/drm/xe/display/xe_display_wa.c
new file mode 100644
index 000000000000..68e3d1959ad6
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/xe_display_wa.c
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#include "intel_display_wa.h"
+
+#include "xe_device.h"
+#include "xe_wa.h"
+
+#include <generated/xe_wa_oob.h>
+
+bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915)
+{
+	return XE_WA(xe_root_mmio_gt(i915), 16023588340);
+}
-- 
2.45.2

