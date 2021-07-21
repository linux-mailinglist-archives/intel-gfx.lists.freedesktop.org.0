Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 059AE3D1A19
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 01:02:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B0DD6E944;
	Wed, 21 Jul 2021 23:02:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51E706E270;
 Wed, 21 Jul 2021 23:02:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="211252734"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="211252734"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 16:02:18 -0700
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="511965336"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 16:02:18 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <igt-dev@lists.freedesktop.org>
Date: Wed, 21 Jul 2021 16:20:01 -0700
Message-Id: <20210721232004.31470-5-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210721232004.31470-1-matthew.brost@intel.com>
References: <20210721232004.31470-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 4/7] i915/gem_exec_balancer: Test parallel
 execbuf
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add basic parallel execbuf submission test which more or less just
submits the same BB in loop a which does an atomic increment to a memory
location. The memory location is checked at the end for the correct
value. Different sections use various IOCTL options (e.g. fences,
location of BBs, etc...).

In addition to above sections, an additional section ensure the ordering
of parallel submission by submitting a spinning batch to 1 individual
engine, submit a parallel execbuf to all engines instances within the
class, verify none on parallel execbuf make to hardware, release
spinner, and finally verify everything has completed.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 lib/intel_reg.h                |   5 +
 tests/i915/gem_exec_balancer.c | 487 +++++++++++++++++++++++++++++++++
 2 files changed, 492 insertions(+)

diff --git a/lib/intel_reg.h b/lib/intel_reg.h
index ac1fc6cbc..146ac76c9 100644
--- a/lib/intel_reg.h
+++ b/lib/intel_reg.h
@@ -2593,6 +2593,11 @@ SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
 #define STATE3D_COLOR_FACTOR	((0x3<<29)|(0x1d<<24)|(0x01<<16))
 
+/* Atomics */
+#define MI_ATOMIC			((0x2f << 23) | 2)
+#define   MI_ATOMIC_INLINE_DATA         (1 << 18)
+#define   MI_ATOMIC_ADD                 (0x7 << 8)
+
 /* Batch */
 #define MI_BATCH_BUFFER		((0x30 << 23) | 1)
 #define MI_BATCH_BUFFER_START	(0x31 << 23)
diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
index 2f98950bb..053f1d1f7 100644
--- a/tests/i915/gem_exec_balancer.c
+++ b/tests/i915/gem_exec_balancer.c
@@ -25,6 +25,7 @@
 #include <sched.h>
 #include <sys/ioctl.h>
 #include <sys/signal.h>
+#include <poll.h>
 
 #include "i915/gem.h"
 #include "i915/gem_create.h"
@@ -56,6 +57,31 @@ static size_t sizeof_load_balance(int count)
 
 #define alloca0(sz) ({ size_t sz__ = (sz); memset(alloca(sz__), 0, sz__); })
 
+static int
+__i915_query(int fd, struct drm_i915_query *q)
+{
+	if (igt_ioctl(fd, DRM_IOCTL_I915_QUERY, q))
+		return -errno;
+
+	return 0;
+}
+
+static int
+__i915_query_items(int fd, struct drm_i915_query_item *items, uint32_t n_items)
+{
+	struct drm_i915_query q = {
+		.num_items = n_items,
+		.items_ptr = to_user_pointer(items),
+		};
+
+	return __i915_query(fd, &q);
+}
+
+#define i915_query_items(fd, items, n_items) do { \
+		igt_assert_eq(__i915_query_items(fd, items, n_items), 0); \
+		errno = 0; \
+	} while (0)
+
 static bool has_class_instance(int i915, uint16_t class, uint16_t instance)
 {
 	int fd;
@@ -2691,6 +2717,380 @@ static void nohangcheck(int i915)
 	close(params);
 }
 
+static void check_bo(int i915, uint32_t handle, unsigned int count, bool wait)
+{
+	uint32_t *map;
+
+	map = gem_mmap__cpu(i915, handle, 0, 4096, PROT_READ);
+	if (wait)
+		gem_set_domain(i915, handle, I915_GEM_DOMAIN_CPU,
+			       I915_GEM_DOMAIN_CPU);
+	igt_assert_eq(map[0], count);
+	munmap(map, 4096);
+}
+
+static struct drm_i915_query_engine_info *query_engine_info(int i915)
+{
+	struct drm_i915_query_engine_info *engines;
+	struct drm_i915_query_item item;
+
+#define QUERY_SIZE	0x4000
+	engines = malloc(QUERY_SIZE);
+	igt_assert(engines);
+
+	memset(engines, 0, QUERY_SIZE);
+	memset(&item, 0, sizeof(item));
+	item.query_id = DRM_I915_QUERY_ENGINE_INFO;
+	item.data_ptr = to_user_pointer(engines);
+	item.length = QUERY_SIZE;
+
+	i915_query_items(i915, &item, 1);
+	igt_assert(item.length >= 0);
+	igt_assert(item.length <= QUERY_SIZE);
+#undef QUERY_SIZE
+
+	return engines;
+}
+
+/* This function only works if siblings contains all instances of a class */
+static void logical_sort_siblings(int i915,
+				  struct i915_engine_class_instance *siblings,
+				  unsigned int count)
+{
+	struct i915_engine_class_instance *sorted;
+	struct drm_i915_query_engine_info *engines;
+	unsigned int i, j;
+
+	sorted = calloc(count, sizeof(*sorted));
+	igt_assert(sorted);
+
+	engines = query_engine_info(i915);
+
+	for (j = 0; j < count; ++j) {
+		for (i = 0; i < engines->num_engines; ++i) {
+			if (siblings[j].engine_class ==
+			    engines->engines[i].engine.engine_class &&
+			    siblings[j].engine_instance ==
+			    engines->engines[i].engine.engine_instance) {
+				uint16_t logical_instance =
+					engines->engines[i].logical_instance;
+
+				igt_assert(logical_instance < count);
+				igt_assert(!sorted[logical_instance].engine_class);
+				igt_assert(!sorted[logical_instance].engine_instance);
+
+				sorted[logical_instance] = siblings[j];
+				break;
+			}
+		}
+		igt_assert(i != engines->num_engines);
+	}
+
+	memcpy(siblings, sorted, sizeof(*sorted) * count);
+	free(sorted);
+	free(engines);
+}
+
+#define PARALLEL_BB_FIRST		(0x1 << 0)
+#define PARALLEL_OUT_FENCE		(0x1 << 1)
+#define PARALLEL_IN_FENCE		(0x1 << 2)
+#define PARALLEL_SUBMIT_FENCE		(0x1 << 3)
+#define PARALLEL_CONTEXTS		(0x1 << 4)
+#define PARALLEL_VIRTUAL		(0x1 << 5)
+
+static void parallel_thread(int i915, unsigned int flags,
+			    struct i915_engine_class_instance *siblings,
+			    unsigned int count, unsigned int bb_per_execbuf)
+{
+	const intel_ctx_t *ctx = NULL;
+	int n, i, j, fence = 0;
+	uint32_t batch[16];
+	struct drm_i915_gem_execbuffer2 execbuf;
+	struct drm_i915_gem_exec_object2 obj[32];
+#define PARALLEL_BB_LOOP_COUNT	0x1000
+	const intel_ctx_t *ctxs[PARALLEL_BB_LOOP_COUNT];
+	uint32_t target_bo_idx = 0;
+	uint32_t first_bb_idx = 1;
+	intel_ctx_cfg_t cfg;
+
+	if (flags & PARALLEL_BB_FIRST) {
+		target_bo_idx = bb_per_execbuf;
+		first_bb_idx = 0;
+	}
+
+	memset(&cfg, 0, sizeof(cfg));
+	if (flags & PARALLEL_VIRTUAL) {
+		cfg.parallel = true;
+		cfg.num_engines = count / bb_per_execbuf;
+		cfg.width = bb_per_execbuf;
+
+		for (i = 0; i < cfg.width; ++i)
+			for (j = 0; j < cfg.num_engines; ++j)
+				memcpy(cfg.engines + i * cfg.num_engines + j,
+				       siblings + j * cfg.width + i,
+				       sizeof(*siblings));
+	} else {
+		cfg.parallel = true;
+		cfg.num_engines = 1;
+		cfg.width = count;
+		memcpy(cfg.engines, siblings, sizeof(*siblings) * count);
+	}
+	ctx = intel_ctx_create(i915, &cfg);
+
+	i = 0;
+	batch[i] = MI_ATOMIC | MI_ATOMIC_INLINE_DATA |
+		MI_ATOMIC_ADD;
+#define TARGET_BO_OFFSET	(0x1 << 16)
+	batch[++i] = TARGET_BO_OFFSET;
+	batch[++i] = 0;
+	batch[++i] = 1;
+	batch[++i] = MI_BATCH_BUFFER_END;
+
+	memset(obj, 0, sizeof(obj));
+	obj[target_bo_idx].offset = TARGET_BO_OFFSET;
+	obj[target_bo_idx].flags = EXEC_OBJECT_PINNED | EXEC_OBJECT_WRITE;
+	obj[target_bo_idx].handle = gem_create(i915, 4096);
+
+	for (i = first_bb_idx; i < bb_per_execbuf + first_bb_idx; ++i) {
+		obj[i].handle = gem_create(i915, 4096);
+		gem_write(i915, obj[i].handle, 0, batch,
+			  sizeof(batch));
+	}
+
+	memset(&execbuf, 0, sizeof(execbuf));
+	execbuf.buffers_ptr = to_user_pointer(obj);
+	execbuf.buffer_count = bb_per_execbuf + 1;
+	execbuf.flags |= I915_EXEC_HANDLE_LUT;
+	if (flags & PARALLEL_BB_FIRST)
+		execbuf.flags |= I915_EXEC_BATCH_FIRST;
+	if (flags & PARALLEL_OUT_FENCE)
+		execbuf.flags |= I915_EXEC_FENCE_OUT;
+	execbuf.buffers_ptr = to_user_pointer(obj);
+	execbuf.rsvd1 = ctx->id;
+
+	for (n = 0; n < PARALLEL_BB_LOOP_COUNT; ++n) {
+		for (i = 0; i < count / bb_per_execbuf; ++i ) {
+			execbuf.flags &= ~0x3full;
+			execbuf.flags |= i;
+			gem_execbuf_wr(i915, &execbuf);
+
+			if (flags & PARALLEL_OUT_FENCE) {
+				igt_assert_eq(sync_fence_wait(execbuf.rsvd2 >> 32,
+							      1000), 0);
+				igt_assert_eq(sync_fence_status(execbuf.rsvd2 >> 32), 1);
+
+				if (fence)
+					close(fence);
+				fence = execbuf.rsvd2 >> 32;
+
+				if (flags & PARALLEL_SUBMIT_FENCE) {
+					execbuf.flags |=
+						I915_EXEC_FENCE_SUBMIT;
+					execbuf.rsvd2 >>= 32;
+				} else if (flags &  PARALLEL_IN_FENCE) {
+					execbuf.flags |=
+						I915_EXEC_FENCE_IN;
+					execbuf.rsvd2 >>= 32;
+				} else {
+					execbuf.rsvd2 = 0;
+				}
+			}
+
+			if (flags & PARALLEL_VIRTUAL)
+				break;
+		}
+
+		if (flags & PARALLEL_CONTEXTS) {
+			ctxs[n] = ctx;
+			ctx = intel_ctx_create(i915, &cfg);
+			execbuf.rsvd1 = ctx->id;
+		}
+	}
+	if (fence)
+		close(fence);
+
+	check_bo(i915, obj[target_bo_idx].handle, flags & PARALLEL_VIRTUAL ?
+		 bb_per_execbuf * PARALLEL_BB_LOOP_COUNT :
+		 count * PARALLEL_BB_LOOP_COUNT, true);
+
+	intel_ctx_destroy(i915, ctx);
+	for (i = 0; flags & PARALLEL_CONTEXTS &&
+	     i < PARALLEL_BB_LOOP_COUNT; ++i) {
+		intel_ctx_destroy(i915, ctxs[i]);
+	}
+	for (i = 0; i < bb_per_execbuf + 1; ++i)
+		gem_close(i915, obj[i].handle);
+}
+
+static void parallel(int i915, unsigned int flags)
+{
+	for (int class = 0; class < 32; class++) {
+		struct i915_engine_class_instance *siblings;
+		unsigned int count, bb_per_execbuf;
+
+		siblings = list_engines(i915, 1u << class, &count);
+		if (!siblings)
+			continue;
+
+		if (count < 2) {
+			free(siblings);
+			continue;
+		}
+
+		logical_sort_siblings(i915, siblings, count);
+		bb_per_execbuf = count;
+
+		parallel_thread(i915, flags, siblings,
+				count, bb_per_execbuf);
+
+		free(siblings);
+	}
+}
+
+static void parallel_balancer(int i915, unsigned int flags)
+{
+	for (int class = 0; class < 32; class++) {
+		struct i915_engine_class_instance *siblings;
+		unsigned int count;
+
+		siblings = list_engines(i915, 1u << class, &count);
+		if (!siblings)
+			continue;
+
+		if (count < 4) {
+			free(siblings);
+			continue;
+		}
+
+		logical_sort_siblings(i915, siblings, count);
+
+		for (unsigned int bb_per_execbuf = 2;;) {
+			igt_fork(child, count / bb_per_execbuf)
+				parallel_thread(i915,
+						flags | PARALLEL_VIRTUAL,
+						siblings,
+						count,
+						bb_per_execbuf);
+			igt_waitchildren();
+
+			if (count / ++bb_per_execbuf <= 1)
+				break;
+		}
+
+		free(siblings);
+	}
+}
+
+static bool fence_busy(int fence)
+{
+	return poll(&(struct pollfd){fence, POLLIN}, 1, 0) == 0;
+}
+
+static void parallel_ordering(int i915, unsigned int flags)
+{
+	for (int class = 0; class < 32; class++) {
+		const intel_ctx_t *ctx = NULL, *spin_ctx = NULL;
+		struct i915_engine_class_instance *siblings;
+		unsigned int count;
+		int i = 0, fence = 0;
+		uint32_t batch[16];
+		struct drm_i915_gem_execbuffer2 execbuf;
+		struct drm_i915_gem_exec_object2 obj[32];
+		igt_spin_t *spin;
+		intel_ctx_cfg_t cfg;
+
+		siblings = list_engines(i915, 1u << class, &count);
+		if (!siblings)
+			continue;
+
+		if (count < 2) {
+			free(siblings);
+			continue;
+		}
+
+		logical_sort_siblings(i915, siblings, count);
+
+		memset(&cfg, 0, sizeof(cfg));
+		cfg.parallel = true;
+		cfg.num_engines = 1;
+		cfg.width = count;
+		memcpy(cfg.engines, siblings, sizeof(*siblings) * count);
+
+		ctx = intel_ctx_create(i915, &cfg);
+
+		batch[i] = MI_ATOMIC | MI_ATOMIC_INLINE_DATA |
+			MI_ATOMIC_ADD;
+		batch[++i] = TARGET_BO_OFFSET;
+		batch[++i] = 0;
+		batch[++i] = 1;
+		batch[++i] = MI_BATCH_BUFFER_END;
+
+		memset(obj, 0, sizeof(obj));
+		obj[0].offset = TARGET_BO_OFFSET;
+		obj[0].flags = EXEC_OBJECT_PINNED | EXEC_OBJECT_WRITE;
+		obj[0].handle = gem_create(i915, 4096);
+
+		for (i = 1; i < count + 1; ++i) {
+			obj[i].handle = gem_create(i915, 4096);
+			gem_write(i915, obj[i].handle, 0, batch,
+				  sizeof(batch));
+		}
+
+		memset(&execbuf, 0, sizeof(execbuf));
+		execbuf.buffers_ptr = to_user_pointer(obj);
+		execbuf.buffer_count = count + 1;
+		execbuf.flags |= I915_EXEC_HANDLE_LUT;
+		execbuf.flags |= I915_EXEC_NO_RELOC;
+		execbuf.flags |= I915_EXEC_FENCE_OUT;
+		execbuf.buffers_ptr = to_user_pointer(obj);
+		execbuf.rsvd1 = ctx->id;
+
+		/* Block parallel submission */
+		spin_ctx = ctx_create_engines(i915, siblings, count);
+		spin = __igt_spin_new(i915,
+				      .ctx = spin_ctx,
+				      .engine = 0,
+				      .flags = IGT_SPIN_FENCE_OUT |
+				      IGT_SPIN_NO_PREEMPTION);
+
+		/* Wait for spinners to start */
+		usleep(5 * 10000);
+		igt_assert(fence_busy(spin->out_fence));
+
+		/* Submit parallel execbuf */
+		gem_execbuf_wr(i915, &execbuf);
+		fence = execbuf.rsvd2 >> 32;
+
+		/*
+		 * Wait long enough for timeslcing to kick in but not
+		 * preemption. Spinner + parallel execbuf should be
+		 * active.
+		 */
+		usleep(25 * 10000);
+		igt_assert(fence_busy(spin->out_fence));
+		igt_assert(fence_busy(fence));
+		check_bo(i915, obj[0].handle, 0, false);
+
+		/*
+		 * End spinner and wait for spinner + parallel execbuf
+		 * to compelte.
+		 */
+		igt_spin_end(spin);
+		igt_assert_eq(sync_fence_wait(fence, 1000), 0);
+		igt_assert_eq(sync_fence_status(fence), 1);
+		check_bo(i915, obj[0].handle, count, true);
+		close(fence);
+
+		/* Clean up */
+		intel_ctx_destroy(i915, ctx);
+		intel_ctx_destroy(i915, spin_ctx);
+		for (i = 0; i < count + 1; ++i)
+			gem_close(i915, obj[i].handle);
+		free(siblings);
+		igt_spin_free(i915, spin);
+	}
+}
+
 static bool has_persistence(int i915)
 {
 	struct drm_i915_gem_context_param p = {
@@ -2725,6 +3125,61 @@ static bool has_load_balancer(int i915)
 	return err == 0;
 }
 
+static bool has_logical_mapping(int i915)
+{
+	struct drm_i915_query_engine_info *engines;
+	unsigned int i;
+
+	engines = query_engine_info(i915);
+
+	for (i = 0; i < engines->num_engines; ++i)
+		if (!(engines->engines[i].flags &
+		     I915_ENGINE_INFO_HAS_LOGICAL_INSTANCE)) {
+			free(engines);
+			return false;
+		}
+
+	free(engines);
+	return true;
+}
+
+static bool has_parallel_execbuf(int i915)
+{
+	intel_ctx_cfg_t cfg = {
+		.parallel = true,
+		.num_engines = 1,
+	};
+	const intel_ctx_t *ctx = NULL;
+	int err;
+
+	for (int class = 0; class < 32; class++) {
+		struct i915_engine_class_instance *siblings;
+		unsigned int count;
+
+		siblings = list_engines(i915, 1u << class, &count);
+		if (!siblings)
+			continue;
+
+		if (count < 2) {
+			free(siblings);
+			continue;
+		}
+
+		logical_sort_siblings(i915, siblings, count);
+
+		cfg.width = count;
+		memcpy(cfg.engines, siblings, sizeof(*siblings) * count);
+		free(siblings);
+
+		err = __intel_ctx_create(i915, &cfg, &ctx);
+		intel_ctx_destroy(i915, ctx);
+
+		return err == 0;
+	}
+
+	return false;
+}
+
 igt_main
 {
 	int i915 = -1;
@@ -2813,6 +3268,38 @@ igt_main
 		igt_stop_hang_detector();
 	}
 
+	igt_subtest_group {
+		igt_fixture {
+			igt_require(has_logical_mapping(i915));
+			igt_require(has_parallel_execbuf(i915));
+		}
+
+		igt_subtest("parallel-ordering")
+			parallel_ordering(i915, 0);
+
+		igt_subtest("parallel")
+			parallel(i915, 0);
+
+		igt_subtest("parallel-bb-first")
+			parallel(i915, PARALLEL_BB_FIRST);
+
+		igt_subtest("parallel-out-fence")
+			parallel(i915, PARALLEL_OUT_FENCE);
+
+		igt_subtest("parallel-keep-in-fence")
+			parallel(i915, PARALLEL_OUT_FENCE | PARALLEL_IN_FENCE);
+
+		igt_subtest("parallel-keep-submit-fence")
+			parallel(i915, PARALLEL_OUT_FENCE |
+				 PARALLEL_SUBMIT_FENCE);
+
+		igt_subtest("parallel-contexts")
+			parallel(i915, PARALLEL_CONTEXTS);
+
+		igt_subtest("parallel-balancer")
+			parallel_balancer(i915, 0);
+	}
+
 	igt_subtest_group {
 		igt_hang_t  hang;
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
