Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE831C06F9
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 21:51:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D371C6E899;
	Thu, 30 Apr 2020 19:51:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4570F6E46F;
 Thu, 30 Apr 2020 19:51:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21076036-1500050 
 for multiple; Thu, 30 Apr 2020 20:51:35 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 20:51:34 +0100
Message-Id: <20200430195134.1044125-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] igt/gem_mmap_offset: Simulate gdb
 inspecting any mmap using ptrace()
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

gdb uses ptrace() to peek and poke bytes of the target's address space.
The kernel must implement an vm_ops->access() handler or else gdb will
be unable to inspect the pointer and report it as out-of-bounds. Worse
than useless as it causes immediate suspicion of the valid GPU pointer.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_mmap_offset.c | 91 +++++++++++++++++++++++++++++++++++-
 1 file changed, 90 insertions(+), 1 deletion(-)

diff --git a/tests/i915/gem_mmap_offset.c b/tests/i915/gem_mmap_offset.c
index 1ec963b25..c10cf606f 100644
--- a/tests/i915/gem_mmap_offset.c
+++ b/tests/i915/gem_mmap_offset.c
@@ -23,9 +23,12 @@
 
 #include <errno.h>
 #include <pthread.h>
+#include <signal.h>
 #include <stdatomic.h>
-#include <sys/stat.h>
 #include <sys/ioctl.h>
+#include <sys/ptrace.h>
+#include <sys/stat.h>
+#include <sys/wait.h>
 #include "drm.h"
 
 #include "igt.h"
@@ -265,6 +268,89 @@ static void pf_nonblock(int i915)
 	igt_spin_free(i915, spin);
 }
 
+static void *memchr_inv(const void *s, int c, size_t n)
+{
+	const uint8_t *us = s;
+	const uint8_t uc = c;
+
+#pragma GCC diagnostic push
+#pragma GCC diagnostic ignored "-Wcast-qual"
+	while (n--) {
+		if (*us != uc)
+			return (void *) us;
+		us++;
+	}
+#pragma GCC diagnostic pop
+
+	return NULL;
+}
+
+static void test_ptrace(int i915)
+{
+	const unsigned int SZ = 3 * 4096;
+	unsigned long *ptr, *cpy;
+	unsigned long AA, CC;
+	uint32_t bo;
+
+	memset(&AA, 0xaa, sizeof(AA));
+	memset(&CC, 0x55, sizeof(CC));
+
+	cpy = malloc(SZ);
+	bo = gem_create(i915, SZ);
+
+	for_each_mmap_offset_type(i915, t) {
+		igt_dynamic_f("%s", t->name) {
+			pid_t pid;
+
+			ptr = __mmap_offset(i915, bo, 0, SZ,
+					PROT_READ | PROT_WRITE,
+					t->type);
+			if (!ptr)
+				continue;
+
+			memset(cpy, AA, SZ);
+			memset(ptr, CC, SZ);
+
+			igt_assert(!memchr_inv(ptr, CC, SZ));
+			igt_assert(!memchr_inv(cpy, AA, SZ));
+
+			igt_fork(child, 1) {
+				ptrace(PTRACE_TRACEME, 0, NULL, NULL);
+				raise(SIGSTOP);
+			}
+
+			/* Wait for the child to ready themselves [SIGSTOP] */
+			pid = wait(NULL);
+
+			ptrace(PTRACE_ATTACH, pid, NULL, NULL);
+			for (int i = 0; i < SZ / sizeof(long); i++) {
+				long ret;
+
+				ret = ptrace(PTRACE_PEEKDATA, pid, ptr + i);
+				igt_assert_eq_u64(ret, CC);
+				cpy[i] = ret;
+
+				ret = ptrace(PTRACE_POKEDATA, pid, ptr + i, AA);
+				igt_assert_eq(ret, 0l);
+			}
+			ptrace(PTRACE_DETACH, pid, NULL, NULL);
+
+			/* Wakeup the child for it to exit */
+			kill(SIGCONT, pid);
+			igt_waitchildren();
+
+			/* The two buffers should now be swapped */
+			igt_assert(!memchr_inv(ptr, AA, SZ));
+			igt_assert(!memchr_inv(cpy, CC, SZ));
+
+			munmap(ptr, SZ);
+		}
+	}
+
+	gem_close(i915, bo);
+	free(cpy);
+}
+
 static void close_race(int i915, int timeout)
 {
 	const int ncpus = sysconf(_SC_NPROCESSORS_ONLN);
@@ -530,6 +616,9 @@ igt_main
 	igt_subtest_f("pf-nonblock")
 		pf_nonblock(i915);
 
+	igt_subtest_with_dynamic("ptrace")
+		test_ptrace(i915);
+
 	igt_describe("Check race between close and mmap offset between threads");
 	igt_subtest_f("close-race")
 		close_race(i915, 20);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
