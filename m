Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E63EE2B02F8
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 11:43:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0058E6E1EC;
	Thu, 12 Nov 2020 10:43:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E562E6E1EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 10:43:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22970252-1500050 
 for multiple; Thu, 12 Nov 2020 10:43:39 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Nov 2020 10:43:33 +0000
Message-Id: <20201112104336.20557-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201112104336.20557-1-chris@chris-wilson.co.uk>
References: <20201112104336.20557-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Lift i915_request_show()
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

Extract i915_request_show for reuse in other request chain pretty
printers.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 47 ++---------------------
 drivers/gpu/drm/i915/gt/intel_lrc.c       |  2 +-
 drivers/gpu/drm/i915/gt/intel_lrc.h       |  2 +-
 drivers/gpu/drm/i915/i915_request.c       | 39 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_request.h       |  5 +++
 5 files changed, 50 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 1ed84ee8ce41..c3bb2e9546e6 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1294,45 +1294,6 @@ bool intel_engine_can_store_dword(struct intel_engine_cs *engine)
 	}
 }
 
-static int print_sched_attr(const struct i915_sched_attr *attr,
-			    char *buf, int x, int len)
-{
-	if (attr->priority == I915_PRIORITY_INVALID)
-		return x;
-
-	x += snprintf(buf + x, len - x,
-		      " prio=%d", attr->priority);
-
-	return x;
-}
-
-static void print_request(struct drm_printer *m,
-			  struct i915_request *rq,
-			  const char *prefix)
-{
-	const char *name = rq->fence.ops->get_timeline_name(&rq->fence);
-	char buf[80] = "";
-	int x = 0;
-
-	x = print_sched_attr(&rq->sched.attr, buf, x, sizeof(buf));
-
-	drm_printf(m, "%s %llx:%llx%s%s %s @ %dms: %s\n",
-		   prefix,
-		   rq->fence.context, rq->fence.seqno,
-		   i915_request_completed(rq) ? "!" :
-		   i915_request_started(rq) ? "*" :
-		   !i915_sw_fence_signaled(&rq->semaphore) ? "&" :
-		   "",
-		   test_bit(DMA_FENCE_FLAG_SIGNALED_BIT,
-			    &rq->fence.flags) ? "+" :
-		   test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
-			    &rq->fence.flags) ? "-" :
-		   "",
-		   buf,
-		   jiffies_to_msecs(jiffies - rq->emitted_jiffies),
-		   name);
-}
-
 static struct intel_timeline *get_timeline(struct i915_request *rq)
 {
 	struct intel_timeline *tl;
@@ -1530,7 +1491,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 					intel_context_is_banned(rq->context) ? "*" : "");
 			len += print_ring(hdr + len, sizeof(hdr) - len, rq);
 			scnprintf(hdr + len, sizeof(hdr) - len, "rq: ");
-			print_request(m, rq, hdr);
+			i915_request_show(m, rq, hdr);
 		}
 		for (port = execlists->pending; (rq = *port); port++) {
 			char hdr[160];
@@ -1544,7 +1505,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 					intel_context_is_banned(rq->context) ? "*" : "");
 			len += print_ring(hdr + len, sizeof(hdr) - len, rq);
 			scnprintf(hdr + len, sizeof(hdr) - len, "rq: ");
-			print_request(m, rq, hdr);
+			i915_request_show(m, rq, hdr);
 		}
 		rcu_read_unlock();
 		execlists_active_unlock_bh(execlists);
@@ -1688,7 +1649,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 	if (rq) {
 		struct intel_timeline *tl = get_timeline(rq);
 
-		print_request(m, rq, "\t\tactive ");
+		i915_request_show(m, rq, "\t\tactive ");
 
 		drm_printf(m, "\t\tring->start:  0x%08x\n",
 			   i915_ggtt_offset(rq->ring->vma));
@@ -1726,7 +1687,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 		drm_printf(m, "\tDevice is asleep; skipping register dump\n");
 	}
 
-	intel_execlists_show_requests(engine, m, print_request, 8);
+	intel_execlists_show_requests(engine, m, i915_request_show, 8);
 
 	drm_printf(m, "HWSP:\n");
 	hexdump(m, engine->status_page.addr, PAGE_SIZE);
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 8a51c1c3a091..78baa01956f1 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -5980,7 +5980,7 @@ int intel_virtual_engine_attach_bond(struct intel_engine_cs *engine,
 void intel_execlists_show_requests(struct intel_engine_cs *engine,
 				   struct drm_printer *m,
 				   void (*show_request)(struct drm_printer *m,
-							struct i915_request *rq,
+							const struct i915_request *rq,
 							const char *prefix),
 				   unsigned int max)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h b/drivers/gpu/drm/i915/gt/intel_lrc.h
index c2d287f25497..32e6e204f544 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
@@ -106,7 +106,7 @@ void intel_lr_context_reset(struct intel_engine_cs *engine,
 void intel_execlists_show_requests(struct intel_engine_cs *engine,
 				   struct drm_printer *m,
 				   void (*show_request)(struct drm_printer *m,
-							struct i915_request *rq,
+							const struct i915_request *rq,
 							const char *prefix),
 				   unsigned int max);
 
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 0e813819b041..cebe07a85625 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1855,6 +1855,45 @@ long i915_request_wait(struct i915_request *rq,
 	return timeout;
 }
 
+static int print_sched_attr(const struct i915_sched_attr *attr,
+			    char *buf, int x, int len)
+{
+	if (attr->priority == I915_PRIORITY_INVALID)
+		return x;
+
+	x += snprintf(buf + x, len - x,
+		      " prio=%d", attr->priority);
+
+	return x;
+}
+
+void i915_request_show(struct drm_printer *m,
+		       const struct i915_request *rq,
+		       const char *prefix)
+{
+	const char *name = rq->fence.ops->get_timeline_name((struct dma_fence *)&rq->fence);
+	char buf[80] = "";
+	int x = 0;
+
+	x = print_sched_attr(&rq->sched.attr, buf, x, sizeof(buf));
+
+	drm_printf(m, "%s %llx:%llx%s%s %s @ %dms: %s\n",
+		   prefix,
+		   rq->fence.context, rq->fence.seqno,
+		   i915_request_completed(rq) ? "!" :
+		   i915_request_started(rq) ? "*" :
+		   !i915_sw_fence_signaled(&rq->semaphore) ? "&" :
+		   "",
+		   test_bit(DMA_FENCE_FLAG_SIGNALED_BIT,
+			    &rq->fence.flags) ? "+" :
+		   test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
+			    &rq->fence.flags) ? "-" :
+		   "",
+		   buf,
+		   jiffies_to_msecs(jiffies - rq->emitted_jiffies),
+		   name);
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftests/mock_request.c"
 #include "selftests/i915_request.c"
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 16b721080195..09609071b725 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -43,6 +43,7 @@
 
 struct drm_file;
 struct drm_i915_gem_object;
+struct drm_printer;
 struct i915_request;
 
 struct i915_capture_list {
@@ -369,6 +370,10 @@ long i915_request_wait(struct i915_request *rq,
 #define I915_WAIT_PRIORITY	BIT(1) /* small priority bump for the request */
 #define I915_WAIT_ALL		BIT(2) /* used by i915_gem_object_wait() */
 
+void i915_request_show(struct drm_printer *m,
+		       const struct i915_request *rq,
+		       const char *prefix);
+
 static inline bool i915_request_signaled(const struct i915_request *rq)
 {
 	/* The request may live longer than its HWSP, so check flags first! */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
