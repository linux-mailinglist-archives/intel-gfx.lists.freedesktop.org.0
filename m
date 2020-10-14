Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D10C628DF10
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 12:40:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0F456EA3F;
	Wed, 14 Oct 2020 10:40:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0F476EA38;
 Wed, 14 Oct 2020 10:40:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22711488-1500050 
 for multiple; Wed, 14 Oct 2020 11:40:40 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Wed, 14 Oct 2020 11:40:29 +0100
Message-Id: <20201014104038.2554985-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 01/10] i915/gem_userptr_blits: Tighten
 has_userptr()
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

We use has_userptr() to determine if the different flags are supported,
so it helps not to override the flags inside the test.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_userptr_blits.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/tests/i915/gem_userptr_blits.c b/tests/i915/gem_userptr_blits.c
index 268423dcd..01498edad 100644
--- a/tests/i915/gem_userptr_blits.c
+++ b/tests/i915/gem_userptr_blits.c
@@ -71,8 +71,7 @@
 #define PAGE_SIZE 4096
 #endif
 
-static uint32_t userptr_flags = I915_USERPTR_UNSYNCHRONIZED;
-
+static uint32_t userptr_flags;
 static bool *can_mmap;
 
 #define WIDTH 512
@@ -504,14 +503,11 @@ static int has_userptr(int fd)
 {
 	uint32_t handle = 0;
 	void *ptr;
-	uint32_t oldflags;
 	int ret;
 
 	igt_assert(posix_memalign(&ptr, PAGE_SIZE, PAGE_SIZE) == 0);
-	oldflags = userptr_flags;
-	gem_userptr_test_unsynchronized();
 	ret = __gem_userptr(fd, ptr, PAGE_SIZE, 0, userptr_flags, &handle);
-	userptr_flags = oldflags;
+	errno = 0;
 	if (ret != 0) {
 		free(ptr);
 		return 0;
@@ -2112,6 +2108,10 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
 
 	igt_subtest_group {
 		igt_fixture {
+			/* Either mode will do for parameter checking */
+			gem_userptr_test_synchronized();
+			if (!has_userptr(fd))
+				gem_userptr_test_unsynchronized();
 			igt_require(has_userptr(fd));
 		}
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
