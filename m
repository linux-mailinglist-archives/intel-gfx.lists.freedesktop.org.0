Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB6A1260BF
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 12:22:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCD076E334;
	Thu, 19 Dec 2019 11:21:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2772C6E334
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 11:21:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 03:21:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,331,1571727600"; d="scan'208";a="248276543"
Received: from klipka-mobl.ger.corp.intel.com (HELO
 skylake-nuc.ger.corp.intel.com) ([10.249.254.229])
 by fmsmga002.fm.intel.com with ESMTP; 19 Dec 2019 03:21:36 -0800
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Dec 2019 13:21:21 +0200
Message-Id: <20191219112122.4892-2-abdiel.janulgue@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191219112122.4892-1-abdiel.janulgue@linux.intel.com>
References: <20191219112122.4892-1-abdiel.janulgue@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Add lmem fault handler
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fault handler to handle missing pages for lmem objects.

v5: Use new remap_io_mapping interface for noncontiguous fault handling

Signed-off-by: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_lmem.c | 13 ++++++
 drivers/gpu/drm/i915/gem/i915_gem_lmem.h |  4 ++
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 56 ++++++++++++++++++++++--
 3 files changed, 69 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
index 520cc9cac471..e8326d8b66f7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
@@ -6,6 +6,7 @@
 #include "intel_memory_region.h"
 #include "gem/i915_gem_region.h"
 #include "gem/i915_gem_lmem.h"
+#include "gem/i915_gem_mman.h"
 #include "i915_drv.h"
 
 const struct drm_i915_gem_object_ops i915_gem_lmem_obj_ops = {
@@ -56,6 +57,18 @@ i915_gem_object_lmem_io_map(struct drm_i915_gem_object *obj,
 	return io_mapping_map_wc(&obj->mm.region->iomap, offset, size);
 }
 
+unsigned long i915_gem_object_lmem_io_pfn(struct drm_i915_gem_object *obj,
+					  unsigned long n)
+{
+	struct intel_memory_region *mem = obj->mm.region;
+	resource_size_t offset;
+
+	offset = i915_gem_object_get_dma_address(obj, n);
+	offset -= mem->region.start;
+
+	return (mem->io_start + offset) >> PAGE_SHIFT;
+}
+
 bool i915_gem_object_is_lmem(struct drm_i915_gem_object *obj)
 {
 	return obj->ops == &i915_gem_lmem_obj_ops;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
index 7c176b8b7d2f..4d5fca1a3e0e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
@@ -7,6 +7,7 @@
 #define __I915_GEM_LMEM_H
 
 #include <linux/types.h>
+#include <linux/mman.h>
 
 struct drm_i915_private;
 struct drm_i915_gem_object;
@@ -22,6 +23,9 @@ void __iomem *
 i915_gem_object_lmem_io_map_page_atomic(struct drm_i915_gem_object *obj,
 					unsigned long n);
 
+unsigned long i915_gem_object_lmem_io_pfn(struct drm_i915_gem_object *obj,
+					  unsigned long n);
+
 bool i915_gem_object_is_lmem(struct drm_i915_gem_object *obj);
 
 struct drm_i915_gem_object *
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index aa5d6623d86c..3ba10f17361b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -11,6 +11,7 @@
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_requests.h"
 
+#include "i915_gem_lmem.h"
 #include "i915_drv.h"
 #include "i915_gem_gtt.h"
 #include "i915_gem_ioctls.h"
@@ -216,6 +217,7 @@ static vm_fault_t i915_error_to_vmf_fault(int err)
 
 	case -ENOSPC: /* shmemfs allocation failure */
 	case -ENOMEM: /* our allocation failure */
+	case -ENXIO:
 		return VM_FAULT_OOM;
 
 	case 0:
@@ -274,6 +276,32 @@ static vm_fault_t vm_fault_cpu(struct vm_fault *vmf)
 	return ret;
 }
 
+vm_fault_t vm_fault_iomem(struct vm_fault *vmf)
+{
+	struct vm_area_struct *area = vmf->vma;
+	struct i915_mmap_offset *priv = area->vm_private_data;
+	struct drm_i915_gem_object *obj = priv->obj;
+	struct intel_memory_region *mem = obj->mm.region;
+	unsigned long size = area->vm_end - area->vm_start;
+	bool write = area->vm_flags & VM_WRITE;
+	int ret;
+
+	/* Sanity check that we allow writing into this object */
+	if (i915_gem_object_is_readonly(obj) && write)
+		return VM_FAULT_SIGBUS;
+
+	ret = i915_gem_object_pin_pages(obj);
+	if (ret)
+		return i915_error_to_vmf_fault(ret);
+
+	ret = remap_io_mapping(area, area->vm_start,
+			       i915_gem_object_lmem_io_pfn(obj, 0), size,
+			       i915_gem_object_lmem_io_pfn, &mem->iomap);
+	i915_gem_object_unpin_pages(obj);
+
+	return i915_error_to_vmf_fault(ret);
+}
+
 static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
 {
 #define MIN_CHUNK_PAGES (SZ_1M >> PAGE_SHIFT)
@@ -561,7 +589,8 @@ __assign_mmap_offset(struct drm_file *file,
 	}
 
 	if (mmap_type != I915_MMAP_TYPE_GTT &&
-	    !i915_gem_object_has_struct_page(obj)) {
+	    !i915_gem_object_type_has(obj, I915_GEM_OBJECT_HAS_STRUCT_PAGE |
+				      I915_GEM_OBJECT_HAS_IOMEM)) {
 		err = -ENODEV;
 		goto out;
 	}
@@ -695,6 +724,25 @@ static const struct vm_operations_struct vm_ops_cpu = {
 	.close = vm_close,
 };
 
+static const struct vm_operations_struct vm_ops_iomem = {
+       .fault = vm_fault_iomem,
+       .open = vm_open,
+       .close = vm_close,
+};
+
+static const struct vm_operations_struct *
+get_vm_cpu_ops(struct drm_i915_gem_object *obj)
+{
+	if (i915_gem_object_type_has(obj, I915_GEM_OBJECT_HAS_STRUCT_PAGE))
+		return &vm_ops_cpu;
+
+	if (i915_gem_object_type_has(obj, I915_GEM_OBJECT_HAS_IOMEM))
+		return &vm_ops_iomem;
+
+	GEM_BUG_ON("unknown object type");
+	return NULL;
+}
+
 /*
  * This overcomes the limitation in drm_gem_mmap's assignment of a
  * drm_gem_object as the vma->vm_private_data. Since we need to
@@ -763,18 +811,18 @@ int i915_gem_mmap(struct file *filp, struct vm_area_struct *vma)
 	case I915_MMAP_TYPE_WC:
 		vma->vm_page_prot =
 			pgprot_writecombine(vm_get_page_prot(vma->vm_flags));
-		vma->vm_ops = &vm_ops_cpu;
+		vma->vm_ops = get_vm_cpu_ops(to_intel_bo(obj));
 		break;
 
 	case I915_MMAP_TYPE_WB:
 		vma->vm_page_prot = vm_get_page_prot(vma->vm_flags);
-		vma->vm_ops = &vm_ops_cpu;
+		vma->vm_ops = get_vm_cpu_ops(to_intel_bo(obj));
 		break;
 
 	case I915_MMAP_TYPE_UC:
 		vma->vm_page_prot =
 			pgprot_noncached(vm_get_page_prot(vma->vm_flags));
-		vma->vm_ops = &vm_ops_cpu;
+		vma->vm_ops = get_vm_cpu_ops(to_intel_bo(obj));
 		break;
 
 	case I915_MMAP_TYPE_GTT:
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
