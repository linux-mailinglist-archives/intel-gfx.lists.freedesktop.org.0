Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6069A2FEF6F
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 16:50:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44F2A89143;
	Thu, 21 Jan 2021 15:50:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F058B6E093
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 15:49:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23662330-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 15:49:50 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jan 2021 15:49:50 +0000
Message-Id: <20210121154950.19898-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210121154950.19898-1-chris@chris-wilson.co.uk>
References: <20210121154950.19898-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915/gt: Call stop_ring() from ring resume, again
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

For reasons I cannot explain, except to say this is Sandybridge after
all, call stop_ring() again dring ring resume in order to prevent
mysterious hard hangs.

Testcase: igt/i915_selftest/hangcheck # snb
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Acked-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 108 +++++++++---------
 1 file changed, 56 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 4984ff565424..e4db4318f634 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -183,15 +183,36 @@ static void set_pp_dir(struct intel_engine_cs *engine)
 	}
 }
 
+static bool stop_ring(struct intel_engine_cs *engine)
+{
+	/* Empty the ring by skipping to the end */
+	ENGINE_WRITE_FW(engine, RING_HEAD, ENGINE_READ_FW(engine, RING_TAIL));
+	ENGINE_POSTING_READ(engine, RING_HEAD);
+
+	/* The ring must be empty before it is disabled */
+	ENGINE_WRITE_FW(engine, RING_CTL, 0);
+	ENGINE_POSTING_READ(engine, RING_CTL);
+
+	/* Then reset the disabled ring */
+	ENGINE_WRITE_FW(engine, RING_HEAD, 0);
+	ENGINE_WRITE_FW(engine, RING_TAIL, 0);
+
+	return (ENGINE_READ_FW(engine, RING_HEAD) & HEAD_ADDR) == 0;
+}
+
 static int xcs_resume(struct intel_engine_cs *engine)
 {
-	struct drm_i915_private *dev_priv = engine->i915;
 	struct intel_ring *ring = engine->legacy.ring;
 
 	ENGINE_TRACE(engine, "ring:{HEAD:%04x, TAIL:%04x}\n",
 		     ring->head, ring->tail);
 
-	if (HWS_NEEDS_PHYSICAL(dev_priv))
+	/* Double check the ring is empty & disabled before we resume */
+	synchronize_hardirq(engine->i915->drm.irq);
+	if (!stop_ring(engine))
+		goto err;
+
+	if (HWS_NEEDS_PHYSICAL(engine->i915))
 		ring_setup_phys_status_page(engine);
 	else
 		ring_setup_status_page(engine);
@@ -228,21 +249,10 @@ static int xcs_resume(struct intel_engine_cs *engine)
 	if (__intel_wait_for_register_fw(engine->uncore,
 					 RING_CTL(engine->mmio_base),
 					 RING_VALID, RING_VALID,
-					 5000, 0, NULL)) {
-		drm_err(&dev_priv->drm,
-			"%s initialization failed; "
-			"ctl %08x (valid? %d) head %08x [%08x] tail %08x [%08x] start %08x [expected %08x]\n",
-			engine->name,
-			ENGINE_READ(engine, RING_CTL),
-			ENGINE_READ(engine, RING_CTL) & RING_VALID,
-			ENGINE_READ(engine, RING_HEAD), ring->head,
-			ENGINE_READ(engine, RING_TAIL), ring->tail,
-			ENGINE_READ(engine, RING_START),
-			i915_ggtt_offset(ring->vma));
-		return -EIO;
-	}
+					 5000, 0, NULL))
+		goto err;
 
-	if (INTEL_GEN(dev_priv) > 2)
+	if (INTEL_GEN(engine->i915) > 2)
 		ENGINE_WRITE_FW(engine,
 				RING_MI_MODE, _MASKED_BIT_DISABLE(STOP_RING));
 
@@ -255,6 +265,19 @@ static int xcs_resume(struct intel_engine_cs *engine)
 	/* Papering over lost _interrupts_ immediately following the restart */
 	intel_engine_signal_breadcrumbs(engine);
 	return 0;
+
+err:
+	drm_err(&engine->i915->drm,
+		"%s initialization failed; "
+		"ctl %08x (valid? %d) head %08x [%08x] tail %08x [%08x] start %08x [expected %08x]\n",
+		engine->name,
+		ENGINE_READ(engine, RING_CTL),
+		ENGINE_READ(engine, RING_CTL) & RING_VALID,
+		ENGINE_READ(engine, RING_HEAD), ring->head,
+		ENGINE_READ(engine, RING_TAIL), ring->tail,
+		ENGINE_READ(engine, RING_START),
+		i915_ggtt_offset(ring->vma));
+	return -EIO;
 }
 
 static void sanitize_hwsp(struct intel_engine_cs *engine)
@@ -290,23 +313,6 @@ static void xcs_sanitize(struct intel_engine_cs *engine)
 	clflush_cache_range(engine->status_page.addr, PAGE_SIZE);
 }
 
-static bool stop_ring(struct intel_engine_cs *engine)
-{
-	/* Empty the ring by skipping to the end */
-	ENGINE_WRITE_FW(engine, RING_HEAD, ENGINE_READ_FW(engine, RING_TAIL));
-	ENGINE_POSTING_READ(engine, RING_HEAD);
-
-	/* The ring must be empty before it is disabled */
-	ENGINE_WRITE_FW(engine, RING_CTL, 0);
-	ENGINE_POSTING_READ(engine, RING_CTL);
-
-	/* Then reset the disabled ring */
-	ENGINE_WRITE_FW(engine, RING_HEAD, 0);
-	ENGINE_WRITE_FW(engine, RING_TAIL, 0);
-
-	return (ENGINE_READ_FW(engine, RING_HEAD) & HEAD_ADDR) == 0;
-}
-
 static void reset_prepare(struct intel_engine_cs *engine)
 {
 	/*
@@ -329,25 +335,23 @@ static void reset_prepare(struct intel_engine_cs *engine)
 
 	if (!stop_ring(engine)) {
 		/* G45 ring initialization often fails to reset head to zero */
-		drm_dbg(&engine->i915->drm,
-			"%s head not reset to zero "
-			"ctl %08x head %08x tail %08x start %08x\n",
-			engine->name,
-			ENGINE_READ_FW(engine, RING_CTL),
-			ENGINE_READ_FW(engine, RING_HEAD),
-			ENGINE_READ_FW(engine, RING_TAIL),
-			ENGINE_READ_FW(engine, RING_START));
-	}
-
-	if (!stop_ring(engine)) {
-		drm_err(&engine->i915->drm,
-			"failed to set %s head to zero "
-			"ctl %08x head %08x tail %08x start %08x\n",
-			engine->name,
-			ENGINE_READ_FW(engine, RING_CTL),
-			ENGINE_READ_FW(engine, RING_HEAD),
-			ENGINE_READ_FW(engine, RING_TAIL),
-			ENGINE_READ_FW(engine, RING_START));
+		ENGINE_TRACE(engine,
+			     "HEAD not reset to zero, "
+			     "{ CTL:%08x, HEAD:%08x, TAIL:%08x, START:%08x }\n",
+			     ENGINE_READ_FW(engine, RING_CTL),
+			     ENGINE_READ_FW(engine, RING_HEAD),
+			     ENGINE_READ_FW(engine, RING_TAIL),
+			     ENGINE_READ_FW(engine, RING_START));
+		if (!stop_ring(engine)) {
+			drm_err(&engine->i915->drm,
+				"failed to set %s head to zero "
+				"ctl %08x head %08x tail %08x start %08x\n",
+				engine->name,
+				ENGINE_READ_FW(engine, RING_CTL),
+				ENGINE_READ_FW(engine, RING_HEAD),
+				ENGINE_READ_FW(engine, RING_TAIL),
+				ENGINE_READ_FW(engine, RING_START));
+		}
 	}
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
