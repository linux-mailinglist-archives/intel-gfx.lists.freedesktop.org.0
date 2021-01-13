Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9132F5447
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 21:47:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADFAB6EC5C;
	Wed, 13 Jan 2021 20:47:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D90246EC5C
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 20:47:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23589279-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 20:47:10 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jan 2021 20:47:09 +0000
Message-Id: <20210113204709.15020-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Replace open-coded
 intel_engine_stop_cs()
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

In the legacy ringbuffer submission, we still had an open-coded version
of intel_engine_stop_cs() with one additional verification step. Transfer
that verification to intel_engine_stop_cs() itself, and call it.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 15 +++++++++--
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 25 +------------------
 2 files changed, 14 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index f531207971d1..fa76602f9852 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1054,8 +1054,19 @@ int intel_engine_stop_cs(struct intel_engine_cs *engine)
 
 	ENGINE_TRACE(engine, "\n");
 	if (__intel_engine_stop_cs(engine, 1000, stop_timeout(engine))) {
-		ENGINE_TRACE(engine, "timed out on STOP_RING -> IDLE\n");
-		err = -ETIMEDOUT;
+		ENGINE_TRACE(engine,
+			     "timed out on STOP_RING -> IDLE; HEAD:%04x, TAIL:%04x\n",
+			     ENGINE_READ_FW(engine, RING_HEAD) & HEAD_ADDR,
+			     ENGINE_READ_FW(engine, RING_TAIL) & TAIL_ADDR);
+
+		/*
+		 * Sometimes we observe that the idle flag is not
+		 * set even though the ring is empty. So double
+		 * check before giving up.
+		 */
+		if ((ENGINE_READ_FW(engine, RING_HEAD) & HEAD_ADDR) !=
+		    (ENGINE_READ_FW(engine, RING_TAIL) & TAIL_ADDR))
+			err = -ETIMEDOUT;
 	}
 
 	return err;
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 657afd8ebc14..20f42722be8b 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -159,30 +159,7 @@ static void ring_setup_status_page(struct intel_engine_cs *engine)
 
 static bool stop_ring(struct intel_engine_cs *engine)
 {
-	struct drm_i915_private *dev_priv = engine->i915;
-
-	if (INTEL_GEN(dev_priv) > 2) {
-		ENGINE_WRITE(engine,
-			     RING_MI_MODE, _MASKED_BIT_ENABLE(STOP_RING));
-		if (intel_wait_for_register(engine->uncore,
-					    RING_MI_MODE(engine->mmio_base),
-					    MODE_IDLE,
-					    MODE_IDLE,
-					    1000)) {
-			drm_err(&dev_priv->drm,
-				"%s : timed out trying to stop ring\n",
-				engine->name);
-
-			/*
-			 * Sometimes we observe that the idle flag is not
-			 * set even though the ring is empty. So double
-			 * check before giving up.
-			 */
-			if (ENGINE_READ(engine, RING_HEAD) !=
-			    ENGINE_READ(engine, RING_TAIL))
-				return false;
-		}
-	}
+	intel_engine_stop_cs(engine);
 
 	ENGINE_WRITE(engine, RING_HEAD, ENGINE_READ(engine, RING_TAIL));
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
