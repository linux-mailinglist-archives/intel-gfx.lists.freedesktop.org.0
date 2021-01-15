Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE6B2F82AC
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 18:43:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48C4C89C1E;
	Fri, 15 Jan 2021 17:43:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C54289C1E;
 Fri, 15 Jan 2021 17:43:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23609665-1500050 
 for multiple; Fri, 15 Jan 2021 17:42:58 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jan 2021 17:42:56 +0000
Message-Id: <20210115174256.1244801-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_userptr_blits: Check set-domain
 on userptr for validation
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

We use set-domain on userptr to validate that get-user-pages is
applicable to the address range. Let's perform a very basic test to
exercise this combination.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_userptr_blits.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/tests/i915/gem_userptr_blits.c b/tests/i915/gem_userptr_blits.c
index 8765123e0..1add307a2 100644
--- a/tests/i915/gem_userptr_blits.c
+++ b/tests/i915/gem_userptr_blits.c
@@ -2185,6 +2185,29 @@ static void test_invalidate_close_race(int fd, bool overlap, int timeout)
 	free(t_data.ptr);
 }
 
+static void test_sd_probe(int i915)
+{
+	uint32_t handle;
+	void *page;
+
+	page = mmap(NULL, 4096, PROT_READ | PROT_WRITE,
+		   MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);
+
+	gem_userptr(i915, page, 4096, 0, 0, &handle);
+	igt_assert_eq(__gem_set_domain(i915, handle,
+				       I915_GEM_DOMAIN_GTT, 0),
+		      0);
+	gem_close(i915, handle);
+
+	munmap(page, 4096);
+
+	gem_userptr(i915, page, 4096, 0, 0, &handle);
+	igt_assert_eq(__gem_set_domain(i915, handle,
+				       I915_GEM_DOMAIN_GTT, 0),
+		      -EFAULT);
+	gem_close(i915, handle);
+}
+
 struct ufd_thread {
 	uint32_t *page;
 	int i915;
@@ -2379,6 +2402,9 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
 		igt_subtest("forbidden-operations")
 			test_forbidden_ops(fd);
 
+		igt_subtest("sd-probe")
+			test_sd_probe(fd);
+
 		igt_subtest("userfault")
 			test_userfault(fd);
 
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
