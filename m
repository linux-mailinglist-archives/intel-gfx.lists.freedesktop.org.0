Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B96362EF96E
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 21:40:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2A8B6E811;
	Fri,  8 Jan 2021 20:40:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3BB76E8C5
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 20:40:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23542761-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 08 Jan 2021 20:40:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 20:40:22 +0000
Message-Id: <20210108204026.20682-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210108204026.20682-1-chris@chris-wilson.co.uk>
References: <20210108204026.20682-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/7] drm/i915/selftests: Rearrange ktime_get to
 reduce latency against CS
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In our tests where we measure the elapsed time on both the CPU and CS
using a udelay, our CS results match the udelay much more accurately
than the ktime (even when using ktime_get_fast_ns). With preemption
disabled, we can go one step lower than ktime and use local_clock.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2919
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
index ca080445695e..c3d965279fc3 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
@@ -112,11 +112,11 @@ static int __measure_timestamps(struct intel_context *ce,
 
 	/* Run the request for a 100us, sampling timestamps before/after */
 	preempt_disable();
-	*dt = ktime_get_raw_fast_ns();
+	*dt = local_clock();
 	write_semaphore(&sema[2], 0);
 	udelay(100);
+	*dt = local_clock() - *dt;
 	write_semaphore(&sema[2], 1);
-	*dt = ktime_get_raw_fast_ns() - *dt;
 	preempt_enable();
 
 	if (i915_request_wait(rq, 0, HZ / 2) < 0) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
