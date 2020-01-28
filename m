Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B584A14B0BA
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 09:12:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFB386ECF1;
	Tue, 28 Jan 2020 08:12:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 499A76ECF1;
 Tue, 28 Jan 2020 08:12:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20030342-1500050 
 for multiple; Tue, 28 Jan 2020 08:12:22 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jan 2020 08:12:21 +0000
Message-Id: <20200128081221.3508833-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915: Drop prefault controls
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
Content-Type: multipart/mixed; boundary="===============1520050478=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1520050478==
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

They haven't been effective for a long time; so drop them.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 benchmarks/gem_exec_reloc.c          |  19 +-
 lib/igt_debugfs.c                    |  59 ----
 lib/igt_debugfs.h                    |   7 -
 tests/Makefile.sources               |   6 -
 tests/i915/gem_exec_faulting_reloc.c |   5 -
 tests/i915/gem_exec_lut_handle.c     |  24 +-
 tests/i915/gem_mmap_gtt.c            |  15 -
 tests/i915/gem_persistent_relocs.c   |  24 +-
 tests/i915/gem_reloc_overflow.c      | 436 ---------------------------
 tests/i915/gem_reloc_vs_gpu.c        | 352 ---------------------
 tests/meson.build                    |   2 -
 11 files changed, 10 insertions(+), 939 deletions(-)
 delete mode 100644 tests/i915/gem_reloc_overflow.c
 delete mode 100644 tests/i915/gem_reloc_vs_gpu.c

diff --git a/benchmarks/gem_exec_reloc.c b/benchmarks/gem_exec_reloc.c
index c734643c7..0a2454cb9 100644
--- a/benchmarks/gem_exec_reloc.c
+++ b/benchmarks/gem_exec_reloc.c
@@ -48,7 +48,6 @@
 #define SKIP_RELOC 0x1
 #define NO_RELOC 0x2
 #define CYCLE_BATCH 0x4
-#define FAULT 0x8
 #define LUT 0x10
 #define SEQUENTIAL_OFFSET 0x20
 #define REVERSE_OFFSET 0x40
@@ -121,11 +120,7 @@ static int run(unsigned batch_size,
 		memcpy(reloc, mem_reloc, sizeof(*mem_reloc)*num_relocs);
 		munmap(reloc, size);
 
-		if (flags & FAULT) {
-			igt_disable_prefault();
-			reloc = __gem_mmap__cpu(fd, reloc_handle, 0, size, PROT_READ | PROT_WRITE);
-		} else
-			reloc = mem_reloc;
+		reloc = mem_reloc;
 	}
 
 	gem_exec[num_objects].relocation_count = num_relocs;
@@ -162,22 +157,12 @@ static int run(unsigned batch_size,
 					gem_exec[num_objects].handle = cycle[c];
 				}
 			}
-			if (flags & FAULT && reloc) {
-				munmap(reloc, size);
-				reloc = __gem_mmap__cpu(fd, reloc_handle, 0, size, PROT_READ | PROT_WRITE);
-				gem_exec[num_objects].relocs_ptr = (uintptr_t)reloc;
-			}
 			gem_execbuf(fd, &execbuf);
 		}
 		gettimeofday(&end, NULL);
 		printf("%.3f\n", ELAPSED(&start, &end));
 	}
 
-	if (flags & FAULT && reloc) {
-		munmap(reloc, size);
-		igt_enable_prefault();
-	}
-
 	return 0;
 }
 
@@ -208,8 +193,6 @@ int main(int argc, char **argv)
 				flags |= 0;
 			} else if (strcmp(optarg, "cyclic") == 0) {
 				flags |= CYCLE_BATCH;
-			} else if (strcmp(optarg, "fault") == 0) {
-				flags |= FAULT;
 			} else if (strcmp(optarg, "skip") == 0) {
 				flags |= SKIP_RELOC;
 			} else if (strcmp(optarg, "none") == 0) {
diff --git a/lib/igt_debugfs.c b/lib/igt_debugfs.c
index 676884c85..8cac9d1e1 100644
--- a/lib/igt_debugfs.c
+++ b/lib/igt_debugfs.c
@@ -77,9 +77,6 @@
  *
  * - drm/i915 supports interfaces to evict certain classes of gem buffer
  *   objects, see igt_drop_caches_set().
- *
- * - drm/i915 supports an interface to disable prefaulting, useful to test
- *   slow paths in ioctls. See igt_disable_prefault().
  */
 
 /*
@@ -1061,62 +1058,6 @@ void igt_drop_caches_set(int drm_fd, uint64_t val)
 	close(dir);
 }
 
-/*
- * Prefault control
- */
-
-#define PREFAULT_DEBUGFS "/sys/module/i915/parameters/prefault_disable"
-static void igt_prefault_control(bool enable)
-{
-	const char *name = PREFAULT_DEBUGFS;
-	int fd;
-	char buf[2] = {'Y', 'N'};
-	int index;
-
-	fd = open(name, O_RDWR);
-	igt_require(fd >= 0);
-
-	if (enable)
-		index = 1;
-	else
-		index = 0;
-
-	igt_require(write(fd, &buf[index], 1) == 1);
-
-	close(fd);
-}
-
-static void enable_prefault_at_exit(int sig)
-{
-	igt_enable_prefault();
-}
-
-/**
- * igt_disable_prefault:
- *
- * Disable prefaulting in certain gem ioctls through the debugfs interface. As
- * usual this installs an exit handler to clean up and re-enable prefaulting
- * even when the test exited abnormally.
- *
- * igt_enable_prefault() will enable normale operation again.
- */
-void igt_disable_prefault(void)
-{
-	igt_prefault_control(false);
-
-	igt_install_exit_handler(enable_prefault_at_exit);
-}
-
-/**
- * igt_enable_prefault:
- *
- * Enable prefault (again) through the debugfs interface.
- */
-void igt_enable_prefault(void)
-{
-	igt_prefault_control(true);
-}
-
 static int get_object_count(int fd)
 {
 	int dir, ret, scanned;
diff --git a/lib/igt_debugfs.h b/lib/igt_debugfs.h
index 5f0ce492b..1e0cc108d 100644
--- a/lib/igt_debugfs.h
+++ b/lib/igt_debugfs.h
@@ -202,13 +202,6 @@ static inline void rcu_barrier(int fd)
 	igt_drop_caches_set(fd, DROP_RCU);
 }
 
-/*
- * Prefault control
- */
-
-void igt_disable_prefault(void);
-void igt_enable_prefault(void);
-
 /*
  * Put the driver into a stable (quiescent) state and get the current number of
  * gem buffer objects
diff --git a/tests/Makefile.sources b/tests/Makefile.sources
index 7c5693457..f20be1135 100644
--- a/tests/Makefile.sources
+++ b/tests/Makefile.sources
@@ -363,12 +363,6 @@ gem_readwrite_SOURCES = i915/gem_readwrite.c
 TESTS_progs += gem_reg_read
 gem_reg_read_SOURCES = i915/gem_reg_read.c
 
-TESTS_progs += gem_reloc_overflow
-gem_reloc_overflow_SOURCES = i915/gem_reloc_overflow.c
-
-TESTS_progs += gem_reloc_vs_gpu
-gem_reloc_vs_gpu_SOURCES = i915/gem_reloc_vs_gpu.c
-
 TESTS_progs += gem_render_copy
 gem_render_copy_SOURCES = i915/gem_render_copy.c
 
diff --git a/tests/i915/gem_exec_faulting_reloc.c b/tests/i915/gem_exec_faulting_reloc.c
index 0bb5fa91a..c2aea0393 100644
--- a/tests/i915/gem_exec_faulting_reloc.c
+++ b/tests/i915/gem_exec_faulting_reloc.c
@@ -247,9 +247,4 @@ igt_main
 {
 	igt_subtest("normal")
 		run(OBJECT_SIZE);
-	igt_subtest("no-prefault") {
-		igt_disable_prefault();
-		run(OBJECT_SIZE);
-		igt_enable_prefault();
-	}
 }
diff --git a/tests/i915/gem_exec_lut_handle.c b/tests/i915/gem_exec_lut_handle.c
index b7b691572..6f227628c 100644
--- a/tests/i915/gem_exec_lut_handle.c
+++ b/tests/i915/gem_exec_lut_handle.c
@@ -52,7 +52,6 @@ IGT_TEST_DESCRIPTION("Exercises the basic execbuffer using the handle LUT"
 #define SKIP_RELOC 0x1
 #define NO_RELOC 0x2
 #define CYCLE_BATCH 0x4
-#define FAULT 0x8
 
 int target[MAX_NUM_RELOC];
 struct drm_i915_gem_exec_object2 gem_exec[MAX_NUM_EXEC+1];
@@ -92,7 +91,6 @@ igt_simple_main
 	} pass[] = {
 		{ .name = "relocation", .flags = 0 },
 		{ .name = "cycle-relocation", .flags = CYCLE_BATCH },
-		{ .name = "fault-relocation", .flags = FAULT },
 		{ .name = "skip-relocs", .flags = SKIP_RELOC },
 		{ .name = "no-relocs", .flags = SKIP_RELOC | NO_RELOC },
 		{ .name = NULL },
@@ -132,8 +130,6 @@ igt_simple_main
 	igt_require(has_exec_lut(fd));
 
 	for (p = pass; p->name != NULL; p++) {
-		if (p->flags & FAULT)
-			igt_disable_prefault();
 		for (n = 1; n <= MAX_NUM_EXEC; n *= 2) {
 			double elapsed[16][2];
 			double s_x, s_y, s_xx, s_xy;
@@ -145,10 +141,7 @@ igt_simple_main
 				struct drm_i915_gem_exec_object2 *objects;
 				struct timeval start, end;
 
-				if (p->flags & FAULT)
-					reloc = __gem_mmap__cpu(fd, reloc_handle, 0, size, PROT_READ | PROT_WRITE);
-				else
-					reloc = mem_reloc;
+				reloc = mem_reloc;
 
 				gem_exec[MAX_NUM_EXEC].relocation_count = m;
 				gem_exec[MAX_NUM_EXEC].relocs_ptr = to_user_pointer(reloc);
@@ -178,11 +171,6 @@ igt_simple_main
 							gem_exec[MAX_NUM_EXEC].handle = cycle[c];
 						}
 					}
-					if (p->flags & FAULT) {
-						munmap(reloc, size);
-						reloc = __gem_mmap__cpu(fd, reloc_handle, 0, size, PROT_READ | PROT_WRITE);
-						gem_exec[MAX_NUM_EXEC].relocs_ptr = to_user_pointer(reloc);
-					}
 					gem_execbuf(fd, &execbuf);
 				}
 				gettimeofday(&end, NULL);
@@ -208,11 +196,6 @@ igt_simple_main
 							gem_exec[MAX_NUM_EXEC].handle = cycle[c];
 						}
 					}
-					if (p->flags & FAULT) {
-						munmap(reloc, size);
-						reloc = __gem_mmap__cpu(fd, reloc_handle, 0, size, PROT_READ | PROT_WRITE);
-						gem_exec[MAX_NUM_EXEC].relocs_ptr = to_user_pointer(reloc);
-					}
 					gem_execbuf(fd, &execbuf);
 				}
 				gettimeofday(&end, NULL);
@@ -222,9 +205,6 @@ igt_simple_main
 				while (c != 0);
 				gem_exec[MAX_NUM_EXEC].handle = cycle[c];
 				elapsed[i][0] = ELAPSED(&start, &end);
-
-				if (p->flags & FAULT)
-					munmap(reloc, size);
 			}
 
 			igt_info("%s: buffers=%4d:", p->name, n);
@@ -255,7 +235,5 @@ igt_simple_main
 
 			igt_info("\n");
 		}
-		if (p->flags & FAULT)
-			igt_enable_prefault();
 	}
 }
diff --git a/tests/i915/gem_mmap_gtt.c b/tests/i915/gem_mmap_gtt.c
index af87ebc38..1f4655af4 100644
--- a/tests/i915/gem_mmap_gtt.c
+++ b/tests/i915/gem_mmap_gtt.c
@@ -1022,15 +1022,6 @@ test_fault_concurrent(int fd)
 		munmap(ptr[n], *ptr[n] * sizeof(uint32_t));
 }
 
-static void
-run_without_prefault(int fd,
-			void (*func)(int fd))
-{
-	igt_disable_prefault();
-	func(fd);
-	igt_enable_prefault();
-}
-
 static int mmap_ioctl(int i915, struct drm_i915_gem_mmap_gtt *arg)
 {
 	int err = 0;
@@ -1109,12 +1100,6 @@ igt_main
 		test_read_write2(fd, READ_AFTER_WRITE);
 	igt_subtest("fault-concurrent")
 		test_fault_concurrent(fd);
-	igt_subtest("basic-read-no-prefault")
-		run_without_prefault(fd, test_read);
-	igt_subtest("basic-write-no-prefault")
-		run_without_prefault(fd, test_write);
-	igt_subtest("basic-write-gtt-no-prefault")
-		run_without_prefault(fd, test_write_gtt);
 	igt_subtest("basic-write-cpu-read-gtt")
 		test_write_cpu_read_gtt(fd);
 	igt_subtest("basic-wc")
diff --git a/tests/i915/gem_persistent_relocs.c b/tests/i915/gem_persistent_relocs.c
index 7c831aaaf..442f768e6 100644
--- a/tests/i915/gem_persistent_relocs.c
+++ b/tests/i915/gem_persistent_relocs.c
@@ -192,16 +192,13 @@ static void faulting_reloc_and_emit(int fd, drm_intel_bo *target_bo,
 	gem_execbuf(fd, &execbuf);
 }
 
-static void do_test(int fd, bool faulting_reloc)
+static void do_test(int fd)
 {
 	uint32_t tiling_mode = I915_TILING_X;
 	unsigned long pitch, act_size;
 	uint32_t test;
 	int i, repeat;
 
-	if (faulting_reloc)
-		igt_disable_prefault();
-
 	act_size = 2048;
 	dummy_bo = drm_intel_bo_alloc_tiled(bufmgr, "tiled dummy_bo", act_size, act_size,
 				      4, &tiling_mode, &pitch, 0);
@@ -268,16 +265,12 @@ static void do_test(int fd, bool faulting_reloc)
 	drm_intel_gem_bo_unmap_gtt(dummy_bo);
 
 	drm_intel_bo_unreference(dummy_bo);
-
-	if (faulting_reloc)
-		igt_enable_prefault();
 }
 
 #define INTERRUPT	(1 << 0)
-#define FAULTING	(1 << 1)
-#define THRASH		(1 << 2)
-#define THRASH_INACTIVE	(1 << 3)
-#define ALL_FLAGS	(INTERRUPT | FAULTING | THRASH | THRASH_INACTIVE)
+#define THRASH		(1 << 1)
+#define THRASH_INACTIVE	(1 << 2)
+#define ALL_FLAGS	(INTERRUPT | THRASH | THRASH_INACTIVE)
 static void do_forked_test(int fd, unsigned flags)
 {
 	int num_threads = sysconf(_SC_NPROCESSORS_ONLN);
@@ -306,7 +299,7 @@ static void do_forked_test(int fd, unsigned flags)
 		if (flags & INTERRUPT)
 			igt_fork_signal_helper();
 
-		do_test(fd, flags & FAULTING);
+		do_test(fd);
 
 		if (flags & INTERRUPT)
 			igt_stop_signal_helper();
@@ -337,20 +330,19 @@ igt_main
 	}
 
 	igt_subtest("normal")
-		do_test(fd, false);
+		do_test(fd);
 
 	igt_fork_signal_helper();
 	igt_subtest("interruptible")
-		do_test(fd, false);
+		do_test(fd);
 	igt_stop_signal_helper();
 
 	for (unsigned flags = 0; flags <= ALL_FLAGS; flags++) {
 		if ((flags & THRASH) && (flags & THRASH_INACTIVE))
 			continue;
 
-		igt_subtest_f("forked%s%s%s%s",
+		igt_subtest_f("forked%s%s%s",
 			      flags & INTERRUPT ? "-interruptible" : "",
-			      flags & FAULTING ? "-faulting-reloc" : "",
 			      flags & THRASH ? "-thrashing" : "",
 			      flags & THRASH_INACTIVE ? "-thrash-inactive" : "")
 			do_forked_test(fd, flags);
diff --git a/tests/i915/gem_reloc_overflow.c b/tests/i915/gem_reloc_overflow.c
deleted file mode 100644
index c9d1f2075..000000000
--- a/tests/i915/gem_reloc_overflow.c
+++ /dev/null
@@ -1,436 +0,0 @@
-/*
- * Copyright © 2013 Google
- * Copyright © 2013 Intel Corporation
- *
- * Permission is hereby granted, free of charge, to any person obtaining a
- * copy of this software and associated documentation files (the "Software"),
- * to deal in the Software without restriction, including without limitation
- * the rights to use, copy, modify, merge, publish, distribute, sublicense,
- * and/or sell copies of the Software, and to permit persons to whom the
- * Software is furnished to do so, subject to the following conditions:
- *
- * The above copyright notice and this permission notice (including the next
- * paragraph) shall be included in all copies or substantial portions of the
- * Software.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
- * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
- * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
- * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
- * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
- * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
- * IN THE SOFTWARE.
- *
- * Authors:
- *    Kees Cook <keescook@chromium.org>
- *    Daniel Vetter <daniel.vetter@ffwll.ch>
- *    Rafael Barbalho <rafael.barbalho@intel.com>
- *
- */
-
-#include "igt.h"
-#include <stdlib.h>
-#include <stdio.h>
-#include <stdint.h>
-#include <string.h>
-#include <fcntl.h>
-#include <inttypes.h>
-#include <errno.h>
-#include <unistd.h>
-#include <malloc.h>
-#include <limits.h>
-#include <sys/ioctl.h>
-#include <sys/stat.h>
-#include <sys/time.h>
-#include <sys/types.h>
-#include "drm.h"
-
-IGT_TEST_DESCRIPTION("Check that kernel relocation overflows are caught.");
-
-/*
- * Testcase: Kernel relocation overflows are caught.
- */
-
-int fd, entries, num;
-struct drm_i915_gem_exec_object2 *obj;
-struct drm_i915_gem_execbuffer2 execbuf;
-struct drm_i915_gem_relocation_entry *reloc;
-
-static uint32_t target_handle(void)
-{
-	return execbuf.flags & I915_EXEC_HANDLE_LUT ? 0 : obj[0].handle;
-}
-
-static void source_offset_tests(int devid, bool reloc_gtt)
-{
-	struct drm_i915_gem_relocation_entry single_reloc;
-	const char *relocation_type;
-
-	if (reloc_gtt)
-		relocation_type = "reloc-gtt";
-	else
-		relocation_type = "reloc-cpu";
-
-	igt_fixture {
-		obj[1].relocation_count = 0;
-		obj[1].relocs_ptr = 0;
-
-		obj[0].relocation_count = 1;
-		obj[0].relocs_ptr = to_user_pointer(&single_reloc);
-		execbuf.buffer_count = 2;
-
-		if (reloc_gtt) {
-			gem_set_domain(fd, obj[0].handle, I915_GEM_DOMAIN_GTT, I915_GEM_DOMAIN_GTT);
-			relocation_type = "reloc-gtt";
-		} else {
-			gem_set_domain(fd, obj[0].handle, I915_GEM_DOMAIN_CPU, I915_GEM_DOMAIN_CPU);
-			relocation_type = "reloc-cpu";
-		}
-	}
-
-	/* Special tests for 64b relocs. */
-	igt_subtest_f("source-offset-page-stradle-gen8-%s", relocation_type) {
-		igt_require(intel_gen(devid) >= 8);
-		single_reloc.offset = 4096 - 4;
-		single_reloc.delta = 0;
-		single_reloc.target_handle = target_handle();
-		single_reloc.read_domains = I915_GEM_DOMAIN_RENDER;
-		single_reloc.write_domain = I915_GEM_DOMAIN_RENDER;
-		single_reloc.presumed_offset = -1;
-		gem_execbuf(fd, &execbuf);
-
-		single_reloc.delta = 1024;
-		gem_execbuf(fd, &execbuf);
-	}
-
-	igt_subtest_f("source-offset-end-gen8-%s", relocation_type) {
-		igt_require(intel_gen(devid) >= 8);
-		single_reloc.offset = 8192 - 8;
-		single_reloc.delta = 0;
-		single_reloc.target_handle = target_handle();
-		single_reloc.read_domains = I915_GEM_DOMAIN_RENDER;
-		single_reloc.write_domain = I915_GEM_DOMAIN_RENDER;
-		single_reloc.presumed_offset = -1;
-		gem_execbuf(fd, &execbuf);
-	}
-
-	igt_subtest_f("source-offset-overflow-gen8-%s", relocation_type) {
-		igt_require(intel_gen(devid) >= 8);
-		single_reloc.offset = 8192 - 4;
-		single_reloc.delta = 0;
-		single_reloc.target_handle = target_handle();
-		single_reloc.read_domains = I915_GEM_DOMAIN_RENDER;
-		single_reloc.write_domain = I915_GEM_DOMAIN_RENDER;
-		single_reloc.presumed_offset = -1;
-		igt_assert_eq(__gem_execbuf(fd, &execbuf), -EINVAL);
-	}
-
-	/* Tests for old 4byte relocs on pre-gen8. */
-	igt_subtest_f("source-offset-end-%s", relocation_type) {
-		igt_require(intel_gen(devid) < 8);
-		single_reloc.offset = 8192 - 4;
-		single_reloc.delta = 0;
-		single_reloc.target_handle = target_handle();
-		single_reloc.read_domains = I915_GEM_DOMAIN_RENDER;
-		single_reloc.write_domain = I915_GEM_DOMAIN_RENDER;
-		single_reloc.presumed_offset = -1;
-		gem_execbuf(fd, &execbuf);
-	}
-
-	igt_subtest_f("source-offset-big-%s", relocation_type) {
-		single_reloc.offset = 8192;
-		single_reloc.delta = 0;
-		single_reloc.target_handle = target_handle();
-		single_reloc.read_domains = I915_GEM_DOMAIN_RENDER;
-		single_reloc.write_domain = I915_GEM_DOMAIN_RENDER;
-		single_reloc.presumed_offset = -1;
-		igt_assert_eq(__gem_execbuf(fd, &execbuf), -EINVAL);
-	}
-
-	igt_subtest_f("source-offset-negative-%s", relocation_type) {
-		single_reloc.offset = (int64_t) -4;
-		single_reloc.delta = 0;
-		single_reloc.target_handle = target_handle();
-		single_reloc.read_domains = I915_GEM_DOMAIN_RENDER;
-		single_reloc.write_domain = I915_GEM_DOMAIN_RENDER;
-		single_reloc.presumed_offset = -1;
-		igt_assert_eq(__gem_execbuf(fd, &execbuf), -EINVAL);
-	}
-
-	igt_subtest_f("source-offset-unaligned-%s", relocation_type) {
-		single_reloc.offset = 1;
-		single_reloc.delta = 0;
-		single_reloc.target_handle = target_handle();
-		single_reloc.read_domains = I915_GEM_DOMAIN_RENDER;
-		single_reloc.write_domain = I915_GEM_DOMAIN_RENDER;
-		single_reloc.presumed_offset = -1;
-		igt_assert_eq(__gem_execbuf(fd, &execbuf), -EINVAL);
-	}
-}
-
-static void reloc_tests(const char *suffix)
-{
-	uint64_t max_relocations;
-	int i;
-
-	max_relocations = min(ULONG_MAX, SIZE_MAX);
-	max_relocations /= sizeof(struct drm_i915_gem_relocation_entry);
-	igt_debug("Maximum allocable relocations: %'llu\n",
-		  (long long)max_relocations);
-
-	igt_subtest_f("invalid-address%s", suffix) {
-		/* Attempt unmapped single entry. */
-		obj[0].relocation_count = 1;
-		obj[0].relocs_ptr = 0;
-		execbuf.buffer_count = 1;
-
-		igt_assert_eq(__gem_execbuf(fd, &execbuf), -EFAULT);
-	}
-
-	igt_subtest_f("single-fault%s", suffix) {
-		obj[0].relocation_count = entries + 1;
-		execbuf.buffer_count = 1;
-
-		/* out-of-bounds after */
-		obj[0].relocs_ptr = to_user_pointer(reloc);
-		igt_assert_eq(__gem_execbuf(fd, &execbuf), -EFAULT);
-
-		/* out-of-bounds before */
-		obj[0].relocs_ptr = to_user_pointer((reloc - 1));
-		igt_assert_eq(__gem_execbuf(fd, &execbuf), -EFAULT);
-	}
-
-	igt_fixture {
-		obj[0].relocation_count = 0;
-		obj[0].relocs_ptr = 0;
-
-		execbuf.buffer_count = 1;
-
-		/* Make sure the batch would succeed except for the thing we're
-		 * testing. */
-		igt_require(__gem_execbuf(fd, &execbuf) == 0);
-	}
-
-	igt_subtest_f("batch-start-unaligned%s", suffix) {
-		execbuf.batch_start_offset = 1;
-		execbuf.batch_len = 8;
-		igt_assert_eq(__gem_execbuf(fd, &execbuf), -EINVAL);
-	}
-
-	igt_subtest_f("batch-end-unaligned%s", suffix) {
-		execbuf.batch_start_offset = 0;
-		execbuf.batch_len = 7;
-		igt_assert_eq(__gem_execbuf(fd, &execbuf), -EINVAL);
-	}
-
-	igt_subtest_f("batch-both-unaligned%s", suffix) {
-		execbuf.batch_start_offset = 1;
-		execbuf.batch_len = 7;
-		igt_assert_eq(__gem_execbuf(fd, &execbuf), -EINVAL);
-	}
-
-	igt_fixture {
-		/* Undo damage for next tests. */
-		execbuf.batch_start_offset = 0;
-		execbuf.batch_len = 0;
-		igt_require(__gem_execbuf(fd, &execbuf) == 0);
-	}
-
-	igt_subtest_f("single-overflow%s", suffix) {
-		if (*suffix) {
-			igt_require_f(intel_get_avail_ram_mb() >
-				      sizeof(struct drm_i915_gem_relocation_entry) * entries / (1024*1024),
-				      "Test requires at least %'llu MiB, but only %'llu MiB of RAM available\n",
-				      (long long)sizeof(struct drm_i915_gem_relocation_entry) * entries / (1024*1024),
-				      (long long)intel_get_avail_ram_mb());
-		}
-
-		obj[0].relocs_ptr = to_user_pointer(reloc);
-		obj[0].relocation_count = entries;
-		execbuf.buffer_count = 1;
-		gem_execbuf(fd, &execbuf);
-
-		/* Attempt single overflowed entry. */
-		obj[0].relocation_count = -1;
-		igt_debug("relocation_count=%u\n",
-				obj[0].relocation_count);
-		if (max_relocations <= obj[0].relocation_count)
-			igt_assert_eq(__gem_execbuf(fd, &execbuf), -EINVAL);
-		else
-			igt_assert_eq(__gem_execbuf(fd, &execbuf), -EFAULT);
-
-		if (max_relocations + 1 < obj[0].relocation_count) {
-			obj[0].relocation_count = max_relocations + 1;
-			igt_debug("relocation_count=%u\n",
-				  obj[0].relocation_count);
-			igt_assert_eq(__gem_execbuf(fd, &execbuf), -EINVAL);
-
-			obj[0].relocation_count = max_relocations - 1;
-			igt_debug("relocation_count=%u\n",
-				  obj[0].relocation_count);
-			igt_assert_eq(__gem_execbuf(fd, &execbuf), -EFAULT);
-		}
-	}
-
-	igt_subtest_f("wrapped-overflow%s", suffix) {
-		if (*suffix) {
-			igt_require_f(intel_get_avail_ram_mb() >
-				      sizeof(struct drm_i915_gem_relocation_entry) * entries * num / (1024*1024),
-				      "Test requires at least %'llu MiB, but only %'llu MiB of RAM available\n",
-				      (long long)sizeof(struct drm_i915_gem_relocation_entry) * entries * num / (1024*1024),
-				      (long long)intel_get_avail_ram_mb());
-		}
-
-		for (i = 0; i < num; i++) {
-			struct drm_i915_gem_exec_object2 *o = &obj[i];
-
-			o->relocs_ptr = to_user_pointer(reloc);
-			o->relocation_count = entries;
-		}
-		execbuf.buffer_count = i;
-		gem_execbuf(fd, &execbuf);
-
-		obj[i-1].relocation_count = -1;
-		igt_debug("relocation_count[%d]=%u\n",
-			  i-1, obj[i-1].relocation_count);
-                if (max_relocations <= obj[i-1].relocation_count)
-                        igt_assert_eq(__gem_execbuf(fd, &execbuf), -EINVAL);
-		else
-                        igt_assert_eq(__gem_execbuf(fd, &execbuf), -EFAULT);
-
-		if (max_relocations < obj[i-1].relocation_count) {
-			obj[i-1].relocation_count = max_relocations;
-			igt_debug("relocation_count[%d]=%u\n",
-				  i-1, obj[i-1].relocation_count);
-			/* Whether the kernel reports the EFAULT for the
-			 * invalid relocation array or EINVAL for the overflow
-			 * in array size depends upon the order of the
-			 * individual tests. From a consistency perspective
-			 * EFAULT is preferred (i.e. using that relocation
-			 * array by itself would cause EFAULT not EINVAL).
-			 */
-			igt_assert_eq(__gem_execbuf(fd, &execbuf), -EFAULT);
-
-			obj[i-1].relocation_count = max_relocations - 1;
-			igt_debug("relocation_count[%d]=%u\n",
-				  i-1, obj[i-1].relocation_count);
-			igt_assert_eq(__gem_execbuf(fd, &execbuf), -EFAULT);
-		}
-
-		obj[i-1].relocation_count = entries + 1;
-		igt_debug("relocation_count[%d]=%u\n",
-                          i-1, obj[i-1].relocation_count);
-		igt_assert_eq(__gem_execbuf(fd, &execbuf), -EFAULT);
-
-		obj[0].relocation_count = -1;
-		if (max_relocations < obj[0].relocation_count) {
-			execbuf.buffer_count = 1;
-			gem_execbuf(fd, &execbuf);
-
-			/* As outlined above, this is why EFAULT is preferred */
-			obj[0].relocation_count = max_relocations;
-			igt_debug("relocation_count[0]=%u\n",
-				  obj[0].relocation_count);
-			igt_assert_eq(__gem_execbuf(fd, &execbuf), -EFAULT);
-		}
-	}
-}
-
-static void buffer_count_tests(void)
-{
-	igt_subtest("buffercount-overflow") {
-		igt_skip_on(SIZE_MAX / sizeof(*obj) >= UINT_MAX);
-
-		for (int i = 0; i < num; i++) {
-			obj[i].relocation_count = 0;
-			obj[i].relocs_ptr = 0;
-		}
-
-		/* We only have num buffers actually, but the overflow will make
-		 * sure we blow up the kernel before we blow up userspace. */
-		execbuf.buffer_count = num;
-
-		/* Make sure the basic thing would work first ... */
-		gem_execbuf(fd, &execbuf);
-
-		/* ... then be evil: Overflow of the pointer table (which has a
-		 * bit of lead datastructures, so no + 1 needed to overflow). */
-		execbuf.buffer_count = INT_MAX / sizeof(void *);
-		igt_assert_eq(__gem_execbuf(fd, &execbuf), -EINVAL);
-
-		/* ... then be evil: Copying/allocating the array. */
-		execbuf.buffer_count = UINT_MAX / sizeof(obj[0]) + 1;
-		igt_assert_eq(__gem_execbuf(fd, &execbuf), -EINVAL);
-	}
-}
-
-igt_main
-{
-	int devid = 0;
-
-	igt_fixture {
-		uint32_t bbe = MI_BATCH_BUFFER_END;
-		size_t reloc_size;
-
-		fd = drm_open_driver(DRIVER_INTEL);
-		igt_require_gem(fd);
-		devid = intel_get_drm_devid(fd);
-
-		/* Create giant reloc buffer area. */
-		num = 257;
-		entries = ((1ULL << 32) / (num - 1));
-		reloc_size = entries * sizeof(struct drm_i915_gem_relocation_entry);
-		igt_assert((reloc_size & 4095) == 0);
-		reloc = mmap(NULL, reloc_size + 2*4096, PROT_READ | PROT_WRITE,
-			     MAP_PRIVATE | MAP_ANON, -1, 0);
-		igt_assert(reloc != MAP_FAILED);
-		igt_require_f(mlock(reloc, reloc_size) == 0,
-			      "Tests require at least %'llu MiB of available memory\n",
-			      (long long unsigned)reloc_size / (1024*1024));
-
-		/* disable access before + after */
-		mprotect(reloc, 4096, 0);
-		reloc = (struct drm_i915_gem_relocation_entry *)((char *)reloc + 4096);
-		mprotect(reloc + entries, 4096, 0);
-
-		/* Allocate the handles we'll need to wrap. */
-		intel_require_memory(num+1, 4096, CHECK_RAM);
-		obj = calloc(num, sizeof(*obj));
-		igt_assert(obj);
-
-		/* First object is used for page crossing tests */
-		obj[0].handle = gem_create(fd, 8192);
-		gem_write(fd, obj[0].handle, 0, &bbe, sizeof(bbe));
-		for (int i = 1; i < num; i++) {
-			obj[i].handle = gem_create(fd, 4096);
-			gem_write(fd, obj[i].handle, 0, &bbe, sizeof(bbe));
-		}
-
-		/* Create relocation objects. */
-		memset(&execbuf, 0, sizeof(execbuf));
-		execbuf.buffers_ptr = to_user_pointer(obj);
-		execbuf.buffer_count = 1;
-		execbuf.flags = I915_EXEC_HANDLE_LUT;
-		if (__gem_execbuf(fd, &execbuf))
-			execbuf.flags = 0;
-
-		for (int i = 0; i < entries; i++) {
-			reloc[i].target_handle = target_handle();
-			reloc[i].offset = 1024;
-			reloc[i].read_domains = I915_GEM_DOMAIN_INSTRUCTION;
-			reloc[i].write_domain = 0;
-		}
-	}
-
-	reloc_tests("");
-	igt_fixture
-		igt_disable_prefault();
-	reloc_tests("-noprefault");
-	igt_fixture
-		igt_enable_prefault();
-
-	source_offset_tests(devid, false);
-	source_offset_tests(devid, true);
-
-	buffer_count_tests();
-}
diff --git a/tests/i915/gem_reloc_vs_gpu.c b/tests/i915/gem_reloc_vs_gpu.c
deleted file mode 100644
index ebc71a68c..000000000
--- a/tests/i915/gem_reloc_vs_gpu.c
+++ /dev/null
@@ -1,352 +0,0 @@
-/*
- * Copyright Â© 2011,2013 Intel Corporation
- *
- * Permission is hereby granted, free of charge, to any person obtaining a
- * copy of this software and associated documentation files (the "Software"),
- * to deal in the Software without restriction, including without limitation
- * the rights to use, copy, modify, merge, publish, distribute, sublicense,
- * and/or sell copies of the Software, and to permit persons to whom the
- * Software is furnished to do so, subject to the following conditions:
- *
- * The above copyright notice and this permission notice (including the next
- * paragraph) shall be included in all copies or substantial portions of the
- * Software.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
- * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
- * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
- * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
- * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
- * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
- * IN THE SOFTWARE.
- *
- * Authors:
- *    Daniel Vetter <daniel.vetter@ffwll.ch>
- *
- */
-
-#include "igt.h"
-#include <stdlib.h>
-#include <stdio.h>
-#include <string.h>
-#include <fcntl.h>
-#include <inttypes.h>
-#include <errno.h>
-#include <sys/stat.h>
-#include <sys/time.h>
-#include <signal.h>
-#include <sys/wait.h>
-
-#include <drm.h>
-
-
-IGT_TEST_DESCRIPTION("Test kernel relocations vs. gpu races.");
-
-/*
- * Testcase: Kernel relocations vs. gpu races
- *
- */
-
-static drm_intel_bufmgr *bufmgr;
-struct intel_batchbuffer *batch;
-
-uint32_t blob[2048*2048];
-#define NUM_TARGET_BOS 16
-drm_intel_bo *pc_target_bo[NUM_TARGET_BOS];
-drm_intel_bo *dummy_bo;
-drm_intel_bo *special_bo;
-uint32_t devid;
-int special_reloc_ofs;
-int special_batch_len;
-
-static void create_special_bo(void)
-{
-	uint32_t data[1024];
-	int len = 0;
-	int small_pitch = 64;
-#define BATCH(dw) data[len++] = (dw);
-
-	memset(data, 0, 4096);
-	special_bo = drm_intel_bo_alloc(bufmgr, "special batch", 4096, 4096);
-
-	if (intel_gen(devid) >= 8) {
-		BATCH(MI_NOOP);
-		BATCH(XY_COLOR_BLT_CMD_NOLEN | 5 |
-				COLOR_BLT_WRITE_ALPHA | XY_COLOR_BLT_WRITE_RGB);
-	} else {
-		BATCH(XY_COLOR_BLT_CMD_NOLEN | 4 |
-				COLOR_BLT_WRITE_ALPHA | XY_COLOR_BLT_WRITE_RGB);
-	}
-
-	BATCH((3 << 24) | (0xf0 << 16) | small_pitch);
-	BATCH(0);
-	BATCH(1 << 16 | 1);
-	special_reloc_ofs = 4*len;
-	BATCH(0);
-	if (intel_gen(devid) >= 8)
-		BATCH(0);
-	BATCH(0xdeadbeef);
-
-#define CMD_POLY_STIPPLE_OFFSET       0x7906
-	/* batchbuffer end */
-	if (IS_GEN5(batch->devid)) {
-		BATCH(CMD_POLY_STIPPLE_OFFSET << 16);
-		BATCH(0);
-	}
-	igt_assert_eq(len % 2, 0);
-	BATCH(MI_NOOP);
-	BATCH(MI_BATCH_BUFFER_END);
-
-	drm_intel_bo_subdata(special_bo, 0, 4096, data);
-	special_batch_len = len*4;
-}
-
-static void emit_dummy_load(int pitch)
-{
-	int i;
-	uint32_t tile_flags = 0;
-
-	if (IS_965(devid)) {
-		pitch /= 4;
-		tile_flags = XY_SRC_COPY_BLT_SRC_TILED |
-			XY_SRC_COPY_BLT_DST_TILED;
-	}
-
-	for (i = 0; i < 10; i++) {
-		BLIT_COPY_BATCH_START(tile_flags);
-		OUT_BATCH((3 << 24) | /* 32 bits */
-			  (0xcc << 16) | /* copy ROP */
-			  pitch);
-		OUT_BATCH(0 << 16 | 1024);
-		OUT_BATCH((2048) << 16 | (2048));
-		OUT_RELOC_FENCED(dummy_bo, I915_GEM_DOMAIN_RENDER, I915_GEM_DOMAIN_RENDER, 0);
-		OUT_BATCH(0 << 16 | 0);
-		OUT_BATCH(pitch);
-		OUT_RELOC_FENCED(dummy_bo, I915_GEM_DOMAIN_RENDER, 0, 0);
-		ADVANCE_BATCH();
-
-		if (batch->gen >= 6) {
-			BEGIN_BATCH(3, 0);
-			OUT_BATCH(XY_SETUP_CLIP_BLT_CMD);
-			OUT_BATCH(0);
-			OUT_BATCH(0);
-			ADVANCE_BATCH();
-		}
-	}
-	intel_batchbuffer_flush(batch);
-}
-
-static void reloc_and_emit(int fd, drm_intel_bo *target_bo, bool faulting_reloc)
-{
-	struct drm_i915_gem_execbuffer2 execbuf;
-	struct drm_i915_gem_exec_object2 exec[2];
-	struct drm_i915_gem_relocation_entry reloc[1];
-	uint32_t handle_relocs;
-	void *gtt_relocs;
-
-	memset(&execbuf, 0, sizeof(execbuf));
-	memset(exec, 0, sizeof(exec));
-	memset(reloc, 0, sizeof(reloc));
-
-	exec[0].handle = target_bo->handle;
-
-	reloc[0].offset = special_reloc_ofs;
-	reloc[0].target_handle = target_bo->handle;
-	reloc[0].read_domains = I915_GEM_DOMAIN_RENDER;
-	reloc[0].write_domain = I915_GEM_DOMAIN_RENDER;
-	/* We do not track the last patched value, so force the relocation
-	 * every time.
-	 */
-	reloc[0].presumed_offset = -1;
-
-	handle_relocs = gem_create(fd, 4096);
-	gem_write(fd, handle_relocs, 0, reloc, sizeof(reloc));
-	gtt_relocs = gem_mmap__gtt(fd, handle_relocs, 4096,
-				   PROT_READ | PROT_WRITE);
-
-	exec[1].handle = special_bo->handle;
-	exec[1].relocation_count = 1;
-	/* A newly mmap gtt bo will fault on first access. */
-	if (faulting_reloc)
-		exec[1].relocs_ptr = to_user_pointer(gtt_relocs);
-	else
-		exec[1].relocs_ptr = to_user_pointer(reloc);
-
-	execbuf.buffers_ptr = to_user_pointer(exec);
-	execbuf.buffer_count = 2;
-	execbuf.batch_len = special_batch_len;
-	if (intel_gen(devid) >= 6)
-		execbuf.flags |= I915_EXEC_BLT;
-
-	gem_execbuf(fd, &execbuf);
-
-	gem_close(fd, handle_relocs);
-}
-
-static igt_hang_t no_hang(int fd)
-{
-	return (igt_hang_t){0};
-}
-
-static igt_hang_t bcs_hang(int fd)
-{
-	return igt_hang_ring(fd, I915_EXEC_BLT);
-}
-
-static void do_test(int fd, bool faulting_reloc,
-		    igt_hang_t (*do_hang)(int fd))
-{
-	uint32_t tiling_mode = I915_TILING_X;
-	unsigned long pitch, act_size;
-	uint32_t test;
-	int i;
-
-	if (faulting_reloc)
-		igt_disable_prefault();
-
-	act_size = 2048;
-	dummy_bo = drm_intel_bo_alloc_tiled(bufmgr, "tiled dummy_bo", act_size, act_size,
-				      4, &tiling_mode, &pitch, 0);
-
-	drm_intel_bo_subdata(dummy_bo, 0, act_size*act_size*4, blob);
-
-	create_special_bo();
-
-	for (i = 0; i < NUM_TARGET_BOS; i++) {
-		igt_hang_t hang;
-
-		pc_target_bo[i] = drm_intel_bo_alloc(bufmgr, "special batch", 4096, 4096);
-		emit_dummy_load(pitch);
-		igt_assert(pc_target_bo[i]->offset == 0);
-		hang = do_hang(fd);
-
-		reloc_and_emit(fd, pc_target_bo[i], faulting_reloc);
-
-		igt_post_hang_ring(fd, hang);
-	}
-
-	/* Only check at the end to avoid unnecessary synchronous behaviour. */
-	for (i = 0; i < NUM_TARGET_BOS; i++) {
-		drm_intel_bo_get_subdata(pc_target_bo[i], 0, 4, &test);
-		igt_assert_f(test == 0xdeadbeef,
-			     "mismatch in buffer %i: 0x%08x instead of 0xdeadbeef\n", i, test);
-		drm_intel_bo_unreference(pc_target_bo[i]);
-	}
-
-	drm_intel_gem_bo_map_gtt(dummy_bo);
-	drm_intel_gem_bo_unmap_gtt(dummy_bo);
-
-	drm_intel_bo_unreference(special_bo);
-	drm_intel_bo_unreference(dummy_bo);
-
-	if (faulting_reloc)
-		igt_enable_prefault();
-}
-
-#define INTERRUPT	(1 << 0)
-#define FAULTING	(1 << 1)
-#define THRASH		(1 << 2)
-#define THRASH_INACTIVE	(1 << 3)
-#define HANG		(1 << 4)
-#define ALL_FLAGS	(HANG | INTERRUPT | FAULTING | THRASH | THRASH_INACTIVE)
-static void do_forked_test(int fd, unsigned flags)
-{
-	int num_threads = sysconf(_SC_NPROCESSORS_ONLN);
-	struct igt_helper_process thrasher = {};
-
-	if (flags & HANG)
-		igt_require_hang_ring(fd, I915_EXEC_BLT);
-
-	if (flags & (THRASH | THRASH_INACTIVE)) {
-		igt_fork_helper(&thrasher) {
-			uint64_t val;
-
-			val = DROP_RETIRE | DROP_BOUND | DROP_UNBOUND;
-			if (!(flags & THRASH_INACTIVE))
-				val |= DROP_ACTIVE | DROP_SHRINK_ALL;
-
-			while (1) {
-				usleep(1000);
-				igt_drop_caches_set(fd, val);
-			}
-		}
-	}
-
-	igt_fork(i, num_threads * 4) {
-		/* re-create process local data */
-		fd = drm_open_driver(DRIVER_INTEL);
-		bufmgr = drm_intel_bufmgr_gem_init(fd, 4096);
-		batch = intel_batchbuffer_alloc(bufmgr, devid);
-
-		if (flags & INTERRUPT)
-			igt_fork_signal_helper();
-
-		do_test(fd, flags & FAULTING, flags & HANG ? bcs_hang : no_hang);
-
-		if (flags & INTERRUPT)
-			igt_stop_signal_helper();
-	}
-
-	igt_waitchildren();
-	if (flags & (THRASH | THRASH_INACTIVE))
-		igt_stop_helper(&thrasher);
-}
-
-int fd;
-
-#define MAX_BLT_SIZE 128
-igt_main
-{
-	memset(blob, 'A', sizeof(blob));
-
-	igt_fixture {
-		fd = drm_open_driver(DRIVER_INTEL);
-		igt_require_gem(fd);
-		gem_require_blitter(fd);
-		bufmgr = drm_intel_bufmgr_gem_init(fd, 4096);
-		/* disable reuse, otherwise the test fails */
-		//drm_intel_bufmgr_gem_enable_reuse(bufmgr);
-		devid = intel_get_drm_devid(fd);
-		batch = intel_batchbuffer_alloc(bufmgr, devid);
-	}
-
-	igt_subtest("normal")
-		do_test(fd, false, no_hang);
-
-	igt_subtest("faulting-reloc")
-		do_test(fd, true, no_hang);
-
-	igt_fork_signal_helper();
-	igt_subtest("interruptible")
-		do_test(fd, false, no_hang);
-
-	igt_subtest("interruptible-hang")
-		do_test(fd, false, bcs_hang);
-
-	igt_subtest("faulting-reloc-interruptible")
-		do_test(fd, true, no_hang);
-
-	igt_subtest("faulting-reloc-interruptible-hang")
-		do_test(fd, true, bcs_hang);
-	igt_stop_signal_helper();
-
-	for (unsigned flags = 0; flags <= ALL_FLAGS; flags++) {
-		if ((flags & THRASH) && (flags & THRASH_INACTIVE))
-			continue;
-
-		igt_subtest_f("forked%s%s%s%s%s",
-			      flags & INTERRUPT ? "-interruptible" : "",
-			      flags & FAULTING ? "-faulting-reloc" : "",
-			      flags & THRASH ? "-thrashing" : "",
-			      flags & THRASH_INACTIVE ? "-thrash-inactive" : "",
-			      flags & HANG ? "-hang": "")
-			do_forked_test(fd, flags);
-	}
-
-	igt_fixture {
-		intel_batchbuffer_free(batch);
-		drm_intel_bufmgr_destroy(bufmgr);
-
-		close(fd);
-	}
-}
diff --git a/tests/meson.build b/tests/meson.build
index 62783e2cf..bc10b6550 100644
--- a/tests/meson.build
+++ b/tests/meson.build
@@ -186,8 +186,6 @@ i915_progs = [
 	'gem_read_read_speed',
 	'gem_readwrite',
 	'gem_reg_read',
-	'gem_reloc_overflow',
-	'gem_reloc_vs_gpu',
 	'gem_render_copy',
 	'gem_render_copy_redux',
 	'gem_render_linear_blits',
-- 
2.25.0


--===============1520050478==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1520050478==--
