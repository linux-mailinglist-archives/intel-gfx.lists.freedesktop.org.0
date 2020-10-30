Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E78352A03B7
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 12:10:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F30AA6EDAE;
	Fri, 30 Oct 2020 11:10:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C46D76EDAE
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 11:10:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22842913-1500050 
 for multiple; Fri, 30 Oct 2020 11:10:03 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Oct 2020 11:09:58 +0000
Message-Id: <20201030111001.7685-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201030111001.7685-1-chris@chris-wilson.co.uk>
References: <20201030111001.7685-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/gt: Expose more parameters for
 emitting writes into the ring
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

Add another lower level to emit_ggtt_write so that the GGTT nature of
the write is not hardcoded into the emitter.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine.h | 55 ++++++++++++++++----------
 1 file changed, 35 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 7c3a1012e702..760fefdfe392 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -245,22 +245,14 @@ static inline u32 *gen12_emit_pipe_control(u32 *batch, u32 flags0, u32 flags1, u
 }
 
 static inline u32 *
-__gen8_emit_ggtt_write_rcs(u32 *cs, u32 value, u32 gtt_offset, u32 flags0, u32 flags1)
+__gen8_emit_write_rcs(u32 *cs, u32 value, u32 offset, u32 flags0, u32 flags1)
 {
-	/* We're using qword write, offset should be aligned to 8 bytes. */
-	GEM_BUG_ON(!IS_ALIGNED(gtt_offset, 8));
-
-	/* w/a for post sync ops following a GPGPU operation we
-	 * need a prior CS_STALL, which is emitted by the flush
-	 * following the batch.
-	 */
 	*cs++ = GFX_OP_PIPE_CONTROL(6) | flags0;
-	*cs++ = flags1 | PIPE_CONTROL_QW_WRITE | PIPE_CONTROL_GLOBAL_GTT_IVB;
-	*cs++ = gtt_offset;
+	*cs++ = flags1 | PIPE_CONTROL_QW_WRITE;
+	*cs++ = offset;
 	*cs++ = 0;
 	*cs++ = value;
-	/* We're thrashing one dword of HWS. */
-	*cs++ = 0;
+	*cs++ = 0; /* We're thrashing one extra dword. */
 
 	return cs;
 }
@@ -268,13 +260,38 @@ __gen8_emit_ggtt_write_rcs(u32 *cs, u32 value, u32 gtt_offset, u32 flags0, u32 f
 static inline u32*
 gen8_emit_ggtt_write_rcs(u32 *cs, u32 value, u32 gtt_offset, u32 flags)
 {
-	return __gen8_emit_ggtt_write_rcs(cs, value, gtt_offset, 0, flags);
+	/* We're using qword write, offset should be aligned to 8 bytes. */
+	GEM_BUG_ON(!IS_ALIGNED(gtt_offset, 8));
+
+	return __gen8_emit_write_rcs(cs,
+				     value,
+				     gtt_offset,
+				     0,
+				     flags | PIPE_CONTROL_GLOBAL_GTT_IVB);
 }
 
 static inline u32*
 gen12_emit_ggtt_write_rcs(u32 *cs, u32 value, u32 gtt_offset, u32 flags0, u32 flags1)
 {
-	return __gen8_emit_ggtt_write_rcs(cs, value, gtt_offset, flags0, flags1);
+	/* We're using qword write, offset should be aligned to 8 bytes. */
+	GEM_BUG_ON(!IS_ALIGNED(gtt_offset, 8));
+
+	return __gen8_emit_write_rcs(cs,
+				     value,
+				     gtt_offset,
+				     flags0,
+				     flags1 | PIPE_CONTROL_GLOBAL_GTT_IVB);
+}
+
+static inline u32 *
+__gen8_emit_flush_dw(u32 *cs, u32 value, u32 gtt_offset, u32 flags)
+{
+	*cs++ = (MI_FLUSH_DW + 1) | flags;
+	*cs++ = gtt_offset;
+	*cs++ = 0;
+	*cs++ = value;
+
+	return cs;
 }
 
 static inline u32 *
@@ -285,12 +302,10 @@ gen8_emit_ggtt_write(u32 *cs, u32 value, u32 gtt_offset, u32 flags)
 	/* Offset should be aligned to 8 bytes for both (QW/DW) write types */
 	GEM_BUG_ON(!IS_ALIGNED(gtt_offset, 8));
 
-	*cs++ = (MI_FLUSH_DW + 1) | MI_FLUSH_DW_OP_STOREDW | flags;
-	*cs++ = gtt_offset | MI_FLUSH_DW_USE_GTT;
-	*cs++ = 0;
-	*cs++ = value;
-
-	return cs;
+	return __gen8_emit_flush_dw(cs,
+				    value,
+				    gtt_offset | MI_FLUSH_DW_USE_GTT,
+				    flags | MI_FLUSH_DW_OP_STOREDW);
 }
 
 static inline void __intel_engine_reset(struct intel_engine_cs *engine,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
