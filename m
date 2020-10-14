Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1F028DF14
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 12:41:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A4606EA49;
	Wed, 14 Oct 2020 10:40:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1EAE6EA3A;
 Wed, 14 Oct 2020 10:40:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22711497-1500050 
 for multiple; Wed, 14 Oct 2020 11:40:42 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Wed, 14 Oct 2020 11:40:37 +0100
Message-Id: <20201014104038.2554985-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201014104038.2554985-1-chris@chris-wilson.co.uk>
References: <20201014104038.2554985-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 09/10] tests/i915: Treat gen as unsigned
 for forward compatibility
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We want to recognise future devices (gen = -1u) and treat them as an
extension of the latest known device, which is typically true.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_bad_reloc.c            |  2 +-
 tests/i915/gem_ctx_create.c           |  2 +-
 tests/i915/gem_ctx_engines.c          |  2 +-
 tests/i915/gem_ctx_isolation.c        |  2 +-
 tests/i915/gem_ctx_shared.c           |  4 ++--
 tests/i915/gem_ctx_thrash.c           |  2 +-
 tests/i915/gem_exec_async.c           |  2 +-
 tests/i915/gem_exec_await.c           |  2 +-
 tests/i915/gem_exec_capture.c         |  4 ++--
 tests/i915/gem_exec_fence.c           | 10 +++++-----
 tests/i915/gem_exec_flush.c           |  4 ++--
 tests/i915/gem_exec_gttfill.c         |  2 +-
 tests/i915/gem_exec_latency.c         |  4 ++--
 tests/i915/gem_exec_nop.c             |  4 ++--
 tests/i915/gem_exec_parallel.c        |  2 +-
 tests/i915/gem_exec_params.c          |  2 +-
 tests/i915/gem_exec_reloc.c           |  8 ++++----
 tests/i915/gem_exec_schedule.c        |  8 ++++----
 tests/i915/gem_exec_store.c           |  6 +++---
 tests/i915/gem_exec_suspend.c         |  2 +-
 tests/i915/gem_exec_whisper.c         |  2 +-
 tests/i915/gem_render_copy.c          |  4 ++--
 tests/i915/gem_ringfill.c             |  2 +-
 tests/i915/gem_softpin.c              |  4 ++--
 tests/i915/gem_sync.c                 |  8 ++++----
 tests/i915/gem_tiled_fence_blits.c    |  2 +-
 tests/i915/gem_userptr_blits.c        |  4 ++--
 tests/i915/gem_vm_create.c            |  2 +-
 tests/i915/i915_module_load.c         |  4 ++--
 tests/i915/i915_pm_rc6_residency.c    |  4 ++--
 tests/i915/sysfs_timeslice_duration.c |  2 +-
 31 files changed, 56 insertions(+), 56 deletions(-)

diff --git a/tests/i915/gem_bad_reloc.c b/tests/i915/gem_bad_reloc.c
index 7eb7fa538..6acc1724f 100644
--- a/tests/i915/gem_bad_reloc.c
+++ b/tests/i915/gem_bad_reloc.c
@@ -113,7 +113,7 @@ static void negative_reloc(int fd, unsigned flags)
 
 static void negative_reloc_blt(int fd)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct drm_i915_gem_execbuffer2 execbuf;
 	struct drm_i915_gem_exec_object2 obj[1024][2];
 	struct drm_i915_gem_relocation_entry reloc;
diff --git a/tests/i915/gem_ctx_create.c b/tests/i915/gem_ctx_create.c
index 39305f026..c7295f705 100644
--- a/tests/i915/gem_ctx_create.c
+++ b/tests/i915/gem_ctx_create.c
@@ -419,7 +419,7 @@ static void basic_ext_param(int i915)
 static void check_single_timeline(int i915, uint32_t ctx, int num_engines)
 {
 #define RCS_TIMESTAMP (0x2000 + 0x358)
-	const int gen = intel_gen(intel_get_drm_devid(i915));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(i915));
 	const int has_64bit_reloc = gen >= 8;
 	struct drm_i915_gem_exec_object2 results = { .handle = gem_create(i915, 4096) };
 	const uint32_t bbe = MI_BATCH_BUFFER_END;
diff --git a/tests/i915/gem_ctx_engines.c b/tests/i915/gem_ctx_engines.c
index e6def511b..7d4abdb5c 100644
--- a/tests/i915/gem_ctx_engines.c
+++ b/tests/i915/gem_ctx_engines.c
@@ -482,7 +482,7 @@ static uint32_t read_result(int timeline, uint32_t *map, int idx)
 static void independent(int i915)
 {
 #define RCS_TIMESTAMP (0x2000 + 0x358)
-	const int gen = intel_gen(intel_get_drm_devid(i915));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(i915));
 	const int has_64bit_reloc = gen >= 8;
 	I915_DEFINE_CONTEXT_PARAM_ENGINES(engines , I915_EXEC_RING_MASK + 1);
 	struct drm_i915_gem_context_param param = {
diff --git a/tests/i915/gem_ctx_isolation.c b/tests/i915/gem_ctx_isolation.c
index 9fdf78bb8..58a35b487 100644
--- a/tests/i915/gem_ctx_isolation.c
+++ b/tests/i915/gem_ctx_isolation.c
@@ -501,7 +501,7 @@ static void dump_regs(int fd,
 		      const struct intel_execution_engine2 *e,
 		      unsigned int regs)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	const unsigned int gen_bit = 1 << gen;
 	const unsigned int engine_bit = ENGINE(e->class, e->instance);
 	const uint32_t mmio_base = gem_engine_mmio_base(fd, e->name);
diff --git a/tests/i915/gem_ctx_shared.c b/tests/i915/gem_ctx_shared.c
index 55678d96f..616462d79 100644
--- a/tests/i915/gem_ctx_shared.c
+++ b/tests/i915/gem_ctx_shared.c
@@ -186,7 +186,7 @@ static void exhaust_shared_gtt(int i915, unsigned int flags)
 
 static void exec_shared_gtt(int i915, unsigned int ring)
 {
-	const int gen = intel_gen(intel_get_drm_devid(i915));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(i915));
 	const uint32_t bbe = MI_BATCH_BUFFER_END;
 	struct drm_i915_gem_exec_object2 obj = {};
 	struct drm_i915_gem_execbuffer2 execbuf = {
@@ -436,7 +436,7 @@ static void store_dword(int i915, uint32_t ctx, unsigned ring,
 			uint32_t target, uint32_t offset, uint32_t value,
 			uint32_t cork, unsigned write_domain)
 {
-	const int gen = intel_gen(intel_get_drm_devid(i915));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(i915));
 	struct drm_i915_gem_exec_object2 obj[3];
 	struct drm_i915_gem_relocation_entry reloc;
 	struct drm_i915_gem_execbuffer2 execbuf;
diff --git a/tests/i915/gem_ctx_thrash.c b/tests/i915/gem_ctx_thrash.c
index dc7259c18..d32619d5d 100644
--- a/tests/i915/gem_ctx_thrash.c
+++ b/tests/i915/gem_ctx_thrash.c
@@ -46,7 +46,7 @@ static void xchg_int(void *array, unsigned i, unsigned j)
 
 static unsigned context_size(int fd)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 
 	switch (gen) {
 	case 0:
diff --git a/tests/i915/gem_exec_async.c b/tests/i915/gem_exec_async.c
index 035e78377..9f2c80f05 100644
--- a/tests/i915/gem_exec_async.c
+++ b/tests/i915/gem_exec_async.c
@@ -29,7 +29,7 @@ IGT_TEST_DESCRIPTION("Check that we can issue concurrent writes across the engin
 static void store_dword(int fd, unsigned ring,
 			uint32_t target, uint32_t offset, uint32_t value)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct drm_i915_gem_exec_object2 obj[2];
 	struct drm_i915_gem_relocation_entry reloc;
 	struct drm_i915_gem_execbuffer2 execbuf;
diff --git a/tests/i915/gem_exec_await.c b/tests/i915/gem_exec_await.c
index 6bc624e4a..70fda968e 100644
--- a/tests/i915/gem_exec_await.c
+++ b/tests/i915/gem_exec_await.c
@@ -59,7 +59,7 @@ static void wide(int fd, int ring_size, int timeout, unsigned int flags)
 {
 	const struct intel_execution_engine2 *engine;
 	const uint32_t bbe = MI_BATCH_BUFFER_END;
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct {
 		struct drm_i915_gem_exec_object2 *obj;
 		struct drm_i915_gem_exec_object2 exec[2];
diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
index 85645a267..cb0d3151b 100644
--- a/tests/i915/gem_exec_capture.c
+++ b/tests/i915/gem_exec_capture.c
@@ -61,7 +61,7 @@ static void check_error_state(int dir, struct drm_i915_gem_exec_object2 *obj)
 
 static void __capture1(int fd, int dir, unsigned ring, uint32_t target)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct drm_i915_gem_exec_object2 obj[4];
 #define SCRATCH 0
 #define CAPTURE 1
@@ -197,7 +197,7 @@ static struct offset {
 #define INCREMENTAL 0x1
 #define ASYNC 0x2
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct drm_i915_gem_exec_object2 *obj;
 	struct drm_i915_gem_relocation_entry reloc[2];
 	struct drm_i915_gem_execbuffer2 execbuf;
diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
index 0b8ab1400..56469ebab 100644
--- a/tests/i915/gem_exec_fence.c
+++ b/tests/i915/gem_exec_fence.c
@@ -61,7 +61,7 @@ static void store(int fd, const struct intel_execution_engine2 *e,
 {
 	const int SCRATCH = 0;
 	const int BATCH = 1;
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct drm_i915_gem_exec_object2 obj[2];
 	struct drm_i915_gem_relocation_entry reloc;
 	struct drm_i915_gem_execbuffer2 execbuf;
@@ -122,7 +122,7 @@ static bool fence_busy(int fence)
 static void test_fence_busy(int fd, const struct intel_execution_engine2 *e,
 			    unsigned flags)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct drm_i915_gem_exec_object2 obj;
 	struct drm_i915_gem_relocation_entry reloc;
 	struct drm_i915_gem_execbuffer2 execbuf;
@@ -218,7 +218,7 @@ static void test_fence_busy(int fd, const struct intel_execution_engine2 *e,
 static void test_fence_busy_all(int fd, unsigned flags)
 {
 	const struct intel_execution_engine2 *e;
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct drm_i915_gem_exec_object2 obj;
 	struct drm_i915_gem_relocation_entry reloc;
 	struct drm_i915_gem_execbuffer2 execbuf;
@@ -598,7 +598,7 @@ static int __execbuf(int fd, struct drm_i915_gem_execbuffer2 *execbuf)
 static void test_parallel(int i915, const struct intel_execution_engine2 *e)
 {
 	const struct intel_execution_engine2 *e2;
-	const int gen = intel_gen(intel_get_drm_devid(i915));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(i915));
 	uint32_t scratch = gem_create(i915, 4096);
 	uint32_t *out = gem_mmap__wc(i915, scratch, 0, 4096, PROT_READ);
 	uint32_t handle[I915_EXEC_RING_MASK];
@@ -704,7 +704,7 @@ static void test_parallel(int i915, const struct intel_execution_engine2 *e)
 
 static void test_concurrent(int i915, const struct intel_execution_engine2 *e)
 {
-	const int gen = intel_gen(intel_get_drm_devid(i915));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(i915));
 	struct drm_i915_gem_relocation_entry reloc = {
 		.target_handle =  gem_create(i915, 4096),
 		.write_domain = I915_GEM_DOMAIN_RENDER,
diff --git a/tests/i915/gem_exec_flush.c b/tests/i915/gem_exec_flush.c
index 7d9fcbfcb..403e498bd 100644
--- a/tests/i915/gem_exec_flush.c
+++ b/tests/i915/gem_exec_flush.c
@@ -78,7 +78,7 @@ static uint32_t movnt(uint32_t *map, int i)
 static void run(int fd, unsigned ring, int nchild, int timeout,
 		unsigned flags)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 
 	/* The crux of this testing is whether writes by the GPU are coherent
 	 * from the CPU.
@@ -355,7 +355,7 @@ enum batch_mode {
 static void batch(int fd, unsigned ring, int nchild, int timeout,
 		  enum batch_mode mode, unsigned flags)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 
 	if (mode == BATCH_GTT)
 		gem_require_mappable_ggtt(fd);
diff --git a/tests/i915/gem_exec_gttfill.c b/tests/i915/gem_exec_gttfill.c
index 7a6d7c0fb..8f2336a30 100644
--- a/tests/i915/gem_exec_gttfill.c
+++ b/tests/i915/gem_exec_gttfill.c
@@ -107,7 +107,7 @@ static void submit(int fd, int gen,
 
 static void fillgtt(int fd, unsigned ring, int timeout)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct drm_i915_gem_execbuffer2 execbuf;
 	struct drm_i915_gem_relocation_entry reloc[2];
 	volatile uint64_t *shared;
diff --git a/tests/i915/gem_exec_latency.c b/tests/i915/gem_exec_latency.c
index 198e54fd2..568d727f2 100644
--- a/tests/i915/gem_exec_latency.c
+++ b/tests/i915/gem_exec_latency.c
@@ -109,7 +109,7 @@ static void latency_on_ring(int fd,
 			    unsigned ring, const char *name,
 			    unsigned flags)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	const int has_64bit_reloc = gen >= 8;
 	struct drm_i915_gem_exec_object2 obj[3];
 	struct drm_i915_gem_relocation_entry reloc;
@@ -258,7 +258,7 @@ static void latency_from_ring(int fd,
 			      unsigned ring, const char *name,
 			      unsigned flags)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	const int has_64bit_reloc = gen >= 8;
 	struct drm_i915_gem_exec_object2 obj[3];
 	struct drm_i915_gem_relocation_entry reloc;
diff --git a/tests/i915/gem_exec_nop.c b/tests/i915/gem_exec_nop.c
index 21a937c83..62554ecb2 100644
--- a/tests/i915/gem_exec_nop.c
+++ b/tests/i915/gem_exec_nop.c
@@ -104,7 +104,7 @@ static double nop_on_ring(int fd, uint32_t handle,
 static void poll_ring(int fd, const struct intel_execution_engine2 *e,
 		      int timeout)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	const uint32_t MI_ARB_CHK = 0x5 << 23;
 	struct drm_i915_gem_execbuffer2 execbuf;
 	struct drm_i915_gem_exec_object2 obj;
@@ -214,7 +214,7 @@ static void poll_ring(int fd, const struct intel_execution_engine2 *e,
 
 static void poll_sequential(int fd, const char *name, int timeout)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	const struct intel_execution_engine2 *e;
 	const uint32_t MI_ARB_CHK = 0x5 << 23;
 	struct drm_i915_gem_execbuffer2 execbuf;
diff --git a/tests/i915/gem_exec_parallel.c b/tests/i915/gem_exec_parallel.c
index 96feb8250..bdb8e3e90 100644
--- a/tests/i915/gem_exec_parallel.c
+++ b/tests/i915/gem_exec_parallel.c
@@ -191,7 +191,7 @@ static void handle_close(int fd, unsigned int flags, uint32_t handle, void *data
 
 static void all(int fd, struct intel_execution_engine2 *engine, unsigned flags)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	pthread_mutex_t mutex;
 	pthread_cond_t cond;
 	struct thread *threads;
diff --git a/tests/i915/gem_exec_params.c b/tests/i915/gem_exec_params.c
index f8a940740..e0bbea94b 100644
--- a/tests/i915/gem_exec_params.c
+++ b/tests/i915/gem_exec_params.c
@@ -91,7 +91,7 @@ static bool has_resource_streamer(int fd)
 
 static void test_batch_first(int fd)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct drm_i915_gem_execbuffer2 execbuf;
 	struct drm_i915_gem_exec_object2 obj[3];
 	struct drm_i915_gem_relocation_entry reloc[2];
diff --git a/tests/i915/gem_exec_reloc.c b/tests/i915/gem_exec_reloc.c
index fc2bd0a56..299c2c79b 100644
--- a/tests/i915/gem_exec_reloc.c
+++ b/tests/i915/gem_exec_reloc.c
@@ -64,7 +64,7 @@ static void write_dword(int fd,
 			uint64_t target_offset,
 			uint32_t value)
 {
-	int gen = intel_gen(intel_get_drm_devid(fd));
+	unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct drm_i915_gem_execbuffer2 execbuf;
 	struct drm_i915_gem_exec_object2 obj[2];
 	struct drm_i915_gem_relocation_entry reloc;
@@ -266,7 +266,7 @@ static void check_bo(int fd, uint32_t handle)
 
 static void active(int fd, unsigned engine)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct drm_i915_gem_relocation_entry reloc;
 	struct drm_i915_gem_exec_object2 obj[2];
 	struct drm_i915_gem_execbuffer2 execbuf;
@@ -872,7 +872,7 @@ static void basic_softpin(int fd)
 static uint64_t concurrent_relocs(int i915, int idx, int count)
 {
 	struct drm_i915_gem_relocation_entry *reloc;
-	const int gen = intel_gen(intel_get_drm_devid(i915));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(i915));
 	unsigned long sz;
 	int offset;
 
@@ -972,7 +972,7 @@ static void concurrent_child(int i915,
 
 static uint32_t create_concurrent_batch(int i915, unsigned int count)
 {
-	const int gen = intel_gen(intel_get_drm_devid(i915));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(i915));
 	size_t sz = ALIGN(4 * (1 + 4 * count), 4096);
 	uint32_t handle = gem_create(i915, sz);
 	uint32_t *map, *cs;
diff --git a/tests/i915/gem_exec_schedule.c b/tests/i915/gem_exec_schedule.c
index 53462c425..74d77d3e6 100644
--- a/tests/i915/gem_exec_schedule.c
+++ b/tests/i915/gem_exec_schedule.c
@@ -94,7 +94,7 @@ static uint32_t __store_dword(int fd, uint32_t ctx, unsigned ring,
 			      uint32_t target, uint32_t offset, uint32_t value,
 			      uint32_t cork, int fence, unsigned write_domain)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct drm_i915_gem_exec_object2 obj[3];
 	struct drm_i915_gem_relocation_entry reloc;
 	struct drm_i915_gem_execbuffer2 execbuf;
@@ -1074,7 +1074,7 @@ static void semaphore_resolve(int i915, unsigned long flags)
 
 static void semaphore_noskip(int i915, unsigned long flags)
 {
-	const int gen = intel_gen(intel_get_drm_devid(i915));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(i915));
 	const struct intel_execution_engine2 *outer, *inner;
 	uint32_t ctx;
 
@@ -1723,7 +1723,7 @@ static void deep(int fd, unsigned ring)
 
 	/* Create a deep dependency chain, with a few branches */
 	for (n = 0; n < nreq && igt_seconds_elapsed(&tv) < 2; n++) {
-		const int gen = intel_gen(intel_get_drm_devid(fd));
+		const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 		struct drm_i915_gem_exec_object2 obj[3];
 		struct drm_i915_gem_relocation_entry reloc;
 		struct drm_i915_gem_execbuffer2 eb = {
@@ -1876,7 +1876,7 @@ static void wide(int fd, unsigned ring)
 static void reorder_wide(int fd, unsigned ring)
 {
 	const unsigned int ring_size = gem_submission_measure(fd, ring);
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	const int priorities[] = { MIN_PRIO, MAX_PRIO };
 	struct drm_i915_gem_relocation_entry reloc;
 	struct drm_i915_gem_exec_object2 obj[2];
diff --git a/tests/i915/gem_exec_store.c b/tests/i915/gem_exec_store.c
index 272ab9cd8..771ee1690 100644
--- a/tests/i915/gem_exec_store.c
+++ b/tests/i915/gem_exec_store.c
@@ -38,7 +38,7 @@
 
 static void store_dword(int fd, const struct intel_execution_engine2 *e)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct drm_i915_gem_exec_object2 obj[2];
 	struct drm_i915_gem_relocation_entry reloc;
 	struct drm_i915_gem_execbuffer2 execbuf;
@@ -96,7 +96,7 @@ static void store_dword(int fd, const struct intel_execution_engine2 *e)
 static void store_cachelines(int fd, const struct intel_execution_engine2 *e,
 			     unsigned int flags)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct drm_i915_gem_exec_object2 *obj;
 	struct drm_i915_gem_relocation_entry *reloc;
 	struct drm_i915_gem_execbuffer2 execbuf;
@@ -172,7 +172,7 @@ static void store_cachelines(int fd, const struct intel_execution_engine2 *e,
 
 static void store_all(int fd)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct drm_i915_gem_exec_object2 obj[2];
 	struct intel_execution_engine2 *engine;
 	struct drm_i915_gem_relocation_entry *reloc;
diff --git a/tests/i915/gem_exec_suspend.c b/tests/i915/gem_exec_suspend.c
index d768db911..6886bccd4 100644
--- a/tests/i915/gem_exec_suspend.c
+++ b/tests/i915/gem_exec_suspend.c
@@ -89,7 +89,7 @@ static bool has_semaphores(int fd)
 
 static void run_test(int fd, unsigned engine, unsigned flags)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	const uint32_t bbe = MI_BATCH_BUFFER_END;
 	struct drm_i915_gem_exec_object2 obj[2];
 	struct drm_i915_gem_relocation_entry reloc;
diff --git a/tests/i915/gem_exec_whisper.c b/tests/i915/gem_exec_whisper.c
index 1fded7618..9acf6c306 100644
--- a/tests/i915/gem_exec_whisper.c
+++ b/tests/i915/gem_exec_whisper.c
@@ -168,7 +168,7 @@ static void ctx_set_random_priority(int fd, uint32_t ctx)
 static void whisper(int fd, unsigned engine, unsigned flags)
 {
 	const uint32_t bbe = MI_BATCH_BUFFER_END;
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct drm_i915_gem_exec_object2 batches[QLEN];
 	struct drm_i915_gem_relocation_entry inter[QLEN];
 	struct drm_i915_gem_relocation_entry reloc;
diff --git a/tests/i915/gem_render_copy.c b/tests/i915/gem_render_copy.c
index ae6e18334..afc490f1a 100644
--- a/tests/i915/gem_render_copy.c
+++ b/tests/i915/gem_render_copy.c
@@ -101,7 +101,7 @@ copy_from_linear_buf(data_t *data, struct intel_buf *src, struct intel_buf *dst)
 static void *linear_copy_ccs(data_t *data, struct intel_buf *buf)
 {
 	void *ccs_data, *linear;
-	int gen = intel_gen(data->devid);
+	unsigned int gen = intel_gen(data->devid);
 	int ccs_size = intel_buf_ccs_width(gen, buf) *
 		intel_buf_ccs_height(gen, buf);
 	int bo_size = intel_buf_bo_size(buf);
@@ -295,7 +295,7 @@ scratch_buf_check_all(data_t *data,
 static void scratch_buf_ccs_check(data_t *data,
 				  struct intel_buf *buf)
 {
-	int gen = intel_gen(data->devid);
+	unsigned int gen = intel_gen(data->devid);
 	int ccs_size = intel_buf_ccs_width(gen, buf) *
 		intel_buf_ccs_height(gen, buf);
 	uint8_t *linear;
diff --git a/tests/i915/gem_ringfill.c b/tests/i915/gem_ringfill.c
index 3e24ccf18..c499cb0dd 100644
--- a/tests/i915/gem_ringfill.c
+++ b/tests/i915/gem_ringfill.c
@@ -99,7 +99,7 @@ static void setup_execbuf(int fd,
 			  struct drm_i915_gem_relocation_entry *reloc,
 			  unsigned int ring)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	const uint32_t bbe = MI_BATCH_BUFFER_END;
 	uint32_t *batch, *b;
 	int i;
diff --git a/tests/i915/gem_softpin.c b/tests/i915/gem_softpin.c
index 202abdd88..fcaf8ef30 100644
--- a/tests/i915/gem_softpin.c
+++ b/tests/i915/gem_softpin.c
@@ -265,7 +265,7 @@ static void test_reverse(int i915)
 
 static uint64_t busy_batch(int fd)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	unsigned const int gen = intel_gen(intel_get_drm_devid(fd));
 	const int has_64bit_reloc = gen >= 8;
 	struct drm_i915_gem_execbuffer2 execbuf;
 	struct drm_i915_gem_exec_object2 object[2];
@@ -452,7 +452,7 @@ static void xchg_offset(void *array, unsigned i, unsigned j)
 enum sleep { NOSLEEP, SUSPEND, HIBERNATE };
 static void test_noreloc(int fd, enum sleep sleep, unsigned flags)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	unsigned const int gen = intel_gen(intel_get_drm_devid(fd));
 	const uint32_t size = 4096;
 	const uint32_t bbe = MI_BATCH_BUFFER_END;
 	struct drm_i915_gem_execbuffer2 execbuf;
diff --git a/tests/i915/gem_sync.c b/tests/i915/gem_sync.c
index b317a3927..a82bda924 100644
--- a/tests/i915/gem_sync.c
+++ b/tests/i915/gem_sync.c
@@ -491,7 +491,7 @@ active_wakeup_ring(int fd, unsigned ring, int timeout, int wlen)
 static void
 store_ring(int fd, unsigned ring, int num_children, int timeout)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct intel_engine_data ied;
 
 	ied = list_store_engines(fd, ring);
@@ -587,7 +587,7 @@ store_ring(int fd, unsigned ring, int num_children, int timeout)
 static void
 switch_ring(int fd, unsigned ring, int num_children, int timeout)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct intel_engine_data ied;
 
 	gem_require_contexts(fd);
@@ -766,7 +766,7 @@ static void *waiter(void *arg)
 static void
 __store_many(int fd, unsigned ring, int timeout, unsigned long *cycles)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	const uint32_t bbe = MI_BATCH_BUFFER_END;
 	struct drm_i915_gem_exec_object2 object[2];
 	struct drm_i915_gem_execbuffer2 execbuf;
@@ -971,7 +971,7 @@ sync_all(int fd, int num_children, int timeout)
 static void
 store_all(int fd, int num_children, int timeout)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct intel_engine_data ied;
 
 	ied = list_store_engines(fd, ALL_ENGINES);
diff --git a/tests/i915/gem_tiled_fence_blits.c b/tests/i915/gem_tiled_fence_blits.c
index 99ec78f9b..0a633d91b 100644
--- a/tests/i915/gem_tiled_fence_blits.c
+++ b/tests/i915/gem_tiled_fence_blits.c
@@ -88,7 +88,7 @@ static void check_bo(int fd, uint32_t handle, uint32_t start_val)
 static uint32_t
 create_batch(int fd, struct drm_i915_gem_relocation_entry *reloc)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	const bool has_64b_reloc = gen >= 8;
 	uint32_t *batch;
 	uint32_t handle;
diff --git a/tests/i915/gem_userptr_blits.c b/tests/i915/gem_userptr_blits.c
index 6f2e89269..5f47a5f41 100644
--- a/tests/i915/gem_userptr_blits.c
+++ b/tests/i915/gem_userptr_blits.c
@@ -299,7 +299,7 @@ blit(int fd, uint32_t dst, uint32_t src, uint32_t *all_bo, int n_bo)
 static void store_dword(int fd, uint32_t target,
 			uint32_t offset, uint32_t value)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct drm_i915_gem_exec_object2 obj[2];
 	struct drm_i915_gem_relocation_entry reloc;
 	struct drm_i915_gem_execbuffer2 execbuf;
@@ -1155,7 +1155,7 @@ static void store_dword_rand(int i915, unsigned int engine,
 			     uint32_t target, uint64_t sz,
 			     int count)
 {
-	const int gen = intel_gen(intel_get_drm_devid(i915));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(i915));
 	struct drm_i915_gem_relocation_entry *reloc;
 	struct drm_i915_gem_exec_object2 obj[2];
 	struct drm_i915_gem_execbuffer2 exec;
diff --git a/tests/i915/gem_vm_create.c b/tests/i915/gem_vm_create.c
index e8af68f19..8843b1b3b 100644
--- a/tests/i915/gem_vm_create.c
+++ b/tests/i915/gem_vm_create.c
@@ -250,7 +250,7 @@ static void execbuf(int i915)
 static void
 write_to_address(int fd, uint32_t ctx, uint64_t addr, uint32_t value)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct drm_i915_gem_exec_object2 batch = {
 		.handle = gem_create(fd, 4096)
 	};
diff --git a/tests/i915/i915_module_load.c b/tests/i915/i915_module_load.c
index 77aaac5c6..aa998b992 100644
--- a/tests/i915/i915_module_load.c
+++ b/tests/i915/i915_module_load.c
@@ -40,7 +40,7 @@
 
 static void store_dword(int fd, unsigned ring)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct drm_i915_gem_exec_object2 obj[2];
 	struct drm_i915_gem_relocation_entry reloc;
 	struct drm_i915_gem_execbuffer2 execbuf;
@@ -102,7 +102,7 @@ static void store_dword(int fd, unsigned ring)
 
 static void store_all(int fd)
 {
-	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct drm_i915_gem_exec_object2 obj[2];
 	struct drm_i915_gem_relocation_entry reloc[32];
 	struct drm_i915_gem_execbuffer2 execbuf;
diff --git a/tests/i915/i915_pm_rc6_residency.c b/tests/i915/i915_pm_rc6_residency.c
index 6fdc607e3..d484121e7 100644
--- a/tests/i915/i915_pm_rc6_residency.c
+++ b/tests/i915/i915_pm_rc6_residency.c
@@ -361,7 +361,7 @@ static void rc6_idle(int i915)
 {
 	const int64_t duration_ns = SLEEP_DURATION * (int64_t)NSEC_PER_SEC;
 	const int tolerance = 20; /* Some RC6 is better than none! */
-	const int gen = intel_gen(intel_get_drm_devid(i915));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(i915));
 	struct {
 		const char *name;
 		unsigned int flags;
@@ -452,7 +452,7 @@ static void rc6_fence(int i915)
 {
 	const int64_t duration_ns = SLEEP_DURATION * (int64_t)NSEC_PER_SEC;
 	const int tolerance = 20; /* Some RC6 is better than none! */
-	const int gen = intel_gen(intel_get_drm_devid(i915));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(i915));
 	const struct intel_execution_engine2 *e;
 	struct power_sample sample[2];
 	unsigned long slept;
diff --git a/tests/i915/sysfs_timeslice_duration.c b/tests/i915/sysfs_timeslice_duration.c
index 2b1e52c80..b5b6ded78 100644
--- a/tests/i915/sysfs_timeslice_duration.c
+++ b/tests/i915/sysfs_timeslice_duration.c
@@ -186,7 +186,7 @@ static uint64_t __test_duration(int i915, int engine, unsigned int timeout)
 		.buffer_count = ARRAY_SIZE(obj),
 		.buffers_ptr = to_user_pointer(obj),
 	};
-	const int gen = intel_gen(intel_get_drm_devid(i915));
+	const unsigned int gen = intel_gen(intel_get_drm_devid(i915));
 	double duration = clockrate(i915);
 	unsigned int class, inst, mmio;
 	uint32_t *cs, *map;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
