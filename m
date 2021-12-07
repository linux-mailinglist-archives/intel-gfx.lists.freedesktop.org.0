Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F35CF46C0F4
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 17:50:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DE987B4DC;
	Tue,  7 Dec 2021 16:50:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 746787B4DC
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 16:50:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="224881875"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="224881875"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 08:50:13 -0800
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="462359079"
Received: from agogulam-mobl1.amr.corp.intel.com (HELO
 smullati-desk.gar.corp.intel.com) ([10.215.193.239])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 08:50:11 -0800
From: Mullati Siva <siva.mullati@intel.com>
To: intel-gfx@lists.freedesktop.org,
	siva.mullati@intel.com
Date: Tue,  7 Dec 2021 22:19:58 +0530
Message-Id: <20211207164958.682650-1-siva.mullati@intel.com>
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Siva Mullati <siva.mullati@intel.com>

Only hw that supports mappable aperture would hit this path
vm_fault_gtt/vm_fault_tmm, So we never hit this function
remap_io_mapping() in discrete, So skip this code for non-x86
architectures.

v2: use IS_ENABLED () instead of #if defined

v3: move function prototypes from i915_drv.h to i915_mm.h

v4: added kernel error message in stub function

v5: fixed compilation warnings

Signed-off-by: Siva Mullati <siva.mullati@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c |  1 +
 drivers/gpu/drm/i915/i915_drv.h          |  8 ------
 drivers/gpu/drm/i915/i915_mm.c           | 28 ++++++++++---------
 drivers/gpu/drm/i915/i915_mm.h           | 34 ++++++++++++++++++++++++
 4 files changed, 51 insertions(+), 20 deletions(-)
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
index 85bb8d3107f0..3949cafa59e2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1783,14 +1783,6 @@ mkwrite_device_info(struct drm_i915_private *dev_priv)
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
index 666808cb3a32..7998bc74ab49 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -27,6 +27,7 @@
 
 
 #include "i915_drv.h"
+#include "i915_mm.h"
 
 struct remap_pfn {
 	struct mm_struct *mm;
@@ -37,17 +38,6 @@ struct remap_pfn {
 	resource_size_t iobase;
 };
 
-static int remap_pfn(pte_t *pte, unsigned long addr, void *data)
-{
-	struct remap_pfn *r = data;
-
-	/* Special PTE are not associated with any struct page */
-	set_pte_at(r->mm, addr, pte, pte_mkspecial(pfn_pte(r->pfn, r->prot)));
-	r->pfn++;
-
-	return 0;
-}
-
 #define use_dma(io) ((io) != -1)
 
 static inline unsigned long sgt_pfn(const struct remap_pfn *r)
@@ -77,6 +67,20 @@ static int remap_sg(pte_t *pte, unsigned long addr, void *data)
 	return 0;
 }
 
+#define EXPECTED_FLAGS (VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP)
+
+#if IS_ENABLED(CONFIG_X86)
+static int remap_pfn(pte_t *pte, unsigned long addr, void *data)
+{
+	struct remap_pfn *r = data;
+
+	/* Special PTE are not associated with any struct page */
+	set_pte_at(r->mm, addr, pte, pte_mkspecial(pfn_pte(r->pfn, r->prot)));
+	r->pfn++;
+
+	return 0;
+}
+
 /**
  * remap_io_mapping - remap an IO mapping to userspace
  * @vma: user vma to map to
@@ -94,7 +98,6 @@ int remap_io_mapping(struct vm_area_struct *vma,
 	struct remap_pfn r;
 	int err;
 
-#define EXPECTED_FLAGS (VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP)
 	GEM_BUG_ON((vma->vm_flags & EXPECTED_FLAGS) != EXPECTED_FLAGS);
 
 	/* We rely on prevalidation of the io-mapping to skip track_pfn(). */
@@ -111,6 +114,7 @@ int remap_io_mapping(struct vm_area_struct *vma,
 
 	return 0;
 }
+#endif
 
 /**
  * remap_io_sg - remap an IO mapping to userspace
diff --git a/drivers/gpu/drm/i915/i915_mm.h b/drivers/gpu/drm/i915/i915_mm.h
new file mode 100644
index 000000000000..b2b38a5678e3
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_mm.h
@@ -0,0 +1,34 @@
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
+	pr_err("Architecture has no remap_io_mapping() and shouldn't be calling this function\n");
+	WARN_ON_ONCE(1);
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

