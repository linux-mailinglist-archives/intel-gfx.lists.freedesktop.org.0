Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF381BF469
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 11:46:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D4DD6E1C0;
	Thu, 30 Apr 2020 09:46:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 863806E1C0;
 Thu, 30 Apr 2020 09:46:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21067663-1500050 
 for multiple; Thu, 30 Apr 2020 10:45:38 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 10:45:36 +0100
Message-Id: <20200430094536.767299-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] perf: Bump the timestamp tolerance for
 really slow devices
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

Slow devices with low CS frequencies may take longer than expected
between the PIPECONTROL timestamp and the OA timestamp, hovering just
above the arbitrary 500ns threshold. The discrepancy seems relatively
stable, just the device taking longer than anticipated without affecting
the results, so make the threshold a little more lenient.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 tests/perf.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/tests/perf.c b/tests/perf.c
index 5d3c68789..b1e2a2e64 100644
--- a/tests/perf.c
+++ b/tests/perf.c
@@ -3415,13 +3415,13 @@ gen8_test_single_ctx_render_target_writes_a_counter(void)
 			uint64_t timestamp0_64, timestamp1_64;
 			uint32_t delta_ts64, delta_oa32;
 			uint64_t delta_ts64_ns, delta_oa32_ns;
-			uint32_t delta_delta;
 			int width = 800;
 			int height = 600;
 			uint32_t ctx_id = 0xffffffff; /* invalid handle */
 			uint32_t ctx1_id = 0xffffffff;  /* invalid handle */
 			uint32_t current_ctx_id = 0xffffffff;
 			uint32_t n_invalid_ctx = 0;
+			int delta_delta;
 			int ret;
 			struct accumulator accumulator = {
 				.format = test_set->perf_oa_format
@@ -3589,12 +3589,10 @@ gen8_test_single_ctx_render_target_writes_a_counter(void)
 
 			/* The delta as calculated via the PIPE_CONTROL timestamp or
 			 * the OA report timestamps should be almost identical but
-			 * allow a 500 nanoseconds margin.
+			 * allow a 2 microsecond margin.
 			 */
-			delta_delta = delta_ts64_ns > delta_oa32_ns ?
-				(delta_ts64_ns - delta_oa32_ns) :
-				(delta_oa32_ns - delta_ts64_ns);
-			if (delta_delta > 500) {
+			delta_delta = delta_ts64_ns - delta_oa32_ns;
+			if (abs(delta_delta) > 2000) {
 				igt_debug("Too slow %d; skipping\n",
 					  delta_delta);
 				ret = EAGAIN;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
