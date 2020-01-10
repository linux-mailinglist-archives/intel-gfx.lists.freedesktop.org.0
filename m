Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E13AE136D0E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 13:31:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 027846E9F3;
	Fri, 10 Jan 2020 12:31:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AE686E9E4
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 12:31:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19833855-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 12:30:59 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 12:30:58 +0000
Message-Id: <20200110123059.1348712-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc2
In-Reply-To: <20200110123059.1348712-1-chris@chris-wilson.co.uk>
References: <20200110123059.1348712-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/4] drm/i915: Drop the shadow ring state from the
 error capture
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
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 5 -----
 drivers/gpu/drm/i915/i915_gpu_error.h | 4 ----
 2 files changed, 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index b2b34be8eb0a..79eae3708602 100644
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
@@ -1429,9 +1427,6 @@ intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
 	vma = capture_vma(vma, rq->ring->vma, "ring", gfp);
 	vma = capture_vma(vma, rq->context->state, "HW context", gfp);
 
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
2.25.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
