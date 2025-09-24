Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDDFB9AE78
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 18:44:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73B5210E781;
	Wed, 24 Sep 2025 16:44:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="exEj7KvM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2812910E77E;
 Wed, 24 Sep 2025 16:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758732257; x=1790268257;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wCIimIL4vb9Uwmxn765i1vBAdDIWLM1Bsned+B6khJs=;
 b=exEj7KvM74wtiBcLwNl5cLNgDJ0bWFJPWVca+bvcGjd8RnZVxNxKI/Y5
 OCN7UcL6wxqGSbs9HadPCYgUo/7QQqrGiBo+k1/v5FLyNbOdoc6IULYyi
 f6LeziMqsuWHtg3u/gMbZtaPs/cXSZ0MQCUNMrMIDAp+c1nCi9+Y1NgFC
 MeiZctGL+t+JYxdw4JJs/fwPRznjMgeYHadwLueXMfwcNfR3KeVQkgO8G
 NmbPAZPTblL7kIO9siTHrfC2zuVlY/Mvk5ug2IdUOS7wbdXBjS0Gi1oNz
 zdTaO5Qgz4b59OE+FtR/+RtZ29cH0OmyHVuBqjN+PgYTiMNZ7PqaYVdLa w==;
X-CSE-ConnectionGUID: QxA0M6UIQ5OIn/yc/osDlw==
X-CSE-MsgGUID: 1GL85NKjSdKrZFgpBEVKGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="72137997"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="72137997"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 09:44:16 -0700
X-CSE-ConnectionGUID: BYFI/pDsTU+Lq3NvC9/Q9w==
X-CSE-MsgGUID: x7TiGNQ/SveWadpptLU5oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="177515465"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.149])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 09:44:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 06/11] drm/xe/stolen: convert compat static inlines to proper
 functions
Date: Wed, 24 Sep 2025 19:43:35 +0300
Message-ID: <8e807c6aafc6151b18df08dda20053516813e001.1758732183.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758732183.git.jani.nikula@intel.com>
References: <cover.1758732183.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Add display/xe_stolen.c as the implementation for the stolen interface
exposed to display. This allows hiding the implementation details that
shouldn't be exposed to display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/Makefile                   |   1 +
 .../compat-i915-headers/gem/i915_gem_stolen.h | 104 ++++--------------
 drivers/gpu/drm/xe/display/xe_stolen.c        |  99 +++++++++++++++++
 3 files changed, 119 insertions(+), 85 deletions(-)
 create mode 100644 drivers/gpu/drm/xe/display/xe_stolen.c

diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index d9c6cf0f189e..ac65722e5d38 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -214,6 +214,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	display/xe_hdcp_gsc.o \
 	display/xe_panic.o \
 	display/xe_plane_initial.o \
+	display/xe_stolen.o \
 	display/xe_tdf.o
 
 # SOC code shared with i915
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
index be249f51231d..10f110b9bf77 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
@@ -6,106 +6,40 @@
 #ifndef _I915_GEM_STOLEN_H_
 #define _I915_GEM_STOLEN_H_
 
-#include "xe_ttm_stolen_mgr.h"
-#include "xe_res_cursor.h"
-#include "xe_validation.h"
+#include <linux/types.h>
 
 struct xe_bo;
+struct xe_device;
 
 struct intel_stolen_node {
 	struct xe_bo *bo;
 };
 
-static inline int i915_gem_stolen_insert_node_in_range(struct xe_device *xe,
-						       struct intel_stolen_node *node,
-						       u32 size, u32 align,
-						       u32 start, u32 end)
-{
-	struct xe_bo *bo;
-	int err = 0;
-	u32 flags = XE_BO_FLAG_PINNED | XE_BO_FLAG_STOLEN;
-
-	if (start < SZ_4K)
-		start = SZ_4K;
-
-	if (align) {
-		size = ALIGN(size, align);
-		start = ALIGN(start, align);
-	}
-
-	bo = xe_bo_create_pin_range_novm(xe, xe_device_get_root_tile(xe),
-					 size, start, end, ttm_bo_type_kernel, flags);
-	if (IS_ERR(bo)) {
-		err = PTR_ERR(bo);
-		bo = NULL;
-		return err;
-	}
-
-	node->bo = bo;
-
-	return err;
-}
-
-static inline int i915_gem_stolen_insert_node(struct xe_device *xe,
-					      struct intel_stolen_node *node,
-					      u32 size, u32 align)
-{
-	/* Not used on xe */
-	WARN_ON(1);
-
-	return -ENODEV;
-}
-
-static inline void i915_gem_stolen_remove_node(struct xe_device *xe,
-					       struct intel_stolen_node *node)
-{
-	xe_bo_unpin_map_no_vm(node->bo);
-	node->bo = NULL;
-}
-
-static inline bool i915_gem_stolen_initialized(struct xe_device *xe)
-{
-	return ttm_manager_type(&xe->ttm, XE_PL_STOLEN);
-}
+int i915_gem_stolen_insert_node_in_range(struct xe_device *xe,
+					 struct intel_stolen_node *node,
+					 u32 size, u32 align,
+					 u32 start, u32 end);
 
-static inline bool i915_gem_stolen_node_allocated(const struct intel_stolen_node *node)
-{
-	return node->bo;
-}
+int i915_gem_stolen_insert_node(struct xe_device *xe,
+				struct intel_stolen_node *node,
+				u32 size, u32 align);
 
-static inline u32 i915_gem_stolen_node_offset(struct intel_stolen_node *node)
-{
-	struct xe_res_cursor res;
+void i915_gem_stolen_remove_node(struct xe_device *xe,
+				 struct intel_stolen_node *node);
 
-	xe_res_first(node->bo->ttm.resource, 0, 4096, &res);
-	return res.start;
-}
+bool i915_gem_stolen_initialized(struct xe_device *xe);
 
-/* Used for < gen4. These are not supported by Xe */
-static inline u64 i915_gem_stolen_area_address(const struct xe_device *xe)
-{
-	WARN_ON(1);
+bool i915_gem_stolen_node_allocated(const struct intel_stolen_node *node);
 
-	return 0;
-}
+u32 i915_gem_stolen_node_offset(struct intel_stolen_node *node);
 
-/* Used for gen9 specific WA. Gen9 is not supported by Xe */
-static inline u64 i915_gem_stolen_area_size(const struct xe_device *xe)
-{
-	WARN_ON(1);
+u64 i915_gem_stolen_area_address(const struct xe_device *xe);
 
-	return 0;
-}
+u64 i915_gem_stolen_area_size(const struct xe_device *xe);
 
-static inline u64 i915_gem_stolen_node_address(struct xe_device *xe,
-					       struct intel_stolen_node *node)
-{
-	return xe_ttm_stolen_gpu_offset(xe) + i915_gem_stolen_node_offset(node);
-}
+u64 i915_gem_stolen_node_address(struct xe_device *xe,
+				 struct intel_stolen_node *node);
 
-static inline u64 i915_gem_stolen_node_size(const struct intel_stolen_node *node)
-{
-	return node->bo->ttm.base.size;
-}
+u64 i915_gem_stolen_node_size(const struct intel_stolen_node *node);
 
 #endif
diff --git a/drivers/gpu/drm/xe/display/xe_stolen.c b/drivers/gpu/drm/xe/display/xe_stolen.c
new file mode 100644
index 000000000000..ab156a9f2c26
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/xe_stolen.c
@@ -0,0 +1,99 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2025 Intel Corporation */
+
+#include "gem/i915_gem_stolen.h"
+#include "xe_res_cursor.h"
+#include "xe_ttm_stolen_mgr.h"
+#include "xe_validation.h"
+
+int i915_gem_stolen_insert_node_in_range(struct xe_device *xe,
+					 struct intel_stolen_node *node,
+					 u32 size, u32 align,
+					 u32 start, u32 end)
+{
+	struct xe_bo *bo;
+	int err = 0;
+	u32 flags = XE_BO_FLAG_PINNED | XE_BO_FLAG_STOLEN;
+
+	if (start < SZ_4K)
+		start = SZ_4K;
+
+	if (align) {
+		size = ALIGN(size, align);
+		start = ALIGN(start, align);
+	}
+
+	bo = xe_bo_create_pin_range_novm(xe, xe_device_get_root_tile(xe),
+					 size, start, end, ttm_bo_type_kernel, flags);
+	if (IS_ERR(bo)) {
+		err = PTR_ERR(bo);
+		bo = NULL;
+		return err;
+	}
+
+	node->bo = bo;
+
+	return err;
+}
+
+int i915_gem_stolen_insert_node(struct xe_device *xe,
+				struct intel_stolen_node *node,
+				u32 size, u32 align)
+{
+	/* Not used on xe */
+	WARN_ON(1);
+
+	return -ENODEV;
+}
+
+void i915_gem_stolen_remove_node(struct xe_device *xe,
+				 struct intel_stolen_node *node)
+{
+	xe_bo_unpin_map_no_vm(node->bo);
+	node->bo = NULL;
+}
+
+bool i915_gem_stolen_initialized(struct xe_device *xe)
+{
+	return ttm_manager_type(&xe->ttm, XE_PL_STOLEN);
+}
+
+bool i915_gem_stolen_node_allocated(const struct intel_stolen_node *node)
+{
+	return node->bo;
+}
+
+u32 i915_gem_stolen_node_offset(struct intel_stolen_node *node)
+{
+	struct xe_res_cursor res;
+
+	xe_res_first(node->bo->ttm.resource, 0, 4096, &res);
+	return res.start;
+}
+
+/* Used for < gen4. These are not supported by Xe */
+u64 i915_gem_stolen_area_address(const struct xe_device *xe)
+{
+	WARN_ON(1);
+
+	return 0;
+}
+
+/* Used for gen9 specific WA. Gen9 is not supported by Xe */
+u64 i915_gem_stolen_area_size(const struct xe_device *xe)
+{
+	WARN_ON(1);
+
+	return 0;
+}
+
+u64 i915_gem_stolen_node_address(struct xe_device *xe,
+				 struct intel_stolen_node *node)
+{
+	return xe_ttm_stolen_gpu_offset(xe) + i915_gem_stolen_node_offset(node);
+}
+
+u64 i915_gem_stolen_node_size(const struct intel_stolen_node *node)
+{
+	return node->bo->ttm.base.size;
+}
-- 
2.47.3

