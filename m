Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C2423A29A
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 12:15:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8C5C6E243;
	Mon,  3 Aug 2020 10:15:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1638D6E23F;
 Mon,  3 Aug 2020 10:15:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22015697-1500050 
 for multiple; Mon, 03 Aug 2020 11:14:57 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Aug 2020 11:14:58 +0100
Message-Id: <20200803101458.2369-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200803093051.2112-1-chris@chris-wilson.co.uk>
References: <20200803093051.2112-1-chris@chris-wilson.co.uk>
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Mix in a modicum of generic userptr thrashing for a quick (1s) BAT pass,
as we have currently no coverage of userptr at all in BAT.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_parallel.c | 31 +++++++++++++++++++++++++++++--
 1 file changed, 29 insertions(+), 2 deletions(-)

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
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
