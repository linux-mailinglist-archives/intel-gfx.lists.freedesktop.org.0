Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B42641732C5
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 09:23:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D5816EE58;
	Fri, 28 Feb 2020 08:23:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7C586EE57
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 08:23:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20380868-1500050 
 for multiple; Fri, 28 Feb 2020 08:23:32 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Feb 2020 08:23:07 +0000
Message-Id: <20200228082330.2411941-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/24] drm/i915/gt: Check engine-is-awake on
 reset later
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

As we drop the engine-pm on retiring, that may happen while there are
still CS events in the buffer. As such we cannot assert the engine is
still active on reset, until we know that the current request is still
in flight.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 39b0125b7143..e262571fb00c 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3637,9 +3637,6 @@ static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
 	if (!rq)
 		goto unwind;
 
-	/* We still have requests in-flight; the engine should be active */
-	GEM_BUG_ON(!intel_engine_pm_is_awake(engine));
-
 	ce = rq->context;
 	GEM_BUG_ON(!i915_vma_is_pinned(ce->state));
 
@@ -3649,8 +3646,12 @@ static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
 		goto out_replay;
 	}
 
+	/* We still have requests in-flight; the engine should be active */
+	GEM_BUG_ON(!intel_engine_pm_is_awake(engine));
+
 	/* Context has requests still in-flight; it should not be idle! */
 	GEM_BUG_ON(i915_active_is_idle(&ce->active));
+
 	rq = active_request(ce->timeline, rq);
 	head = intel_ring_wrap(ce->ring, rq->head);
 	GEM_BUG_ON(head == ce->ring->tail);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
