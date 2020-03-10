Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9160017F9B9
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 13:59:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05D0C6E14D;
	Tue, 10 Mar 2020 12:59:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2516F6E14D
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 12:59:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20508862-1500050 
 for multiple; Tue, 10 Mar 2020 12:59:36 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 12:59:35 +0000
Message-Id: <20200310125935.27271-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Pull checking rps->pm_events under
 the irq_lock
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

Avoid angering kcsan by serialising the read of the pm_events with the
write in rps_diable_interrupts.

[ 6268.713419] BUG: KCSAN: data-race in intel_rps_park [i915] / rps_work [i915]
[ 6268.713437]
[ 6268.713449] write to 0xffff8881eda8efac of 4 bytes by task 1127 on cpu 3:
[ 6268.713680]  intel_rps_park+0x136/0x260 [i915]
[ 6268.713905]  __gt_park+0x61/0xa0 [i915]
[ 6268.714128]  ____intel_wakeref_put_last+0x42/0x90 [i915]
[ 6268.714352]  __intel_wakeref_put_work+0xd3/0xf0 [i915]
[ 6268.714369]  process_one_work+0x3b1/0x690
[ 6268.714384]  worker_thread+0x80/0x670
[ 6268.714398]  kthread+0x19a/0x1e0
[ 6268.714412]  ret_from_fork+0x1f/0x30
[ 6268.714423]
[ 6268.714435] read to 0xffff8881eda8efac of 4 bytes by task 950 on cpu 2:
[ 6268.714664]  rps_work+0xc2/0x680 [i915]
[ 6268.714679]  process_one_work+0x3b1/0x690
[ 6268.714693]  worker_thread+0x80/0x670
[ 6268.714707]  kthread+0x19a/0x1e0
[ 6268.714720]  ret_from_fork+0x1f/0x30

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 506738dede16..dbecfb5a5bb1 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1459,12 +1459,12 @@ static void rps_work(struct work_struct *work)
 	u32 pm_iir = 0;
 
 	spin_lock_irq(&gt->irq_lock);
-	pm_iir = fetch_and_zero(&rps->pm_iir);
+	pm_iir = fetch_and_zero(&rps->pm_iir) & rps->pm_events;
 	client_boost = atomic_read(&rps->num_waiters);
 	spin_unlock_irq(&gt->irq_lock);
 
 	/* Make sure we didn't queue anything we're not going to process. */
-	if ((pm_iir & rps->pm_events) == 0 && !client_boost)
+	if (!pm_iir && !client_boost)
 		goto out;
 
 	mutex_lock(&rps->lock);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
