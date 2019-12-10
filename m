Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B001187EC
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 13:19:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EF516E8C6;
	Tue, 10 Dec 2019 12:19:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59E716E8D4;
 Tue, 10 Dec 2019 12:19:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19526075-1500050 
 for multiple; Tue, 10 Dec 2019 12:19:34 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 12:19:34 +0000
Message-Id: <20191210121934.3845438-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/perf_pmu: Cap target number of
 interrupts
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

Limit the maximum number of interrupts in order to avoid overburdening
older CPUs and GPUs.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/perf_pmu.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/tests/perf_pmu.c b/tests/perf_pmu.c
index 33fb4d653..e1bbf2410 100644
--- a/tests/perf_pmu.c
+++ b/tests/perf_pmu.c
@@ -1274,11 +1274,15 @@ static void cpu_hotplug(int gem_fd)
 	assert_within_epsilon(val, ts[1] - ts[0], tolerance);
 }
 
+static int target_num_interrupts(int i915)
+{
+	return min(gem_measure_ring_inflight(i915, I915_EXEC_DEFAULT, 0), 30);
+}
+
 static void
 test_interrupts(int gem_fd)
 {
-	const int target =
-		gem_measure_ring_inflight(gem_fd, I915_EXEC_DEFAULT, 0);
+	const int target = target_num_interrupts(gem_fd);
 	const unsigned int test_duration_ms = 1000;
 	igt_spin_t *spin[target];
 	struct pollfd pfd;
@@ -1342,8 +1346,7 @@ test_interrupts(int gem_fd)
 static void
 test_interrupts_sync(int gem_fd)
 {
-	const int target =
-		gem_measure_ring_inflight(gem_fd, I915_EXEC_DEFAULT, 0);
+	const int target = target_num_interrupts(gem_fd);
 	const unsigned int test_duration_ms = 1000;
 	igt_spin_t *spin[target];
 	struct pollfd pfd;
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
