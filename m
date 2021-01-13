Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B9C2F4E6C
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 16:22:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 813786EA30;
	Wed, 13 Jan 2021 15:22:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7F5C6EA30
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 15:22:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23586171-1500050 
 for multiple; Wed, 13 Jan 2021 15:22:24 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jan 2021 15:22:24 +0000
Message-Id: <20210113152224.29794-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Prune inlines
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove all the manual inlines from non-critical sections in gt/

add/remove: 2/0 grow/shrink: 0/3 up/down: 762/-1473 (-711)
Function                                     old     new   delta
mi_set_context.isra                            -     602    +602
write_dma_entry                                -     160    +160
__set_pd_entry                               214      69    -145
clear_pd_entry                               190      42    -148
ring_request_alloc                          2021     841   -1180
Total: Before=1605086, After=1604375, chg -0.04%

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c            |  6 +++---
 drivers/gpu/drm/i915/gt/gen7_renderclear.c      |  2 +-
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c        |  2 +-
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c            | 13 ++++++-------
 drivers/gpu/drm/i915/gt/intel_engine_pm.c       | 12 ++++++------
 drivers/gpu/drm/i915/gt/intel_lrc.c             |  4 ++--
 drivers/gpu/drm/i915/gt/intel_mocs.c            |  2 +-
 drivers/gpu/drm/i915/gt/intel_ppgtt.c           |  8 +++++---
 drivers/gpu/drm/i915/gt/intel_rc6.c             |  2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c           |  2 +-
 drivers/gpu/drm/i915/gt/intel_ring_submission.c |  6 +++---
 drivers/gpu/drm/i915/gt/intel_rps.c             |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c     |  2 +-
 13 files changed, 32 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index 680bd9442eb0..1fb888a535ee 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -12,9 +12,9 @@
 #include "intel_gt.h"
 
 /* Write pde (index) from the page directory @pd to the page table @pt */
-static inline void gen6_write_pde(const struct gen6_ppgtt *ppgtt,
-				  const unsigned int pde,
-				  const struct i915_page_table *pt)
+static void gen6_write_pde(const struct gen6_ppgtt *ppgtt,
+			   const unsigned int pde,
+			   const struct i915_page_table *pt)
 {
 	dma_addr_t addr = pt ? px_dma(pt) : px_dma(ppgtt->base.vm.scratch[1]);
 
diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
index 94465374ca2f..56bdcdaa9a88 100644
--- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
+++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
@@ -40,7 +40,7 @@ struct batch_vals {
 	u32 size;
 };
 
-static inline int num_primitives(const struct batch_vals *bv)
+static int num_primitives(const struct batch_vals *bv)
 {
 	/*
 	 * We need to saturate the GPU with work in order to dispatch
diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 8066b93e6dc4..5b932d2dbfd3 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -330,7 +330,7 @@ int gen12_emit_flush_xcs(struct i915_request *rq, u32 mode)
 	return 0;
 }
 
-static inline u32 preempt_address(struct intel_engine_cs *engine)
+static u32 preempt_address(struct intel_engine_cs *engine)
 {
 	return (i915_ggtt_offset(engine->status_page.vma) +
 		I915_GEM_HWS_PREEMPT_ADDR);
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index a37c968ef8f7..755522ced60d 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -109,7 +109,7 @@ static void gen8_ppgtt_notify_vgt(struct i915_ppgtt *ppgtt, bool create)
 
 #define as_pd(x) container_of((x), typeof(struct i915_page_directory), pt)
 
-static inline unsigned int
+static unsigned int
 gen8_pd_range(u64 start, u64 end, int lvl, unsigned int *idx)
 {
 	const int shift = gen8_pd_shift(lvl);
@@ -125,7 +125,7 @@ gen8_pd_range(u64 start, u64 end, int lvl, unsigned int *idx)
 		return i915_pde_index(end, shift) - *idx;
 }
 
-static inline bool gen8_pd_contains(u64 start, u64 end, int lvl)
+static bool gen8_pd_contains(u64 start, u64 end, int lvl)
 {
 	const u64 mask = ~0ull << gen8_pd_shift(lvl + 1);
 
@@ -133,7 +133,7 @@ static inline bool gen8_pd_contains(u64 start, u64 end, int lvl)
 	return (start ^ end) & mask && (start & ~mask) == 0;
 }
 
-static inline unsigned int gen8_pt_count(u64 start, u64 end)
+static unsigned int gen8_pt_count(u64 start, u64 end)
 {
 	GEM_BUG_ON(start >= end);
 	if ((start ^ end) >> gen8_pd_shift(1))
@@ -142,14 +142,13 @@ static inline unsigned int gen8_pt_count(u64 start, u64 end)
 		return end - start;
 }
 
-static inline unsigned int
-gen8_pd_top_count(const struct i915_address_space *vm)
+static unsigned int gen8_pd_top_count(const struct i915_address_space *vm)
 {
 	unsigned int shift = __gen8_pte_shift(vm->top);
 	return (vm->total + (1ull << shift) - 1) >> shift;
 }
 
-static inline struct i915_page_directory *
+static struct i915_page_directory *
 gen8_pdp_for_page_index(struct i915_address_space * const vm, const u64 idx)
 {
 	struct i915_ppgtt * const ppgtt = i915_vm_to_ppgtt(vm);
@@ -160,7 +159,7 @@ gen8_pdp_for_page_index(struct i915_address_space * const vm, const u64 idx)
 		return i915_pd_entry(ppgtt->pd, gen8_pd_index(idx, vm->top));
 }
 
-static inline struct i915_page_directory *
+static struct i915_page_directory *
 gen8_pdp_for_page_address(struct i915_address_space * const vm, const u64 addr)
 {
 	return gen8_pdp_for_page_index(vm, addr >> GEN8_PTE_SHIFT);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index 2843db731b7d..e67d09259dd0 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -79,7 +79,7 @@ static int __engine_unpark(struct intel_wakeref *wf)
 
 #if IS_ENABLED(CONFIG_LOCKDEP)
 
-static inline unsigned long __timeline_mark_lock(struct intel_context *ce)
+static unsigned long __timeline_mark_lock(struct intel_context *ce)
 {
 	unsigned long flags;
 
@@ -89,8 +89,8 @@ static inline unsigned long __timeline_mark_lock(struct intel_context *ce)
 	return flags;
 }
 
-static inline void __timeline_mark_unlock(struct intel_context *ce,
-					  unsigned long flags)
+static void __timeline_mark_unlock(struct intel_context *ce,
+				   unsigned long flags)
 {
 	mutex_release(&ce->timeline->mutex.dep_map, _THIS_IP_);
 	local_irq_restore(flags);
@@ -98,13 +98,13 @@ static inline void __timeline_mark_unlock(struct intel_context *ce,
 
 #else
 
-static inline unsigned long __timeline_mark_lock(struct intel_context *ce)
+static unsigned long __timeline_mark_lock(struct intel_context *ce)
 {
 	return 0;
 }
 
-static inline void __timeline_mark_unlock(struct intel_context *ce,
-					  unsigned long flags)
+static void __timeline_mark_unlock(struct intel_context *ce,
+				   unsigned long flags)
 {
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index a0fc78c89b61..94f485b591af 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1035,7 +1035,7 @@ gen12_emit_indirect_ctx_xcs(const struct intel_context *ce, u32 *cs)
 	return cs;
 }
 
-static inline u32 context_wa_bb_offset(const struct intel_context *ce)
+static u32 context_wa_bb_offset(const struct intel_context *ce)
 {
 	return PAGE_SIZE * ce->wa_bb_page;
 }
@@ -1098,7 +1098,7 @@ setup_indirect_ctx_bb(const struct intel_context *ce,
  * engine info, SW context ID and SW counter need to form a unique number
  * (Context ID) per lrc.
  */
-static inline u32 lrc_descriptor(const struct intel_context *ce)
+static u32 lrc_descriptor(const struct intel_context *ce)
 {
 	u32 desc;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index c4512ee4daf2..8acb84960cd0 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -472,7 +472,7 @@ static u16 get_entry_l3cc(const struct drm_i915_mocs_table *table,
 	return table->table[I915_MOCS_PTE].l3cc_value;
 }
 
-static inline u32 l3cc_combine(u16 low, u16 high)
+static u32 l3cc_combine(u16 low, u16 high)
 {
 	return low | (u32)high << 16;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index 46d9aceda64c..1adb209ca2c2 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -80,7 +80,7 @@ void free_px(struct i915_address_space *vm, struct i915_page_table *pt, int lvl)
 	kfree(pt);
 }
 
-static inline void
+static void
 write_dma_entry(struct drm_i915_gem_object * const pdma,
 		const unsigned short idx,
 		const u64 encoded_entry)
@@ -103,6 +103,7 @@ __set_pd_entry(struct i915_page_directory * const pd,
 
 	atomic_inc(px_used(pd));
 	pd->entry[idx] = to;
+
 	write_dma_entry(px_base(pd), idx, encode(px_dma(to), I915_CACHE_LLC));
 }
 
@@ -113,9 +114,10 @@ clear_pd_entry(struct i915_page_directory * const pd,
 {
 	GEM_BUG_ON(atomic_read(px_used(pd)) == 0);
 
-	write_dma_entry(px_base(pd), idx, scratch->encode);
-	pd->entry[idx] = NULL;
 	atomic_dec(px_used(pd));
+	pd->entry[idx] = NULL;
+
+	write_dma_entry(px_base(pd), idx, scratch->encode);
 }
 
 bool
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index d7b8e4457fc2..35504c97f11d 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -49,7 +49,7 @@ static struct drm_i915_private *rc6_to_i915(struct intel_rc6 *rc)
 	return rc6_to_gt(rc)->i915;
 }
 
-static inline void set(struct intel_uncore *uncore, i915_reg_t reg, u32 val)
+static void set(struct intel_uncore *uncore, i915_reg_t reg, u32 val)
 {
 	intel_uncore_write_fw(uncore, reg, val);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 9d177297db79..0a1f93f00b14 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1110,7 +1110,7 @@ void intel_gt_reset(struct intel_gt *gt,
 	goto finish;
 }
 
-static inline int intel_gt_reset_engine(struct intel_engine_cs *engine)
+static int intel_gt_reset_engine(struct intel_engine_cs *engine)
 {
 	return __intel_gt_reset(engine->gt, engine->mask);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 657afd8ebc14..a79fecfe5752 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -686,9 +686,9 @@ static int load_pd_dir(struct i915_request *rq,
 	return rq->engine->emit_flush(rq, EMIT_FLUSH);
 }
 
-static inline int mi_set_context(struct i915_request *rq,
-				 struct intel_context *ce,
-				 u32 flags)
+static int mi_set_context(struct i915_request *rq,
+			  struct intel_context *ce,
+			  u32 flags)
 {
 	struct intel_engine_cs *engine = rq->engine;
 	struct drm_i915_private *i915 = engine->i915;
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 69e1bd46cc46..ee5835c29c03 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -43,7 +43,7 @@ static u32 rps_pm_sanitize_mask(struct intel_rps *rps, u32 mask)
 	return mask & ~rps->pm_intrmsk_mbz;
 }
 
-static inline void set(struct intel_uncore *uncore, i915_reg_t reg, u32 val)
+static void set(struct intel_uncore *uncore, i915_reg_t reg, u32 val)
 {
 	intel_uncore_write_fw(uncore, reg, val);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index c52433914d52..a7f37306c09b 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1392,7 +1392,7 @@ bool intel_gt_verify_workarounds(struct intel_gt *gt, const char *from)
 }
 
 __maybe_unused
-static inline bool is_nonpriv_flags_valid(u32 flags)
+static bool is_nonpriv_flags_valid(u32 flags)
 {
 	/* Check only valid flag bits are set */
 	if (flags & ~RING_FORCE_TO_NONPRIV_MASK_VALID)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
