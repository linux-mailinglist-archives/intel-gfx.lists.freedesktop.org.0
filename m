Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C89300C6A
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 20:29:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D88486EA34;
	Fri, 22 Jan 2021 19:29:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27A646EA34
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 19:29:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23675684-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 19:29:13 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 19:29:05 +0000
Message-Id: <20210122192913.4518-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210122192913.4518-1-chris@chris-wilson.co.uk>
References: <20210122192913.4518-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 02/10] drm/i915/gt: Add some missing blank lines
 after declaration
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Trivial checkpatch cleanup.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/i915/gt/debugfs_gt.c         | 1 +
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c         | 1 +
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c | 3 +++
 drivers/gpu/drm/i915/gt/intel_renderstate.c  | 1 +
 drivers/gpu/drm/i915/gt/intel_ring.h         | 1 +
 5 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt.c b/drivers/gpu/drm/i915/gt/debugfs_gt.c
index aa18d3b22bed..591eb60785db 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt.c
+++ b/drivers/gpu/drm/i915/gt/debugfs_gt.c
@@ -36,6 +36,7 @@ void intel_gt_debugfs_register_files(struct dentry *root,
 {
 	while (count--) {
 		umode_t mode = files->fops->write ? 0644 : 0444;
+
 		if (!files->eval || files->eval(data))
 			debugfs_create_file(files->name,
 					    mode, root, data,
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 755522ced60d..03a9d4396373 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -145,6 +145,7 @@ static unsigned int gen8_pt_count(u64 start, u64 end)
 static unsigned int gen8_pd_top_count(const struct i915_address_space *vm)
 {
 	unsigned int shift = __gen8_pte_shift(vm->top);
+
 	return (vm->total + (1ull << shift) - 1) >> shift;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index f3498e2b9920..e891552611d5 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -580,6 +580,7 @@ static void detect_bit_6_swizzle(struct i915_ggtt *ggtt)
 			}
 		} else {
 			u32 dimm_c0, dimm_c1;
+
 			dimm_c0 = intel_uncore_read(uncore, MAD_DIMM_C0);
 			dimm_c1 = intel_uncore_read(uncore, MAD_DIMM_C1);
 			dimm_c0 &= MAD_DIMM_A_SIZE_MASK | MAD_DIMM_B_SIZE_MASK;
@@ -769,10 +770,12 @@ i915_gem_object_do_bit_17_swizzle(struct drm_i915_gem_object *obj,
 	i = 0;
 	for_each_sgt_page(page, sgt_iter, pages) {
 		char new_bit_17 = page_to_phys(page) >> 17;
+
 		if ((new_bit_17 & 0x1) != (test_bit(i, obj->bit_17) != 0)) {
 			swizzle_page(page);
 			set_page_dirty(page);
 		}
+
 		i++;
 	}
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_renderstate.c b/drivers/gpu/drm/i915/gt/intel_renderstate.c
index 87d2da8fe516..8335a43471a9 100644
--- a/drivers/gpu/drm/i915/gt/intel_renderstate.c
+++ b/drivers/gpu/drm/i915/gt/intel_renderstate.c
@@ -62,6 +62,7 @@ static int render_state_setup(struct intel_renderstate *so,
 
 		if (i * 4  == rodata->reloc[reloc_index]) {
 			u64 r = s + so->vma->node.start;
+
 			s = lower_32_bits(r);
 			if (HAS_64BIT_RELOC(i915)) {
 				if (i + 1 >= rodata->batch_items ||
diff --git a/drivers/gpu/drm/i915/gt/intel_ring.h b/drivers/gpu/drm/i915/gt/intel_ring.h
index 44e902945e80..dbf5f14a136f 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.h
+++ b/drivers/gpu/drm/i915/gt/intel_ring.h
@@ -81,6 +81,7 @@ static inline u32 intel_ring_offset(const struct i915_request *rq, void *addr)
 {
 	/* Don't write ring->size (equivalent to 0) as that hangs some GPUs. */
 	u32 offset = addr - rq->ring->vaddr;
+
 	GEM_BUG_ON(offset > rq->ring->size);
 	return intel_ring_wrap(rq->ring, offset);
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
