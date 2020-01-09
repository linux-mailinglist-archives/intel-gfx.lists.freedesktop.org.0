Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD7F135503
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 09:59:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CD586E8E5;
	Thu,  9 Jan 2020 08:59:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C496D6E8E5
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 08:59:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19817534-1500050 
 for multiple; Thu, 09 Jan 2020 08:58:44 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jan 2020 08:58:36 +0000
Message-Id: <20200109085839.873553-11-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc1
In-Reply-To: <20200109085839.873553-1-chris@chris-wilson.co.uk>
References: <20200109085839.873553-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/14] drm/i915: Drop the shadow ring state from
 the error capture
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

The shadow ring regs (ring->head, ring->tail) are meaningless in the
post-mortem dump as they do not related to anything on HW. Remove them
from the coredump.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 5 -----
 drivers/gpu/drm/i915/i915_gpu_error.h | 4 ----
 2 files changed, 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index b45c128d0a17..a35aad439281 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -553,8 +553,6 @@ static void error_print_engine(struct drm_i915_error_state_buf *m,
 				   ee->vm_info.pp_dir_base);
 		}
 	}
-	err_printf(m, "  ring->head: 0x%08x\n", ee->cpu_ring_head);
-	err_printf(m, "  ring->tail: 0x%08x\n", ee->cpu_ring_tail);
 	err_printf(m, "  engine reset count: %u\n", ee->reset_count);
 
 	for (n = 0; n < ee->num_ports; n++) {
@@ -1428,9 +1426,6 @@ intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
 	if (HAS_BROKEN_CS_TLB(rq->i915))
 		vma = capture_vma(vma, ee->engine->gt->scratch, "WA batch", gfp);
 
-	ee->cpu_ring_head = rq->ring->head;
-	ee->cpu_ring_tail = rq->ring->tail;
-
 	ee->rq_head = rq->head;
 	ee->rq_post = rq->postfix;
 	ee->rq_tail = rq->tail;
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 0df9d8c32056..8f4579d64d8c 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -66,10 +66,6 @@ struct intel_engine_coredump {
 	/* position of active request inside the ring */
 	u32 rq_head, rq_post, rq_tail;
 
-	/* our own tracking of ring head and tail */
-	u32 cpu_ring_head;
-	u32 cpu_ring_tail;
-
 	/* Register state */
 	u32 ccid;
 	u32 start;
-- 
2.25.0.rc1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
