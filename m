Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8F74B0D5E
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 13:17:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C2B010E858;
	Thu, 10 Feb 2022 12:16:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C55A10E844;
 Thu, 10 Feb 2022 12:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644495409; x=1676031409;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dMRdSfYHydNcnHm12lb+kY9HjrEEF6pjjZKo7g13XIM=;
 b=VPF9mf89nBxHfXHNktkhlCau268dIqtE6wj0ywCXC0HthrcXFBvviTgf
 E91LXVtX1AMbkr5ADQoV6YrHtY38S+Xv2yfDq+jxcdYlvQrEq6TTtOOoL
 nfHq2u1GrcWtH/TSD5ktX9qFWcdFTmISly0Tip3eM3jh75ezCLHoMjJoI
 hWbLwpXCYFw2Mxh6aKPTKjuJMyEYdrgRY7h+VpGzWl23hH8nY5mwoQ4fz
 v6HiLAfszi1KOURcqqMkOz13616WCWRpyviiMzbQMKKCn7hsI93CRodow
 cGSnHE4jt0DNCGQ2KckMZkreMpltmAbJVAsFIu4ZZ6r8iOHv4+yvkr20/ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="247060977"
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="247060977"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 04:16:48 -0800
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="485664982"
Received: from paulbarr-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.11.226])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 04:16:47 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 12:13:07 +0000
Message-Id: <20220210121313.701004-10-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220210121313.701004-1-matthew.auld@intel.com>
References: <20220210121313.701004-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/15] drm/i915/ttm: mappable migration on
 fault
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The end goal is to have userspace tell the kernel what buffers will
require CPU access, however if we ever reach the CPU fault handler, and
the current resource is not mappable, then we should attempt to migrate
the buffer to the mappable portion of LMEM, or even system memory, if the
allowable placements permit it.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 54 ++++++++++++++++++++++---
 1 file changed, 48 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 3790e569d6a9..780513e98fdc 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -636,11 +636,24 @@ static void i915_ttm_swap_notify(struct ttm_buffer_object *bo)
 		i915_ttm_purge(obj);
 }
 
+static bool i915_ttm_resource_mappable(struct ttm_resource *res)
+{
+	struct i915_ttm_buddy_resource *bman_res = to_ttm_buddy_resource(res);
+
+	if (!i915_ttm_cpu_maps_iomem(res))
+		return true;
+
+	return bman_res->used_visible_size == bman_res->base.num_pages;
+}
+
 static int i915_ttm_io_mem_reserve(struct ttm_device *bdev, struct ttm_resource *mem)
 {
 	if (!i915_ttm_cpu_maps_iomem(mem))
 		return 0;
 
+	if (!i915_ttm_resource_mappable(mem))
+		return -EINVAL;
+
 	mem->bus.caching = ttm_write_combined;
 	mem->bus.is_iomem = true;
 
@@ -779,14 +792,15 @@ static int i915_ttm_get_pages(struct drm_i915_gem_object *obj)
  * Gem forced migration using the i915_ttm_migrate() op, is allowed even
  * to regions that are not in the object's list of allowable placements.
  */
-static int i915_ttm_migrate(struct drm_i915_gem_object *obj,
-			    struct intel_memory_region *mr)
+static int __i915_ttm_migrate(struct drm_i915_gem_object *obj,
+			      struct intel_memory_region *mr,
+			      unsigned int flags)
 {
 	struct ttm_place requested;
 	struct ttm_placement placement;
 	int ret;
 
-	i915_ttm_place_from_region(mr, &requested, obj->flags);
+	i915_ttm_place_from_region(mr, &requested, flags);
 	placement.num_placement = 1;
 	placement.num_busy_placement = 1;
 	placement.placement = &requested;
@@ -809,6 +823,12 @@ static int i915_ttm_migrate(struct drm_i915_gem_object *obj,
 	return 0;
 }
 
+static int i915_ttm_migrate(struct drm_i915_gem_object *obj,
+			    struct intel_memory_region *mr)
+{
+	return __i915_ttm_migrate(obj, mr, obj->flags);
+}
+
 static void i915_ttm_put_pages(struct drm_i915_gem_object *obj,
 			       struct sg_table *st)
 {
@@ -953,9 +973,6 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 	if (!obj)
 		return VM_FAULT_SIGBUS;
 
-	if (obj->flags & I915_BO_ALLOC_GPU_ONLY)
-		return -EINVAL;
-
 	/* Sanity check that we allow writing into this object */
 	if (unlikely(i915_gem_object_is_readonly(obj) &&
 		     area->vm_flags & VM_WRITE))
@@ -970,6 +987,31 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 		return VM_FAULT_SIGBUS;
 	}
 
+	if (!i915_ttm_resource_mappable(bo->resource)) {
+		int err = -ENODEV;
+		int i;
+
+		for (i = 0; i < obj->mm.n_placements; i++) {
+			struct intel_memory_region *mr = obj->mm.placements[i];
+			unsigned int flags;
+
+			if (!mr->io_size && mr->type != INTEL_MEMORY_SYSTEM)
+				continue;
+
+			flags = obj->flags;
+			flags &= ~I915_BO_ALLOC_TOPDOWN;
+			err = __i915_ttm_migrate(obj, mr, flags);
+			if (!err)
+				break;
+		}
+
+		if (err) {
+			drm_dbg(dev, "Unable to make resource CPU accessible\n");
+			dma_resv_unlock(bo->base.resv);
+			return VM_FAULT_SIGBUS;
+		}
+	}
+
 	if (drm_dev_enter(dev, &idx)) {
 		ret = ttm_bo_vm_fault_reserved(vmf, vmf->vma->vm_page_prot,
 					       TTM_BO_VM_NUM_PREFAULT);
-- 
2.34.1

