Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C55296177
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Oct 2020 17:09:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13D986E102;
	Thu, 22 Oct 2020 15:09:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 557996E0C4;
 Thu, 22 Oct 2020 15:09:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22776346-1500050 
 for multiple; Thu, 22 Oct 2020 16:09:46 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Oct 2020 16:09:43 +0100
Message-Id: <20201022150943.3041180-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_mmap_gtt: Trim object size for
 ptracing
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

For verifying vm_ops.access we only need a page or two to check we both
advance across a page boundary and find the right offset within a page.
16MiB is overkill for the slow uncached reads through the slow ptrace
interface, so reduce the object size by a couple of orders of magnitude.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_mmap_gtt.c | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/tests/i915/gem_mmap_gtt.c b/tests/i915/gem_mmap_gtt.c
index 6637bba06..3cce19e9a 100644
--- a/tests/i915/gem_mmap_gtt.c
+++ b/tests/i915/gem_mmap_gtt.c
@@ -525,6 +525,7 @@ static void *memchr_inv(const void *s, int c, size_t n)
 static void
 test_ptrace(int fd)
 {
+	unsigned long sz = 16 * 4096;
 	unsigned long AA, CC;
 	unsigned long *gtt, *cpy;
 	uint32_t bo;
@@ -533,16 +534,16 @@ test_ptrace(int fd)
 	memset(&AA, 0xaa, sizeof(AA));
 	memset(&CC, 0x55, sizeof(CC));
 
-	cpy = malloc(OBJECT_SIZE);
-	memset(cpy, AA, OBJECT_SIZE);
+	cpy = malloc(sz);
+	memset(cpy, AA, sz);
 
-	bo = gem_create(fd, OBJECT_SIZE);
-	gtt = mmap_bo(fd, bo, OBJECT_SIZE);
-	memset(gtt, CC, OBJECT_SIZE);
+	bo = gem_create(fd, sz);
+	gtt = mmap_bo(fd, bo, sz);
+	memset(gtt, CC, sz);
 	gem_close(fd, bo);
 
-	igt_assert(!memchr_inv(gtt, CC, OBJECT_SIZE));
-	igt_assert(!memchr_inv(cpy, AA, OBJECT_SIZE));
+	igt_assert(!memchr_inv(gtt, CC, sz));
+	igt_assert(!memchr_inv(cpy, AA, sz));
 
 	igt_fork(child, 1) {
 		ptrace(PTRACE_TRACEME, 0, NULL, NULL);
@@ -553,7 +554,7 @@ test_ptrace(int fd)
 	pid = wait(NULL);
 
 	ptrace(PTRACE_ATTACH, pid, NULL, NULL);
-	for (int i = 0; i < OBJECT_SIZE / sizeof(long); i++) {
+	for (int i = 0; i < sz / sizeof(long); i++) {
 		long ret;
 
 		ret = ptrace(PTRACE_PEEKDATA, pid, gtt + i);
@@ -570,10 +571,10 @@ test_ptrace(int fd)
 	igt_waitchildren();
 
 	/* The contents of the two buffers should now be swapped */
-	igt_assert(!memchr_inv(gtt, AA, OBJECT_SIZE));
-	igt_assert(!memchr_inv(cpy, CC, OBJECT_SIZE));
+	igt_assert(!memchr_inv(gtt, AA, sz));
+	igt_assert(!memchr_inv(cpy, CC, sz));
 
-	munmap(gtt, OBJECT_SIZE);
+	munmap(gtt, sz);
 	free(cpy);
 }
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
