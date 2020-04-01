Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E6019AC7B
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 15:15:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BE796E09F;
	Wed,  1 Apr 2020 13:15:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33BE06E09F
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 13:15:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20764586-1500050 
 for multiple; Wed, 01 Apr 2020 14:15:34 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Apr 2020 14:15:34 +0100
Message-Id: <20200401131534.1682823-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_schedule: Dynamic engine
 tests
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

Use igt_subtest_with_dynamic for the flexible approach to engine
dependent test discovery.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 lib/i915/gem_engine_topology.h |   6 +-
 tests/i915/gem_exec_schedule.c | 432 ++++++++++++++++-----------------
 2 files changed, 207 insertions(+), 231 deletions(-)

diff --git a/lib/i915/gem_engine_topology.h b/lib/i915/gem_engine_topology.h
index 9588f74d4..f5edcb5d1 100644
--- a/lib/i915/gem_engine_topology.h
+++ b/lib/i915/gem_engine_topology.h
@@ -68,9 +68,9 @@ struct intel_execution_engine2 gem_eb_flags_to_engine(unsigned int flags);
 
 /* needs to replace "for_each_physical_engine" when conflicts are fixed */
 #define ____for_each_physical_engine(fd__, ctx__, e__) \
-	for (struct intel_engine_data i__ = intel_init_engine_list(fd__, ctx__); \
-	     ((e__) = intel_get_current_physical_engine(&i__)); \
-	     intel_next_engine(&i__))
+	for (struct intel_engine_data i__##e__ = intel_init_engine_list(fd__, ctx__); \
+	     ((e__) = intel_get_current_physical_engine(&i__##e__)); \
+	     intel_next_engine(&i__##e__))
 
 #define __for_each_physical_engine(fd__, e__) \
 	____for_each_physical_engine(fd__, 0, e__)
diff --git a/tests/i915/gem_exec_schedule.c b/tests/i915/gem_exec_schedule.c
index 2a74f13dc..7274ffbf3 100644
--- a/tests/i915/gem_exec_schedule.c
+++ b/tests/i915/gem_exec_schedule.c
@@ -49,15 +49,9 @@
 #define MAX_PRIO LOCAL_I915_CONTEXT_MAX_USER_PRIORITY
 #define MIN_PRIO LOCAL_I915_CONTEXT_MIN_USER_PRIORITY
 
-#define MAX_ELSP_QLEN 16
-
-#define MAX_ENGINES 16
-
 #define MAX_CONTEXTS 1024
-
-#define LOCAL_I915_EXEC_BSD_SHIFT      (13)
-#define LOCAL_I915_EXEC_BSD_MASK       (3 << LOCAL_I915_EXEC_BSD_SHIFT)
-#define ENGINE_MASK  (I915_EXEC_RING_MASK | LOCAL_I915_EXEC_BSD_MASK)
+#define MAX_ELSP_QLEN 16
+#define MAX_ENGINES (I915_EXEC_RING_MASK + 1)
 
 #define MI_SEMAPHORE_WAIT		(0x1c << 23)
 #define   MI_SEMAPHORE_POLL             (1 << 15)
@@ -179,7 +173,7 @@ static void store_dword_fenced(int fd, uint32_t ctx, unsigned ring,
 
 static uint32_t create_highest_priority(int fd)
 {
-	uint32_t ctx = gem_context_create(fd);
+	uint32_t ctx = gem_context_clone_with_engines(fd, 0);
 
 	/*
 	 * If there is no priority support, all contexts will have equal
@@ -248,6 +242,7 @@ enum implicit_dir {
 
 static void implicit_rw(int i915, unsigned ring, enum implicit_dir dir)
 {
+	const struct intel_execution_engine2 *e;
 	IGT_CORK_FENCE(cork);
 	unsigned int count;
 	uint32_t scratch;
@@ -255,8 +250,8 @@ static void implicit_rw(int i915, unsigned ring, enum implicit_dir dir)
 	int fence;
 
 	count = 0;
-	for_each_physical_engine(other, i915) {
-		if (eb_ring(other) == ring)
+	__for_each_physical_engine(i915, e) {
+		if (e->flags == ring)
 			continue;
 
 		count++;
@@ -268,15 +263,15 @@ static void implicit_rw(int i915, unsigned ring, enum implicit_dir dir)
 
 	if (dir & WRITE_READ)
 		store_dword_fenced(i915, 0,
-				   ring, scratch, 0, -ring,
+				   ring, scratch, 0, ~ring,
 				   fence, I915_GEM_DOMAIN_RENDER);
 
-	for_each_physical_engine(other, i915) {
-		if (eb_ring(other) == ring)
+	__for_each_physical_engine(i915, e) {
+		if (e->flags == ring)
 			continue;
 
 		store_dword_fenced(i915, 0,
-				   eb_ring(other), scratch, 0, eb_ring(other),
+				   e->flags, scratch, 0, e->flags,
 				   fence, 0);
 	}
 
@@ -292,21 +287,20 @@ static void implicit_rw(int i915, unsigned ring, enum implicit_dir dir)
 	gem_close(i915, scratch);
 
 	if (dir & WRITE_READ)
-		igt_assert_neq_u32(result, -ring);
+		igt_assert_neq_u32(result, ~ring);
 	if (dir & READ_WRITE)
 		igt_assert_eq_u32(result, ring);
 }
 
 static void independent(int fd, unsigned int engine)
 {
+	const struct intel_execution_engine2 *e;
 	IGT_CORK_FENCE(cork);
 	igt_spin_t *spin = NULL;
 	uint32_t scratch, batch;
 	uint32_t *ptr;
 	int fence;
 
-	igt_require(engine != 0);
-
 	scratch = gem_create(fd, 4096);
 	ptr = gem_mmap__device_coherent(fd, scratch, 0, 4096, PROT_READ);
 	igt_assert_eq(ptr[0], 0);
@@ -314,25 +308,25 @@ static void independent(int fd, unsigned int engine)
 	fence = igt_cork_plug(&cork, fd);
 
 	/* Check that we can submit to engine while all others are blocked */
-	for_each_physical_engine(e, fd) {
-		if (eb_ring(e) == engine)
+	__for_each_physical_engine(fd, e) {
+		if (e->flags == engine)
 			continue;
 
-		if (!gem_can_store_dword(fd, eb_ring(e)))
+		if (!gem_class_can_store_dword(fd, e->class))
 			continue;
 
 		if (spin == NULL) {
-			spin = __igt_spin_new(fd, .engine = eb_ring(e));
+			spin = __igt_spin_new(fd, .engine = e->flags);
 		} else {
 			struct drm_i915_gem_execbuffer2 eb = {
 				.buffer_count = 1,
 				.buffers_ptr = to_user_pointer(&spin->obj[IGT_SPIN_BATCH]),
-				.flags = eb_ring(e),
+				.flags = e->flags,
 			};
 			gem_execbuf(fd, &eb);
 		}
 
-		store_dword_fenced(fd, 0, eb_ring(e), scratch, 0, eb_ring(e), fence, 0);
+		store_dword_fenced(fd, 0, e->flags, scratch, 0, e->flags, fence, 0);
 	}
 	igt_require(spin);
 
@@ -365,6 +359,7 @@ static void independent(int fd, unsigned int engine)
 static void smoketest(int fd, unsigned ring, unsigned timeout)
 {
 	const int ncpus = sysconf(_SC_NPROCESSORS_ONLN);
+	const struct intel_execution_engine2 *e;
 	unsigned engines[MAX_ENGINES];
 	unsigned nengine;
 	unsigned engine;
@@ -373,12 +368,11 @@ static void smoketest(int fd, unsigned ring, unsigned timeout)
 
 	nengine = 0;
 	if (ring == ALL_ENGINES) {
-		for_each_physical_engine(e, fd)
-			if (gem_can_store_dword(fd, eb_ring(e)))
-				engines[nengine++] = eb_ring(e);
+		__for_each_physical_engine(fd, e)
+			if (gem_class_can_store_dword(fd, e->class))
+				engines[nengine++] = e->flags;
 	} else {
-		if (gem_can_store_dword(fd, ring))
-			engines[nengine++] = ring;
+		engines[nengine++] = ring;
 	}
 	igt_require(nengine);
 
@@ -389,7 +383,7 @@ static void smoketest(int fd, unsigned ring, unsigned timeout)
 
 		hars_petruska_f54_1_random_perturb(child);
 
-		ctx = gem_context_create(fd);
+		ctx = gem_context_clone_with_engines(fd, 0);
 		igt_until_timeout(timeout) {
 			int prio;
 
@@ -442,6 +436,7 @@ static uint32_t batch_create(int i915)
 
 static void semaphore_userlock(int i915)
 {
+	const struct intel_execution_engine2 *e;
 	struct drm_i915_gem_exec_object2 obj = {
 		.handle = batch_create(i915),
 	};
@@ -458,16 +453,16 @@ static void semaphore_userlock(int i915)
 	 */
 
 	scratch = gem_create(i915, 4096);
-	for_each_physical_engine(e, i915) {
+	__for_each_physical_engine(i915, e) {
 		if (!spin) {
 			spin = igt_spin_new(i915,
 					    .dependency = scratch,
-					    .engine = eb_ring(e));
+					    .engine = e->flags);
 		} else {
 			uint64_t saved = spin->execbuf.flags;
 
-			spin->execbuf.flags &= ~ENGINE_MASK;
-			spin->execbuf.flags |= eb_ring(e);
+			spin->execbuf.flags &= ~I915_EXEC_RING_MASK;
+			spin->execbuf.flags |= e->flags;
 
 			gem_execbuf(i915, &spin->execbuf);
 
@@ -482,16 +477,16 @@ static void semaphore_userlock(int i915)
 	 * on a HW semaphore) but it should not prevent any real work from
 	 * taking precedence.
 	 */
-	scratch = gem_context_create(i915);
-	for_each_physical_engine(e, i915) {
+	scratch = gem_context_clone_with_engines(i915, 0);
+	__for_each_physical_engine(i915, e) {
 		struct drm_i915_gem_execbuffer2 execbuf = {
 			.buffers_ptr = to_user_pointer(&obj),
 			.buffer_count = 1,
-			.flags = eb_ring(e),
+			.flags = e->flags,
 			.rsvd1 = scratch,
 		};
 
-		if (eb_ring(e) == (spin->execbuf.flags & ENGINE_MASK))
+		if (e->flags == (spin->execbuf.flags & I915_EXEC_RING_MASK))
 			continue;
 
 		gem_execbuf(i915, &execbuf);
@@ -505,6 +500,7 @@ static void semaphore_userlock(int i915)
 
 static void semaphore_codependency(int i915)
 {
+	const struct intel_execution_engine2 *e;
 	struct {
 		igt_spin_t *xcs, *rcs;
 	} task[2];
@@ -521,21 +517,21 @@ static void semaphore_codependency(int i915)
 	 */
 
 	i = 0;
-	for_each_physical_engine(e, i915) {
+	__for_each_physical_engine(i915, e) {
 		uint32_t ctx;
 
-		if (eb_ring(e) == I915_EXEC_RENDER)
+		if (!gem_class_can_store_dword(i915, e->class))
 			continue;
 
-		if (!gem_can_store_dword(i915, eb_ring(e)))
+		if (!e->flags)
 			continue;
 
-		ctx = gem_context_create(i915);
+		ctx = gem_context_clone_with_engines(i915, 0);
 
 		task[i].xcs =
 			__igt_spin_new(i915,
 				       .ctx = ctx,
-				       .engine = eb_ring(e),
+				       .engine = e->flags,
 				       .flags = IGT_SPIN_POLL_RUN);
 		igt_spin_busywait_until_started(task[i].xcs);
 
@@ -543,7 +539,7 @@ static void semaphore_codependency(int i915)
 		task[i].rcs =
 			__igt_spin_new(i915,
 				       .ctx = ctx,
-				       .engine = I915_EXEC_RENDER,
+				       .engine = 0,
 				       .dependency = task[i].xcs->handle);
 
 		gem_context_destroy(i915, ctx);
@@ -571,6 +567,7 @@ static unsigned int offset_in_page(void *addr)
 
 static void semaphore_resolve(int i915)
 {
+	const struct intel_execution_engine2 *e;
 	const uint32_t SEMAPHORE_ADDR = 64 << 10;
 	uint32_t semaphore, outer, inner, *sema;
 
@@ -586,13 +583,13 @@ static void semaphore_resolve(int i915)
 	igt_require(gem_scheduler_has_preemption(i915));
 	igt_require(intel_get_drm_devid(i915) >= 8); /* for MI_SEMAPHORE_WAIT */
 
-	outer = gem_context_create(i915);
-	inner = gem_context_create(i915);
+	outer = gem_context_clone_with_engines(i915, 0);
+	inner = gem_context_clone_with_engines(i915, 0);
 
 	semaphore = gem_create(i915, 4096);
 	sema = gem_mmap__wc(i915, semaphore, 0, 4096, PROT_WRITE);
 
-	for_each_physical_engine(e, i915) {
+	__for_each_physical_engine(i915, e) {
 		struct drm_i915_gem_exec_object2 obj[3];
 		struct drm_i915_gem_execbuffer2 eb;
 		uint32_t handle, cancel;
@@ -600,10 +597,10 @@ static void semaphore_resolve(int i915)
 		igt_spin_t *spin;
 		int64_t poke = 1;
 
-		if (!gem_can_store_dword(i915, eb_ring(e)))
+		if (!gem_class_can_store_dword(i915, e->class))
 			continue;
 
-		spin = __igt_spin_new(i915, .engine = eb_ring(e));
+		spin = __igt_spin_new(i915, .engine = e->flags);
 		igt_spin_end(spin); /* we just want its address for later */
 		gem_sync(i915, spin->handle);
 		igt_spin_reset(spin);
@@ -700,26 +697,27 @@ static void semaphore_resolve(int i915)
 static void semaphore_noskip(int i915)
 {
 	const int gen = intel_gen(intel_get_drm_devid(i915));
+	const struct intel_execution_engine2 *outer, *inner;
 	uint32_t ctx;
 
 	igt_require(gen >= 6); /* MI_STORE_DWORD_IMM convenience */
 
-	ctx = gem_context_create(i915);
+	ctx = gem_context_clone_with_engines(i915, 0);
 
-	for_each_physical_engine(outer, i915) {
-	for_each_physical_engine(inner, i915) {
+	__for_each_physical_engine(i915, outer) {
+	__for_each_physical_engine(i915, inner) {
 		struct drm_i915_gem_exec_object2 obj[3];
 		struct drm_i915_gem_execbuffer2 eb;
 		uint32_t handle, *cs, *map;
 		igt_spin_t *chain, *spin;
 
-		if (eb_ring(inner) == eb_ring(outer) ||
-		    !gem_can_store_dword(i915, eb_ring(inner)))
+		if (inner->flags == outer->flags ||
+		    !gem_class_can_store_dword(i915, inner->class))
 			continue;
 
-		chain = __igt_spin_new(i915, .engine = eb_ring(outer));
+		chain = __igt_spin_new(i915, .engine = outer->flags);
 
-		spin = __igt_spin_new(i915, .engine = eb_ring(inner));
+		spin = __igt_spin_new(i915, .engine = inner->flags);
 		igt_spin_end(spin); /* we just want its address for later */
 		gem_sync(i915, spin->handle);
 		igt_spin_reset(spin);
@@ -753,7 +751,7 @@ static void semaphore_noskip(int i915)
 		eb.buffer_count = 3;
 		eb.buffers_ptr = to_user_pointer(obj);
 		eb.rsvd1 = ctx;
-		eb.flags = eb_ring(inner);
+		eb.flags = inner->flags;
 		gem_execbuf(i915, &eb);
 
 		/* port1: dependency chain from port0 */
@@ -764,7 +762,7 @@ static void semaphore_noskip(int i915)
 		memset(&eb, 0, sizeof(eb));
 		eb.buffer_count = 2;
 		eb.buffers_ptr = to_user_pointer(obj);
-		eb.flags = eb_ring(inner);
+		eb.flags = inner->flags;
 		gem_execbuf(i915, &eb);
 
 		igt_spin_set_timeout(chain, NSEC_PER_SEC / 100);
@@ -788,10 +786,10 @@ static void reorder(int fd, unsigned ring, unsigned flags)
 	uint32_t ctx[2];
 	int fence;
 
-	ctx[LO] = gem_context_create(fd);
+	ctx[LO] = gem_context_clone_with_engines(fd, 0);
 	gem_context_set_priority(fd, ctx[LO], MIN_PRIO);
 
-	ctx[HI] = gem_context_create(fd);
+	ctx[HI] = gem_context_clone_with_engines(fd, 0);
 	gem_context_set_priority(fd, ctx[HI], flags & EQUAL ? MIN_PRIO : 0);
 
 	scratch = gem_create(fd, 4096);
@@ -826,13 +824,13 @@ static void promotion(int fd, unsigned ring)
 	uint32_t ctx[3];
 	int fence;
 
-	ctx[LO] = gem_context_create(fd);
+	ctx[LO] = gem_context_clone_with_engines(fd, 0);
 	gem_context_set_priority(fd, ctx[LO], MIN_PRIO);
 
-	ctx[HI] = gem_context_create(fd);
+	ctx[HI] = gem_context_clone_with_engines(fd, 0);
 	gem_context_set_priority(fd, ctx[HI], 0);
 
-	ctx[NOISE] = gem_context_create(fd);
+	ctx[NOISE] = gem_context_clone_with_engines(fd, 0);
 	gem_context_set_priority(fd, ctx[NOISE], MIN_PRIO/2);
 
 	result = gem_create(fd, 4096);
@@ -881,10 +879,10 @@ static void preempt(int fd, unsigned ring, unsigned flags)
 	uint32_t ctx[2];
 	igt_hang_t hang;
 
-	ctx[LO] = gem_context_create(fd);
+	ctx[LO] = gem_context_clone_with_engines(fd, 0);
 	gem_context_set_priority(fd, ctx[LO], MIN_PRIO);
 
-	ctx[HI] = gem_context_create(fd);
+	ctx[HI] = gem_context_clone_with_engines(fd, 0);
 	gem_context_set_priority(fd, ctx[HI], MAX_PRIO);
 
 	if (flags & HANG_LP)
@@ -893,7 +891,7 @@ static void preempt(int fd, unsigned ring, unsigned flags)
 	for (int n = 0; n < ARRAY_SIZE(spin); n++) {
 		if (flags & NEW_CTX) {
 			gem_context_destroy(fd, ctx[LO]);
-			ctx[LO] = gem_context_create(fd);
+			ctx[LO] = gem_context_clone_with_engines(fd, 0);
 			gem_context_set_priority(fd, ctx[LO], MIN_PRIO);
 		}
 		spin[n] = __igt_spin_new(fd,
@@ -925,19 +923,21 @@ static void preempt(int fd, unsigned ring, unsigned flags)
 
 static igt_spin_t *__noise(int fd, uint32_t ctx, int prio, igt_spin_t *spin)
 {
+	const struct intel_execution_engine2 *e;
+
 	gem_context_set_priority(fd, ctx, prio);
 
-	for_each_physical_engine(e, fd) {
+	__for_each_physical_engine(fd, e) {
 		if (spin == NULL) {
 			spin = __igt_spin_new(fd,
 					      .ctx = ctx,
-					      .engine = eb_ring(e));
+					      .engine = e->flags);
 		} else {
 			struct drm_i915_gem_execbuffer2 eb = {
 				.buffer_count = 1,
 				.buffers_ptr = to_user_pointer(&spin->obj[IGT_SPIN_BATCH]),
 				.rsvd1 = ctx,
-				.flags = eb_ring(e),
+				.flags = e->flags,
 			};
 			gem_execbuf(fd, &eb);
 		}
@@ -951,6 +951,7 @@ static void __preempt_other(int fd,
 			    unsigned int target, unsigned int primary,
 			    unsigned flags)
 {
+	const struct intel_execution_engine2 *e;
 	uint32_t result = gem_create(fd, 4096);
 	uint32_t result_read[4096 / sizeof(uint32_t)];
 	unsigned int n, i;
@@ -962,8 +963,8 @@ static void __preempt_other(int fd,
 	n++;
 
 	if (flags & CHAIN) {
-		for_each_physical_engine(e, fd) {
-			store_dword(fd, ctx[LO], eb_ring(e),
+		__for_each_physical_engine(fd, e) {
+			store_dword(fd, ctx[LO], e->flags,
 				    result, (n + 1)*sizeof(uint32_t), n + 1,
 				    I915_GEM_DOMAIN_RENDER);
 			n++;
@@ -988,6 +989,7 @@ static void __preempt_other(int fd,
 
 static void preempt_other(int fd, unsigned ring, unsigned int flags)
 {
+	const struct intel_execution_engine2 *e;
 	igt_spin_t *spin = NULL;
 	uint32_t ctx[3];
 
@@ -1001,18 +1003,18 @@ static void preempt_other(int fd, unsigned ring, unsigned int flags)
 	 * can cross engines.
 	 */
 
-	ctx[LO] = gem_context_create(fd);
+	ctx[LO] = gem_context_clone_with_engines(fd, 0);
 	gem_context_set_priority(fd, ctx[LO], MIN_PRIO);
 
-	ctx[NOISE] = gem_context_create(fd);
+	ctx[NOISE] = gem_context_clone_with_engines(fd, 0);
 	spin = __noise(fd, ctx[NOISE], 0, NULL);
 
-	ctx[HI] = gem_context_create(fd);
+	ctx[HI] = gem_context_clone_with_engines(fd, 0);
 	gem_context_set_priority(fd, ctx[HI], MAX_PRIO);
 
-	for_each_physical_engine(e, fd) {
+	__for_each_physical_engine(fd, e) {
 		igt_debug("Primary engine: %s\n", e->name);
-		__preempt_other(fd, ctx, ring, eb_ring(e), flags);
+		__preempt_other(fd, ctx, ring, e->flags, flags);
 
 	}
 
@@ -1028,13 +1030,14 @@ static void __preempt_queue(int fd,
 			    unsigned target, unsigned primary,
 			    unsigned depth, unsigned flags)
 {
+	const struct intel_execution_engine2 *e;
 	uint32_t result = gem_create(fd, 4096);
 	uint32_t result_read[4096 / sizeof(uint32_t)];
 	igt_spin_t *above = NULL, *below = NULL;
 	uint32_t ctx[3] = {
-		gem_context_create(fd),
-		gem_context_create(fd),
-		gem_context_create(fd),
+		gem_context_clone_with_engines(fd, 0),
+		gem_context_clone_with_engines(fd, 0),
+		gem_context_clone_with_engines(fd, 0),
 	};
 	int prio = MAX_PRIO;
 	unsigned int n, i;
@@ -1042,7 +1045,7 @@ static void __preempt_queue(int fd,
 	for (n = 0; n < depth; n++) {
 		if (flags & CONTEXTS) {
 			gem_context_destroy(fd, ctx[NOISE]);
-			ctx[NOISE] = gem_context_create(fd);
+			ctx[NOISE] = gem_context_clone_with_engines(fd, 0);
 		}
 		above = __noise(fd, ctx[NOISE], prio--, above);
 	}
@@ -1052,7 +1055,7 @@ static void __preempt_queue(int fd,
 	for (; n < MAX_ELSP_QLEN; n++) {
 		if (flags & CONTEXTS) {
 			gem_context_destroy(fd, ctx[NOISE]);
-			ctx[NOISE] = gem_context_create(fd);
+			ctx[NOISE] = gem_context_clone_with_engines(fd, 0);
 		}
 		below = __noise(fd, ctx[NOISE], prio--, below);
 	}
@@ -1066,8 +1069,8 @@ static void __preempt_queue(int fd,
 	n++;
 
 	if (flags & CHAIN) {
-		for_each_physical_engine(e, fd) {
-			store_dword(fd, ctx[LO], eb_ring(e),
+		__for_each_physical_engine(fd, e) {
+			store_dword(fd, ctx[LO], e->flags,
 				    result, (n + 1)*sizeof(uint32_t), n + 1,
 				    I915_GEM_DOMAIN_RENDER);
 			n++;
@@ -1107,14 +1110,17 @@ static void __preempt_queue(int fd,
 
 static void preempt_queue(int fd, unsigned ring, unsigned int flags)
 {
-	for_each_physical_engine(e, fd) {
+	const struct intel_execution_engine2 *e;
+
+	__for_each_physical_engine(fd, e) {
 		for (unsigned depth = 0; depth <= MAX_ELSP_QLEN; depth++)
-			__preempt_queue(fd, ring, eb_ring(e), depth, flags);
+			__preempt_queue(fd, ring, e->flags, depth, flags);
 	}
 }
 
 static void preempt_self(int fd, unsigned ring)
 {
+	const struct intel_execution_engine2 *e;
 	uint32_t result = gem_create(fd, 4096);
 	uint32_t result_read[4096 / sizeof(uint32_t)];
 	igt_spin_t *spin[MAX_ELSP_QLEN];
@@ -1129,17 +1135,16 @@ static void preempt_self(int fd, unsigned ring)
 	 * preempt its own lower priority task on any engine.
 	 */
 
-	ctx[NOISE] = gem_context_create(fd);
-
-	ctx[HI] = gem_context_create(fd);
+	ctx[NOISE] = gem_context_clone_with_engines(fd, 0);
+	ctx[HI] = gem_context_clone_with_engines(fd, 0);
 
 	n = 0;
 	gem_context_set_priority(fd, ctx[HI], MIN_PRIO);
-	for_each_physical_engine(e, fd) {
+	__for_each_physical_engine(fd, e) {
 		spin[n] = __igt_spin_new(fd,
 					 .ctx = ctx[NOISE],
-					 .engine = eb_ring(e));
-		store_dword(fd, ctx[HI], eb_ring(e),
+					 .engine = e->flags);
+		store_dword(fd, ctx[HI], e->flags,
 			    result, (n + 1)*sizeof(uint32_t), n + 1,
 			    I915_GEM_DOMAIN_RENDER);
 		n++;
@@ -1174,11 +1179,11 @@ static void preemptive_hang(int fd, unsigned ring)
 	igt_hang_t hang;
 	uint32_t ctx[2];
 
-	ctx[HI] = gem_context_create(fd);
+	ctx[HI] = gem_context_clone_with_engines(fd, 0);
 	gem_context_set_priority(fd, ctx[HI], MAX_PRIO);
 
 	for (int n = 0; n < ARRAY_SIZE(spin); n++) {
-		ctx[LO] = gem_context_create(fd);
+		ctx[LO] = gem_context_clone_with_engines(fd, 0);
 		gem_context_set_priority(fd, ctx[LO], MIN_PRIO);
 
 		spin[n] = __igt_spin_new(fd,
@@ -1219,11 +1224,9 @@ static void deep(int fd, unsigned ring)
 	int dep_nreq;
 	int n;
 
-	igt_require(gem_can_store_dword(fd, ring));
-
 	ctx = malloc(sizeof(*ctx) * MAX_CONTEXTS);
 	for (n = 0; n < MAX_CONTEXTS; n++) {
-		ctx[n] = gem_context_create(fd);
+		ctx[n] = gem_context_clone_with_engines(fd, 0);
 	}
 
 	nreq = gem_measure_ring_inflight(fd, ring, 0) / (4 * XS) * MAX_CONTEXTS;
@@ -1383,7 +1386,7 @@ static void wide(int fd, unsigned ring)
 
 	ctx = malloc(sizeof(*ctx)*MAX_CONTEXTS);
 	for (int n = 0; n < MAX_CONTEXTS; n++)
-		ctx[n] = gem_context_create(fd);
+		ctx[n] = gem_context_clone_with_engines(fd, 0);
 
 	result = gem_create(fd, 4*MAX_CONTEXTS);
 
@@ -1462,7 +1465,7 @@ static void reorder_wide(int fd, unsigned ring)
 		unsigned int sz = ALIGN(ring_size * 64, 4096);
 		uint32_t *batch;
 
-		execbuf.rsvd1 = gem_context_create(fd);
+		execbuf.rsvd1 = gem_context_clone_with_engines(fd, 0);
 		gem_context_set_priority(fd, execbuf.rsvd1, n);
 
 		obj[1].handle = gem_create(fd, sz);
@@ -1577,13 +1580,13 @@ static void test_pi_ringfull(int fd, unsigned int engine, unsigned int flags)
 	execbuf.flags = engine;
 
 	/* Warm up both (hi/lo) contexts */
-	execbuf.rsvd1 = gem_context_create(fd);
+	execbuf.rsvd1 = gem_context_clone_with_engines(fd, 0);
 	gem_context_set_priority(fd, execbuf.rsvd1, MAX_PRIO);
 	gem_execbuf(fd, &execbuf);
 	gem_sync(fd, obj[1].handle);
 	vip = execbuf.rsvd1;
 
-	execbuf.rsvd1 = gem_context_create(fd);
+	execbuf.rsvd1 = gem_context_clone_with_engines(fd, 0);
 	gem_context_set_priority(fd, execbuf.rsvd1, MIN_PRIO);
 	gem_execbuf(fd, &execbuf);
 	gem_sync(fd, obj[1].handle);
@@ -1726,7 +1729,7 @@ static void *ufd_thread(void *arg)
 		.buffers_ptr = to_user_pointer(obj),
 		.buffer_count = ARRAY_SIZE(obj),
 		.flags = t->engine,
-		.rsvd1 = gem_context_create(t->i915),
+		.rsvd1 = gem_context_clone_with_engines(t->i915, 0),
 	};
 	gem_context_set_priority(t->i915, eb.rsvd1, MIN_PRIO);
 
@@ -1808,7 +1811,7 @@ static void test_pi_userfault(int i915, unsigned int engine)
 			.buffers_ptr = to_user_pointer(&obj),
 			.buffer_count = 1,
 			.flags = engine | I915_EXEC_FENCE_OUT,
-			.rsvd1 = gem_context_create(i915),
+			.rsvd1 = gem_context_clone_with_engines(i915, 0),
 		};
 		gem_context_set_priority(i915, eb.rsvd1, MAX_PRIO);
 		gem_write(i915, obj.handle, 0, &bbe, sizeof(bbe));
@@ -1843,11 +1846,14 @@ static void test_pi_userfault(int i915, unsigned int engine)
 
 static void *iova_thread(struct ufd_thread *t, int prio)
 {
-	uint32_t ctx =
-		gem_context_clone(t->i915, 0,
-				  t->flags & SHARED ? I915_CONTEXT_CLONE_VM : 0,
-				  0);
+	unsigned int clone;
+	uint32_t ctx;
+
+	clone = I915_CONTEXT_CLONE_ENGINES;
+	if (t->flags & SHARED)
+		clone |= I915_CONTEXT_CLONE_VM;
 
+	ctx = gem_context_clone(t->i915, 0, clone, 0);
 	gem_context_set_priority(t->i915, ctx, prio);
 
 	store_dword_plug(t->i915, ctx, t->engine,
@@ -1997,12 +2003,13 @@ static void test_pi_iova(int i915, unsigned int engine, unsigned int flags)
 
 static void measure_semaphore_power(int i915)
 {
+	const struct intel_execution_engine2 *signaler, *e;
 	struct rapl gpu, pkg;
 
 	igt_require(gpu_power_open(&gpu) == 0);
 	pkg_power_open(&pkg);
 
-	for_each_physical_engine(signaler, i915) {
+	__for_each_physical_engine(i915, signaler) {
 		struct {
 			struct power_sample pkg, gpu;
 		} s_spin[2], s_sema[2];
@@ -2011,7 +2018,7 @@ static void measure_semaphore_power(int i915)
 		igt_spin_t *spin;
 
 		spin = __igt_spin_new(i915,
-				      .engine = eb_ring(signaler),
+				      .engine = signaler->flags,
 				      .flags = IGT_SPIN_POLL_RUN);
 		gem_wait(i915, spin->handle, &jiffie); /* waitboost */
 		igt_spin_busywait_until_started(spin);
@@ -2023,14 +2030,14 @@ static void measure_semaphore_power(int i915)
 		rapl_read(&pkg, &s_spin[1].pkg);
 
 		/* Add a waiter to each engine */
-		for_each_physical_engine(e, i915) {
+		__for_each_physical_engine(i915, e) {
 			igt_spin_t *sema;
 
-			if (eb_ring(e) == eb_ring(signaler))
+			if (e->flags == signaler->flags)
 				continue;
 
 			sema = __igt_spin_new(i915,
-					      .engine = eb_ring(e),
+					      .engine = e->flags,
 					      .dependency = spin->handle);
 
 			igt_spin_free(i915, sema);
@@ -2067,9 +2074,17 @@ static void measure_semaphore_power(int i915)
 	rapl_close(&pkg);
 }
 
+#define test_each_engine(T, i915, e) \
+	igt_subtest_with_dynamic(T) __for_each_physical_engine(i915, e) \
+		igt_dynamic_f("%s", e->name)
+
+#define test_each_engine_store(T, i915, e) \
+	igt_subtest_with_dynamic(T) __for_each_physical_engine(i915, e) \
+		for_each_if(gem_class_can_store_dword(fd, e->class)) \
+		igt_dynamic_f("%s", e->name)
+
 igt_main
 {
-	const struct intel_execution_engine *e;
 	int fd = -1;
 
 	igt_fixture {
@@ -2087,44 +2102,27 @@ igt_main
 	}
 
 	igt_subtest_group {
-		for (e = intel_execution_engines; e->name; e++) {
-			/* default exec-id is purely symbolic */
-			if (e->exec_id == 0)
-				continue;
+		const struct intel_execution_engine2 *e;
 
-			igt_subtest_f("fifo-%s", e->name) {
-				igt_require(gem_ring_has_physical_engine(fd, eb_ring(e)));
-				igt_require(gem_can_store_dword(fd, eb_ring(e)));
-				fifo(fd, eb_ring(e));
-			}
+		test_each_engine_store("fifo", fd, e)
+			fifo(fd, e->flags);
 
-			igt_subtest_f("implicit-read-write-%s", e->name) {
-				igt_require(gem_ring_has_physical_engine(fd, eb_ring(e)));
-				igt_require(gem_can_store_dword(fd, eb_ring(e)));
-				implicit_rw(fd, eb_ring(e), READ_WRITE);
-			}
+		test_each_engine_store("implicit-read-write", fd, e)
+			implicit_rw(fd, e->flags, READ_WRITE);
 
-			igt_subtest_f("implicit-write-read-%s", e->name) {
-				igt_require(gem_ring_has_physical_engine(fd, eb_ring(e)));
-				igt_require(gem_can_store_dword(fd, eb_ring(e)));
-				implicit_rw(fd, eb_ring(e), WRITE_READ);
-			}
+		test_each_engine_store("implicit-write-read", fd, e)
+			implicit_rw(fd, e->flags, WRITE_READ);
 
-			igt_subtest_f("implicit-both-%s", e->name) {
-				igt_require(gem_ring_has_physical_engine(fd, eb_ring(e)));
-				igt_require(gem_can_store_dword(fd, eb_ring(e)));
-				implicit_rw(fd, eb_ring(e), READ_WRITE | WRITE_READ);
-			}
+		test_each_engine_store("implicit-boths", fd, e)
+			implicit_rw(fd, e->flags, READ_WRITE | WRITE_READ);
 
-			igt_subtest_f("independent-%s", e->name) {
-				igt_require(gem_ring_has_physical_engine(fd, eb_ring(e)));
-				igt_require(gem_can_store_dword(fd, eb_ring(e)));
-				independent(fd, eb_ring(e));
-			}
-		}
+		test_each_engine_store("independent", fd, e)
+			independent(fd, e->flags);
 	}
 
 	igt_subtest_group {
+		const struct intel_execution_engine2 *e;
+
 		igt_fixture {
 			igt_require(gem_scheduler_enabled(fd));
 			igt_require(gem_scheduler_has_ctx_priority(fd));
@@ -2142,125 +2140,103 @@ igt_main
 		igt_subtest("smoketest-all")
 			smoketest(fd, ALL_ENGINES, 30);
 
-		for (e = intel_execution_engines; e->name; e++) {
-			if (e->exec_id == 0)
-				continue;
-
-			igt_subtest_group {
-				igt_fixture {
-					igt_require(gem_ring_has_physical_engine(fd, eb_ring(e)));
-					igt_require(gem_can_store_dword(fd, eb_ring(e)));
-				}
-
-				igt_subtest_f("in-order-%s", e->name)
-					reorder(fd, eb_ring(e), EQUAL);
+		test_each_engine_store("in-order", fd, e)
+			reorder(fd, e->flags, EQUAL);
 
-				igt_subtest_f("out-order-%s", e->name)
-					reorder(fd, eb_ring(e), 0);
+		test_each_engine_store("out-order", fd, e)
+			reorder(fd, e->flags, 0);
 
-				igt_subtest_f("promotion-%s", e->name)
-					promotion(fd, eb_ring(e));
+		test_each_engine_store("promotion", fd, e)
+			promotion(fd, e->flags);
 
-				igt_subtest_group {
-					igt_fixture {
-						igt_require(gem_scheduler_has_preemption(fd));
-					}
+		igt_subtest_group {
+			igt_fixture {
+				igt_require(gem_scheduler_has_preemption(fd));
+			}
 
-					igt_subtest_f("preempt-%s", e->name)
-						preempt(fd, eb_ring(e), 0);
+			test_each_engine_store("preempt", fd, e)
+				preempt(fd, e->flags, 0);
 
-					igt_subtest_f("preempt-contexts-%s", e->name)
-						preempt(fd, eb_ring(e), NEW_CTX);
+			test_each_engine_store("preempt-contexts", fd, e)
+				preempt(fd, e->flags, NEW_CTX);
 
-					igt_subtest_f("preempt-self-%s", e->name)
-						preempt_self(fd, eb_ring(e));
+			test_each_engine_store("preempt-self", fd, e)
+				preempt_self(fd, e->flags);
 
-					igt_subtest_f("preempt-other-%s", e->name)
-						preempt_other(fd, eb_ring(e), 0);
+			test_each_engine_store("preempt-other", fd, e)
+				preempt_other(fd, e->flags, 0);
 
-					igt_subtest_f("preempt-other-chain-%s", e->name)
-						preempt_other(fd, eb_ring(e), CHAIN);
+			test_each_engine_store("preempt-other-chain", fd, e)
+				preempt_other(fd, e->flags, CHAIN);
 
-					igt_subtest_f("preempt-queue-%s", e->name)
-						preempt_queue(fd, eb_ring(e), 0);
+			test_each_engine_store("preempt-queue", fd, e)
+				preempt_queue(fd, e->flags, 0);
 
-					igt_subtest_f("preempt-queue-chain-%s", e->name)
-						preempt_queue(fd, eb_ring(e), CHAIN);
-					igt_subtest_f("preempt-queue-contexts-%s", e->name)
-						preempt_queue(fd, eb_ring(e), CONTEXTS);
+			test_each_engine_store("preempt-queue-chain", fd, e)
+				preempt_queue(fd, e->flags, CHAIN);
+			test_each_engine_store("preempt-queue-contexts", fd, e)
+				preempt_queue(fd, e->flags, CONTEXTS);
 
-					igt_subtest_f("preempt-queue-contexts-chain-%s", e->name)
-						preempt_queue(fd, eb_ring(e), CONTEXTS | CHAIN);
+			test_each_engine_store("preempt-queue-contexts-chain", fd, e)
+				preempt_queue(fd, e->flags, CONTEXTS | CHAIN);
 
-					igt_subtest_group {
-						igt_hang_t hang;
+			igt_subtest_group {
+				igt_hang_t hang;
 
-						igt_fixture {
-							igt_stop_hang_detector();
-							hang = igt_allow_hang(fd, 0, 0);
-						}
+				igt_fixture {
+					igt_stop_hang_detector();
+					hang = igt_allow_hang(fd, 0, 0);
+				}
 
-						igt_subtest_f("preempt-hang-%s", e->name) {
-							preempt(fd, eb_ring(e), NEW_CTX | HANG_LP);
-						}
+				test_each_engine_store("preempt-hang", fd, e)
+					preempt(fd, e->flags, NEW_CTX | HANG_LP);
 
-						igt_subtest_f("preemptive-hang-%s", e->name)
-							preemptive_hang(fd, eb_ring(e));
+				test_each_engine_store("preemptive-hang", fd, e)
+					preemptive_hang(fd, e->flags);
 
-						igt_fixture {
-							igt_disallow_hang(fd, hang);
-							igt_fork_hang_detector(fd);
-						}
-					}
+				igt_fixture {
+					igt_disallow_hang(fd, hang);
+					igt_fork_hang_detector(fd);
 				}
+			}
+		}
 
-				igt_subtest_f("deep-%s", e->name)
-					deep(fd, eb_ring(e));
+		test_each_engine_store("deep", fd, e)
+			deep(fd, e->flags);
 
-				igt_subtest_f("wide-%s", e->name)
-					wide(fd, eb_ring(e));
+		test_each_engine_store("wide", fd, e)
+			wide(fd, e->flags);
 
-				igt_subtest_f("reorder-wide-%s", e->name)
-					reorder_wide(fd, eb_ring(e));
+		test_each_engine_store("reorder-wide", fd, e)
+			reorder_wide(fd, e->flags);
 
-				igt_subtest_f("smoketest-%s", e->name)
-					smoketest(fd, eb_ring(e), 5);
-			}
-		}
+		test_each_engine_store("smoketest", fd, e)
+			smoketest(fd, e->flags, 5);
 	}
 
 	igt_subtest_group {
+		const struct intel_execution_engine2 *e;
+
 		igt_fixture {
 			igt_require(gem_scheduler_enabled(fd));
 			igt_require(gem_scheduler_has_ctx_priority(fd));
+			igt_require(gem_scheduler_has_preemption(fd));
 		}
 
-		for (e = intel_execution_engines; e->name; e++) {
-			if (e->exec_id == 0)
-				continue;
+		test_each_engine("pi-ringfull", fd, e)
+			test_pi_ringfull(fd, e->flags, 0);
 
-			igt_subtest_group {
-				igt_fixture {
-					igt_require(gem_ring_has_physical_engine(fd, eb_ring(e)));
-					igt_require(gem_scheduler_has_preemption(fd));
-				}
-
-				igt_subtest_f("pi-ringfull-%s", e->name)
-					test_pi_ringfull(fd, eb_ring(e), 0);
-
-				igt_subtest_f("pi-common-%s", e->name)
-					test_pi_ringfull(fd, eb_ring(e), SHARED);
+		test_each_engine("pi-common", fd, e)
+			test_pi_ringfull(fd, e->flags, SHARED);
 
-				igt_subtest_f("pi-userfault-%s", e->name)
-					test_pi_userfault(fd, eb_ring(e));
+		test_each_engine("pi-userfault", fd, e)
+			test_pi_userfault(fd, e->flags);
 
-				igt_subtest_f("pi-distinct-iova-%s", e->name)
-					test_pi_iova(fd, eb_ring(e), 0);
+		test_each_engine("pi-distinct-iova", fd, e)
+			test_pi_iova(fd, e->flags, 0);
 
-				igt_subtest_f("pi-shared-iova-%s", e->name)
-					test_pi_iova(fd, eb_ring(e), SHARED);
-			}
-		}
+		test_each_engine("pi-shared-iova", fd, e)
+			test_pi_iova(fd, e->flags, SHARED);
 	}
 
 	igt_subtest_group {
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
