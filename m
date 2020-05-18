Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 994AB1D8A86
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 00:14:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 968096E0C2;
	Mon, 18 May 2020 22:14:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C5A46E096;
 Mon, 18 May 2020 22:14:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21235833-1500050 
 for multiple; Mon, 18 May 2020 23:14:08 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Mon, 18 May 2020 23:14:08 +0100
Message-Id: <20200518221408.1540038-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200518205010.1539621-1-chris@chris-wilson.co.uk>
References: <20200518205010.1539621-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] perf: Hide any leak in
 gen8-unprivileged-single-ctx-counters
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

gen8-unprivileged-single-counters appears to leak contexts, and does not
appear to be doing so intentionally.. Let's assume it's a bug in the
test and see if the contexts are released along with the device fd.
(If they are not released, that is more clearly an issue.)

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_fence.c | 2 +-
 tests/perf.c                | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
index 5b504e5c8..b88472c3a 100644
--- a/tests/i915/gem_exec_fence.c
+++ b/tests/i915/gem_exec_fence.c
@@ -1479,7 +1479,7 @@ static void test_syncobj_future_submit(int i915, unsigned int engine)
 	/*
 	 * Here we submit client A waiting on client B, but internally client
 	 * B has a semaphore that waits on client A. This relies on timeslicing
-	 * to reorder B before A, even though userspace has asked to submit
+	 * to reorder A before B, even though userspace has asked to submit
 	 * A & B simultaneously (and due to the sequence we will submit B
 	 * then A).
 	 */
diff --git a/tests/perf.c b/tests/perf.c
index d4ebae30d..c78f02a8d 100644
--- a/tests/perf.c
+++ b/tests/perf.c
@@ -3428,6 +3428,8 @@ gen8_test_single_ctx_render_target_writes_a_counter(void)
 				.format = test_set->perf_oa_format
 			};
 
+			drm_fd = gem_reopen_driver(drm_fd);
+
 			bufmgr = drm_intel_bufmgr_gem_init(drm_fd, 4096);
 			drm_intel_bufmgr_gem_enable_reuse(bufmgr);
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
