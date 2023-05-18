Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A0B707861
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 05:18:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5646010E4E2;
	Thu, 18 May 2023 03:18:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B10D10E4D4;
 Thu, 18 May 2023 03:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684379890; x=1715915890;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VPqppkJJn4bSgeZbPtvbSYBCtNFbPGuX+/IP8qVFVjo=;
 b=fP5+pwNQ9FztHzk96AwqLwVUR9D96noEENlgPvGTWC/5KIqrJli/Qhwq
 eBoZXMxxw9k9fJaJ9Rck4f0YtEyNGOZ/v6VKUyPSZcFvqToTJ7GW766kB
 UIw+3Lt0EsLh4+xhORICJAX9qSb8F29+z7dwEWKj0y/ZGFw++zxpjkPye
 2d8BjAgwWVAqwhGR3cJ/GMg9HEOO7yeIgkOFbN7xdRi+2UUr3f3cWVsoJ
 WwEtPZR7XVQq6dMkL7/o4rzsZKwnpGeXXATGQIZZkXaePi3zJQ6lvFb4j
 P2ger2l/6m8nGZt8bWrE6tnF0Y8u0Fzf7o7aPoToVvDlZXAhvxbWRdTuR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="341348741"
X-IronPort-AV: E=Sophos;i="5.99,284,1677571200"; d="scan'208";a="341348741"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 20:18:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="652472426"
X-IronPort-AV: E=Sophos;i="5.99,284,1677571200"; d="scan'208";a="652472426"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 20:18:10 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 May 2023 20:18:00 -0700
Message-Id: <20230518031804.3133486-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230518031804.3133486-1-matthew.d.roper@intel.com>
References: <20230518031804.3133486-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/display: Move display device info
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
Cc: Matt Roper <matthew.d.roper@intel.com>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Moving display-specific substruture definitions will help keep display
more self-contained and make it easier to re-use in other drivers (i.e.,
Xe) in the future.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
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

