Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EF51B9AD6
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 10:54:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94CE56E133;
	Mon, 27 Apr 2020 08:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E95EE6E12A
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 08:54:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21032259-1500050 
 for multiple; Mon, 27 Apr 2020 09:54:10 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Apr 2020 09:54:00 +0100
Message-Id: <20200427085408.13879-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/9] drm/i915/gt: Sanitize GT first
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

We see that if the HW doesn't actually sleep, the HW may eat the poison
we set in its write-only HWSP during sanitize:

  intel_gt_resume.part.8: 0000:00:02.0
  __gt_unpark: 0000:00:02.0
  gt_sanitize: 0000:00:02.0 force:yes
  process_csb: 0000:00:02.0 vcs0: cs-irq head=5, tail=90
  process_csb: 0000:00:02.0 vcs0: csb[0]: status=0x5a5a5a5a:0x5a5a5a5a
  assert_pending_valid: Nothing pending for promotion!

The CS TAIL pointer should have been reset by reset_csb_pointers(), so
in this case it is likely that we have read back from the CPU cache and
so we must clflush our control over that page. In doing so, push the
sanitisation to the start of the GT sequence so that our poisoning is
assuredly before we start talking to the HW.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm.c | 3 ++-
 drivers/gpu/drm/i915/gt/intel_lrc.c   | 3 +++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 4c4c74ef4f21..5097786f4375 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -198,11 +198,12 @@ int intel_gt_resume(struct intel_gt *gt)
 	 * Only the kernel contexts should remain pinned over suspend,
 	 * allowing us to fixup the user contexts on their first pin.
 	 */
+	gt_sanitize(gt, true);
+
 	intel_gt_pm_get(gt);
 
 	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
 	intel_rc6_sanitize(&gt->rc6);
-	gt_sanitize(gt, true);
 	if (intel_gt_is_wedged(gt)) {
 		err = -EIO;
 		goto out_fw;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index c8014c265ffb..cd6afa2cf5fd 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3931,6 +3931,9 @@ static void execlists_sanitize(struct intel_engine_cs *engine)
 	 * reset the value in the HWSP.
 	 */
 	intel_timeline_reset_seqno(engine->kernel_context->timeline);
+
+	/* And scrub the dirty cachelines for the HWSP */
+	clflush_cache_range(engine->status_page.addr, PAGE_SIZE);
 }
 
 static void enable_error_interrupt(struct intel_engine_cs *engine)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
