Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6163A42742
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 17:05:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5813F10E330;
	Mon, 24 Feb 2025 16:05:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YEJlVagX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A963D10E330;
 Mon, 24 Feb 2025 16:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740413137; x=1771949137;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7j34VtSDssqy/r0IDklFdkGKSmFY9xKo09+em9kjE2w=;
 b=YEJlVagXroxE1BHuk7y9CZ9zM7Pu+YjuzbRXtrlWaHpH3SYxGoX/+xy+
 cTWqzYJFbOyqhzoyfkrG0emoGlH9WAGOtStn6BIaP8nt4ujAj5dZ3ZJwC
 4vJyedqVRsIN+k5hHq+EeuxYbGa84zWCCs7aWWRClSe5yHPfl5n8Ij+Vn
 YNaGZ131ybE+XADkZpr2tqpH+7jyYOGU7O3m7WYk+rZXo5VWKNmz2NS8o
 2sJ6cxGuL1zEg3UInDukAqxbIM4sczNXQS9Gt99ZQhnqCNcWjiLz59ixC
 Y3MBV5l3T9krvlWg7nCKvWMqbqvv+9557+nl9pvRZ/F1Ox06DU+a3jbqo w==;
X-CSE-ConnectionGUID: fhtcUf7RS0WN2d5cT1c5jg==
X-CSE-MsgGUID: Uz7/SMnASjO7sEJJa5nB8w==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="40883006"
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="40883006"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 08:01:06 -0800
X-CSE-ConnectionGUID: V4gzXD0hRAKNWshiOBDZyw==
X-CSE-MsgGUID: fWYqUCtNRaSArQGkMK5fNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121356351"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.133])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 08:01:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/2] drm/i915: split out i915_gtt_view_types.h from
 i915_vma_types.h
Date: Mon, 24 Feb 2025 18:00:49 +0200
Message-Id: <bb31885c32dbddad76d634c6fdb98a73b546b42e.1740412806.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740412806.git.jani.nikula@intel.com>
References: <cover.1740412806.git.jani.nikula@intel.com>
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

In the interest of limiting the display dependencies on i915 core
headers, split out i915_gtt_view_types.h from i915_vma_types.h, and only
include the new header from intel_display_types.h.

Reuse the new header from xe compat code too, failing build if partial
view is used in display code.

Side note: Why would we ever have set enum i915_gtt_view_type values to
size of each type?! What an insane hack.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/i915_gtt_view_types.h    | 59 +++++++++++++++
 drivers/gpu/drm/i915/i915_vma_types.h         | 52 +------------
 .../compat-i915-headers/i915_gtt_view_types.h |  7 ++
 .../xe/compat-i915-headers/i915_vma_types.h   | 74 -------------------
 5 files changed, 69 insertions(+), 125 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_gtt_view_types.h
 create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_gtt_view_types.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_vma_types.h

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 12723ba13eb6..a856cbcf102f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -42,7 +42,7 @@
 #include <drm/intel/i915_hdcp_interface.h>
 #include <uapi/drm/i915_drm.h>
 
-#include "i915_vma_types.h"
+#include "i915_gtt_view_types.h"
 #include "intel_bios.h"
 #include "intel_display.h"
 #include "intel_display_conversion.h"
diff --git a/drivers/gpu/drm/i915/i915_gtt_view_types.h b/drivers/gpu/drm/i915/i915_gtt_view_types.h
new file mode 100644
index 000000000000..c084f67bc880
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_gtt_view_types.h
@@ -0,0 +1,59 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __I915_GTT_VIEW_TYPES_H__
+#define __I915_GTT_VIEW_TYPES_H__
+
+#include <linux/types.h>
+
+struct intel_remapped_plane_info {
+	/* in gtt pages */
+	u32 offset:31;
+	u32 linear:1;
+	union {
+		/* in gtt pages for !linear */
+		struct {
+			u16 width;
+			u16 height;
+			u16 src_stride;
+			u16 dst_stride;
+		};
+
+		/* in gtt pages for linear */
+		u32 size;
+	};
+} __packed;
+
+struct intel_rotation_info {
+	struct intel_remapped_plane_info plane[2];
+} __packed;
+
+struct intel_partial_info {
+	u64 offset;
+	unsigned int size;
+} __packed;
+
+struct intel_remapped_info {
+	struct intel_remapped_plane_info plane[4];
+	/* in gtt pages */
+	u32 plane_alignment;
+} __packed;
+
+enum i915_gtt_view_type {
+	I915_GTT_VIEW_NORMAL = 0,
+	I915_GTT_VIEW_ROTATED = sizeof(struct intel_rotation_info),
+	I915_GTT_VIEW_PARTIAL = sizeof(struct intel_partial_info),
+	I915_GTT_VIEW_REMAPPED = sizeof(struct intel_remapped_info),
+};
+
+struct i915_gtt_view {
+	enum i915_gtt_view_type type;
+	union {
+		/* Members need to contain no holes/padding */
+		struct intel_partial_info partial;
+		struct intel_rotation_info rotated;
+		struct intel_remapped_info remapped;
+	};
+};
+
+#endif /* __I915_GTT_VIEW_TYPES_H__ */
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index 559de74d0b11..a499a3bea874 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -32,6 +32,8 @@
 
 #include "gem/i915_gem_object_types.h"
 
+#include "i915_gtt_view_types.h"
+
 /**
  * DOC: Global GTT views
  *
@@ -95,46 +97,6 @@
 
 struct i915_vma_resource;
 
-struct intel_remapped_plane_info {
-	/* in gtt pages */
-	u32 offset:31;
-	u32 linear:1;
-	union {
-		/* in gtt pages for !linear */
-		struct {
-			u16 width;
-			u16 height;
-			u16 src_stride;
-			u16 dst_stride;
-		};
-
-		/* in gtt pages for linear */
-		u32 size;
-	};
-} __packed;
-
-struct intel_remapped_info {
-	struct intel_remapped_plane_info plane[4];
-	/* in gtt pages */
-	u32 plane_alignment;
-} __packed;
-
-struct intel_rotation_info {
-	struct intel_remapped_plane_info plane[2];
-} __packed;
-
-struct intel_partial_info {
-	u64 offset;
-	unsigned int size;
-} __packed;
-
-enum i915_gtt_view_type {
-	I915_GTT_VIEW_NORMAL = 0,
-	I915_GTT_VIEW_ROTATED = sizeof(struct intel_rotation_info),
-	I915_GTT_VIEW_PARTIAL = sizeof(struct intel_partial_info),
-	I915_GTT_VIEW_REMAPPED = sizeof(struct intel_remapped_info),
-};
-
 static inline void assert_i915_gem_gtt_types(void)
 {
 	BUILD_BUG_ON(sizeof(struct intel_rotation_info) != 2 * sizeof(u32) + 8 * sizeof(u16));
@@ -160,16 +122,6 @@ static inline void assert_i915_gem_gtt_types(void)
 	}
 }
 
-struct i915_gtt_view {
-	enum i915_gtt_view_type type;
-	union {
-		/* Members need to contain no holes/padding */
-		struct intel_partial_info partial;
-		struct intel_rotation_info rotated;
-		struct intel_remapped_info remapped;
-	};
-};
-
 /**
  * DOC: Virtual Memory Address
  *
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_gtt_view_types.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_gtt_view_types.h
new file mode 100644
index 000000000000..b261910cd6f9
--- /dev/null
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_gtt_view_types.h
@@ -0,0 +1,7 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#include "../../i915/i915_gtt_view_types.h"
+
+/* Partial view not supported in xe, fail build if used. */
+#define I915_GTT_VIEW_PARTIAL
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_vma_types.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_vma_types.h
deleted file mode 100644
index e7aaf50f5485..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_vma_types.h
+++ /dev/null
@@ -1,74 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#include <linux/types.h>
-#include <linux/build_bug.h>
-
-/* XX: Figure out how to handle this vma mapping in xe */
-struct intel_remapped_plane_info {
-	/* in gtt pages */
-	u32 offset:31;
-	u32 linear:1;
-	union {
-		/* in gtt pages for !linear */
-		struct {
-			u16 width;
-			u16 height;
-			u16 src_stride;
-			u16 dst_stride;
-		};
-
-		/* in gtt pages for linear */
-		u32 size;
-	};
-} __packed;
-
-struct intel_remapped_info {
-	struct intel_remapped_plane_info plane[4];
-	/* in gtt pages */
-	u32 plane_alignment;
-} __packed;
-
-struct intel_rotation_info {
-	struct intel_remapped_plane_info plane[2];
-} __packed;
-
-enum i915_gtt_view_type {
-	I915_GTT_VIEW_NORMAL = 0,
-	I915_GTT_VIEW_ROTATED = sizeof(struct intel_rotation_info),
-	I915_GTT_VIEW_REMAPPED = sizeof(struct intel_remapped_info),
-};
-
-static inline void assert_i915_gem_gtt_types(void)
-{
-	BUILD_BUG_ON(sizeof(struct intel_rotation_info) != 2 * sizeof(u32) + 8 * sizeof(u16));
-	BUILD_BUG_ON(sizeof(struct intel_remapped_info) != 5 * sizeof(u32) + 16 * sizeof(u16));
-
-	/* Check that rotation/remapped shares offsets for simplicity */
-	BUILD_BUG_ON(offsetof(struct intel_remapped_info, plane[0]) !=
-		     offsetof(struct intel_rotation_info, plane[0]));
-	BUILD_BUG_ON(offsetofend(struct intel_remapped_info, plane[1]) !=
-		     offsetofend(struct intel_rotation_info, plane[1]));
-
-	/* As we encode the size of each branch inside the union into its type,
-	 * we have to be careful that each branch has a unique size.
-	 */
-	switch ((enum i915_gtt_view_type)0) {
-	case I915_GTT_VIEW_NORMAL:
-	case I915_GTT_VIEW_ROTATED:
-	case I915_GTT_VIEW_REMAPPED:
-		/* gcc complains if these are identical cases */
-		break;
-	}
-}
-
-struct i915_gtt_view {
-	enum i915_gtt_view_type type;
-	union {
-		/* Members need to contain no holes/padding */
-		struct intel_rotation_info rotated;
-		struct intel_remapped_info remapped;
-	};
-};
-- 
2.39.5

