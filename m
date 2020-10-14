Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD7F28DF0F
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 12:40:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91FFC6EA3C;
	Wed, 14 Oct 2020 10:40:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C270F6EA3B;
 Wed, 14 Oct 2020 10:40:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22711495-1500050 
 for multiple; Wed, 14 Oct 2020 11:40:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Wed, 14 Oct 2020 11:40:35 +0100
Message-Id: <20201014104038.2554985-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201014104038.2554985-1-chris@chris-wilson.co.uk>
References: <20201014104038.2554985-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 07/10] i915/gem_userptr_blits: Test
 execution isolation
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

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_userptr_blits.c | 40 ++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/tests/i915/gem_userptr_blits.c b/tests/i915/gem_userptr_blits.c
index 01498edad..6f2e89269 100644
--- a/tests/i915/gem_userptr_blits.c
+++ b/tests/i915/gem_userptr_blits.c
@@ -586,6 +586,40 @@ static int test_access_control(int fd)
 	return 0;
 }
 
+static void test_exec_isolation(int fd)
+{
+	igt_fork(child, 1) {
+		igt_spin_t *spin = igt_spin_new(fd, .flags = IGT_SPIN_USERPTR);
+		gem_execbuf(fd, &spin->execbuf);
+		igt_spin_free(fd, spin);
+	}
+
+	igt_set_timeout(10, "blocked!");
+	igt_until_timeout(2)
+		igt_spin_free(fd, igt_spin_new(fd, .flags = IGT_SPIN_USERPTR));
+	igt_reset_timeout();
+
+	igt_waitchildren();
+}
+
+static void test_unmap_isolation(int fd)
+{
+	igt_spin_t *spin = igt_spin_new(fd, .flags = IGT_SPIN_USERPTR);
+
+	igt_fork(child, 1) {
+		gem_execbuf(fd, &spin->execbuf);
+		munmap(spin->batch, 4096);
+	}
+	igt_waitchildren();
+
+	igt_spin_end(spin);
+	mprotect(spin->batch, 4096, PROT_READ);
+	igt_assert_eq(__gem_execbuf(fd, &spin->execbuf), -EFAULT);
+	mprotect(spin->batch, 4096, PROT_WRITE);
+
+	igt_spin_free(fd, spin);
+}
+
 static int test_invalid_null_pointer(int fd)
 {
 	uint32_t handle;
@@ -2388,6 +2422,12 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
 	igt_subtest("access-control")
 		test_access_control(fd);
 
+	igt_subtest("exec-isolation")
+		test_exec_isolation(fd);
+
+	igt_subtest("unmap-isolation")
+		test_unmap_isolation(fd);
+
 	igt_fixture
 		free(can_mmap);
 }
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
