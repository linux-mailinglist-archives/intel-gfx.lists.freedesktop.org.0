Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CAE17DEC9
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 12:36:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17FDA89C16;
	Mon,  9 Mar 2020 11:36:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E962389C28
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 11:36:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20494169-1500050 
 for multiple; Mon, 09 Mar 2020 11:36:24 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Mar 2020 11:36:23 +0000
Message-Id: <20200309113623.24208-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Mark up intel_rps.active for racy
 reads
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

We read the current state of intel_rps.active outside of the lock, so
mark up the racy access.

[  525.037073] BUG: KCSAN: data-race in intel_rps_boost [i915] / intel_rps_park [i915]
[  525.037091]
[  525.037103] write to 0xffff8881f145efa1 of 1 bytes by task 192 on cpu 2:
[  525.037331]  intel_rps_park+0x72/0x230 [i915]
[  525.037552]  __gt_park+0x61/0xa0 [i915]
[  525.037771]  ____intel_wakeref_put_last+0x42/0x90 [i915]
[  525.037991]  __intel_wakeref_put_work+0xd3/0xf0 [i915]
[  525.038008]  process_one_work+0x3b1/0x690
[  525.038022]  worker_thread+0x80/0x670
[  525.038037]  kthread+0x19a/0x1e0
[  525.038051]  ret_from_fork+0x1f/0x30
[  525.038062]
[  525.038074] read to 0xffff8881f145efa1 of 1 bytes by task 733 on cpu 3:
[  525.038304]  intel_rps_boost+0x67/0x1f0 [i915]
[  525.038535]  i915_request_wait+0x562/0x5d0 [i915]
[  525.038764]  i915_gem_object_wait_fence+0x81/0xa0 [i915]
[  525.038994]  i915_gem_object_wait_reservation+0x489/0x520 [i915]
[  525.039224]  i915_gem_wait_ioctl+0x167/0x2b0 [i915]
[  525.039241]  drm_ioctl_kernel+0xe4/0x120
[  525.039255]  drm_ioctl+0x297/0x4c7
[  525.039269]  ksys_ioctl+0x89/0xb0
[  525.039282]  __x64_sys_ioctl+0x42/0x60
[  525.039296]  do_syscall_64+0x6e/0x2c0
[  525.039311]  entry_SYSCALL_64_after_hwframe+0x44/0xa9

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 8794d399f5cd..506738dede16 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -644,7 +644,7 @@ void intel_rps_mark_interactive(struct intel_rps *rps, bool interactive)
 {
 	mutex_lock(&rps->power.mutex);
 	if (interactive) {
-		if (!rps->power.interactive++ && rps->active)
+		if (!rps->power.interactive++ && READ_ONCE(rps->active))
 			rps_set_power(rps, HIGH_POWER);
 	} else {
 		GEM_BUG_ON(!rps->power.interactive);
@@ -721,11 +721,15 @@ void intel_rps_unpark(struct intel_rps *rps)
 	 * performance, jump directly to RPe as our starting frequency.
 	 */
 	mutex_lock(&rps->lock);
-	rps->active = true;
+
+	WRITE_ONCE(rps->active, true);
+
 	freq = max(rps->cur_freq, rps->efficient_freq),
 	freq = clamp(freq, rps->min_freq_softlimit, rps->max_freq_softlimit);
 	intel_rps_set(rps, freq);
+
 	rps->last_adj = 0;
+
 	mutex_unlock(&rps->lock);
 
 	if (INTEL_GEN(rps_to_i915(rps)) >= 6)
@@ -745,7 +749,7 @@ void intel_rps_park(struct intel_rps *rps)
 	if (INTEL_GEN(i915) >= 6)
 		rps_disable_interrupts(rps);
 
-	rps->active = false;
+	WRITE_ONCE(rps->active, false);
 	if (rps->last_freq <= rps->idle_freq)
 		return;
 
@@ -772,7 +776,7 @@ void intel_rps_boost(struct i915_request *rq)
 	struct intel_rps *rps = &rq->engine->gt->rps;
 	unsigned long flags;
 
-	if (i915_request_signaled(rq) || !rps->active)
+	if (i915_request_signaled(rq) || !READ_ONCE(rps->active))
 		return;
 
 	/* Serializes with i915_request_retire() */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
