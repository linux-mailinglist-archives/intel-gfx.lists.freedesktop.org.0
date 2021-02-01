Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E30030ACDF
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 17:42:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B333C6E83D;
	Mon,  1 Feb 2021 16:42:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 947D36E83D
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 16:42:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23763362-1500050 
 for multiple; Mon, 01 Feb 2021 16:42:22 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 16:42:22 +0000
Message-Id: <20210201164222.14455-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Retire unexpected starting state
 error dumping
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

We have not seen an occurrence of the false restart state recenty, and if
we did such an event from inside engine-reset, it would deadlock on
trying to suspend the tasklet to read the register state. Instead, we
inspect the context state before submission which will alert us to any
issues prior to execution.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 .../drm/i915/gt/intel_execlists_submission.c  | 20 -------------------
 1 file changed, 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index e7593df6777d..30c7631323e5 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2742,31 +2742,11 @@ static void enable_execlists(struct intel_engine_cs *engine)
 	enable_error_interrupt(engine);
 }
 
-static bool unexpected_starting_state(struct intel_engine_cs *engine)
-{
-	bool unexpected = false;
-
-	if (ENGINE_READ_FW(engine, RING_MI_MODE) & STOP_RING) {
-		drm_dbg(&engine->i915->drm,
-			"STOP_RING still set in RING_MI_MODE\n");
-		unexpected = true;
-	}
-
-	return unexpected;
-}
-
 static int execlists_resume(struct intel_engine_cs *engine)
 {
 	intel_mocs_init_engine(engine);
-
 	intel_breadcrumbs_reset(engine->breadcrumbs);
 
-	if (GEM_SHOW_DEBUG() && unexpected_starting_state(engine)) {
-		struct drm_printer p = drm_debug_printer(__func__);
-
-		intel_engine_dump(engine, &p, NULL);
-	}
-
 	enable_execlists(engine);
 
 	return 0;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
