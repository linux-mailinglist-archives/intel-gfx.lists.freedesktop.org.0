Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0F4458E65
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 13:32:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE2916E10F;
	Mon, 22 Nov 2021 12:32:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 776B76E10F
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 12:32:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="298187706"
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="298187706"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 04:31:57 -0800
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="474332377"
Received: from kananth2-mobl1.gar.corp.intel.com (HELO
 smulati-desk.gar.corp.intel.com) ([10.213.104.183])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 04:31:55 -0800
From: Mullati Siva <siva.mullati@intel.com>
To: intel-gfx@lists.freedesktop.org,
	siva.mullati@intel.com
Date: Mon, 22 Nov 2021 18:01:42 +0530
Message-Id: <20211122123142.319367-1-siva.mullati@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Skip remap_io_mapping() for non-x86
 platforms
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Siva Mullati <siva.mullati@intel.com>

Only hw that supports mappable aperture would hit this path
vm_fault_gtt/vm_fault_tmm, So we never hit this function
remap_io_mapping() in discrete, So skip this code for non-x86
architectures.

Signed-off-by: Siva Mullati <siva.mullati@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c |  1 +
 drivers/gpu/drm/i915/i915_drv.h          |  8 ------
 drivers/gpu/drm/i915/i915_mm.c           |  1 +
 drivers/gpu/drm/i915/i915_mm.h           | 32 ++++++++++++++++++++++++
 4 files changed, 34 insertions(+), 8 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_mm.h

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 65fc6ff5f59d..39bb15eafc07 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -17,6 +17,7 @@
 #include "i915_gem_ioctls.h"
 #include "i915_gem_object.h"
 #include "i915_gem_mman.h"
+#include "i915_mm.h"
 #include "i915_trace.h"
 #include "i915_user_extensions.h"
 #include "i915_gem_ttm.h"
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1bfadd9127fc..7ae0f0cc6866 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1967,14 +1967,6 @@ mkwrite_device_info(struct drm_i915_private *dev_priv)
 int i915_reg_read_ioctl(struct drm_device *dev, void *data,
 			struct drm_file *file);
 
-/* i915_mm.c */
-int remap_io_mapping(struct vm_area_struct *vma,
-		     unsigned long addr, unsigned long pfn, unsigned long size,
-		     struct io_mapping *iomap);
-int remap_io_sg(struct vm_area_struct *vma,
-		unsigned long addr, unsigned long size,
-		struct scatterlist *sgl, resource_size_t iobase);
-
 static inline int intel_hws_csb_write_index(struct drm_i915_private *i915)
 {
 	if (GRAPHICS_VER(i915) >= 11)
diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index 666808cb3a32..f4df15fe7cf8 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -27,6 +27,7 @@
 
 
 #include "i915_drv.h"
+#include "i915_mm.h"
 
 struct remap_pfn {
 	struct mm_struct *mm;
diff --git a/drivers/gpu/drm/i915/i915_mm.h b/drivers/gpu/drm/i915/i915_mm.h
new file mode 100644
index 000000000000..1d3bbb9cbf43
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_mm.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef __I915_MM_H__
+#define __I915_MM_H__
+
+#include <linux/types.h>
+
+struct vm_area_struct;
+struct io_mapping;
+struct scatterlist;
+
+#if IS_ENABLED(CONFIG_X86)
+int remap_io_mapping(struct vm_area_struct *vma,
+		unsigned long addr, unsigned long pfn, unsigned long size,
+		struct io_mapping *iomap);
+#else
+static inline int remap_io_mapping(struct vm_area_struct *vma,
+		unsigned long addr, unsigned long pfn, unsigned long size,
+		struct io_mapping *iomap)
+{
+	return 0;
+}
+#endif
+
+int remap_io_sg(struct vm_area_struct *vma,
+		unsigned long addr, unsigned long size,
+		struct scatterlist *sgl, resource_size_t iobase);
+
+#endif /* __I915_MM_H__ */
-- 
2.33.0

