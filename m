Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3DE1B3FD6
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 12:41:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 412FD6E3C7;
	Wed, 22 Apr 2020 10:41:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EFE76E3C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 10:41:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20981799-1500050 
 for multiple; Wed, 22 Apr 2020 11:41:03 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Apr 2020 11:41:01 +0100
Message-Id: <20200422104102.3598368-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/2] i915/gem_exec_balancer: Kick tasklets
 harder
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tasklet scheduling can unfortunately be quite predicated. Where we are
only caring about workload distribution and not initial execution
latency (see kick_kthreads), make that kick more precise.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 lib/igt_debugfs.h              |  7 +++++++
 tests/i915/gem_exec_balancer.c | 28 +++++++++++++++++-----------
 2 files changed, 24 insertions(+), 11 deletions(-)

diff --git a/lib/igt_debugfs.h b/lib/igt_debugfs.h
index 7d1a6175e..768341387 100644
--- a/lib/igt_debugfs.h
+++ b/lib/igt_debugfs.h
@@ -181,6 +181,13 @@ void igt_require_hpd_storm_ctl(int fd);
  * which will flush any RCU callbacks and deferred tasks.
  */
 #define DROP_RCU 0x200
+/**
+ * DROP_TASKLETS:
+ *
+ * Flushes the softirq tasklets on each CPU, such as used by the execution
+ * threads.
+ */
+#define DROP_TASKLETS 0x400
 /**
  * DROP_ALL:
  *
diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
index e9a893e90..9ec5a146e 100644
--- a/tests/i915/gem_exec_balancer.c
+++ b/tests/i915/gem_exec_balancer.c
@@ -24,6 +24,7 @@
 #include <sched.h>
 
 #include "igt.h"
+#include "igt_debugfs.h"
 #include "igt_gt.h"
 #include "igt_perf.h"
 #include "i915/gem_ring.h"
@@ -405,17 +406,20 @@ static void invalid_bonds(int i915)
 	gem_context_destroy(i915, p.ctx_id);
 }
 
-static void kick_kthreads(void)
+static void kick_kthreads(int i915)
 {
-	usleep(20 * 1000); /* 20ms should be enough for ksoftirqd! */
+	if (igt_drop_caches_has(i915, DROP_TASKLETS))
+		igt_drop_caches_set(i915, DROP_TASKLETS);
+	else
+		usleep(20 * 1000); /* 20ms should be enough for ksoftirqd! */
 }
 
-static double measure_load(int pmu, int period_us)
+static double measure_load(int i915, int pmu, int period_us)
 {
 	uint64_t data[2];
 	uint64_t d_t, d_v;
 
-	kick_kthreads();
+	kick_kthreads(i915);
 
 	igt_assert_eq(read(pmu, data, sizeof(data)), sizeof(data));
 	d_v = -data[0];
@@ -430,13 +434,14 @@ static double measure_load(int pmu, int period_us)
 	return d_v / (double)d_t;
 }
 
-static double measure_min_load(int pmu, unsigned int num, int period_us)
+static double
+measure_min_load(int i915, int pmu, unsigned int num, int period_us)
 {
 	uint64_t data[2 + num];
 	uint64_t d_t, d_v[num];
 	uint64_t min = -1, max = 0;
 
-	kick_kthreads();
+	kick_kthreads(i915);
 
 	igt_assert_eq(read(pmu, data, sizeof(data)), sizeof(data));
 	for (unsigned int n = 0; n < num; n++)
@@ -464,12 +469,13 @@ static double measure_min_load(int pmu, unsigned int num, int period_us)
 	return min / (double)d_t;
 }
 
-static void measure_all_load(int pmu, double *v, unsigned int num, int period_us)
+static void
+measure_all_load(int i915, int pmu, double *v, unsigned int num, int period_us)
 {
 	uint64_t data[2 + num];
 	uint64_t d_t, d_v[num];
 
-	kick_kthreads();
+	kick_kthreads(i915);
 
 	igt_assert_eq(read(pmu, data, sizeof(data)), sizeof(data));
 	for (unsigned int n = 0; n < num; n++)
@@ -527,7 +533,7 @@ static void check_individual_engine(int i915,
 						  ci[idx].engine_instance));
 
 	spin = igt_spin_new(i915, .ctx = ctx, .engine = idx + 1);
-	load = measure_load(pmu, 10000);
+	load = measure_load(i915, pmu, 10000);
 	igt_spin_free(i915, spin);
 
 	close(pmu);
@@ -676,7 +682,7 @@ static void bonded(int i915, unsigned int flags)
 				igt_spin_free(i915, plug);
 			}
 
-			measure_all_load(pmu[0], v, limit + 1, 10000);
+			measure_all_load(i915, pmu[0], v, limit + 1, 10000);
 			igt_spin_free(i915, spin);
 
 			igt_assert_f(v[bond] > 0.90,
@@ -1512,7 +1518,7 @@ static void full(int i915, unsigned int flags)
 			close(fence);
 		}
 
-		load = measure_min_load(pmu[0], count, 10000);
+		load = measure_min_load(i915, pmu[0], count, 10000);
 		igt_spin_free(i915, spin);
 
 		close(pmu[0]);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
