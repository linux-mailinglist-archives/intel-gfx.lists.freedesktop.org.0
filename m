Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B457A1AFA40
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Apr 2020 14:56:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31E156E053;
	Sun, 19 Apr 2020 12:56:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1D5F6E053;
 Sun, 19 Apr 2020 12:55:59 +0000 (UTC)
IronPort-SDR: eKmZVh87WQRJMnWUymowLF71DSNmb6icKAq1u8zSVFFc69VRIb9eY1i9nf5nGN/y9zYrMwd2GN
 6vVEjKN2a73Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2020 05:55:58 -0700
IronPort-SDR: i9RWU8pjIotvn4/PfQqPfT1rbpEDlzN+D7ovvC7YsqjarNbTzcpozTZjV/hebtdYaHSKJUOUV6
 I5EHgewg5XMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,403,1580803200"; d="scan'208";a="455230241"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga005.fm.intel.com with ESMTP; 19 Apr 2020 05:55:58 -0700
Received: from fmsmsx119.amr.corp.intel.com (10.18.124.207) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 19 Apr 2020 05:55:57 -0700
Received: from bgsmsx101.gar.corp.intel.com (10.223.4.170) by
 FMSMSX119.amr.corp.intel.com (10.18.124.207) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 19 Apr 2020 05:55:57 -0700
Received: from bgsmsx105.gar.corp.intel.com ([169.254.3.54]) by
 BGSMSX101.gar.corp.intel.com ([169.254.1.75]) with mapi id 14.03.0439.000;
 Sun, 19 Apr 2020 18:25:54 +0530
From: "Melkaveri, Arjun" <arjun.melkaveri@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH i-g-t] i915/gem_exec_balancer: Kick tasklets harder
Thread-Index: AQHWFLevAJqDdJEYb0eJpBwNLdDt/aiAaVaQ
Date: Sun, 19 Apr 2020 12:55:53 +0000
Message-ID: <CA3CE573A55781488FA37084931071AB14DF8E31@BGSMSX105.gar.corp.intel.com>
References: <20200417125645.3176650-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200417125645.3176650-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_balancer: Kick tasklets
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

HI Chris , 
As Discussed , are you planning to change the load %age for full-* subtests ? 
igt_assert_f(load > 0.90 to 66 % ? 

Thanks 
Arjun M

-----Original Message-----
From: Chris Wilson <chris@chris-wilson.co.uk> 
Sent: Friday, April 17, 2020 6:27 PM
To: intel-gfx@lists.freedesktop.org
Cc: igt-dev@lists.freedesktop.org; Melkaveri, Arjun <arjun.melkaveri@intel.com>; Ursulin, Tvrtko <tvrtko.ursulin@intel.com>; Chris Wilson <chris@chris-wilson.co.uk>
Subject: [PATCH i-g-t] i915/gem_exec_balancer: Kick tasklets harder

Tasklet scheduling can unfortunately be quite predicated. Where we are only caring about workload distribution and not initial execution latency (see kick_kthreads), make that kick more precise.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 lib/igt_debugfs.h              |  7 +++++++
 tests/i915/gem_exec_balancer.c | 28 +++++++++++++++++-----------
 2 files changed, 24 insertions(+), 11 deletions(-)

diff --git a/lib/igt_debugfs.h b/lib/igt_debugfs.h index 7d1a6175e..768341387 100644
--- a/lib/igt_debugfs.h
+++ b/lib/igt_debugfs.h
@@ -181,6 +181,13 @@ void igt_require_hpd_storm_ctl(int fd);
  * which will flush any RCU callbacks and deferred tasks.
  */
 #define DROP_RCU 0x200
+/**
+ * DROP_TASKLETS:
+ *
+ * Flushes the softirq tasklets on each CPU, such as used by the 
+execution
+ * threads.
+ */
+#define DROP_TASKLETS 0x400
 /**
  * DROP_ALL:
  *
diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c index e9a893e90..9ec5a146e 100644
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
 	for (unsigned int n = 0; n < num; n++) @@ -464,12 +469,13 @@ static double measure_min_load(int pmu, unsigned int num, int period_us)
 	return min / (double)d_t;
 }
 
-static void measure_all_load(int pmu, double *v, unsigned int num, int period_us)
+static void
+measure_all_load(int i915, int pmu, double *v, unsigned int num, int 
+period_us)
 {
 	uint64_t data[2 + num];
 	uint64_t d_t, d_v[num];
 
-	kick_kthreads();
+	kick_kthreads(i915);
 
 	igt_assert_eq(read(pmu, data, sizeof(data)), sizeof(data));
 	for (unsigned int n = 0; n < num; n++) @@ -527,7 +533,7 @@ static void check_individual_engine(int i915,
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
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
