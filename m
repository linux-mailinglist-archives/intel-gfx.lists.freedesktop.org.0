Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F4B3F4079
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Aug 2021 18:30:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF56589F89;
	Sun, 22 Aug 2021 16:30:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAF4C89F71
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Aug 2021 16:30:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="302567459"
X-IronPort-AV: E=Sophos;i="5.84,342,1620716400"; d="scan'208";a="302567459"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2021 09:30:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,342,1620716400"; d="scan'208";a="596395793"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by fmsmga001.fm.intel.com with ESMTP; 22 Aug 2021 09:30:34 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Matthew Auld <matthew.auld@intel.com>,
 Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Date: Sun, 22 Aug 2021 21:57:02 +0530
Message-Id: <20210822162706.819507-10-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210822162706.819507-1-ayaz.siddiqui@intel.com>
References: <20210822162706.819507-1-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 09/13] drm/i915/selftests: account for
 min_alignment in GTT selftests
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

From: Matthew Auld <matthew.auld@intel.com>

We need to support vm->min_alignment > 4K, depending
on the vm itself and the type of object we are inserting.
With this in mind update the GTT selftests to take this
into account.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 96 ++++++++++++-------
 1 file changed, 63 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index f843a5040706..bd0cd501e411 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -237,6 +237,8 @@ static int lowlevel_hole(struct i915_address_space *vm,
 			 u64 hole_start, u64 hole_end,
 			 unsigned long end_time)
 {
+	const unsigned int min_alignment =
+		i915_vm_min_alignment(vm, INTEL_MEMORY_SYSTEM);
 	I915_RND_STATE(seed_prng);
 	struct i915_vma *mock_vma;
 	unsigned int size;
@@ -250,9 +252,10 @@ static int lowlevel_hole(struct i915_address_space *vm,
 		I915_RND_SUBSTATE(prng, seed_prng);
 		struct drm_i915_gem_object *obj;
 		unsigned int *order, count, n;
-		u64 hole_size;
+		u64 hole_size, aligned_size;
 
-		hole_size = (hole_end - hole_start) >> size;
+		aligned_size = max_t(u32, ilog2(min_alignment), size);
+		hole_size = (hole_end - hole_start) >> aligned_size;
 		if (hole_size > KMALLOC_MAX_SIZE / sizeof(u32))
 			hole_size = KMALLOC_MAX_SIZE / sizeof(u32);
 		count = hole_size >> 1;
@@ -273,8 +276,8 @@ static int lowlevel_hole(struct i915_address_space *vm,
 		}
 		GEM_BUG_ON(!order);
 
-		GEM_BUG_ON(count * BIT_ULL(size) > vm->total);
-		GEM_BUG_ON(hole_start + count * BIT_ULL(size) > hole_end);
+		GEM_BUG_ON(count * BIT_ULL(aligned_size) > vm->total);
+		GEM_BUG_ON(hole_start + count * BIT_ULL(aligned_size) > hole_end);
 
 		/* Ignore allocation failures (i.e. don't report them as
 		 * a test failure) as we are purposefully allocating very
@@ -297,10 +300,10 @@ static int lowlevel_hole(struct i915_address_space *vm,
 		}
 
 		for (n = 0; n < count; n++) {
-			u64 addr = hole_start + order[n] * BIT_ULL(size);
+			u64 addr = hole_start + order[n] * BIT_ULL(aligned_size);
 			intel_wakeref_t wakeref;
 
-			GEM_BUG_ON(addr + BIT_ULL(size) > vm->total);
+			GEM_BUG_ON(addr + BIT_ULL(aligned_size) > vm->total);
 
 			if (igt_timeout(end_time,
 					"%s timed out before %d/%d\n",
@@ -343,7 +346,7 @@ static int lowlevel_hole(struct i915_address_space *vm,
 			}
 
 			mock_vma->pages = obj->mm.pages;
-			mock_vma->node.size = BIT_ULL(size);
+			mock_vma->node.size = BIT_ULL(aligned_size);
 			mock_vma->node.start = addr;
 
 			with_intel_runtime_pm(vm->gt->uncore->rpm, wakeref)
@@ -354,7 +357,7 @@ static int lowlevel_hole(struct i915_address_space *vm,
 
 		i915_random_reorder(order, count, &prng);
 		for (n = 0; n < count; n++) {
-			u64 addr = hole_start + order[n] * BIT_ULL(size);
+			u64 addr = hole_start + order[n] * BIT_ULL(aligned_size);
 			intel_wakeref_t wakeref;
 
 			GEM_BUG_ON(addr + BIT_ULL(size) > vm->total);
@@ -398,8 +401,10 @@ static int fill_hole(struct i915_address_space *vm,
 {
 	const u64 hole_size = hole_end - hole_start;
 	struct drm_i915_gem_object *obj;
+	const unsigned int min_alignment =
+		i915_vm_min_alignment(vm, INTEL_MEMORY_SYSTEM);
 	const unsigned long max_pages =
-		min_t(u64, ULONG_MAX - 1, hole_size/2 >> PAGE_SHIFT);
+		min_t(u64, ULONG_MAX - 1, (hole_size / 2) >> ilog2(min_alignment));
 	const unsigned long max_step = max(int_sqrt(max_pages), 2UL);
 	unsigned long npages, prime, flags;
 	struct i915_vma *vma;
@@ -440,14 +445,17 @@ static int fill_hole(struct i915_address_space *vm,
 
 				offset = p->offset;
 				list_for_each_entry(obj, &objects, st_link) {
+					u64 aligned_size = round_up(obj->base.size,
+								    min_alignment);
+
 					vma = i915_vma_instance(obj, vm, NULL);
 					if (IS_ERR(vma))
 						continue;
 
 					if (p->step < 0) {
-						if (offset < hole_start + obj->base.size)
+						if (offset < hole_start + aligned_size)
 							break;
-						offset -= obj->base.size;
+						offset -= aligned_size;
 					}
 
 					err = i915_vma_pin(vma, 0, 0, offset | flags);
@@ -469,22 +477,25 @@ static int fill_hole(struct i915_address_space *vm,
 					i915_vma_unpin(vma);
 
 					if (p->step > 0) {
-						if (offset + obj->base.size > hole_end)
+						if (offset + aligned_size > hole_end)
 							break;
-						offset += obj->base.size;
+						offset += aligned_size;
 					}
 				}
 
 				offset = p->offset;
 				list_for_each_entry(obj, &objects, st_link) {
+					u64 aligned_size = round_up(obj->base.size,
+								    min_alignment);
+
 					vma = i915_vma_instance(obj, vm, NULL);
 					if (IS_ERR(vma))
 						continue;
 
 					if (p->step < 0) {
-						if (offset < hole_start + obj->base.size)
+						if (offset < hole_start + aligned_size)
 							break;
-						offset -= obj->base.size;
+						offset -= aligned_size;
 					}
 
 					if (!drm_mm_node_allocated(&vma->node) ||
@@ -505,22 +516,25 @@ static int fill_hole(struct i915_address_space *vm,
 					}
 
 					if (p->step > 0) {
-						if (offset + obj->base.size > hole_end)
+						if (offset + aligned_size > hole_end)
 							break;
-						offset += obj->base.size;
+						offset += aligned_size;
 					}
 				}
 
 				offset = p->offset;
 				list_for_each_entry_reverse(obj, &objects, st_link) {
+					u64 aligned_size = round_up(obj->base.size,
+								    min_alignment);
+
 					vma = i915_vma_instance(obj, vm, NULL);
 					if (IS_ERR(vma))
 						continue;
 
 					if (p->step < 0) {
-						if (offset < hole_start + obj->base.size)
+						if (offset < hole_start + aligned_size)
 							break;
-						offset -= obj->base.size;
+						offset -= aligned_size;
 					}
 
 					err = i915_vma_pin(vma, 0, 0, offset | flags);
@@ -542,22 +556,25 @@ static int fill_hole(struct i915_address_space *vm,
 					i915_vma_unpin(vma);
 
 					if (p->step > 0) {
-						if (offset + obj->base.size > hole_end)
+						if (offset + aligned_size > hole_end)
 							break;
-						offset += obj->base.size;
+						offset += aligned_size;
 					}
 				}
 
 				offset = p->offset;
 				list_for_each_entry_reverse(obj, &objects, st_link) {
+					u64 aligned_size = round_up(obj->base.size,
+								    min_alignment);
+
 					vma = i915_vma_instance(obj, vm, NULL);
 					if (IS_ERR(vma))
 						continue;
 
 					if (p->step < 0) {
-						if (offset < hole_start + obj->base.size)
+						if (offset < hole_start + aligned_size)
 							break;
-						offset -= obj->base.size;
+						offset -= aligned_size;
 					}
 
 					if (!drm_mm_node_allocated(&vma->node) ||
@@ -578,9 +595,9 @@ static int fill_hole(struct i915_address_space *vm,
 					}
 
 					if (p->step > 0) {
-						if (offset + obj->base.size > hole_end)
+						if (offset + aligned_size > hole_end)
 							break;
-						offset += obj->base.size;
+						offset += aligned_size;
 					}
 				}
 			}
@@ -610,6 +627,7 @@ static int walk_hole(struct i915_address_space *vm,
 	const u64 hole_size = hole_end - hole_start;
 	const unsigned long max_pages =
 		min_t(u64, ULONG_MAX - 1, hole_size >> PAGE_SHIFT);
+	unsigned long min_alignment;
 	unsigned long flags;
 	u64 size;
 
@@ -619,6 +637,8 @@ static int walk_hole(struct i915_address_space *vm,
 	if (i915_is_ggtt(vm))
 		flags |= PIN_GLOBAL;
 
+	min_alignment = i915_vm_min_alignment(vm, INTEL_MEMORY_SYSTEM);
+
 	for_each_prime_number_from(size, 1, max_pages) {
 		struct drm_i915_gem_object *obj;
 		struct i915_vma *vma;
@@ -637,7 +657,7 @@ static int walk_hole(struct i915_address_space *vm,
 
 		for (addr = hole_start;
 		     addr + obj->base.size < hole_end;
-		     addr += obj->base.size) {
+		     addr += round_up(obj->base.size, min_alignment)) {
 			err = i915_vma_pin(vma, 0, 0, addr | flags);
 			if (err) {
 				pr_err("%s bind failed at %llx + %llx [hole %llx- %llx] with err=%d\n",
@@ -689,6 +709,7 @@ static int pot_hole(struct i915_address_space *vm,
 {
 	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
+	unsigned int min_alignment;
 	unsigned long flags;
 	unsigned int pot;
 	int err = 0;
@@ -697,6 +718,8 @@ static int pot_hole(struct i915_address_space *vm,
 	if (i915_is_ggtt(vm))
 		flags |= PIN_GLOBAL;
 
+	min_alignment = i915_vm_min_alignment(vm, INTEL_MEMORY_SYSTEM);
+
 	obj = i915_gem_object_create_internal(vm->i915, 2 * I915_GTT_PAGE_SIZE);
 	if (IS_ERR(obj))
 		return PTR_ERR(obj);
@@ -709,13 +732,13 @@ static int pot_hole(struct i915_address_space *vm,
 
 	/* Insert a pair of pages across every pot boundary within the hole */
 	for (pot = fls64(hole_end - 1) - 1;
-	     pot > ilog2(2 * I915_GTT_PAGE_SIZE);
+	     pot > ilog2(2 * min_alignment);
 	     pot--) {
 		u64 step = BIT_ULL(pot);
 		u64 addr;
 
-		for (addr = round_up(hole_start + I915_GTT_PAGE_SIZE, step) - I915_GTT_PAGE_SIZE;
-		     addr <= round_down(hole_end - 2*I915_GTT_PAGE_SIZE, step) - I915_GTT_PAGE_SIZE;
+		for (addr = round_up(hole_start + min_alignment, step) - min_alignment;
+		     addr <= round_down(hole_end - (2 * min_alignment), step) - min_alignment;
 		     addr += step) {
 			err = i915_vma_pin(vma, 0, 0, addr | flags);
 			if (err) {
@@ -760,6 +783,7 @@ static int drunk_hole(struct i915_address_space *vm,
 		      unsigned long end_time)
 {
 	I915_RND_STATE(prng);
+	unsigned int min_alignment;
 	unsigned int size;
 	unsigned long flags;
 
@@ -767,15 +791,18 @@ static int drunk_hole(struct i915_address_space *vm,
 	if (i915_is_ggtt(vm))
 		flags |= PIN_GLOBAL;
 
+	min_alignment = i915_vm_min_alignment(vm, INTEL_MEMORY_SYSTEM);
+
 	/* Keep creating larger objects until one cannot fit into the hole */
 	for (size = 12; (hole_end - hole_start) >> size; size++) {
 		struct drm_i915_gem_object *obj;
 		unsigned int *order, count, n;
 		struct i915_vma *vma;
-		u64 hole_size;
+		u64 hole_size, aligned_size;
 		int err = -ENODEV;
 
-		hole_size = (hole_end - hole_start) >> size;
+		aligned_size = max_t(u32, ilog2(min_alignment), size);
+		hole_size = (hole_end - hole_start) >> aligned_size;
 		if (hole_size > KMALLOC_MAX_SIZE / sizeof(u32))
 			hole_size = KMALLOC_MAX_SIZE / sizeof(u32);
 		count = hole_size >> 1;
@@ -815,7 +842,7 @@ static int drunk_hole(struct i915_address_space *vm,
 		GEM_BUG_ON(vma->size != BIT_ULL(size));
 
 		for (n = 0; n < count; n++) {
-			u64 addr = hole_start + order[n] * BIT_ULL(size);
+			u64 addr = hole_start + order[n] * BIT_ULL(aligned_size);
 
 			err = i915_vma_pin(vma, 0, 0, addr | flags);
 			if (err) {
@@ -867,11 +894,14 @@ static int __shrink_hole(struct i915_address_space *vm,
 {
 	struct drm_i915_gem_object *obj;
 	unsigned long flags = PIN_OFFSET_FIXED | PIN_USER;
+	unsigned int min_alignment;
 	unsigned int order = 12;
 	LIST_HEAD(objects);
 	int err = 0;
 	u64 addr;
 
+	min_alignment = i915_vm_min_alignment(vm, INTEL_MEMORY_SYSTEM);
+
 	/* Keep creating larger objects until one cannot fit into the hole */
 	for (addr = hole_start; addr < hole_end; ) {
 		struct i915_vma *vma;
@@ -912,7 +942,7 @@ static int __shrink_hole(struct i915_address_space *vm,
 		}
 
 		i915_vma_unpin(vma);
-		addr += size;
+		addr += round_up(size, min_alignment);
 
 		/*
 		 * Since we are injecting allocation faults at random intervals,
-- 
2.26.2

