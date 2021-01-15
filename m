Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 070F82F742B
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 09:19:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA61C6E182;
	Fri, 15 Jan 2021 08:19:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 296F46E17F
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 08:19:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23602669-1500050 
 for multiple; Fri, 15 Jan 2021 08:19:11 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jan 2021 08:19:06 +0000
Message-Id: <20210115081908.29494-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210115081908.29494-1-chris@chris-wilson.co.uk>
References: <mika.kuoppala@linux.intel.com>
 <20210115081908.29494-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/gt: Lift stop_ring() to
 reset_prepare
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

Push the sleeping stop_ring() out of the reset resume function to reset
prepare; we are not allowed to sleep in the former.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 97 +++++++------------
 1 file changed, 36 insertions(+), 61 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 8d0964d2d597..44159595d909 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -157,21 +157,6 @@ static void ring_setup_status_page(struct intel_engine_cs *engine)
 	flush_cs_tlb(engine);
 }
 
-static bool stop_ring(struct intel_engine_cs *engine)
-{
-	intel_engine_stop_cs(engine);
-
-	ENGINE_WRITE(engine, RING_HEAD, ENGINE_READ(engine, RING_TAIL));
-
-	ENGINE_WRITE(engine, RING_HEAD, 0);
-	ENGINE_WRITE(engine, RING_TAIL, 0);
-
-	/* The ring must be empty before it is disabled */
-	ENGINE_WRITE(engine, RING_CTL, 0);
-
-	return (ENGINE_READ(engine, RING_HEAD) & HEAD_ADDR) == 0;
-}
-
 static struct i915_address_space *vm_alias(struct i915_address_space *vm)
 {
 	if (i915_is_ggtt(vm))
@@ -213,31 +198,6 @@ static int xcs_resume(struct intel_engine_cs *engine)
 
 	intel_uncore_forcewake_get(engine->uncore, FORCEWAKE_ALL);
 
-	/* WaClearRingBufHeadRegAtInit:ctg,elk */
-	if (!stop_ring(engine)) {
-		/* G45 ring initialization often fails to reset head to zero */
-		drm_dbg(&dev_priv->drm, "%s head not reset to zero "
-			"ctl %08x head %08x tail %08x start %08x\n",
-			engine->name,
-			ENGINE_READ(engine, RING_CTL),
-			ENGINE_READ(engine, RING_HEAD),
-			ENGINE_READ(engine, RING_TAIL),
-			ENGINE_READ(engine, RING_START));
-
-		if (!stop_ring(engine)) {
-			drm_err(&dev_priv->drm,
-				"failed to set %s head to zero "
-				"ctl %08x head %08x tail %08x start %08x\n",
-				engine->name,
-				ENGINE_READ(engine, RING_CTL),
-				ENGINE_READ(engine, RING_HEAD),
-				ENGINE_READ(engine, RING_TAIL),
-				ENGINE_READ(engine, RING_START));
-			ret = -EIO;
-			goto out;
-		}
-	}
-
 	if (HWS_NEEDS_PHYSICAL(dev_priv))
 		ring_setup_phys_status_page(engine);
 	else
@@ -339,11 +299,21 @@ static void xcs_sanitize(struct intel_engine_cs *engine)
 	clflush_cache_range(engine->status_page.addr, PAGE_SIZE);
 }
 
+static bool stop_ring(struct intel_engine_cs *engine)
+{
+	ENGINE_WRITE_FW(engine, RING_HEAD, ENGINE_READ_FW(engine, RING_TAIL));
+
+	ENGINE_WRITE_FW(engine, RING_HEAD, 0);
+	ENGINE_WRITE_FW(engine, RING_TAIL, 0);
+
+	/* The ring must be empty before it is disabled */
+	ENGINE_WRITE_FW(engine, RING_CTL, 0);
+
+	return (ENGINE_READ_FW(engine, RING_HEAD) & HEAD_ADDR) == 0;
+}
+
 static void reset_prepare(struct intel_engine_cs *engine)
 {
-	struct intel_uncore *uncore = engine->uncore;
-	const u32 base = engine->mmio_base;
-
 	/*
 	 * We stop engines, otherwise we might get failed reset and a
 	 * dead gpu (on elk). Also as modern gpu as kbl can suffer
@@ -355,30 +325,35 @@ static void reset_prepare(struct intel_engine_cs *engine)
 	 * WaKBLVECSSemaphoreWaitPoll:kbl (on ALL_ENGINES)
 	 *
 	 * WaMediaResetMainRingCleanup:ctg,elk (presumably)
+	 * WaClearRingBufHeadRegAtInit:ctg,elk
 	 *
 	 * FIXME: Wa for more modern gens needs to be validated
 	 */
 	ENGINE_TRACE(engine, "\n");
+	intel_engine_stop_cs(engine);
 
-	if (intel_engine_stop_cs(engine))
-		ENGINE_TRACE(engine, "timed out on STOP_RING\n");
+	if (!stop_ring(engine)) {
+		/* G45 ring initialization often fails to reset head to zero */
+		drm_dbg(&engine->i915->drm,
+			"%s head not reset to zero "
+			"ctl %08x head %08x tail %08x start %08x\n",
+			engine->name,
+			ENGINE_READ_FW(engine, RING_CTL),
+			ENGINE_READ_FW(engine, RING_HEAD),
+			ENGINE_READ_FW(engine, RING_TAIL),
+			ENGINE_READ_FW(engine, RING_START));
+	}
 
-	intel_uncore_write_fw(uncore,
-			      RING_HEAD(base),
-			      intel_uncore_read_fw(uncore, RING_TAIL(base)));
-	intel_uncore_posting_read_fw(uncore, RING_HEAD(base)); /* paranoia */
-
-	intel_uncore_write_fw(uncore, RING_HEAD(base), 0);
-	intel_uncore_write_fw(uncore, RING_TAIL(base), 0);
-	intel_uncore_posting_read_fw(uncore, RING_TAIL(base));
-
-	/* The ring must be empty before it is disabled */
-	intel_uncore_write_fw(uncore, RING_CTL(base), 0);
-
-	/* Check acts as a post */
-	if (intel_uncore_read_fw(uncore, RING_HEAD(base)))
-		ENGINE_TRACE(engine, "ring head [%x] not parked\n",
-			     intel_uncore_read_fw(uncore, RING_HEAD(base)));
+	if (!stop_ring(engine)) {
+		drm_err(&engine->i915->drm,
+			"failed to set %s head to zero "
+			"ctl %08x head %08x tail %08x start %08x\n",
+			engine->name,
+			ENGINE_READ_FW(engine, RING_CTL),
+			ENGINE_READ_FW(engine, RING_HEAD),
+			ENGINE_READ_FW(engine, RING_TAIL),
+			ENGINE_READ_FW(engine, RING_START));
+	}
 }
 
 static void reset_rewind(struct intel_engine_cs *engine, bool stalled)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
