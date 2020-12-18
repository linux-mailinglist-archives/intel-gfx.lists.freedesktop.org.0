Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A14E22DE3F5
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 15:25:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F8FD6E0CA;
	Fri, 18 Dec 2020 14:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F3A06E0CA;
 Fri, 18 Dec 2020 14:25:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23367623-1500050 
 for multiple; Fri, 18 Dec 2020 14:25:22 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Fri, 18 Dec 2020 14:25:20 +0000
Message-Id: <20201218142520.1888115-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] lib: Support writing arbitrary data from
 the start of a busy spinner
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

Allow the caller to specify a dword, or an arbitrary payload, to be
written by the busy spinner, just prior to starting its infinite loop.
This is similar to the dependency method, that makes a target busy
without writing anything.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 lib/igt_dummyload.c         | 71 +++++++++++++++++++++++++++++++++++--
 lib/igt_dummyload.h         | 12 +++++++
 tests/i915/gem_spin_batch.c | 46 ++++++++++++++++++++++++
 3 files changed, 127 insertions(+), 2 deletions(-)

diff --git a/lib/igt_dummyload.c b/lib/igt_dummyload.c
index 28fcbf81f..d5a68a46c 100644
--- a/lib/igt_dummyload.c
+++ b/lib/igt_dummyload.c
@@ -63,7 +63,7 @@
 #define MI_ARB_CHK (0x5 << 23)
 
 static const int BATCH_SIZE = 4096;
-static const int LOOP_START_OFFSET = 64;
+static const int LOOP_START_OFFSET = 256;
 
 static IGT_LIST_HEAD(spin_list);
 static pthread_mutex_t list_lock = PTHREAD_MUTEX_INITIALIZER;
@@ -132,6 +132,11 @@ emit_recursive_batch(igt_spin_t *spin,
 			    !gem_class_can_store_dword(fd, engine->class))
 				continue;
 
+			if (opts->flags & (IGT_SPIN_STORE_DWORD |
+					   IGT_SPIN_STORE_DATA) &&
+			    !gem_class_can_store_dword(fd, engine->class))
+				continue;
+
 			flags[nengine++] = engine->flags;
 		}
 	} else {
@@ -160,6 +165,8 @@ emit_recursive_batch(igt_spin_t *spin,
 
 	if (opts->dependency) {
 		igt_assert(!(opts->flags & IGT_SPIN_POLL_RUN));
+		igt_assert(!(opts->flags & (IGT_SPIN_STORE_DWORD |
+					    IGT_SPIN_STORE_DATA)));
 
 		obj[SCRATCH].handle = opts->dependency;
 		obj[SCRATCH].offset = addr;
@@ -178,6 +185,9 @@ emit_recursive_batch(igt_spin_t *spin,
 
 		execbuf->buffer_count++;
 	} else if (opts->flags & IGT_SPIN_POLL_RUN) {
+		igt_assert(!(opts->flags & (IGT_SPIN_STORE_DWORD |
+					    IGT_SPIN_STORE_DATA)));
+
 		r = &relocs[obj[BATCH].relocation_count++];
 
 		igt_assert(!opts->dependency);
@@ -230,6 +240,63 @@ emit_recursive_batch(igt_spin_t *spin,
 
 		*cs++ = 1;
 
+		execbuf->buffer_count++;
+	} else if (opts->flags & (IGT_SPIN_STORE_DWORD | IGT_SPIN_STORE_DATA)) {
+		int len, cmd;
+
+		igt_assert(opts->store_handle);
+		igt_assert((opts->store_offset & 3) == 0);
+		if (opts->flags & IGT_SPIN_STORE_DATA) {
+			igt_assert(!(opts->flags & IGT_SPIN_STORE_DWORD));
+			igt_assert(opts->store_length < LOOP_START_OFFSET - 16);
+			igt_assert(opts->store_data);
+			len = opts->store_length;
+		} else {
+			len = sizeof(uint32_t);
+		}
+
+		addr += 4096; /* guard page */
+		obj[SCRATCH].offset = addr;
+		obj[SCRATCH].handle = opts->store_handle;
+		obj[SCRATCH].flags = EXEC_OBJECT_WRITE;
+
+		r = &relocs[obj[BATCH].relocation_count++];
+		r->read_domains = I915_GEM_DOMAIN_RENDER;
+		r->write_domain = I915_GEM_DOMAIN_RENDER;
+
+		if (gen == 4 || gen == 5) {
+			execbuf->flags |= I915_EXEC_SECURE;
+			igt_require(__igt_device_set_master(fd) == 0);
+		}
+
+		r->presumed_offset = obj[SCRATCH].offset;
+		r->target_handle = obj[SCRATCH].handle;
+		r->offset = sizeof(uint32_t) * 1;
+		r->delta = opts->store_offset;
+
+		cmd = len / sizeof(uint32_t) + 1;
+		if (gen >= 4)
+			cmd++;
+		*cs++ = 0x20 << 23 | (gen < 6 ? 1 << 22 : 0) | cmd;
+
+		if (gen >= 8) {
+			*cs++ = r->presumed_offset + r->delta;
+			*cs++ = 0;
+		} else if (gen >= 4) {
+			*cs++ = 0;
+			*cs++ = r->presumed_offset + r->delta;
+			r->offset += sizeof(uint32_t);
+		} else {
+			*cs++ = r->presumed_offset + r->delta;
+		}
+
+		if (opts->flags & IGT_SPIN_STORE_DWORD) {
+			*cs++ = opts->store_dw;
+		} else {
+			memcpy(cs, opts->store_data, len);
+			cs += len / sizeof(*cs);
+		}
+
 		execbuf->buffer_count++;
 	}
 
@@ -258,7 +325,7 @@ emit_recursive_batch(igt_spin_t *spin,
 	 * trouble. See https://bugs.freedesktop.org/show_bug.cgi?id=102262
 	 */
 	if (!(opts->flags & IGT_SPIN_FAST))
-		cs += 960;
+		cs = spin->batch + 1000;
 
 	/*
 	 * When using a cmdparser, the batch is copied into a read only location
diff --git a/lib/igt_dummyload.h b/lib/igt_dummyload.h
index 9e19ffabc..bc8e8ebb3 100644
--- a/lib/igt_dummyload.h
+++ b/lib/igt_dummyload.h
@@ -62,6 +62,16 @@ struct igt_spin_factory {
 	unsigned int engine;
 	unsigned int flags;
 	int fence;
+
+	uint32_t store_handle;
+	uint32_t store_offset;
+	union {
+		struct {
+			void *store_data;
+			uint32_t store_length;
+		};
+		uint32_t store_dw;
+	};
 };
 
 #define IGT_SPIN_FENCE_IN      (1 << 0)
@@ -73,6 +83,8 @@ struct igt_spin_factory {
 #define IGT_SPIN_INVALID_CS    (1 << 6)
 #define IGT_SPIN_USERPTR       (1 << 7)
 #define IGT_SPIN_SOFTDEP       (1 << 8)
+#define IGT_SPIN_STORE_DWORD   (1 << 9)
+#define IGT_SPIN_STORE_DATA    (1 << 10)
 
 igt_spin_t *
 __igt_spin_factory(int fd, const struct igt_spin_factory *opts);
diff --git a/tests/i915/gem_spin_batch.c b/tests/i915/gem_spin_batch.c
index 19bc4638d..1ce865d6d 100644
--- a/tests/i915/gem_spin_batch.c
+++ b/tests/i915/gem_spin_batch.c
@@ -71,6 +71,45 @@ static void spin(int fd,
 	assert_within_epsilon(timeout_100ms * loops, elapsed, MAX_ERROR);
 }
 
+static void store(int fd, const struct intel_execution_engine2 *e2)
+{
+	igt_spin_t *spin;
+	uint32_t handle;
+	uint32_t *map;
+	int i;
+
+	handle = gem_create(fd, 4096);
+	map = gem_mmap__device_coherent(fd, handle, 0, 4096, PROT_WRITE);
+
+	spin = igt_spin_new(fd,
+			    .engine = e2->flags,
+			    .store_handle = handle,
+			    .store_dw = 0xdeadbeef,
+			    .flags = IGT_SPIN_STORE_DWORD);
+	igt_spin_end(spin);
+	gem_sync(fd, spin->handle);
+	igt_spin_free(fd, spin);
+	igt_assert_eq(map[0], 0xdeadbeef);
+
+	for (i = 0; i < 16; i++)
+		map[i] = i;
+	spin = igt_spin_new(fd,
+			    .engine = e2->flags,
+			    .store_handle = handle,
+			    .store_offset = sizeof(uint32_t),
+			    .store_length = 16 * sizeof(uint32_t),
+			    .store_data = map,
+			    .flags = IGT_SPIN_STORE_DATA);
+	igt_spin_end(spin);
+	gem_sync(fd, spin->handle);
+	igt_spin_free(fd, spin);
+	for (i = 0; i < 16; i++)
+		igt_assert_eq(map[i + 1], i);
+
+	munmap(map, 4096);
+	gem_close(fd, handle);
+}
+
 #define RESUBMIT_NEW_CTX     (1 << 0)
 #define RESUBMIT_ALL_ENGINES (1 << 1)
 
@@ -204,6 +243,13 @@ igt_main
 	igt_subtest("spin-all-new")
 		spin_all(fd, PARALLEL_SPIN_NEW_CTX);
 
+	igt_subtest_with_dynamic("store"){
+		__for_each_physical_engine(fd, e2) {
+			igt_dynamic_f("%s", e2->name)
+				store(fd, e2);
+		}
+	}
+
 	__for_each_physical_engine(fd, e2) {
 		igt_subtest_f("%s", e2->name)
 			spin(fd, e2, 0, 3);
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
