Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D3A2FAD95
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 23:55:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3132A6E5B6;
	Mon, 18 Jan 2021 22:55:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A41B6E5B6
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 22:55:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23633836-1500050 
 for multiple; Mon, 18 Jan 2021 22:55:19 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Jan 2021 22:55:18 +0000
Message-Id: <20210118225518.21331-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210118184326.18858-1-chris@chris-wilson.co.uk>
References: <20210118184326.18858-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: One more flush for Baytrail clear
 residuals
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

CI reports that Baytail requires one more invalidate after CACHE_MODE
for it to be happy.

Fixes: ace44e13e577 ("drm/i915/gt: Clear CACHE_MODE prior to clearing residuals")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
---
 drivers/gpu/drm/i915/gt/gen7_renderclear.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
index 39478712769f..8551e6de50e8 100644
--- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
+++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
@@ -353,19 +353,21 @@ static void gen7_emit_pipeline_flush(struct batch_chunk *batch)
 
 static void gen7_emit_pipeline_invalidate(struct batch_chunk *batch)
 {
-	u32 *cs = batch_alloc_items(batch, 0, 8);
+	u32 *cs = batch_alloc_items(batch, 0, 10);
 
 	/* ivb: Stall before STATE_CACHE_INVALIDATE */
-	*cs++ = GFX_OP_PIPE_CONTROL(4);
+	*cs++ = GFX_OP_PIPE_CONTROL(5);
 	*cs++ = PIPE_CONTROL_STALL_AT_SCOREBOARD |
 		PIPE_CONTROL_CS_STALL;
 	*cs++ = 0;
 	*cs++ = 0;
+	*cs++ = 0;
 
-	*cs++ = GFX_OP_PIPE_CONTROL(4);
+	*cs++ = GFX_OP_PIPE_CONTROL(5);
 	*cs++ = PIPE_CONTROL_STATE_CACHE_INVALIDATE;
 	*cs++ = 0;
 	*cs++ = 0;
+	*cs++ = 0;
 
 	batch_advance(batch, cs);
 }
@@ -397,6 +399,7 @@ static void emit_batch(struct i915_vma * const vma,
 	batch_add(&cmds, 0xffff0000);
 	batch_add(&cmds, i915_mmio_reg_offset(CACHE_MODE_1));
 	batch_add(&cmds, 0xffff0000 | PIXEL_SUBSPAN_COLLECT_OPT_DISABLE);
+	gen7_emit_pipeline_invalidate(&cmds);
 	gen7_emit_pipeline_flush(&cmds);
 
 	/* Switch to the media pipeline and our base address */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
