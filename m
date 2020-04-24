Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCA11B71D7
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 12:19:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E123F6E02C;
	Fri, 24 Apr 2020 10:19:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D79286E02C;
 Fri, 24 Apr 2020 10:19:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21006170-1500050 
 for multiple; Fri, 24 Apr 2020 11:19:42 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Apr 2020 11:19:41 +0100
Message-Id: <20200424101941.4109878-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] perf: Verify rc6 works first
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

We want to verify that OA disables rc6 (so that its metrics are not
interrupted by the device sleeping), and once OA is finished, the device
is allowed to sleep again. If rc6 is broken, the test fails since rc6
never recovers -- but that is expected as rc6 is broken.

Skip the test rather than fail for an external issue; we know rc6 is
broken on ehl!

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/perf.c | 28 ++++++++++++++++++----------
 1 file changed, 18 insertions(+), 10 deletions(-)

diff --git a/tests/perf.c b/tests/perf.c
index b7d5e50e3..24d245496 100644
--- a/tests/perf.c
+++ b/tests/perf.c
@@ -4147,27 +4147,35 @@ test_rc6_disable(void)
 		.num_properties = sizeof(properties) / 16,
 		.properties_ptr = to_user_pointer(properties),
 	};
-	unsigned long n_events_start, n_events_end;
-	unsigned long rc6_enabled;
+	unsigned long rc6_start, rc6_end, rc6_enabled;
 
 	rc6_enabled = 0;
 	igt_sysfs_scanf(sysfs, "power/rc6_enable", "%lu", &rc6_enabled);
 	igt_require(rc6_enabled);
 
+	/* Verify rc6 is functional by measuring residency while idle */
+	gem_quiescent_gpu(drm_fd);
+	rc6_start = rc6_residency_ms();
+	usleep(50000);
+	rc6_end = rc6_residency_ms();
+	igt_require(rc6_end != rc6_start);
+
+	/* While OA is active, we keep rc6 disabled so we don't lose metrics */
 	stream_fd = __perf_open(drm_fd, &param, false);
 
-	n_events_start = rc6_residency_ms();
-	nanosleep(&(struct timespec){ .tv_sec = 0, .tv_nsec = 500000000 }, NULL);
-	n_events_end = rc6_residency_ms();
-	igt_assert_eq(n_events_end - n_events_start, 0);
+	rc6_start = rc6_residency_ms();
+	usleep(50000);
+	rc6_end = rc6_residency_ms();
+	igt_assert_eq(rc6_end - rc6_start, 0);
 
 	__perf_close(stream_fd);
 	gem_quiescent_gpu(drm_fd);
 
-	n_events_start = rc6_residency_ms();
-	nanosleep(&(struct timespec){ .tv_sec = 1, .tv_nsec = 0 }, NULL);
-	n_events_end = rc6_residency_ms();
-	igt_assert_neq(n_events_end - n_events_start, 0);
+	/* But once OA is closed, we expect the device to sleep again */
+	rc6_start = rc6_residency_ms();
+	usleep(50000);
+	rc6_end = rc6_residency_ms();
+	igt_assert_neq(rc6_end - rc6_start, 0);
 }
 
 static void
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
