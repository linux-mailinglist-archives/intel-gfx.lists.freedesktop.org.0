Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AC270E617
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 21:56:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47AA410E4BF;
	Tue, 23 May 2023 19:56:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7307C10E4C4
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 19:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684871791; x=1716407791;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tuheodCXtN8x8Gati4ANCMOez2K7GpI0sG/yOBkeWA0=;
 b=BmjvPwUwy+oyxJmYQB1MCfnxlYmvc1OgbJIaKXNzxkStI6Yy/dXSucVd
 0lf6/gLJb0alQsiIa/42r3WA7mw33omukWsrln5mB4Xno5pGo0ttoNIb+
 7s6ty8vzwLZLfiUX+PkR90jJpCOZ5Yut33RkEjCN+mQEIi0Y3s9L6U9yx
 crxMlFQF6ct+Tln/gQpMBEWZ4tgPCTfXrXN9DCXENKNy4g/XkOvrLk/2o
 gKNZkbTAHA22d8PzbTej0EnilhDWeOL0np2j/QG5nlRgCNbs8Bcuzc9Ex
 xTGHFVvv0l+X40YzF6T1ZNa9I8XN5rsUdSrsc0jiLAHS0Q9rr8GzBXKb9 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="353372866"
X-IronPort-AV: E=Sophos;i="6.00,187,1681196400"; d="scan'208";a="353372866"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 12:56:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="681557150"
X-IronPort-AV: E=Sophos;i="6.00,187,1681196400"; d="scan'208";a="681557150"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 12:56:22 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 May 2023 12:56:04 -0700
Message-Id: <20230523195609.73627-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230523195609.73627-1-matthew.d.roper@intel.com>
References: <20230523195609.73627-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v3 1/6] drm/i915/display: Move display device info
 to header under display/
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, matthew.d.roper@intel.com,
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
2.40.1

