Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DD223A1C2
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 11:31:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 069216E22A;
	Mon,  3 Aug 2020 09:31:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E7456E029;
 Mon,  3 Aug 2020 09:30:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22015078-1500050 
 for multiple; Mon, 03 Aug 2020 10:30:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Mon,  3 Aug 2020 10:30:51 +0100
Message-Id: <20200803093051.2112-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_parallel: Add basic userptr
 thrashing
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

Mix in a modicum of generic userptr thrashing for a quick (1s) BAT pass,
as we have currently no coverage of userptr at all in BAT.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_parallel.c        | 31 +++++++++++++++++++++++++--
 tests/intel-ci/fast-feedback.testlist |  5 ++++-
 2 files changed, 33 insertions(+), 3 deletions(-)

diff --git a/tests/i915/gem_exec_parallel.c b/tests/i915/gem_exec_parallel.c
index bf94b93d4..96feb8250 100644
--- a/tests/i915/gem_exec_parallel.c
+++ b/tests/i915/gem_exec_parallel.c
@@ -45,6 +45,7 @@ static inline uint32_t hash32(uint32_t val)
 
 #define CONTEXTS 0x1
 #define FDS 0x2
+#define USERPTR 0x4
 
 #define NUMOBJ 16
 
@@ -164,6 +165,30 @@ static void check_bo(int fd, uint32_t handle, int pass, struct thread *threads)
 	igt_assert_eq_u32(result, x);
 }
 
+static uint32_t handle_create(int fd, unsigned int flags, void **data)
+{
+	if (flags & USERPTR) {
+		uint32_t handle;
+		void *ptr;
+
+		posix_memalign(&ptr, 4096, 4096);
+		gem_userptr(fd, ptr, 4096, 0, 0, &handle);
+		*data = ptr;
+
+		return handle;
+	}
+
+	return gem_create(fd, 4096);
+}
+
+static void handle_close(int fd, unsigned int flags, uint32_t handle, void *data)
+{
+	if (flags & USERPTR)
+		free(data);
+
+	gem_close(fd, handle);
+}
+
 static void all(int fd, struct intel_execution_engine2 *engine, unsigned flags)
 {
 	const int gen = intel_gen(intel_get_drm_devid(fd));
@@ -172,6 +197,7 @@ static void all(int fd, struct intel_execution_engine2 *engine, unsigned flags)
 	struct thread *threads;
 	uint32_t scratch[NUMOBJ], handle[NUMOBJ];
 	unsigned engines[16], nengine;
+	void *arg[NUMOBJ];
 	int go;
 	int i;
 
@@ -196,7 +222,7 @@ static void all(int fd, struct intel_execution_engine2 *engine, unsigned flags)
 	igt_require(nengine);
 
 	for (i = 0; i < NUMOBJ; i++) {
-		scratch[i] = handle[i] = gem_create(fd, 4096);
+		scratch[i] = handle[i] = handle_create(fd, flags, &arg[i]);
 		if (flags & FDS)
 			scratch[i] = gem_flink(fd, handle[i]);
 	}
@@ -233,7 +259,7 @@ static void all(int fd, struct intel_execution_engine2 *engine, unsigned flags)
 
 	for (i = 0; i < NUMOBJ; i++) {
 		check_bo(fd, handle[i], i, threads);
-		gem_close(fd, handle[i]);
+		handle_close(fd, flags, handle[i], arg[i]);
 	}
 
 	igt_assert_eq(intel_detect_and_clear_missed_interrupts(fd), 0);
@@ -251,6 +277,7 @@ igt_main
 		{ "basic", 0 },
 		{ "contexts", CONTEXTS },
 		{ "fds", FDS },
+		{ "userptr", USERPTR },
 		{ NULL }
 	};
 	int fd;
diff --git a/tests/intel-ci/fast-feedback.testlist b/tests/intel-ci/fast-feedback.testlist
index b796b2642..ff460e1a6 100644
--- a/tests/intel-ci/fast-feedback.testlist
+++ b/tests/intel-ci/fast-feedback.testlist
@@ -19,7 +19,10 @@ igt@gem_exec_fence@basic-wait
 igt@gem_exec_fence@basic-await
 igt@gem_exec_fence@nb-await
 igt@gem_exec_gttfill@basic
-igt@gem_exec_parallel@engines
+igt@gem_exec_parallel@basic
+igt@gem_exec_parallel@userptr
+igt@gem_exec_parallel@fds
+igt@gem_exec_parallel@contexts
 igt@gem_exec_store@basic
 igt@gem_exec_suspend@basic-s0
 igt@gem_exec_suspend@basic-s3
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
