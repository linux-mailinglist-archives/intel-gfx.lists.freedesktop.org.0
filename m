Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A11562D3275
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Dec 2020 19:57:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 084476E9A9;
	Tue,  8 Dec 2020 18:57:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 407DD6E9AB
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Dec 2020 18:57:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23257844-1500050 
 for multiple; Tue, 08 Dec 2020 18:57:03 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Dec 2020 18:57:02 +0000
Message-Id: <20201208185702.31852-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Disable preparser around
 MI_SEMAPHORE_WAIT
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

W/a 1607297627 requires us to prevent new DMA requests once the CS
enters RDOP. The recommendation is to suspend the CS preparser around
MI_SEMAPHORE_WAIT.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  5 +++++
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 15 ++++++---------
 drivers/gpu/drm/i915/i915_request.c          |  4 +++-
 3 files changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
index 534e435f20bc..1982716aeb88 100644
--- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
+++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
@@ -359,4 +359,9 @@ static inline u32 *__gen6_emit_bb_start(u32 *cs, u32 addr, unsigned int flags)
 	return cs;
 }
 
+static inline u32 gen12_preparser_disable(bool state)
+{
+	return MI_ARB_CHECK | 1 << 8 | state;
+}
+
 #endif /* _INTEL_GPU_COMMANDS_H_ */
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 0c7f1e3dee5c..86495c999f1f 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4723,11 +4723,6 @@ static int gen11_emit_flush_render(struct i915_request *request,
 	return 0;
 }
 
-static u32 preparser_disable(bool state)
-{
-	return MI_ARB_CHECK | 1 << 8 | state;
-}
-
 static i915_reg_t aux_inv_reg(const struct intel_engine_cs *engine)
 {
 	static const i915_reg_t vd[] = {
@@ -4821,14 +4816,14 @@ static int gen12_emit_flush_render(struct i915_request *request,
 		 * invalidate and loading a stale page for the batch
 		 * buffer / request payload.
 		 */
-		*cs++ = preparser_disable(true);
+		*cs++ = gen12_preparser_disable(true);
 
 		cs = gen8_emit_pipe_control(cs, flags, LRC_PPHWSP_SCRATCH_ADDR);
 
 		/* hsdes: 1809175790 */
 		cs = gen12_emit_aux_table_inv(GEN12_GFX_CCS_AUX_NV, cs);
 
-		*cs++ = preparser_disable(false);
+		*cs++ = gen12_preparser_disable(false);
 		intel_ring_advance(request, cs);
 	}
 
@@ -4853,7 +4848,7 @@ static int gen12_emit_flush(struct i915_request *request, u32 mode)
 		return PTR_ERR(cs);
 
 	if (mode & EMIT_INVALIDATE)
-		*cs++ = preparser_disable(true);
+		*cs++ = gen12_preparser_disable(true);
 
 	cmd = MI_FLUSH_DW + 1;
 
@@ -4889,7 +4884,7 @@ static int gen12_emit_flush(struct i915_request *request, u32 mode)
 	}
 
 	if (mode & EMIT_INVALIDATE)
-		*cs++ = preparser_disable(false);
+		*cs++ = gen12_preparser_disable(false);
 
 	intel_ring_advance(request, cs);
 
@@ -5015,6 +5010,7 @@ gen11_emit_fini_breadcrumb_rcs(struct i915_request *request, u32 *cs)
 
 static u32 *gen12_emit_preempt_busywait(struct i915_request *request, u32 *cs)
 {
+	*cs++ = gen12_preparser_disable(true); /* Wa_1607297627:tgl,dg1,rkl */
 	*cs++ = MI_SEMAPHORE_WAIT_TOKEN |
 		MI_SEMAPHORE_GLOBAL_GTT |
 		MI_SEMAPHORE_POLL |
@@ -5023,6 +5019,7 @@ static u32 *gen12_emit_preempt_busywait(struct i915_request *request, u32 *cs)
 	*cs++ = intel_hws_preempt_address(request->engine);
 	*cs++ = 0;
 	*cs++ = 0;
+	*cs++ = gen12_preparser_disable(false);
 	*cs++ = MI_NOOP;
 
 	return cs;
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index a9db1376b996..84fc31dc61bf 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1046,7 +1046,7 @@ __emit_semaphore_wait(struct i915_request *to,
 	if (err)
 		return err;
 
-	len = 4;
+	len = 6;
 	if (has_token)
 		len += 2;
 
@@ -1062,6 +1062,7 @@ __emit_semaphore_wait(struct i915_request *to,
 	 * (post-wrap) values than they were expecting (and so wait
 	 * forever).
 	 */
+	*cs++ = gen12_preparser_disable(true); /* Wa_1607297627:tgl,dg1,rkl */
 	*cs++ = (MI_SEMAPHORE_WAIT |
 		 MI_SEMAPHORE_GLOBAL_GTT |
 		 MI_SEMAPHORE_POLL |
@@ -1074,6 +1075,7 @@ __emit_semaphore_wait(struct i915_request *to,
 		*cs++ = 0;
 		*cs++ = MI_NOOP;
 	}
+	*cs++ = gen12_preparser_disable(false);
 
 	intel_ring_advance(to, cs);
 	return 0;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
