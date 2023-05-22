Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6336370CAD1
	for <lists+intel-gfx@lfdr.de>; Mon, 22 May 2023 22:23:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BD2B10E386;
	Mon, 22 May 2023 20:23:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 062FC10E294;
 Mon, 22 May 2023 20:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684787010; x=1716323010;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X1saJ48x5O8xoXmNdbU8ySZHhuFfKB7WJyTSISyvEfo=;
 b=BiZEYlSkAhmPZ1DnBa9SJyQuOoJiGTzTflRC8UnE/t9Mw8UC+AGar2z/
 lah1stvj8/7rypWc3iQohk88KWyLsOsFCJZE6DYeBHvUeF5R1j91jGkaI
 LSn6W03rOVbdqfFNv5Ul30WsQ6psRYAiOi+BeXmaDpeHmvn0bHixdln/h
 zOKfVmO4JisI7unMpQm4hRrZp0YxM2Jiv8yK65/SiSDx+fXgzB/AN3Wdv
 Tnc6z5iosMwoq8ipjqIm/HR+ANK2f2OUJBF+APMPbVpvk4DZ5Qm1RBH00
 xGYzQNGcHALM2ANInBErHw0o9AAi2/e4s4+YgXaj0Uh5iqqsfps4/qXCK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="337620400"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="337620400"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 13:23:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="681087966"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="681087966"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 13:23:29 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 May 2023 13:23:09 -0700
Message-Id: <20230522202314.3939499-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230522202314.3939499-1-matthew.d.roper@intel.com>
References: <20230522202314.3939499-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/6] drm/i915/display: Move display device
 info to header under display/
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, intel-xe@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Moving display-specific substructure definitions will help keep display
more self-contained and make it easier to re-use in other drivers (i.e.,
Xe) in the future.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 .../drm/i915/display/intel_display_device.h   | 60 +++++++++++++++++++
 drivers/gpu/drm/i915/intel_device_info.h      | 49 +--------------
 2 files changed, 62 insertions(+), 47 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_device.h

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
new file mode 100644
index 000000000000..c689d582dbf1
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -0,0 +1,60 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_DISPLAY_DEVICE_H__
+#define __INTEL_DISPLAY_DEVICE_H__
+
+#include <linux/types.h>
+
+#include "display/intel_display_limits.h"
+
+#define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
+	/* Keep in alphabetical order */ \
+	func(cursor_needs_physical); \
+	func(has_cdclk_crawl); \
+	func(has_cdclk_squash); \
+	func(has_ddi); \
+	func(has_dp_mst); \
+	func(has_dsb); \
+	func(has_fpga_dbg); \
+	func(has_gmch); \
+	func(has_hotplug); \
+	func(has_hti); \
+	func(has_ipc); \
+	func(has_overlay); \
+	func(has_psr); \
+	func(has_psr_hw_tracking); \
+	func(overlay_needs_physical); \
+	func(supports_tv);
+
+struct intel_display_device_info {
+	u8 abox_mask;
+
+	struct {
+		u16 size; /* in blocks */
+		u8 slice_mask;
+	} dbuf;
+
+#define DEFINE_FLAG(name) u8 name:1
+	DEV_INFO_DISPLAY_FOR_EACH_FLAG(DEFINE_FLAG);
+#undef DEFINE_FLAG
+
+	/* Global register offset for the display engine */
+	u32 mmio_offset;
+
+	/* Register offsets for the various display pipes and transcoders */
+	u32 pipe_offsets[I915_MAX_TRANSCODERS];
+	u32 trans_offsets[I915_MAX_TRANSCODERS];
+	u32 cursor_offsets[I915_MAX_PIPES];
+
+	struct {
+		u32 degamma_lut_size;
+		u32 gamma_lut_size;
+		u32 degamma_lut_tests;
+		u32 gamma_lut_tests;
+	} color;
+};
+
+#endif
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 959a4080840c..96f6bdb04b1b 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -29,7 +29,7 @@
 
 #include "intel_step.h"
 
-#include "display/intel_display_limits.h"
+#include "display/intel_display_device.h"
 
 #include "gt/intel_engine_types.h"
 #include "gt/intel_context_types.h"
@@ -182,25 +182,6 @@ enum intel_ppgtt_type {
 	func(unfenced_needs_alignment); \
 	func(hws_needs_physical);
 
-#define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
-	/* Keep in alphabetical order */ \
-	func(cursor_needs_physical); \
-	func(has_cdclk_crawl); \
-	func(has_cdclk_squash); \
-	func(has_ddi); \
-	func(has_dp_mst); \
-	func(has_dsb); \
-	func(has_fpga_dbg); \
-	func(has_gmch); \
-	func(has_hotplug); \
-	func(has_hti); \
-	func(has_ipc); \
-	func(has_overlay); \
-	func(has_psr); \
-	func(has_psr_hw_tracking); \
-	func(overlay_needs_physical); \
-	func(supports_tv);
-
 struct intel_ip_version {
 	u8 ver;
 	u8 rel;
@@ -278,33 +259,7 @@ struct intel_device_info {
 	DEV_INFO_FOR_EACH_FLAG(DEFINE_FLAG);
 #undef DEFINE_FLAG
 
-	struct {
-		u8 abox_mask;
-
-		struct {
-			u16 size; /* in blocks */
-			u8 slice_mask;
-		} dbuf;
-
-#define DEFINE_FLAG(name) u8 name:1
-		DEV_INFO_DISPLAY_FOR_EACH_FLAG(DEFINE_FLAG);
-#undef DEFINE_FLAG
-
-		/* Global register offset for the display engine */
-		u32 mmio_offset;
-
-		/* Register offsets for the various display pipes and transcoders */
-		u32 pipe_offsets[I915_MAX_TRANSCODERS];
-		u32 trans_offsets[I915_MAX_TRANSCODERS];
-		u32 cursor_offsets[I915_MAX_PIPES];
-
-		struct {
-			u32 degamma_lut_size;
-			u32 gamma_lut_size;
-			u32 degamma_lut_tests;
-			u32 gamma_lut_tests;
-		} color;
-	} display;
+	struct intel_display_device_info display;
 
 	/*
 	 * Initial runtime info. Do not access outside of i915_driver_create().
-- 
2.40.0

