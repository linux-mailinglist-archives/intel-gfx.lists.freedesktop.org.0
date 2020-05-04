Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A84F01C31EB
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 06:49:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0399C6E2E8;
	Mon,  4 May 2020 04:49:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C49F86E2E8
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 04:49:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21102360-1500050 
 for multiple; Mon, 04 May 2020 05:49:07 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 May 2020 05:48:45 +0100
Message-Id: <20200504044903.7626-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200504044903.7626-1-chris@chris-wilson.co.uk>
References: <20200504044903.7626-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/22] drm/i915/gt: Small tidy of gen8+
 breadcrumb emission
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

Use a local to shrink a line under 80 columns, and refactor the common
emit_xcs_breadcrumb() wrapper of ggtt-write.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 34 +++++++++++++----------------
 1 file changed, 15 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index d4ef344657b0..c00366387b54 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4641,8 +4641,7 @@ static u32 *emit_preempt_busywait(struct i915_request *request, u32 *cs)
 }
 
 static __always_inline u32*
-gen8_emit_fini_breadcrumb_footer(struct i915_request *request,
-				 u32 *cs)
+gen8_emit_fini_breadcrumb_tail(struct i915_request *request, u32 *cs)
 {
 	*cs++ = MI_USER_INTERRUPT;
 
@@ -4656,14 +4655,16 @@ gen8_emit_fini_breadcrumb_footer(struct i915_request *request,
 	return gen8_emit_wa_tail(request, cs);
 }
 
-static u32 *gen8_emit_fini_breadcrumb(struct i915_request *request, u32 *cs)
+static u32 *emit_xcs_breadcrumb(struct i915_request *request, u32 *cs)
 {
-	cs = gen8_emit_ggtt_write(cs,
-				  request->fence.seqno,
-				  i915_request_active_timeline(request)->hwsp_offset,
-				  0);
+	u32 addr = i915_request_active_timeline(request)->hwsp_offset;
 
-	return gen8_emit_fini_breadcrumb_footer(request, cs);
+	return gen8_emit_ggtt_write(cs, request->fence.seqno, addr, 0);
+}
+
+static u32 *gen8_emit_fini_breadcrumb(struct i915_request *rq, u32 *cs)
+{
+	return gen8_emit_fini_breadcrumb_tail(rq, emit_xcs_breadcrumb(rq, cs));
 }
 
 static u32 *gen8_emit_fini_breadcrumb_rcs(struct i915_request *request, u32 *cs)
@@ -4681,7 +4682,7 @@ static u32 *gen8_emit_fini_breadcrumb_rcs(struct i915_request *request, u32 *cs)
 				      PIPE_CONTROL_FLUSH_ENABLE |
 				      PIPE_CONTROL_CS_STALL);
 
-	return gen8_emit_fini_breadcrumb_footer(request, cs);
+	return gen8_emit_fini_breadcrumb_tail(request, cs);
 }
 
 static u32 *
@@ -4697,7 +4698,7 @@ gen11_emit_fini_breadcrumb_rcs(struct i915_request *request, u32 *cs)
 				      PIPE_CONTROL_DC_FLUSH_ENABLE |
 				      PIPE_CONTROL_FLUSH_ENABLE);
 
-	return gen8_emit_fini_breadcrumb_footer(request, cs);
+	return gen8_emit_fini_breadcrumb_tail(request, cs);
 }
 
 /*
@@ -4735,7 +4736,7 @@ static u32 *gen12_emit_preempt_busywait(struct i915_request *request, u32 *cs)
 }
 
 static __always_inline u32*
-gen12_emit_fini_breadcrumb_footer(struct i915_request *request, u32 *cs)
+gen12_emit_fini_breadcrumb_tail(struct i915_request *request, u32 *cs)
 {
 	*cs++ = MI_USER_INTERRUPT;
 
@@ -4749,14 +4750,9 @@ gen12_emit_fini_breadcrumb_footer(struct i915_request *request, u32 *cs)
 	return gen8_emit_wa_tail(request, cs);
 }
 
-static u32 *gen12_emit_fini_breadcrumb(struct i915_request *request, u32 *cs)
+static u32 *gen12_emit_fini_breadcrumb(struct i915_request *rq, u32 *cs)
 {
-	cs = gen8_emit_ggtt_write(cs,
-				  request->fence.seqno,
-				  i915_request_active_timeline(request)->hwsp_offset,
-				  0);
-
-	return gen12_emit_fini_breadcrumb_footer(request, cs);
+	return gen12_emit_fini_breadcrumb_tail(rq, emit_xcs_breadcrumb(rq, cs));
 }
 
 static u32 *
@@ -4775,7 +4771,7 @@ gen12_emit_fini_breadcrumb_rcs(struct i915_request *request, u32 *cs)
 				      PIPE_CONTROL_FLUSH_ENABLE |
 				      PIPE_CONTROL_HDC_PIPELINE_FLUSH);
 
-	return gen12_emit_fini_breadcrumb_footer(request, cs);
+	return gen12_emit_fini_breadcrumb_tail(request, cs);
 }
 
 static void execlists_park(struct intel_engine_cs *engine)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
