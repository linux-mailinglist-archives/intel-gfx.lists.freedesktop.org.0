Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C597B458FC3
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 14:51:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB59D6E161;
	Mon, 22 Nov 2021 13:51:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADDC289F8E
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 13:51:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="214814858"
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="214814858"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 05:51:40 -0800
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="674066744"
Received: from rmcdonax-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.19.217])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 05:51:38 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Nov 2021 15:51:06 +0200
Message-Id: <4cdfc44b4a6ec4acd67cf0c7f9a450d8d110cd79.1637588831.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1637588831.git.jani.nikula@intel.com>
References: <cover.1637588831.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/8] drm/i915: split out intel_pm_types.h
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

This is far from ideal, but it reduces the i915_drv.h dependency from
intel_display_types.h. Maybe in the future we'll need a better split.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/i915_drv.h               | 64 +---------------
 drivers/gpu/drm/i915/intel_pm_types.h         | 76 +++++++++++++++++++
 3 files changed, 78 insertions(+), 63 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/intel_pm_types.h

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 338ac3bd08ac..091f748ede7c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -47,6 +47,7 @@
 #include <media/cec-notifier.h>
 
 #include "i915_drv.h"
+#include "intel_pm_types.h"
 
 struct drm_printer;
 struct __intel_global_objs_state;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1bfadd9127fc..e2ccc0696df7 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -89,6 +89,7 @@
 #include "intel_device_info.h"
 #include "intel_memory_region.h"
 #include "intel_pch.h"
+#include "intel_pm_types.h"
 #include "intel_runtime_pm.h"
 #include "intel_step.h"
 #include "intel_uncore.h"
@@ -730,69 +731,6 @@ struct intel_vbt_data {
 	struct sdvo_device_mapping sdvo_mappings[2];
 };
 
-enum intel_ddb_partitioning {
-	INTEL_DDB_PART_1_2,
-	INTEL_DDB_PART_5_6, /* IVB+ */
-};
-
-struct ilk_wm_values {
-	u32 wm_pipe[3];
-	u32 wm_lp[3];
-	u32 wm_lp_spr[3];
-	bool enable_fbc_wm;
-	enum intel_ddb_partitioning partitioning;
-};
-
-struct g4x_pipe_wm {
-	u16 plane[I915_MAX_PLANES];
-	u16 fbc;
-};
-
-struct g4x_sr_wm {
-	u16 plane;
-	u16 cursor;
-	u16 fbc;
-};
-
-struct vlv_wm_ddl_values {
-	u8 plane[I915_MAX_PLANES];
-};
-
-struct vlv_wm_values {
-	struct g4x_pipe_wm pipe[3];
-	struct g4x_sr_wm sr;
-	struct vlv_wm_ddl_values ddl[3];
-	u8 level;
-	bool cxsr;
-};
-
-struct g4x_wm_values {
-	struct g4x_pipe_wm pipe[2];
-	struct g4x_sr_wm sr;
-	struct g4x_sr_wm hpll;
-	bool cxsr;
-	bool hpll_en;
-	bool fbc_en;
-};
-
-struct skl_ddb_entry {
-	u16 start, end;	/* in number of blocks, 'end' is exclusive */
-};
-
-static inline u16 skl_ddb_entry_size(const struct skl_ddb_entry *entry)
-{
-	return entry->end - entry->start;
-}
-
-static inline bool skl_ddb_entry_equal(const struct skl_ddb_entry *e1,
-				       const struct skl_ddb_entry *e2)
-{
-	if (e1->start == e2->start && e1->end == e2->end)
-		return true;
-
-	return false;
-}
-
 struct i915_frontbuffer_tracking {
 	spinlock_t lock;
 
diff --git a/drivers/gpu/drm/i915/intel_pm_types.h b/drivers/gpu/drm/i915/intel_pm_types.h
new file mode 100644
index 000000000000..211632f58751
--- /dev/null
+++ b/drivers/gpu/drm/i915/intel_pm_types.h
@@ -0,0 +1,76 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef __INTEL_PM_TYPES_H__
+#define __INTEL_PM_TYPES_H__
+
+#include <linux/types.h>
+
+#include "display/intel_display.h"
+
+enum intel_ddb_partitioning {
+	INTEL_DDB_PART_1_2,
+	INTEL_DDB_PART_5_6, /* IVB+ */
+};
+
+struct ilk_wm_values {
+	u32 wm_pipe[3];
+	u32 wm_lp[3];
+	u32 wm_lp_spr[3];
+	bool enable_fbc_wm;
+	enum intel_ddb_partitioning partitioning;
+};
+
+struct g4x_pipe_wm {
+	u16 plane[I915_MAX_PLANES];
+	u16 fbc;
+};
+
+struct g4x_sr_wm {
+	u16 plane;
+	u16 cursor;
+	u16 fbc;
+};
+
+struct vlv_wm_ddl_values {
+	u8 plane[I915_MAX_PLANES];
+};
+
+struct vlv_wm_values {
+	struct g4x_pipe_wm pipe[3];
+	struct g4x_sr_wm sr;
+	struct vlv_wm_ddl_values ddl[3];
+	u8 level;
+	bool cxsr;
+};
+
+struct g4x_wm_values {
+	struct g4x_pipe_wm pipe[2];
+	struct g4x_sr_wm sr;
+	struct g4x_sr_wm hpll;
+	bool cxsr;
+	bool hpll_en;
+	bool fbc_en;
+};
+
+struct skl_ddb_entry {
+	u16 start, end;	/* in number of blocks, 'end' is exclusive */
+};
+
+static inline u16 skl_ddb_entry_size(const struct skl_ddb_entry *entry)
+{
+	return entry->end - entry->start;
+}
+
+static inline bool skl_ddb_entry_equal(const struct skl_ddb_entry *e1,
+				       const struct skl_ddb_entry *e2)
+{
+	if (e1->start == e2->start && e1->end == e2->end)
+		return true;
+
+	return false;
+}
+
+#endif /* __INTEL_PM_TYPES_H__ */
-- 
2.30.2

