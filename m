Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CECB531C915
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Feb 2021 11:51:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20E6F6E40F;
	Tue, 16 Feb 2021 10:51:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE06E6E40A;
 Tue, 16 Feb 2021 10:50:58 +0000 (UTC)
IronPort-SDR: RUVfwRNUffbGnb8BWk/uWDes8HjvuYkTSDIIeFuiCjNhhi0Z2tK9UL0c2Q4bD7er6QrY1gIZNL
 WW0MSB3Yzr5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9896"; a="161991936"
X-IronPort-AV: E=Sophos;i="5.81,183,1610438400"; d="scan'208";a="161991936"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2021 02:50:58 -0800
IronPort-SDR: XzW4j2SwImT//HJMgeUlEx/i6i6heiqGmppvy5IQJP8tCRsEIEwNBsV23c/l7jF1WFes7i+xQD
 82RO9UrdQvNQ==
X-IronPort-AV: E=Sophos;i="5.81,183,1610438400"; d="scan'208";a="399460626"
Received: from mostoegl-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.249.37.188])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2021 02:50:56 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 16 Feb 2021 10:50:50 +0000
Message-Id: <20210216105050.309803-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915/perf_pmu: Subtest to measure
 sampling error for 100% busy
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Test that periodic reads of engine busyness against a constant 100% load
are within the 5000ppm tolerance when comparing perf timestamp versus
counter values.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tests/i915/perf_pmu.c | 46 ++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 41 insertions(+), 5 deletions(-)

diff --git a/tests/i915/perf_pmu.c b/tests/i915/perf_pmu.c
index 50b5c82bc472..728312be5293 100644
--- a/tests/i915/perf_pmu.c
+++ b/tests/i915/perf_pmu.c
@@ -26,6 +26,7 @@
 #include <stdio.h>
 #include <string.h>
 #include <fcntl.h>
+#include <float.h>
 #include <inttypes.h>
 #include <errno.h>
 #include <signal.h>
@@ -46,6 +47,7 @@
 #include "igt_perf.h"
 #include "igt_sysfs.h"
 #include "igt_pm.h"
+#include "igt_stats.h"
 #include "sw_sync.h"
 
 IGT_TEST_DESCRIPTION("Test the i915 pmu perf interface");
@@ -278,8 +280,11 @@ static void end_spin(int fd, igt_spin_t *spin, unsigned int flags)
 static void
 single(int gem_fd, const struct intel_execution_engine2 *e, unsigned int flags)
 {
+	unsigned int loops = flags & FLAG_LONG ? 20 : 1;
+	double err_min = DBL_MAX, err_max = -DBL_MAX;
 	unsigned long slept;
 	igt_spin_t *spin;
+	igt_stats_t s;
 	uint64_t val;
 	int fd;
 
@@ -290,11 +295,40 @@ single(int gem_fd, const struct intel_execution_engine2 *e, unsigned int flags)
 	else
 		spin = NULL;
 
-	val = pmu_read_single(fd);
-	slept = measured_usleep(batch_duration_ns / 1000);
-	if (flags & TEST_TRAILING_IDLE)
-		end_spin(gem_fd, spin, flags);
-	val = pmu_read_single(fd) - val;
+	igt_stats_init_with_size(&s, loops);
+
+	while (--loops) {
+		uint64_t ts[2];
+
+		val = __pmu_read_single(fd, &ts[0]);
+		slept = measured_usleep(batch_duration_ns / 1000);
+		if (flags & TEST_TRAILING_IDLE)
+			end_spin(gem_fd, spin, flags);
+		val = __pmu_read_single(fd, &ts[1]) - val;
+
+		if (flags & FLAG_LONG) {
+			unsigned long t = ts[1] - ts[0];
+			double err = (double)((long)val - (long)t) / t * 1e6;
+
+			igt_debug("time=%lu busy=%"PRIu64" error=%.2fppm\n",
+				  t, val, err);
+
+			igt_assert_f(fabs(err) <= 5000, "Error=%.2fppm\n", err);
+
+			if (err > err_max)
+				err_max = err;
+			if (err < err_min)
+				err_min = err;
+
+			igt_stats_push_float(&s, err);
+		}
+	}
+
+	if (flags & FLAG_LONG)
+		igt_info("error min=%.2fppm avg=%.2fppm max=%.2fppm\n",
+			 err_min, igt_stats_get_mean(&s), err_max);
+
+	igt_stats_fini(&s);
 
 	if (flags & FLAG_HANG)
 		igt_force_gpu_reset(gem_fd);
@@ -2126,6 +2160,8 @@ igt_main
 	 */
 	test_each_engine("busy", fd, e)
 		single(fd, e, TEST_BUSY);
+	test_each_engine("busy-accuracy", fd, e)
+		single(fd, e, TEST_BUSY | FLAG_LONG);
 	test_each_engine("busy-idle", fd, e)
 		single(fd, e, TEST_BUSY | TEST_TRAILING_IDLE);
 
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
