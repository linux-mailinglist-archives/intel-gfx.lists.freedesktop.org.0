Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EE5166399
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 17:57:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9FD26EDE8;
	Thu, 20 Feb 2020 16:57:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C429F89E35;
 Thu, 20 Feb 2020 16:57:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20291269-1500050 
 for multiple; Thu, 20 Feb 2020 16:57:27 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Feb 2020 16:57:21 +0000
Message-Id: <20200220165721.2056191-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] sw_sync: Use fixed runtime for
 sync_expired_merge
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert from using a fixed number of iterations (1 million), to using a
fixed runtime so that we have predictable (and shorter!) run times across
a wide variety of machines.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Martin Peres <martin.peres@linux.intel.com>
---
 tests/sw_sync.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/tests/sw_sync.c b/tests/sw_sync.c
index 626b6d39f..6e439496d 100644
--- a/tests/sw_sync.c
+++ b/tests/sw_sync.c
@@ -747,30 +747,27 @@ static void test_sync_multi_producer_single_consumer(void)
 
 static void test_sync_expired_merge(void)
 {
-	int iterations = 1 << 20;
 	int timeline;
-	int i;
-	int fence_expired, fence_merged;
+	int expired;
 
 	timeline = sw_sync_timeline_create();
 
 	sw_sync_timeline_inc(timeline, 100);
-	fence_expired = sw_sync_timeline_create_fence(timeline, 1);
-	igt_assert_f(sync_fence_wait(fence_expired, 0) == 0,
+	expired = sw_sync_timeline_create_fence(timeline, 1);
+	igt_assert_f(sync_fence_wait(expired, 0) == 0,
 	             "Failure waiting for expired fence\n");
 
-	fence_merged = sync_fence_merge(fence_expired, fence_expired);
-	close(fence_merged);
+	close(sync_fence_merge(expired, expired));
 
-	for (i = 0; i < iterations; i++) {
-		int fence = sync_fence_merge(fence_expired, fence_expired);
+	igt_until_timeout(2) {
+		int fence = sync_fence_merge(expired, expired);
 
 		igt_assert_f(sync_fence_wait(fence, -1) == 0,
 			     "Failure waiting on fence\n");
 		close(fence);
 	}
 
-	close(fence_expired);
+	close(expired);
 }
 
 static void test_sync_random_merge(void)
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
