Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A721328ED
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 15:32:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E9C289DA8;
	Tue,  7 Jan 2020 14:32:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB48089DA8
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2020 14:32:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19796850-1500050 
 for multiple; Tue, 07 Jan 2020 14:31:20 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Jan 2020 14:31:18 +0000
Message-Id: <20200107143118.3288995-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Take responsibility for
 engine->release as the last step
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

In order to avoid a double cleanup on error, take ownership of
engine->release past the point of no [error] return.

Reported-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Fixes: e26b6d434147 ("drm/i915/gt: Pull GT initialisation under intel_gt_init()")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c             | 4 +++-
 drivers/gpu/drm/i915/gt/intel_ring_submission.c | 5 +++--
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index f6174e597dd3..5f171e43f79c 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3925,7 +3925,6 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
 {
 	/* Default vfuncs which can be overriden by each engine. */
 
-	engine->release = execlists_release;
 	engine->resume = execlists_resume;
 
 	engine->cops = &execlists_context_ops;
@@ -4040,6 +4039,9 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 
 	reset_csb_pointers(engine);
 
+	/* Finally, take ownership and responsibility for cleanup! */
+	engine->release = execlists_release;
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 2e1478a48a4b..0525d67c6fc3 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1840,8 +1840,6 @@ static void setup_common(struct intel_engine_cs *engine)
 
 	setup_irq(engine);
 
-	engine->release = ring_release;
-
 	engine->resume = xcs_resume;
 	engine->reset.prepare = reset_prepare;
 	engine->reset.rewind = reset_rewind;
@@ -2007,6 +2005,9 @@ int intel_ring_submission_setup(struct intel_engine_cs *engine)
 
 	GEM_BUG_ON(timeline->hwsp_ggtt != engine->status_page.vma);
 
+	/* Finally, take ownership and responsibility for cleanup! */
+	engine->release = ring_release;
+
 	return 0;
 
 err_ring:
-- 
2.25.0.rc1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
