Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E02212C252
	for <lists+intel-gfx@lfdr.de>; Sun, 29 Dec 2019 12:40:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3512989DFC;
	Sun, 29 Dec 2019 11:40:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41B5489DFC
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Dec 2019 11:40:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19718460-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Dec 2019 11:40:38 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 29 Dec 2019 11:40:36 +0000
Message-Id: <20191229114037.3266228-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915/gt: Ensure that all new contexts
 clear STOP_RING
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

Set up the RING_MI_NODE in new contexts to clear the STOP_RING bit, just
in case they find it still set after a reset (as they are the first
contexts to be run).

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 4fb70a7716e3..723914a41ef4 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3030,10 +3030,8 @@ static void reset_csb_pointers(struct intel_engine_cs *engine)
 			       &execlists->csb_status[reset_value]);
 }
 
-static void __execlists_reset_reg_state(const struct intel_context *ce,
-					const struct intel_engine_cs *engine)
+static void __reset_stop_ring(u32 *regs, const struct intel_engine_cs *engine)
 {
-	u32 *regs = ce->lrc_reg_state;
 	int x;
 
 	x = lrc_ring_mi_mode(engine);
@@ -3043,6 +3041,14 @@ static void __execlists_reset_reg_state(const struct intel_context *ce,
 	}
 }
 
+static void __execlists_reset_reg_state(const struct intel_context *ce,
+					const struct intel_engine_cs *engine)
+{
+	u32 *regs = ce->lrc_reg_state;
+
+	__reset_stop_ring(regs, engine);
+}
+
 static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
@@ -4043,6 +4049,8 @@ static void execlists_init_reg_state(u32 *regs,
 			     INTEL_GEN(engine->i915) >= 12 ?
 			     GEN12_CTX_BB_PER_CTX_PTR :
 			     CTX_BB_PER_CTX_PTR);
+
+	__reset_stop_ring(regs, engine);
 }
 
 static int
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
