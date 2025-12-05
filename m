Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B47CA72A6
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Dec 2025 11:30:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D198F10EAB1;
	Fri,  5 Dec 2025 10:30:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xmq02f3/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47AE010EAB1;
 Fri,  5 Dec 2025 10:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764930656; x=1796466656;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Qv2Tmbb4DZUj89PfLykZFmPqDI+1EtFIgdO/5DLdu6s=;
 b=Xmq02f3/DyTi9G5mxldUC0Z1QUw546VDd3ESClQNwD3INFktFMV630Lz
 0/Fauszz70a88tXJ2BeHxCPH7UkVUILlskoAw13rJSwcbdMB9yrEdhywR
 tj9XuB7mB0/7zz+1oQT2L2bWTjN/2ftv0I+RMxzYYxuSkQGKbsrDrR/35
 Oqf/7OJGXqt3cKCao1vuMhHpl4kgEsjaRye3OoeGiTGhrxtLzrRKKMcKz
 DY80c6Z1IRnB0WVj58v2w/KNcGCUqtQp27APQqyNtbnlObNhAVLDMoaaO
 copPm1lmHtFzFYm/uvK+5IpEwQ5+PJP+axWpWurIvi7h7P22dNtt2Rxp6 Q==;
X-CSE-ConnectionGUID: DWQC0NgFQaGt0ddRKmnFCQ==
X-CSE-MsgGUID: zjOqmFkEQ0K7bJFQk0moSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="67001181"
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="67001181"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 02:30:55 -0800
X-CSE-ConnectionGUID: TthiBZ0LSG62vhti+agQOg==
X-CSE-MsgGUID: MWWvnPRYRKWoWGlgg2+pdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="194562971"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 02:30:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 4/4] drm/{i915, xe}/stolen: make insert_node, area_address,
 area_size optional
Date: Fri,  5 Dec 2025 12:30:30 +0200
Message-ID: <0dbb460e8bd1df29df98862d08fcdfda03912673.1764930576.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1764930576.git.jani.nikula@intel.com>
References: <cover.1764930576.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Since the stolen memory hooks are function pointers, make some of them
optional instead of having to define them for xe.

insert_node, area_address, and area_size are only needed on platforms
not supported by xe.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_parent.c  | 10 ++++++++
 drivers/gpu/drm/xe/display/xe_stolen.c       | 27 --------------------
 include/drm/intel/display_parent_interface.h |  6 ++---
 3 files changed, 13 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index 49cb64ca8c4c..d16163007545 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -17,6 +17,7 @@
  * function pointer interface.
  */
 
+#include <drm/drm_print.h>
 #include <drm/intel/display_parent_interface.h>
 
 #include "intel_display_core.h"
@@ -89,6 +90,9 @@ int intel_parent_stolen_insert_node_in_range(struct intel_display *display,
 int intel_parent_stolen_insert_node(struct intel_display *display, struct intel_stolen_node *node, u64 size,
 				    unsigned int align)
 {
+	if (drm_WARN_ON_ONCE(display->drm, !display->parent->stolen->insert_node))
+		return -ENODEV;
+
 	return display->parent->stolen->insert_node(node, size, align);
 }
 
@@ -116,11 +120,17 @@ u32 intel_parent_stolen_node_offset(struct intel_display *display, struct intel_
 
 u64 intel_parent_stolen_area_address(struct intel_display *display)
 {
+	if (drm_WARN_ON_ONCE(display->drm, !display->parent->stolen->area_address))
+		return 0;
+
 	return display->parent->stolen->area_address(display->drm);
 }
 
 u64 intel_parent_stolen_area_size(struct intel_display *display)
 {
+	if (drm_WARN_ON_ONCE(display->drm, !display->parent->stolen->area_size))
+		return 0;
+
 	return display->parent->stolen->area_size(display->drm);
 }
 
diff --git a/drivers/gpu/drm/xe/display/xe_stolen.c b/drivers/gpu/drm/xe/display/xe_stolen.c
index cc7aec7db76c..12771709183a 100644
--- a/drivers/gpu/drm/xe/display/xe_stolen.c
+++ b/drivers/gpu/drm/xe/display/xe_stolen.c
@@ -43,14 +43,6 @@ static int xe_stolen_insert_node_in_range(struct intel_stolen_node *node, u64 si
 	return err;
 }
 
-static int xe_stolen_insert_node(struct intel_stolen_node *node, u64 size, unsigned int align)
-{
-	/* Not used on xe */
-	WARN_ON(1);
-
-	return -ENODEV;
-}
-
 static void xe_stolen_remove_node(struct intel_stolen_node *node)
 {
 	xe_bo_unpin_map_no_vm(node->bo);
@@ -77,22 +69,6 @@ static u64 xe_stolen_node_offset(const struct intel_stolen_node *node)
 	return res.start;
 }
 
-/* Used for < gen4. These are not supported by Xe */
-static u64 xe_stolen_area_address(struct drm_device *drm)
-{
-	WARN_ON(1);
-
-	return 0;
-}
-
-/* Used for gen9 specific WA. Gen9 is not supported by Xe */
-static u64 xe_stolen_area_size(struct drm_device *drm)
-{
-	WARN_ON(1);
-
-	return 0;
-}
-
 static u64 xe_stolen_node_address(const struct intel_stolen_node *node)
 {
 	struct xe_device *xe = node->xe;
@@ -126,13 +102,10 @@ static void xe_stolen_node_free(const struct intel_stolen_node *node)
 
 const struct intel_display_stolen_interface xe_display_stolen_interface = {
 	.insert_node_in_range = xe_stolen_insert_node_in_range,
-	.insert_node = xe_stolen_insert_node,
 	.remove_node = xe_stolen_remove_node,
 	.initialized = xe_stolen_initialized,
 	.node_allocated = xe_stolen_node_allocated,
 	.node_offset = xe_stolen_node_offset,
-	.area_address = xe_stolen_area_address,
-	.area_size = xe_stolen_area_size,
 	.node_address = xe_stolen_node_address,
 	.node_size = xe_stolen_node_size,
 	.node_alloc = xe_stolen_node_alloc,
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index f590e846464d..cc13b2ce1324 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -51,13 +51,13 @@ struct intel_display_rps_interface {
 struct intel_display_stolen_interface {
 	int (*insert_node_in_range)(struct intel_stolen_node *node, u64 size,
 				    unsigned int align, u64 start, u64 end);
-	int (*insert_node)(struct intel_stolen_node *node, u64 size, unsigned int align);
+	int (*insert_node)(struct intel_stolen_node *node, u64 size, unsigned int align); /* Optional */
 	void (*remove_node)(struct intel_stolen_node *node);
 	bool (*initialized)(struct drm_device *drm);
 	bool (*node_allocated)(const struct intel_stolen_node *node);
 	u64 (*node_offset)(const struct intel_stolen_node *node);
-	u64 (*area_address)(struct drm_device *drm);
-	u64 (*area_size)(struct drm_device *drm);
+	u64 (*area_address)(struct drm_device *drm); /* Optional */
+	u64 (*area_size)(struct drm_device *drm); /* Optional */
 	u64 (*node_address)(const struct intel_stolen_node *node);
 	u64 (*node_size)(const struct intel_stolen_node *node);
 	struct intel_stolen_node *(*node_alloc)(struct drm_device *drm);
-- 
2.47.3

