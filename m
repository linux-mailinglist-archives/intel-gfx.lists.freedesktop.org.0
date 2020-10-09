Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A2A2891A0
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Oct 2020 21:16:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0F986ED8E;
	Fri,  9 Oct 2020 19:16:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B2CC6ED8A;
 Fri,  9 Oct 2020 19:16:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22672419-1500050 
 for multiple; Fri, 09 Oct 2020 20:16:42 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Oct 2020 20:16:40 +0100
Message-Id: <20201009191640.2006274-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201009191640.2006274-1-chris@chris-wilson.co.uk>
References: <20201009191640.2006274-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/2] i915/gem_ctx_persistence: Verify
 userptr vs context cleanup
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

Verify that the wait for userptr cleanup is after we have cancelled the
non-persistent hanging context.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
---
 tests/i915/gem_ctx_persistence.c | 47 ++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
index 09814f24f..174af8361 100644
--- a/tests/i915/gem_ctx_persistence.c
+++ b/tests/i915/gem_ctx_persistence.c
@@ -735,6 +735,50 @@ static void test_process(int i915)
 	gem_quiescent_gpu(i915);
 }
 
+static void test_userptr(int i915)
+{
+	int fence, sv[2];
+
+	cleanup(i915);
+
+	/*
+	 * When a process dies early, do the userptr or the contexts get cleaned
+	 * up first? Since we only cancel the outstanding work along with the
+	 * context, but wait on userptr cleanup for oustanding work, if
+	 * the userptr is before the context, we end up in a scenario where
+	 * we wait forever for the non-peristent context.
+	 */
+
+	igt_require(socketpair(AF_UNIX, SOCK_DGRAM, 0, sv) == 0);
+
+	igt_fork(child, 1) {
+		igt_spin_t *spin;
+
+		i915 = gem_reopen_driver(i915);
+		gem_quiescent_gpu(i915);
+
+		gem_context_set_persistence(i915, 0, false);
+		spin = igt_spin_new(i915, .flags = IGT_SPIN_FENCE_OUT | IGT_SPIN_USERPTR);
+		sendfd(sv[0], spin->out_fence);
+
+		igt_list_del(&spin->link); /* prevent autocleanup */
+	}
+	close(sv[0]);
+	igt_waitchildren();
+	flush_delayed_fput(i915);
+
+	fence = recvfd(sv[1]);
+	close(sv[1]);
+
+	igt_assert_eq(wait_for_status(fence, reset_timeout_ms), -EIO);
+	close(fence);
+
+	/* We have to manually clean up the orphaned spinner */
+	igt_drop_caches_set(i915, DROP_RESET_ACTIVE);
+
+	gem_quiescent_gpu(i915);
+}
+
 static void test_process_mixed(int pfd, unsigned int engine)
 {
 	int fence[2], sv[2];
@@ -1287,6 +1331,9 @@ igt_main
 	igt_subtest("processes")
 		test_processes(i915);
 
+	igt_subtest("userptr")
+		test_userptr(i915);
+
 	igt_subtest("hostile")
 		test_nohangcheck_hostile(i915);
 	igt_subtest("hang")
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
