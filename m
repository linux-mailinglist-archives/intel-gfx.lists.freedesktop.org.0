Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FA1317331
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Feb 2021 23:20:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08F326ED0F;
	Wed, 10 Feb 2021 22:20:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 687716ED0E
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Feb 2021 22:20:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23839048-1500050 
 for multiple; Wed, 10 Feb 2021 22:19:53 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Feb 2021 22:19:54 +0000
Message-Id: <20210210221955.10025-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210210221955.10025-1-chris@chris-wilson.co.uk>
References: <20210210221955.10025-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/i915: Check for scratch page scribbling
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Periodically check, for example when idling and upon closing user
contexts, whether or not some client has written into unallocated PTE in
their ppGTT.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 .../drm/i915/gem/selftests/i915_gem_context.c | 24 +++++++---
 .../drm/i915/gem/selftests/i915_gem_mman.c    | 32 ++++++++++++-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 31 +------------
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         | 10 +++++
 drivers/gpu/drm/i915/gt/intel_gtt.c           | 45 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gtt.h           |  1 +
 drivers/gpu/drm/i915/i915_scheduler.c         | 33 +-------------
 drivers/gpu/drm/i915/i915_utils.c             | 29 ++++++++++++
 drivers/gpu/drm/i915/i915_utils.h             |  3 ++
 9 files changed, 141 insertions(+), 67 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index df949320f2b5..5a9128dd3979 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -1737,7 +1737,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 	return err;
 }
 
-static int check_scratch_page(struct i915_gem_context *ctx, u32 *out)
+static int check_ctx_scratch(struct i915_gem_context *ctx, u32 *out)
 {
 	struct i915_address_space *vm;
 	struct page *page;
@@ -1770,6 +1770,17 @@ static int check_scratch_page(struct i915_gem_context *ctx, u32 *out)
 	return err;
 }
 
+static void reset_ctx_scratch(struct i915_gem_context *ctx, u32 value)
+{
+	struct i915_address_space *vm = ctx_vm(ctx);
+	struct page *page = __px_page(vm->scratch[0]);
+	u32 *vaddr;
+
+	vaddr = kmap(page);
+	memset32(vaddr, value, PAGE_SIZE / sizeof(value));
+	kunmap(page);
+}
+
 static int igt_vm_isolation(void *arg)
 {
 	struct drm_i915_private *i915 = arg;
@@ -1816,11 +1827,11 @@ static int igt_vm_isolation(void *arg)
 		goto out_file;
 
 	/* Read the initial state of the scratch page */
-	err = check_scratch_page(ctx_a, &expected);
+	err = check_ctx_scratch(ctx_a, &expected);
 	if (err)
 		goto out_file;
 
-	err = check_scratch_page(ctx_b, &expected);
+	err = check_ctx_scratch(ctx_b, &expected);
 	if (err)
 		goto out_file;
 
@@ -1855,7 +1866,7 @@ static int igt_vm_isolation(void *arg)
 				err = read_from_scratch(ctx_b, engine,
 							offset, &value);
 			if (err)
-				goto out_file;
+				goto out_scratch;
 
 			if (value != expected) {
 				pr_err("%s: Read %08x from scratch (offset 0x%08x_%08x), after %lu reads!\n",
@@ -1864,7 +1875,7 @@ static int igt_vm_isolation(void *arg)
 				       lower_32_bits(offset),
 				       this);
 				err = -EINVAL;
-				goto out_file;
+				goto out_scratch;
 			}
 
 			this++;
@@ -1875,6 +1886,9 @@ static int igt_vm_isolation(void *arg)
 	pr_info("Checked %lu scratch offsets across %lu engines\n",
 		count, num_engines);
 
+out_scratch:
+	/* As we deliberately write into scratch, cover up our tracks */
+	reset_ctx_scratch(ctx_a, expected);
 out_file:
 	if (igt_live_test_end(&t))
 		err = -EIO;
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index df558ce95a94..b7f41f230c8f 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -155,6 +155,18 @@ static int check_partial_mapping(struct drm_i915_gem_object *obj,
 	drm_clflush_virt_range(cpu, sizeof(*cpu));
 	kunmap(p);
 
+	if (check_scratch_page(vma->vm)) {
+		pr_err("Partial view for %lu [%u] (offset=%llu, size=%u [%llu, row size %u], fence=%d, tiling=%d, stride=%d) overwrote scratch\n",
+		       page, n,
+		       view.partial.offset,
+		       view.partial.size,
+		       vma->size >> PAGE_SHIFT,
+		       tile->tiling ? tile_row_pages(obj) : 0,
+		       vma->fence ? vma->fence->id : -1,
+		       tile->tiling, tile->stride);
+		err = -EIO;
+	}
+
 out:
 	__i915_vma_put(vma);
 	return err;
@@ -250,6 +262,9 @@ static int check_partial_mappings(struct drm_i915_gem_object *obj,
 			return -EINTR;
 	}
 
+	if (check_scratch_page(&to_i915(obj->base.dev)->ggtt.vm))
+		return -EIO;
+
 	return 0;
 }
 
@@ -399,7 +414,11 @@ static int igt_partial_tiling(void *arg)
 			}
 		}
 
-next_tiling: ;
+next_tiling:
+		if (check_scratch_page(&i915->ggtt.vm)) {
+			err = -EIO;
+			break;
+		}
 	}
 
 out_unlock:
@@ -496,6 +515,8 @@ static int igt_smoke_tiling(void *arg)
 	} while (!__igt_timeout(end, NULL));
 
 	pr_info("%s: Completed %lu trials\n", __func__, count);
+	if (check_scratch_page(&i915->ggtt.vm))
+		err = -EIO;
 
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 	i915_gem_object_unpin_pages(obj);
@@ -703,6 +724,8 @@ static int igt_mmap_offset_exhaustion(void *arg)
 		}
 	}
 
+	if (check_scratch_page(&i915->ggtt.vm))
+		err = -EIO;
 out:
 	mmap_offset_lock(i915);
 out_park:
@@ -904,6 +927,9 @@ static int __igt_mmap(struct drm_i915_private *i915,
 	err = wc_check(obj);
 	if (err == -ENXIO)
 		err = gtt_check(obj);
+
+	if (check_scratch_page(&i915->ggtt.vm))
+		err = -EIO;
 out_unmap:
 	vm_munmap(addr, obj->base.size);
 	return err;
@@ -1175,6 +1201,8 @@ static int __igt_mmap_gpu(struct drm_i915_private *i915,
 			goto out_unmap;
 	}
 
+	if (check_scratch_page(&i915->ggtt.vm))
+		err = -EIO;
 out_unmap:
 	vm_munmap(addr, obj->base.size);
 	return err;
@@ -1316,6 +1344,8 @@ static int __igt_mmap_revoke(struct drm_i915_private *i915,
 		goto out_unmap;
 	}
 
+	if (check_scratch_page(&i915->ggtt.vm))
+		err = -EIO;
 out_unmap:
 	vm_munmap(addr, obj->base.size);
 	return err;
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 577ebd4a324f..8443794df3ee 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1265,35 +1265,6 @@ bool intel_engine_can_store_dword(struct intel_engine_cs *engine)
 	}
 }
 
-static void hexdump(struct drm_printer *m, const void *buf, size_t len)
-{
-	const size_t rowsize = 8 * sizeof(u32);
-	const void *prev = NULL;
-	bool skip = false;
-	size_t pos;
-
-	for (pos = 0; pos < len; pos += rowsize) {
-		char line[128];
-
-		if (prev && !memcmp(prev, buf + pos, rowsize)) {
-			if (!skip) {
-				drm_printf(m, "*\n");
-				skip = true;
-			}
-			continue;
-		}
-
-		WARN_ON_ONCE(hex_dump_to_buffer(buf + pos, len - pos,
-						rowsize, sizeof(u32),
-						line, sizeof(line),
-						false) >= sizeof(line));
-		drm_printf(m, "[%04zx] %s\n", pos, line);
-
-		prev = buf + pos;
-		skip = false;
-	}
-}
-
 static void intel_engine_print_registers(struct intel_engine_cs *engine,
 					 struct drm_printer *m)
 {
@@ -1450,7 +1421,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 	}
 
 	drm_printf(m, "HWSP:\n");
-	hexdump(m, engine->status_page.addr, PAGE_SIZE);
+	i915_hexdump(m, engine->status_page.addr, PAGE_SIZE);
 
 	drm_printf(m, "Idle? %s\n", yesno(intel_engine_is_idle(engine)));
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index f41612faa269..ca7c6613662e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -11,6 +11,7 @@
 #include "intel_context.h"
 #include "intel_engine_pm.h"
 #include "intel_gt.h"
+#include "intel_gtt.h"
 #include "intel_gt_clock_utils.h"
 #include "intel_gt_pm.h"
 #include "intel_gt_requests.h"
@@ -100,6 +101,9 @@ static int __gt_park(struct intel_wakeref *wf)
 	runtime_end(gt);
 	intel_gt_park_requests(gt);
 
+	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
+		check_scratch_page(gt->vm);
+
 	i915_vma_parked(gt);
 	i915_pmu_gt_parked(i915);
 	intel_rps_park(&gt->rps);
@@ -212,6 +216,8 @@ int intel_gt_resume(struct intel_gt *gt)
 		return err;
 
 	GT_TRACE(gt, "\n");
+	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
+		check_scratch_page(gt->vm);
 
 	/*
 	 * After resume, we may need to poke into the pinned kernel
@@ -298,6 +304,8 @@ void intel_gt_suspend_prepare(struct intel_gt *gt)
 
 	/* Flush all the contexts and internal state before turning off GGTT */
 	gt_sanitize(gt, false);
+	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
+		check_scratch_page(gt->vm);
 }
 
 static suspend_state_t pm_suspend_target(void)
@@ -341,6 +349,8 @@ void intel_gt_suspend_late(struct intel_gt *gt)
 	}
 
 	gt_sanitize(gt, false); /* Be paranoid, remove all residual GPU state */
+	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
+		check_scratch_page(gt->vm);
 
 	GT_TRACE(gt, "\n");
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index d34770ae4c9a..1357fd440f77 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -158,10 +158,52 @@ static void poison_scratch_page(struct drm_i915_gem_object *scratch)
 
 		vaddr = kmap(page);
 		memset(vaddr, val, PAGE_SIZE);
+		set_page_dirty(page); /* keep the poisoned contents */
 		kunmap(page);
 	}
 }
 
+bool check_scratch_page(const struct i915_address_space *vm)
+{
+	struct drm_i915_gem_object *scratch;
+	struct sgt_iter sgt;
+	struct page *page;
+	void *vaddr;
+	u8 val;
+
+	scratch = vm->scratch[0];
+	if (!scratch || !i915_gem_object_has_struct_page(scratch))
+		return false;
+
+	val = 0;
+	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
+		val = POISON_FREE;
+
+	for_each_sgt_page(page, sgt, scratch->mm.pages) {
+		vaddr = kmap(page);
+		drm_clflush_virt_range(vaddr, PAGE_SIZE);
+		if (memchr_inv(vaddr, val, PAGE_SIZE)) {
+			struct drm_printer p = drm_err_printer(__func__);
+
+			drm_err(&vm->i915->drm,
+				"%s scratch page overwitten, detected by %pS!\n",
+				i915_is_ggtt(vm) ? "Global" : "Per-process",
+				(void *)_RET_IP_);
+			i915_hexdump(&p, vaddr, PAGE_SIZE);
+			vaddr = NULL;
+		}
+		kunmap(page);
+
+		/* Restore the poison, so fresh errors will be detected */
+		if (!vaddr) {
+			poison_scratch_page(scratch);
+			return true;
+		}
+	}
+
+	return false;
+}
+
 int setup_scratch_page(struct i915_address_space *vm)
 {
 	unsigned long size;
@@ -229,6 +271,9 @@ void free_scratch(struct i915_address_space *vm)
 {
 	int i;
 
+	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
+		check_scratch_page(vm);
+
 	for (i = 0; i <= vm->top; i++)
 		i915_gem_object_put(vm->scratch[i]);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 24b5808df16d..12f7261e4c89 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -519,6 +519,7 @@ fill_page_dma(struct drm_i915_gem_object *p, const u64 val, unsigned int count);
 } while (0)
 
 int setup_scratch_page(struct i915_address_space *vm);
+bool check_scratch_page(const struct i915_address_space *vm);
 void free_scratch(struct i915_address_space *vm);
 
 struct drm_i915_gem_object *alloc_pt_dma(struct i915_address_space *vm, int sz);
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index a8fb787278e6..7241f85c9967 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -1095,35 +1095,6 @@ void i915_request_show_with_schedule(struct drm_printer *m,
 	rcu_read_unlock();
 }
 
-static void hexdump(struct drm_printer *m, const void *buf, size_t len)
-{
-	const size_t rowsize = 8 * sizeof(u32);
-	const void *prev = NULL;
-	bool skip = false;
-	size_t pos;
-
-	for (pos = 0; pos < len; pos += rowsize) {
-		char line[128];
-
-		if (prev && !memcmp(prev, buf + pos, rowsize)) {
-			if (!skip) {
-				drm_printf(m, "*\n");
-				skip = true;
-			}
-			continue;
-		}
-
-		WARN_ON_ONCE(hex_dump_to_buffer(buf + pos, len - pos,
-						rowsize, sizeof(u32),
-						line, sizeof(line),
-						false) >= sizeof(line));
-		drm_printf(m, "[%04zx] %s\n", pos, line);
-
-		prev = buf + pos;
-		skip = false;
-	}
-}
-
 static void
 print_request_ring(struct drm_printer *m, const struct i915_request *rq)
 {
@@ -1153,7 +1124,7 @@ print_request_ring(struct drm_printer *m, const struct i915_request *rq)
 		}
 		memcpy(ring + len, vaddr + head, size - len);
 
-		hexdump(m, ring, size);
+		i915_hexdump(m, ring, size);
 		kfree(ring);
 	}
 }
@@ -1195,7 +1166,7 @@ void i915_sched_show(struct drm_printer *m,
 
 		if (rq->context->lrc_reg_state) {
 			drm_printf(m, "Logical Ring Context:\n");
-			hexdump(m, rq->context->lrc_reg_state, PAGE_SIZE);
+			i915_hexdump(m, rq->context->lrc_reg_state, PAGE_SIZE);
 		}
 	}
 
diff --git a/drivers/gpu/drm/i915/i915_utils.c b/drivers/gpu/drm/i915/i915_utils.c
index 894de60833ec..432ad0926586 100644
--- a/drivers/gpu/drm/i915/i915_utils.c
+++ b/drivers/gpu/drm/i915/i915_utils.c
@@ -49,6 +49,35 @@ __i915_printk(struct drm_i915_private *dev_priv, const char *level,
 	}
 }
 
+void i915_hexdump(struct drm_printer *m, const void *buf, size_t len)
+{
+	const size_t rowsize = 8 * sizeof(u32);
+	const void *prev = NULL;
+	bool skip = false;
+	size_t pos;
+
+	for (pos = 0; pos < len; pos += rowsize) {
+		char line[128];
+
+		if (prev && !memcmp(prev, buf + pos, rowsize)) {
+			if (!skip) {
+				drm_printf(m, "*\n");
+				skip = true;
+			}
+			continue;
+		}
+
+		WARN_ON_ONCE(hex_dump_to_buffer(buf + pos, len - pos,
+						rowsize, sizeof(u32),
+						line, sizeof(line),
+						false) >= sizeof(line));
+		drm_printf(m, "[%04zx] %s\n", pos, line);
+
+		prev = buf + pos;
+		skip = false;
+	}
+}
+
 void add_taint_for_CI(struct drm_i915_private *i915, unsigned int taint)
 {
 	__i915_printk(i915, KERN_NOTICE, "CI tainted:%#x by %pS\n",
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index 4618fe8aacb5..c82461d6ae71 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -32,6 +32,7 @@
 #include <linux/workqueue.h>
 
 struct drm_i915_private;
+struct drm_printer;
 struct timer_list;
 
 #define FDO_BUG_URL "https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs"
@@ -82,6 +83,8 @@ bool i915_error_injected(void);
 	__i915_printk(i915, i915_error_injected() ? KERN_DEBUG : KERN_ERR, \
 		      fmt, ##__VA_ARGS__)
 
+void i915_hexdump(struct drm_printer *m, const void *buf, size_t len);
+
 #if defined(GCC_VERSION) && GCC_VERSION >= 70000
 #define add_overflows_t(T, A, B) \
 	__builtin_add_overflow_p((A), (B), (T)0)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
