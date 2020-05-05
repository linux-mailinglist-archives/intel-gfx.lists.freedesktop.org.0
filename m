Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A65141C4ADE
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 02:04:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7CB76E0DA;
	Tue,  5 May 2020 00:04:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 396AA6E0DA
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 00:04:18 +0000 (UTC)
IronPort-SDR: 9fbY9Uh+nrSJq88AFLbZIlW8JxQ/9hejP6aed/tHqZBw9DkFnovUlwI4F6pY2Way3khvVuTePo
 inpFScQ7/FnQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 17:04:17 -0700
IronPort-SDR: iJM7LicEoj7wK+eU0si706NDpcNoNcM6+xgzeWSRtz/QGx/4Du4UqBy3Xy+DPfi/lu20nBw8Vs
 FWNRslwbnhlA==
X-IronPort-AV: E=Sophos;i="5.73,353,1583222400"; d="scan'208";a="434288684"
Received: from dsp-dsk1.jf.intel.com (HELO localhost) ([10.54.70.63])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 17:04:17 -0700
From: D Scott Phillips <d.scott.phillips@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 May 2020 17:01:46 -0700
Message-Id: <20200505000146.2295525-1-d.scott.phillips@intel.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Put HDC flush pipe_control bit in
 the right dword
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

Previously we set HDC_PIPELINE_FLUSH in dword 1 of gen12
pipe_control commands. HDC Pipeline flush actually resides in
dword 0, and the bit we were setting in dword 1 was Indirect State
Pointers Disable, which invalidates indirect state in the render
context. This causes failures for userspace, as things like push
constant state gets invalidated.

Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: D Scott Phillips <d.scott.phillips@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h | 23 +++++++++++++++++------
 drivers/gpu/drm/i915/gt/intel_lrc.c    | 11 ++++++-----
 2 files changed, 23 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 19d0b8830905..8338be338ec8 100644
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
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index d4ef344657b0..af7790ac9f6a 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4549,6 +4549,7 @@ static int gen12_emit_flush_render(struct i915_request *request,
 				   u32 mode)
 {
 	if (mode & EMIT_FLUSH) {
+		u32 flags0 = 0;
 		u32 flags = 0;
 		u32 *cs;
 
@@ -4559,7 +4560,7 @@ static int gen12_emit_flush_render(struct i915_request *request,
 		flags |= PIPE_CONTROL_DEPTH_STALL;
 		flags |= PIPE_CONTROL_DC_FLUSH_ENABLE;
 		flags |= PIPE_CONTROL_FLUSH_ENABLE;
-		flags |= PIPE_CONTROL_HDC_PIPELINE_FLUSH;
+		flags0 |= PIPE_CONTROL_HDC_PIPELINE_FLUSH;
 
 		flags |= PIPE_CONTROL_STORE_DATA_INDEX;
 		flags |= PIPE_CONTROL_QW_WRITE;
@@ -4570,7 +4571,7 @@ static int gen12_emit_flush_render(struct i915_request *request,
 		if (IS_ERR(cs))
 			return PTR_ERR(cs);
 
-		cs = gen8_emit_pipe_control(cs, flags, LRC_PPHWSP_SCRATCH_ADDR);
+		cs = gen12_emit_pipe_control(cs, flags0, flags, LRC_PPHWSP_SCRATCH_ADDR);
 		intel_ring_advance(request, cs);
 	}
 
@@ -4762,9 +4763,10 @@ static u32 *gen12_emit_fini_breadcrumb(struct i915_request *request, u32 *cs)
 static u32 *
 gen12_emit_fini_breadcrumb_rcs(struct i915_request *request, u32 *cs)
 {
-	cs = gen8_emit_ggtt_write_rcs(cs,
+	cs = gen12_emit_ggtt_write_rcs(cs,
 				      request->fence.seqno,
 				      i915_request_active_timeline(request)->hwsp_offset,
+				      PIPE_CONTROL_HDC_PIPELINE_FLUSH,
 				      PIPE_CONTROL_CS_STALL |
 				      PIPE_CONTROL_TILE_CACHE_FLUSH |
 				      PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
@@ -4772,8 +4774,7 @@ gen12_emit_fini_breadcrumb_rcs(struct i915_request *request, u32 *cs)
 				      /* Wa_1409600907:tgl */
 				      PIPE_CONTROL_DEPTH_STALL |
 				      PIPE_CONTROL_DC_FLUSH_ENABLE |
-				      PIPE_CONTROL_FLUSH_ENABLE |
-				      PIPE_CONTROL_HDC_PIPELINE_FLUSH);
+				      PIPE_CONTROL_FLUSH_ENABLE);
 
 	return gen12_emit_fini_breadcrumb_footer(request, cs);
 }
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
