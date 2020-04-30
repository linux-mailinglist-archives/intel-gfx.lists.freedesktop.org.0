Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD701C00B7
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 17:48:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30E336E927;
	Thu, 30 Apr 2020 15:48:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 330706E929
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 15:48:14 +0000 (UTC)
IronPort-SDR: x4pIzLnkgAmJsFcyF3UAThsGV6Edf/5DFoXVRyvNTIzWUr9qc2wYNNiWYN5pu+sOOnjSntVUnF
 FyW0U4QUREMg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 08:48:13 -0700
IronPort-SDR: gmRLzm477qyo0+Sf9Ou1vafI3jv20W1BCRJtAQabfvE+6Ayla02XpScqyY0t+elKUNIVZr7q5s
 HDdtv0vn7pMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,336,1583222400"; d="scan'208";a="249780790"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 30 Apr 2020 08:48:12 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id B4AEB8400A0; Thu, 30 Apr 2020 18:47:38 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 18:47:28 +0300
Message-Id: <20200430154735.22434-2-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
References: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 2/9] drm/i915/gen12: Fix HDC pipeline flush
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

HDC pipeline flush is bit on the first dword of
the PIPE_CONTROL, not the second. Make it so.

Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h       | 23 +++++++++++----
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  2 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 30 ++++++++++----------
 3 files changed, 33 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index d10e52ff059f..f449171ae808 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -241,19 +241,24 @@ void intel_engine_fini_breadcrumbs(struct intel_engine_cs *engine);
 void intel_engine_print_breadcrumbs(struct intel_engine_cs *engine,
 				    struct drm_printer *p);
 
-static inline u32 *gen8_emit_pipe_control(u32 *batch, u32 flags, u32 offset)
+static inline u32 *gen12_emit_pipe_control(u32 *batch, u32 flags0, u32 flags1, u32 offset)
 {
 	memset(batch, 0, 6 * sizeof(u32));
 
-	batch[0] = GFX_OP_PIPE_CONTROL(6);
-	batch[1] = flags;
+	batch[0] = GFX_OP_PIPE_CONTROL(6) | flags0;
+	batch[1] = flags1;
 	batch[2] = offset;
 
 	return batch + 6;
 }
 
+static inline u32 *gen8_emit_pipe_control(u32 *batch, u32 flags, u32 offset)
+{
+	return gen12_emit_pipe_control(batch, 0, flags, offset);
+}
+
 static inline u32 *
-gen8_emit_ggtt_write_rcs(u32 *cs, u32 value, u32 gtt_offset, u32 flags)
+gen12_emit_ggtt_write_rcs(u32 *cs, u32 value, u32 gtt_offset, u32 flags0, u32 flags1)
 {
 	/* We're using qword write, offset should be aligned to 8 bytes. */
 	GEM_BUG_ON(!IS_ALIGNED(gtt_offset, 8));
@@ -262,8 +267,8 @@ gen8_emit_ggtt_write_rcs(u32 *cs, u32 value, u32 gtt_offset, u32 flags)
 	 * need a prior CS_STALL, which is emitted by the flush
 	 * following the batch.
 	 */
-	*cs++ = GFX_OP_PIPE_CONTROL(6);
-	*cs++ = flags | PIPE_CONTROL_QW_WRITE | PIPE_CONTROL_GLOBAL_GTT_IVB;
+	*cs++ = GFX_OP_PIPE_CONTROL(6) | flags0;
+	*cs++ = flags1 | PIPE_CONTROL_QW_WRITE | PIPE_CONTROL_GLOBAL_GTT_IVB;
 	*cs++ = gtt_offset;
 	*cs++ = 0;
 	*cs++ = value;
@@ -273,6 +278,12 @@ gen8_emit_ggtt_write_rcs(u32 *cs, u32 value, u32 gtt_offset, u32 flags)
 	return cs;
 }
 
+static inline u32 *
+gen8_emit_ggtt_write_rcs(u32 *cs, u32 value, u32 gtt_offset, u32 flags)
+{
+	return gen12_emit_ggtt_write_rcs(cs, value, gtt_offset, 0, flags);
+}
+
 static inline u32 *
 gen8_emit_ggtt_write(u32 *cs, u32 value, u32 gtt_offset, u32 flags)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
index b3cf09657fb2..534e435f20bc 100644
--- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
+++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
@@ -237,7 +237,7 @@
 #define   PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE	(1<<11) /* MBZ on ILK */
 #define   PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE		(1<<10) /* GM45+ only */
 #define   PIPE_CONTROL_INDIRECT_STATE_DISABLE		(1<<9)
-#define   PIPE_CONTROL_HDC_PIPELINE_FLUSH		REG_BIT(9)  /* gen12 */
+#define   PIPE_CONTROL0_HDC_PIPELINE_FLUSH		REG_BIT(9)  /* gen12 */
 #define   PIPE_CONTROL_NOTIFY				(1<<8)
 #define   PIPE_CONTROL_FLUSH_ENABLE			(1<<7) /* gen7+ */
 #define   PIPE_CONTROL_DC_FLUSH_ENABLE			(1<<5)
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 8f82b960f2a1..3c5e55ad4f9f 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4559,7 +4559,6 @@ static int gen12_emit_flush_render(struct i915_request *request,
 		flags |= PIPE_CONTROL_DEPTH_STALL;
 		flags |= PIPE_CONTROL_DC_FLUSH_ENABLE;
 		flags |= PIPE_CONTROL_FLUSH_ENABLE;
-		flags |= PIPE_CONTROL_HDC_PIPELINE_FLUSH;
 
 		flags |= PIPE_CONTROL_STORE_DATA_INDEX;
 		flags |= PIPE_CONTROL_QW_WRITE;
@@ -4570,7 +4569,8 @@ static int gen12_emit_flush_render(struct i915_request *request,
 		if (IS_ERR(cs))
 			return PTR_ERR(cs);
 
-		cs = gen8_emit_pipe_control(cs, flags, LRC_PPHWSP_SCRATCH_ADDR);
+		cs = gen12_emit_pipe_control(cs, PIPE_CONTROL0_HDC_PIPELINE_FLUSH,
+					     flags, LRC_PPHWSP_SCRATCH_ADDR);
 		intel_ring_advance(request, cs);
 	}
 
@@ -4602,7 +4602,7 @@ static int gen12_emit_flush_render(struct i915_request *request,
 		 */
 		*cs++ = preparser_disable(true);
 
-		cs = gen8_emit_pipe_control(cs, flags, LRC_PPHWSP_SCRATCH_ADDR);
+		cs = gen12_emit_pipe_control(cs, 0, flags, LRC_PPHWSP_SCRATCH_ADDR);
 
 		*cs++ = preparser_disable(false);
 		intel_ring_advance(request, cs);
@@ -4761,18 +4761,18 @@ static u32 *gen12_emit_fini_breadcrumb(struct i915_request *request, u32 *cs)
 static u32 *
 gen12_emit_fini_breadcrumb_rcs(struct i915_request *request, u32 *cs)
 {
-	cs = gen8_emit_ggtt_write_rcs(cs,
-				      request->fence.seqno,
-				      i915_request_active_timeline(request)->hwsp_offset,
-				      PIPE_CONTROL_CS_STALL |
-				      PIPE_CONTROL_TILE_CACHE_FLUSH |
-				      PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
-				      PIPE_CONTROL_DEPTH_CACHE_FLUSH |
-				      /* Wa_1409600907:tgl */
-				      PIPE_CONTROL_DEPTH_STALL |
-				      PIPE_CONTROL_DC_FLUSH_ENABLE |
-				      PIPE_CONTROL_FLUSH_ENABLE |
-				      PIPE_CONTROL_HDC_PIPELINE_FLUSH);
+	cs = gen12_emit_ggtt_write_rcs(cs,
+				       request->fence.seqno,
+				       i915_request_active_timeline(request)->hwsp_offset,
+				       PIPE_CONTROL0_HDC_PIPELINE_FLUSH,
+				       PIPE_CONTROL_CS_STALL |
+				       PIPE_CONTROL_TILE_CACHE_FLUSH |
+				       PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
+				       PIPE_CONTROL_DEPTH_CACHE_FLUSH |
+				       /* Wa_1409600907:tgl */
+				       PIPE_CONTROL_DEPTH_STALL |
+				       PIPE_CONTROL_DC_FLUSH_ENABLE |
+				       PIPE_CONTROL_FLUSH_ENABLE);
 
 	return gen12_emit_fini_breadcrumb_footer(request, cs);
 }
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
