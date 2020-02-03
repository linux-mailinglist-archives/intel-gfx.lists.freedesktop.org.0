Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C2A15120D
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 22:45:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C57DE6E03D;
	Mon,  3 Feb 2020 21:45:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B3456E03D;
 Mon,  3 Feb 2020 21:45:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20105622-1500050 
 for multiple; Mon, 03 Feb 2020 21:45:19 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Feb 2020 21:45:18 +0000
Message-Id: <20200203214518.723198-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_basic: Drop per-engine
 testing of *execbuf
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The gtt/readonly tests are nothing to do with execution and engines;
they are strictly checking the copy-from-user of the ioctl arguments.
Drop the silly per-engine tests.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Antonio Argenziano <antonio.argenziano@intel.com>
---
 tests/i915/gem_exec_basic.c  | 109 +++++------------------------------
 tests/i915/gem_exec_params.c |  61 ++++++++++++++++++++
 2 files changed, 76 insertions(+), 94 deletions(-)

diff --git a/tests/i915/gem_exec_basic.c b/tests/i915/gem_exec_basic.c
index 70dce34b5..0d05819ce 100644
--- a/tests/i915/gem_exec_basic.c
+++ b/tests/i915/gem_exec_basic.c
@@ -36,84 +36,6 @@ static uint32_t batch_create(int fd)
 	return handle;
 }
 
-static void batch_fini(int fd, uint32_t handle)
-{
-	gem_sync(fd, handle); /* catch any GPU hang */
-	gem_close(fd, handle);
-}
-
-static void noop(int fd, uint64_t flags)
-{
-	struct drm_i915_gem_execbuffer2 execbuf;
-	struct drm_i915_gem_exec_object2 exec;
-
-	gem_require_ring(fd, flags);
-
-	memset(&exec, 0, sizeof(exec));
-
-	exec.handle = batch_create(fd);
-
-	memset(&execbuf, 0, sizeof(execbuf));
-	execbuf.buffers_ptr = to_user_pointer(&exec);
-	execbuf.buffer_count = 1;
-	execbuf.flags = flags;
-	gem_execbuf(fd, &execbuf);
-
-	batch_fini(fd, exec.handle);
-}
-
-static void readonly(int fd, uint64_t flags)
-{
-	struct drm_i915_gem_execbuffer2 *execbuf;
-	struct drm_i915_gem_exec_object2 exec;
-
-	gem_require_ring(fd, flags);
-
-	memset(&exec, 0, sizeof(exec));
-	exec.handle = batch_create(fd);
-
-	execbuf = mmap(NULL, 4096, PROT_WRITE, MAP_ANON | MAP_PRIVATE, -1, 0);
-	igt_assert(execbuf != NULL);
-
-	execbuf->buffers_ptr = to_user_pointer(&exec);
-	execbuf->buffer_count = 1;
-	execbuf->flags = flags;
-	igt_assert(mprotect(execbuf, 4096, PROT_READ) == 0);
-
-	gem_execbuf(fd, execbuf);
-
-	munmap(execbuf, 4096);
-
-	batch_fini(fd, exec.handle);
-}
-
-static void gtt(int fd, uint64_t flags)
-{
-	struct drm_i915_gem_execbuffer2 *execbuf;
-	struct drm_i915_gem_exec_object2 *exec;
-	uint32_t handle;
-
-	gem_require_ring(fd, flags);
-
-	handle = gem_create(fd, 4096);
-
-	gem_set_domain(fd, handle, I915_GEM_DOMAIN_GTT, I915_GEM_DOMAIN_GTT);
-	execbuf = gem_mmap__gtt(fd, handle, 4096, PROT_WRITE);
-	exec = (struct drm_i915_gem_exec_object2 *)(execbuf + 1);
-	gem_close(fd, handle);
-
-	exec->handle = batch_create(fd);
-
-	execbuf->buffers_ptr = to_user_pointer(exec);
-	execbuf->buffer_count = 1;
-	execbuf->flags = flags;
-
-	gem_execbuf(fd, execbuf);
-
-	batch_fini(fd, exec->handle);
-	munmap(execbuf, 4096);
-}
-
 igt_main
 {
 	const struct intel_execution_engine2 *e;
@@ -121,30 +43,29 @@ igt_main
 
 	igt_fixture {
 		fd = drm_open_driver(DRIVER_INTEL);
-		igt_require_gem(fd);
-
+		/* igt_require_gem(fd); // test is mandatory */
 		igt_fork_hang_detector(fd);
 	}
 
 	igt_subtest_with_dynamic("basic") {
-		__for_each_physical_engine(fd, e) {
-			igt_dynamic_f("%s", e->name)
-				noop(fd, e->flags);
-		}
-	}
+		struct drm_i915_gem_exec_object2 exec = {
+			.handle = batch_create(fd),
+		};
 
-	igt_subtest_with_dynamic("readonly") {
 		__for_each_physical_engine(fd, e) {
-			igt_dynamic_f("%s", e->name)
-				readonly(fd, e->flags);
+			igt_dynamic_f("%s", e->name) {
+				struct drm_i915_gem_execbuffer2 execbuf = {
+					.buffers_ptr = to_user_pointer(&exec),
+					.buffer_count = 1,
+					.flags = e->flags,
+				};
+
+				gem_execbuf(fd, &execbuf);
+			}
 		}
-	}
 
-	igt_subtest_with_dynamic("gtt") {
-		__for_each_physical_engine(fd, e) {
-			igt_dynamic_f("%s", e->name)
-				gtt(fd, e->flags);
-		}
+		gem_sync(fd, exec.handle); /* catch any GPU hang */
+		gem_close(fd, exec.handle);
 	}
 
 	igt_fixture {
diff --git a/tests/i915/gem_exec_params.c b/tests/i915/gem_exec_params.c
index 9c3525698..094fa904c 100644
--- a/tests/i915/gem_exec_params.c
+++ b/tests/i915/gem_exec_params.c
@@ -206,6 +206,61 @@ static int has_secure_batches(const int fd)
 	return v > 0;
 }
 
+static uint32_t batch_create(int fd)
+{
+	const uint32_t bbe = MI_BATCH_BUFFER_END;
+	uint32_t handle;
+
+	handle = gem_create(fd, 4096);
+	gem_write(fd, handle, 0, &bbe, sizeof(bbe));
+
+	return handle;
+}
+
+static void readonly(int i915)
+{
+	struct drm_i915_gem_execbuffer2 *execbuf;
+	struct drm_i915_gem_exec_object2 exec = {
+		batch_create(i915)
+	};
+
+	execbuf = mmap(NULL, 4096, PROT_WRITE, MAP_ANON | MAP_PRIVATE, -1, 0);
+	igt_assert(execbuf != MAP_FAILED);
+
+	execbuf->buffers_ptr = to_user_pointer(&exec);
+	execbuf->buffer_count = 1;
+	igt_assert(mprotect(execbuf, 4096, PROT_READ) == 0);
+
+	gem_execbuf(i915, execbuf);
+	gem_close(i915, exec.handle);
+
+	munmap(execbuf, 4096);
+}
+
+static void mmapped(int i915)
+{
+	struct drm_i915_gem_execbuffer2 *execbuf;
+	struct drm_i915_gem_exec_object2 *exec;
+	uint32_t handle;
+
+	handle = gem_create(i915, 4096);
+
+	gem_set_domain(i915, handle, I915_GEM_DOMAIN_GTT, I915_GEM_DOMAIN_GTT);
+	execbuf = gem_mmap__gtt(i915, handle, 4096, PROT_WRITE);
+	exec = (struct drm_i915_gem_exec_object2 *)(execbuf + 1);
+	gem_close(i915, handle);
+
+	exec->handle = batch_create(i915);
+
+	execbuf->buffers_ptr = to_user_pointer(exec);
+	execbuf->buffer_count = 1;
+
+	gem_execbuf(i915, execbuf);
+	gem_close(i915, exec->handle);
+
+	munmap(execbuf, 4096);
+}
+
 struct drm_i915_gem_execbuffer2 execbuf;
 struct drm_i915_gem_exec_object2 gem_exec[1];
 uint32_t batch[2] = {MI_BATCH_BUFFER_END};
@@ -256,6 +311,12 @@ igt_main
 		}
 	}
 
+	igt_subtest("readonly")
+		readonly(fd);
+
+	igt_subtest("mmapped")
+		mmapped(fd);
+
 #define RUN_FAIL(expected_errno) do { \
 		igt_assert_eq(__gem_execbuf(fd, &execbuf), -expected_errno); \
 	} while(0)
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
