Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 825C424C547
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 20:26:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B3BE6E9CA;
	Thu, 20 Aug 2020 18:26:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B44FA6E9CA;
 Thu, 20 Aug 2020 18:26:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22190673-1500050 
 for multiple; Thu, 20 Aug 2020 19:26:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Thu, 20 Aug 2020 19:26:37 +0100
Message-Id: <20200820182640.65842-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/4] i915/perf: 32bit printf cleanup
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

Use PRI[du]64 as necessary for 32bit builds.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/perf.c                    | 8 ++++----
 tools/i915-perf/i915_perf_recorder.c | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/tests/i915/perf.c b/tests/i915/perf.c
index 92edc9f1f..a894fd382 100644
--- a/tests/i915/perf.c
+++ b/tests/i915/perf.c
@@ -2077,7 +2077,7 @@ test_blocking(uint64_t requested_oa_period, bool set_kernel_hrtimer, uint64_t ke
 	user_ns = (end_times.tms_utime - start_times.tms_utime) * tick_ns;
 	kernel_ns = (end_times.tms_stime - start_times.tms_stime) * tick_ns;
 
-	igt_debug("%d blocking reads during test with %lu Hz OA sampling (expect no more than %d)\n",
+	igt_debug("%d blocking reads during test with %"PRIu64" Hz OA sampling (expect no more than %d)\n",
 		  n, NSEC_PER_SEC / oa_period, max_iterations);
 	igt_debug("%d extra iterations seen, not related to periodic sampling (e.g. context switches)\n",
 		  n_extra_iterations);
@@ -2265,7 +2265,7 @@ test_polling(uint64_t requested_oa_period, bool set_kernel_hrtimer, uint64_t ker
 	user_ns = (end_times.tms_utime - start_times.tms_utime) * tick_ns;
 	kernel_ns = (end_times.tms_stime - start_times.tms_stime) * tick_ns;
 
-	igt_debug("%d non-blocking reads during test with %lu Hz OA sampling (expect no more than %d)\n",
+	igt_debug("%d non-blocking reads during test with %"PRIu64" Hz OA sampling (expect no more than %d)\n",
 		  n, NSEC_PER_SEC / oa_period, max_iterations);
 	igt_debug("%d extra iterations seen, not related to periodic sampling (e.g. context switches)\n",
 		  n_extra_iterations);
@@ -2357,7 +2357,7 @@ num_valid_reports_captured(struct drm_i915_perf_open_param *param,
 	int64_t start, end;
 	int num_reports = 0;
 
-	igt_debug("Expected duration = %lu\n", *duration_ns);
+	igt_debug("Expected duration = %"PRId64"\n", *duration_ns);
 
 	stream_fd = __perf_open(drm_fd, param, true);
 
@@ -2389,7 +2389,7 @@ num_valid_reports_captured(struct drm_i915_perf_open_param *param,
 
 	*duration_ns = end - start;
 
-	igt_debug("Actual duration = %lu\n", *duration_ns);
+	igt_debug("Actual duration = %"PRIu64"\n", *duration_ns);
 
 	return num_reports;
 }
diff --git a/tools/i915-perf/i915_perf_recorder.c b/tools/i915-perf/i915_perf_recorder.c
index 7671f39b4..adc41c29f 100644
--- a/tools/i915-perf/i915_perf_recorder.c
+++ b/tools/i915-perf/i915_perf_recorder.c
@@ -1001,7 +1001,7 @@ main(int argc, char *argv[])
 	}
 
 	ctx.oa_exponent = oa_exponent_for_period(ctx.timestamp_frequency, perf_period);
-	fprintf(stdout, "Opening perf stream with metric_id=%lu oa_exponent=%u\n",
+	fprintf(stdout, "Opening perf stream with metric_id=%"PRIu64" oa_exponent=%u\n",
 		ctx.metric_set->perf_oa_metrics_set, ctx.oa_exponent);
 
 	ctx.perf_fd = perf_open(&ctx);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
