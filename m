Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 002BE199B5C
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 18:23:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4539E6E859;
	Tue, 31 Mar 2020 16:23:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32C1A6E340;
 Tue, 31 Mar 2020 16:23:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20754890-1500050 
 for multiple; Tue, 31 Mar 2020 17:23:21 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Mar 2020 17:23:20 +0100
Message-Id: <20200331162320.968537-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200331162320.968537-1-chris@chris-wilson.co.uk>
References: <20200331162320.968537-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/2] i915/gem_exec_reloc: Smoke test
 parallel relocations
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Check we can handle active gpu relocations across multiple engines
simultaneously without blocking unrelated contexts.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_reloc.c | 139 ++++++++++++++++++++++++++++++++++++
 1 file changed, 139 insertions(+)

diff --git a/tests/i915/gem_exec_reloc.c b/tests/i915/gem_exec_reloc.c
index 275cf6ae9..a9cabbc05 100644
--- a/tests/i915/gem_exec_reloc.c
+++ b/tests/i915/gem_exec_reloc.c
@@ -21,6 +21,9 @@
  * IN THE SOFTWARE.
  */
 
+#include <signal.h>
+#include <sys/ioctl.h>
+
 #include "igt.h"
 #include "igt_dummyload.h"
 
@@ -704,6 +707,139 @@ static void basic_softpin(int fd)
 	gem_close(fd, obj[1].handle);
 }
 
+static struct drm_i915_gem_relocation_entry *
+parallel_relocs(int count, unsigned long *out)
+{
+	struct drm_i915_gem_relocation_entry *reloc;
+	unsigned long sz;
+	int i;
+
+	sz = count * sizeof(*reloc);
+	sz = ALIGN(sz, 4096);
+
+	reloc = mmap(0, sz, PROT_WRITE, MAP_PRIVATE | MAP_ANON, -1, 0);
+	igt_assert(reloc != MAP_FAILED);
+	for (i = 0; i < count; i++) {
+		reloc[i].target_handle = 0;
+		reloc[i].presumed_offset = ~0ull;
+		reloc[i].offset = 8 * i;
+		reloc[i].delta = i;
+		reloc[i].read_domains = I915_GEM_DOMAIN_INSTRUCTION;
+		reloc[i].write_domain = 0;
+	}
+	mprotect(reloc, sz, PROT_READ);
+
+	*out = sz;
+	return reloc;
+}
+
+static uint32_t __batch_create(int i915, uint32_t offset)
+{
+	const uint32_t bbe = MI_BATCH_BUFFER_END;
+	uint32_t handle;
+
+	handle = gem_create(i915, ALIGN(offset + 4, 4096));
+	gem_write(i915, handle, offset, &bbe, sizeof(bbe));
+
+	return handle;
+}
+
+static uint32_t batch_create(int i915)
+{
+	return __batch_create(i915, 0);
+}
+
+static int __execbuf(int i915, struct drm_i915_gem_execbuffer2 *execbuf)
+{
+	int err;
+
+	err = 0;
+	if (ioctl(i915, DRM_IOCTL_I915_GEM_EXECBUFFER2, execbuf)) {
+		err = -errno;
+		igt_assume(err);
+	}
+
+	errno = 0;
+	return err;
+}
+
+static void parallel_child(int i915,
+			   const struct intel_execution_engine2 *engine,
+			   struct drm_i915_gem_relocation_entry *reloc,
+			   uint32_t common)
+{
+	igt_spin_t *spin = __igt_spin_new(i915, .engine = engine->flags);
+	struct drm_i915_gem_exec_object2 reloc_target = {
+		.handle = gem_create(i915, 32 * 1024 * 8),
+		.relocation_count = 32 * 1024,
+		.relocs_ptr = to_user_pointer(reloc),
+	};
+	struct drm_i915_gem_exec_object2 obj[3] = {
+		reloc_target,
+		{ .handle = common },
+		spin->obj[1],
+	};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(obj),
+		.buffer_count = ARRAY_SIZE(obj),
+		.flags = engine->flags | I915_EXEC_HANDLE_LUT,
+	};
+	unsigned long count = 0;
+
+	gem_execbuf(i915, &execbuf);
+	for (;;) {
+		count++;
+		if (__execbuf(i915, &execbuf))
+			break;
+	}
+
+	igt_info("%s: count %lu\n", engine->name, count);
+	igt_spin_free(i915, spin);
+}
+
+static void parallel(int i915)
+{
+	const struct intel_execution_engine2 *e;
+	struct drm_i915_gem_relocation_entry *reloc;
+	uint32_t common = gem_create(i915, 4096);
+	uint32_t batch =  batch_create(i915);
+	unsigned long reloc_sz;
+	uint32_t ctx;
+
+	reloc = parallel_relocs(32 * 1024, &reloc_sz);
+
+	__for_each_physical_engine(i915, e) {
+		igt_fork(child, 1)
+			parallel_child(i915, e, reloc, common);
+	}
+
+	sleep(5);
+
+	ctx = gem_context_create(i915);
+	__for_each_physical_engine(i915, e) {
+		struct drm_i915_gem_exec_object2 obj[2] = {
+			{ .handle = common },
+			{ .handle = batch },
+		};
+		struct drm_i915_gem_execbuffer2 execbuf = {
+			.buffers_ptr = to_user_pointer(obj),
+			.buffer_count = ARRAY_SIZE(obj),
+			.flags = e->flags,
+			.rsvd1 = ctx,
+		};
+		gem_execbuf(i915, &execbuf);
+	}
+	gem_context_destroy(i915, ctx);
+	gem_sync(i915, batch);
+	gem_close(i915, batch);
+
+	kill(-getpgrp(), SIGINT);
+	igt_waitchildren();
+
+	gem_close(i915, common);
+	munmap(reloc, reloc_sz);
+}
+
 igt_main
 {
 	const struct intel_execution_engine2 *e;
@@ -826,6 +962,9 @@ igt_main
 		}
 	}
 
+	igt_subtest("basic-parallel")
+		parallel(fd);
+
 	igt_fixture
 		close(fd);
 }
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
