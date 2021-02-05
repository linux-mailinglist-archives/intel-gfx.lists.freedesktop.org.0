Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EB4310A3F
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 12:29:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECFFC6E226;
	Fri,  5 Feb 2021 11:29:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A79006E226
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 11:29:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23796808-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Feb 2021 11:29:13 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Feb 2021 11:29:12 +0000
Message-Id: <20210205112912.22978-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/selftest: Synchronise with the GPU
 timestamp
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

Wait for the GPU to wake up from the semaphore before measuring the
time, so that we coordinate the sampling on both the CPU and GPU for
more accurate comparisons.

v2: Switch to local_irq_disable() as once suggested by Mika.

Reported-by: Bruce Chang <yu.bruce.chang@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: CQ Tang <cq.tang@intel.com>
Reviewed-by: Bruce Chang <yu.bruce.chang@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
index 41dc1a542cd6..2c898622bdfb 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
@@ -110,13 +110,15 @@ static int __measure_timestamps(struct intel_context *ce,
 		cpu_relax();
 
 	/* Run the request for a 100us, sampling timestamps before/after */
-	preempt_disable();
-	*dt = local_clock();
+	local_irq_disable();
 	write_semaphore(&sema[2], 0);
+	while (READ_ONCE(sema[1]) == 0) /* wait for the gpu to catch up */
+		cpu_relax();
+	*dt = local_clock();
 	udelay(100);
 	*dt = local_clock() - *dt;
 	write_semaphore(&sema[2], 1);
-	preempt_enable();
+	local_irq_enable();
 
 	if (i915_request_wait(rq, 0, HZ / 2) < 0) {
 		i915_request_put(rq);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
