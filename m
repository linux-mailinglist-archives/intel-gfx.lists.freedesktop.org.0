Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B4311E646
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 16:13:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2A026E8EE;
	Fri, 13 Dec 2019 15:13:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AAF46E8E4
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 15:13:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19569275-1500050 
 for multiple; Fri, 13 Dec 2019 15:13:33 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Dec 2019 15:13:31 +0000
Message-Id: <20191213151331.1788371-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Select arb on/off around
 batches based on preemption
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

Decide whether or not we need to disable arbitration within user batches
based on our intel_engine_has_preemption() flag.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 929f6bae4eba..983e0e6e909b 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3263,9 +3263,9 @@ static void execlists_reset_finish(struct intel_engine_cs *engine)
 		  atomic_read(&execlists->tasklet.count));
 }
 
-static int gen8_emit_bb_start(struct i915_request *rq,
-			      u64 offset, u32 len,
-			      const unsigned int flags)
+static int gen8_emit_bb_start_noarb(struct i915_request *rq,
+				    u64 offset, u32 len,
+				    const unsigned int flags)
 {
 	u32 *cs;
 
@@ -3299,7 +3299,7 @@ static int gen8_emit_bb_start(struct i915_request *rq,
 	return 0;
 }
 
-static int gen9_emit_bb_start(struct i915_request *rq,
+static int gen8_emit_bb_start(struct i915_request *rq,
 			      u64 offset, u32 len,
 			      const unsigned int flags)
 {
@@ -3774,6 +3774,11 @@ void intel_execlists_set_default_submission(struct intel_engine_cs *engine)
 
 	if (INTEL_GEN(engine->i915) >= 12)
 		engine->flags |= I915_ENGINE_HAS_RELATIVE_MMIO;
+
+	if (intel_engine_has_preemption(engine))
+		engine->emit_bb_start = gen8_emit_bb_start;
+	else
+		engine->emit_bb_start = gen8_emit_bb_start_noarb;
 }
 
 static void execlists_shutdown(struct intel_engine_cs *engine)
@@ -3827,10 +3832,6 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
 		 * until a more refined solution exists.
 		 */
 	}
-	if (IS_GEN(engine->i915, 8))
-		engine->emit_bb_start = gen8_emit_bb_start;
-	else
-		engine->emit_bb_start = gen9_emit_bb_start;
 }
 
 static inline void
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
