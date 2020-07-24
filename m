Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B187522C496
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 13:54:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40FAB6E0E0;
	Fri, 24 Jul 2020 11:54:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 984A56E0E0
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 11:54:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21918180-1500050 
 for multiple; Fri, 24 Jul 2020 12:53:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jul 2020 12:53:51 +0100
Message-Id: <20200724115352.19892-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200724115352.19892-1-chris@chris-wilson.co.uk>
References: <20200724115352.19892-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/gt: Stall around xcs invalidations
 on tgl
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

Whether this is an arbitrary stall or a vital ingredient, neverthess the
impact is noticeable. If we do not have the stall around the xcs
invalidation before a request, writes within that request sometimes go
astray.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2169
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 353b1717fe84..104bef04498d 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4761,10 +4761,12 @@ static int gen12_emit_flush_render(struct i915_request *request,
 
 static int gen12_emit_flush(struct i915_request *request, u32 mode)
 {
+#define WA_CNT 32 /* Magic delay */
 	intel_engine_mask_t aux_inv = 0;
 	u32 cmd, *cs;
+	int n;
 
-	cmd = 4;
+	cmd = 4 * WA_CNT;
 	if (mode & EMIT_INVALIDATE)
 		cmd += 2;
 	if (mode & EMIT_INVALIDATE)
@@ -4781,7 +4783,8 @@ static int gen12_emit_flush(struct i915_request *request, u32 mode)
 
 	cmd = MI_FLUSH_DW + 1;
 
-	/* We always require a command barrier so that subsequent
+	/*
+	 * We always require a command barrier so that subsequent
 	 * commands, such as breadcrumb interrupts, are strictly ordered
 	 * wrt the contents of the write cache being flushed to memory
 	 * (and thus being coherent from the CPU).
@@ -4794,10 +4797,12 @@ static int gen12_emit_flush(struct i915_request *request, u32 mode)
 			cmd |= MI_INVALIDATE_BSD;
 	}
 
-	*cs++ = cmd;
-	*cs++ = LRC_PPHWSP_SCRATCH_ADDR;
-	*cs++ = 0; /* upper addr */
-	*cs++ = 0; /* value */
+	for (n = 0; n < WA_CNT; n++) {
+		*cs++ = cmd;
+		*cs++ = LRC_PPHWSP_SCRATCH_ADDR;
+		*cs++ = 0; /* upper addr */
+		*cs++ = 0; /* value */
+	}
 
 	if (aux_inv) { /* hsdes: 1809175790 */
 		struct intel_engine_cs *engine;
@@ -4818,6 +4823,7 @@ static int gen12_emit_flush(struct i915_request *request, u32 mode)
 	intel_ring_advance(request, cs);
 
 	return 0;
+#undef WA_CNT
 }
 
 static void assert_request_valid(struct i915_request *rq)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
