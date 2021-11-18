Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1DC94559CE
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Nov 2021 12:13:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 956336EB56;
	Thu, 18 Nov 2021 11:13:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEA0A6EB56
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Nov 2021 11:13:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10171"; a="234402560"
X-IronPort-AV: E=Sophos;i="5.87,244,1631602800"; d="scan'208";a="234402560"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 03:13:36 -0800
X-IronPort-AV: E=Sophos;i="5.87,244,1631602800"; d="scan'208";a="507395935"
Received: from supriyau-mobl2.gar.corp.intel.com (HELO
 smulati-desk.gar.corp.intel.com) ([10.215.199.213])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 03:13:33 -0800
From: Mullati Siva <siva.mullati@intel.com>
To: intel-gfx@lists.freedesktop.org,
	siva.mullati@intel.com
Date: Thu, 18 Nov 2021 16:43:19 +0530
Message-Id: <20211118111319.412926-1-siva.mullati@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Skip remap_io() calls for non-x86
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
vm_fault_gtt/vm_fault_tmm, So we never hit these functions
remap_io_mapping() and remap_io_sg in discrete, So skip this
code for non-x86 architectures.

Signed-off-by: Siva Mullati <siva.mullati@intel.com>
---
 drivers/gpu/drm/i915/Makefile            |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_mman.c |  1 +
 drivers/gpu/drm/i915/i915_drv.h          |  8 ------
 drivers/gpu/drm/i915/i915_mm.c           |  1 +
 drivers/gpu/drm/i915/i915_mm.h           | 31 ++++++++++++++++++++++++
 5 files changed, 34 insertions(+), 9 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_mm.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 074d6b8edd23..b08397e41efb 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -62,12 +62,12 @@ i915-y += i915_driver.o \
 i915-y += \
 	dma_resv_utils.o \
 	i915_memcpy.o \
-	i915_mm.o \
 	i915_sw_fence.o \
 	i915_sw_fence_work.o \
 	i915_syncmap.o \
 	i915_user_extensions.o
 
+i915-$(CONFIG_X86) += i915_mm.o
 i915-$(CONFIG_COMPAT)   += i915_ioc32.o
 i915-$(CONFIG_DEBUG_FS) += \
 	i915_debugfs.o \
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
index f2a546d58481..c0712281ee83 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1962,14 +1962,6 @@ mkwrite_device_info(struct drm_i915_private *dev_priv)
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
index 000000000000..71651cced0f5
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_mm.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef __I915_MM_H__
+#define __I915_MM_H__
+
+#if IS_ENABLED(CONFIG_X86)
+int remap_io_mapping(struct vm_area_struct *vma,
+                     unsigned long addr, unsigned long pfn, unsigned long size,
+                     struct io_mapping *iomap);
+int remap_io_sg(struct vm_area_struct *vma,
+                unsigned long addr, unsigned long size,
+                struct scatterlist *sgl, resource_size_t iobase);
+#else
+static inline int remap_io_mapping(struct vm_area_struct *vma,
+                     unsigned long addr, unsigned long pfn, unsigned long size,
+                     struct io_mapping *iomap)
+{
+        return 0;
+}
+static inline int remap_io_sg(struct vm_area_struct *vma,
+                unsigned long addr, unsigned long size,
+                struct scatterlist *sgl, resource_size_t iobase)
+{
+        return 0;
+}
+#endif
+
+#endif /* __I915_MM_H__ */
-- 
2.33.0

