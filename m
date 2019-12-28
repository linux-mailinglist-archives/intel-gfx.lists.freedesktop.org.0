Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8CD712BF80
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Dec 2019 23:38:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2F208952F;
	Sat, 28 Dec 2019 22:38:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91E2D8952F
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Dec 2019 22:38:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19715294-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Dec 2019 22:38:52 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 28 Dec 2019 22:38:52 +0000
Message-Id: <20191228223852.3200629-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Ensure that all new contexts clear
 STOP_RING
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
 drivers/gpu/drm/i915/gt/intel_lrc.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 4fb70a7716e3..db6987fb8dd4 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4029,6 +4029,7 @@ static void execlists_init_reg_state(u32 *regs,
 	 * Must keep consistent with virtual_update_register_offsets().
 	 */
 	u32 *bbe = set_offsets(regs, reg_offsets(engine), engine);
+	int x;
 
 	if (close) { /* Close the batch; used mainly by live_lrc_layout() */
 		*bbe = MI_BATCH_BUFFER_END;
@@ -4043,6 +4044,10 @@ static void execlists_init_reg_state(u32 *regs,
 			     INTEL_GEN(engine->i915) >= 12 ?
 			     GEN12_CTX_BB_PER_CTX_PTR :
 			     CTX_BB_PER_CTX_PTR);
+
+	x = lrc_ring_mi_mode(engine);
+	if (x != -1)
+		regs[x + 1] = _MASKED_BIT_DISABLE(STOP_RING);
 }
 
 static int
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
