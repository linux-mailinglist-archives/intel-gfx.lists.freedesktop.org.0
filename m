Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD4F129146
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 05:15:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 864B66E13F;
	Mon, 23 Dec 2019 04:15:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1B746E13F
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 04:15:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Dec 2019 20:15:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,346,1571727600"; d="scan'208";a="222932472"
Received: from krchrist-mobl1.ger.corp.intel.com (HELO
 skylake-nuc.ger.corp.intel.com) ([10.249.254.228])
 by fmsmga001.fm.intel.com with ESMTP; 22 Dec 2019 20:15:31 -0800
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Dec 2019 06:15:11 +0200
Message-Id: <20191223041512.3582-2-abdiel.janulgue@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191223041512.3582-1-abdiel.janulgue@linux.intel.com>
References: <20191223041512.3582-1-abdiel.janulgue@linux.intel.com>
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

v6: Use new remap_io_sg interface for noncontiguous fault handling

Signed-off-by: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_lmem.c |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_lmem.h |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 56 ++++++++++++++++++++++--
 3 files changed, 54 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
index 520cc9cac471..ea5278ca9d99 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
@@ -6,6 +6,7 @@
 #include "intel_memory_region.h"
 #include "gem/i915_gem_region.h"
 #include "gem/i915_gem_lmem.h"
+#include "gem/i915_gem_mman.h"
 #include "i915_drv.h"
 
 const struct drm_i915_gem_object_ops i915_gem_lmem_obj_ops = {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
index 7c176b8b7d2f..54b709ed3a02 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
@@ -7,6 +7,7 @@
 #define __I915_GEM_LMEM_H
 
 #include <linux/types.h>
+#include <linux/mman.h>
 
 struct drm_i915_private;
 struct drm_i915_gem_object;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 879fff8adc48..6d6c6ab84b6d 100644
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
 
+static vm_fault_t vm_fault_iomem(struct vm_fault *vmf)
+{
+	struct vm_area_struct *area = vmf->vma;
+	struct i915_mmap_offset *priv = area->vm_private_data;
+	struct drm_i915_gem_object *obj = priv->obj;
+	struct intel_memory_region *mem = obj->mm.region;
+	unsigned long size = area->vm_end - area->vm_start;
+	bool write = area->vm_flags & VM_WRITE;
+	int ret, offs;
+
+	/* Sanity check that we allow writing into this object */
+	if (i915_gem_object_is_readonly(obj) && write)
+		return VM_FAULT_SIGBUS;
+
+	ret = i915_gem_object_pin_pages(obj);
+	if (ret)
+		return i915_error_to_vmf_fault(ret);
+
+	ret = remap_io_sg(area, area->vm_start, mem->io_start - mem->region.start,
+			  i915_gem_object_get_sg(obj, 0, &offs),
+			  size, &mem->iomap);
+	i915_gem_object_unpin_pages(obj);
+
+	return i915_error_to_vmf_fault(ret);
+}
+
 static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
 {
 #define MIN_CHUNK_PAGES (SZ_1M >> PAGE_SHIFT)
@@ -560,7 +588,8 @@ __assign_mmap_offset(struct drm_file *file,
 	}
 
 	if (mmap_type != I915_MMAP_TYPE_GTT &&
-	    !i915_gem_object_has_struct_page(obj)) {
+	    !i915_gem_object_type_has(obj, I915_GEM_OBJECT_HAS_STRUCT_PAGE |
+				      I915_GEM_OBJECT_HAS_IOMEM)) {
 		err = -ENODEV;
 		goto out;
 	}
@@ -694,6 +723,25 @@ static const struct vm_operations_struct vm_ops_cpu = {
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
@@ -762,18 +810,18 @@ int i915_gem_mmap(struct file *filp, struct vm_area_struct *vma)
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
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
