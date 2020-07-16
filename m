Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D67E222CCC
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 22:32:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FC076ECE5;
	Thu, 16 Jul 2020 20:32:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A67C46ECE5
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 20:32:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21843218-1500050 
 for multiple; Thu, 16 Jul 2020 21:32:02 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 21:32:01 +0100
Message-Id: <20200716203201.11977-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200716203201.11977-1-chris@chris-wilson.co.uk>
References: <20200716203201.11977-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Wait for aux invalidation on
 Tigerlake
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

Add a SRM read back of the aux invalidation register after poking
hsdes: 1809175790, as failing to do so leads to writes going astray.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2169
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 31 ++++++++++++++++++++++-------
 1 file changed, 24 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index e0280a672f1d..c9e46792b976 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4757,14 +4757,21 @@ static int gen12_emit_flush(struct i915_request *request, u32 mode)
 	intel_engine_mask_t aux_inv = 0;
 	u32 cmd, *cs;
 
+	cmd = 4;
+	if (mode & EMIT_INVALIDATE)
+		cmd += 2;
 	if (mode & EMIT_INVALIDATE)
 		aux_inv = request->engine->mask & ~BIT(BCS0);
+	if (aux_inv)
+		cmd += 2 * hweight8(aux_inv) + 6;
 
-	cs = intel_ring_begin(request,
-			      4 + (aux_inv ? 2 * hweight8(aux_inv) + 2 : 0));
+	cs = intel_ring_begin(request, cmd);
 	if (IS_ERR(cs))
 		return PTR_ERR(cs);
 
+	if (mode & EMIT_INVALIDATE)
+		*cs++ = preparser_disable(true);
+
 	cmd = MI_FLUSH_DW + 1;
 
 	/* We always require a command barrier so that subsequent
@@ -4780,11 +4787,6 @@ static int gen12_emit_flush(struct i915_request *request, u32 mode)
 			cmd |= MI_INVALIDATE_BSD;
 	}
 
-	*cs++ = cmd;
-	*cs++ = LRC_PPHWSP_SCRATCH_ADDR;
-	*cs++ = 0; /* upper addr */
-	*cs++ = 0; /* value */
-
 	if (aux_inv) { /* hsdes: 1809175790 */
 		struct intel_engine_cs *engine;
 		unsigned int tmp;
@@ -4796,7 +4798,22 @@ static int gen12_emit_flush(struct i915_request *request, u32 mode)
 			*cs++ = AUX_INV;
 		}
 		*cs++ = MI_NOOP;
+
+		*cs++ = MI_STORE_REGISTER_MEM | MI_USE_GGTT;
+		*cs++ = i915_mmio_reg_offset(aux_inv_reg(request->engine));
+		*cs++ = i915_ggtt_offset(engine->status_page.vma) +
+			I915_GEM_HWS_SCRATCH * sizeof(u32);
+		*cs++ = 0;
 	}
+
+	*cs++ = cmd;
+	*cs++ = LRC_PPHWSP_SCRATCH_ADDR;
+	*cs++ = 0; /* upper addr */
+	*cs++ = 0; /* value */
+
+	if (mode & EMIT_INVALIDATE)
+		*cs++ = preparser_disable(false);
+
 	intel_ring_advance(request, cs);
 
 	return 0;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
