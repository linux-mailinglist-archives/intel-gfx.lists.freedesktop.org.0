Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 370561AFADD
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Apr 2020 15:46:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C22D89FD9;
	Sun, 19 Apr 2020 13:46:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6157A89FD9
 for <intel-gfx@lists.freedesktop.org>; Sun, 19 Apr 2020 13:46:32 +0000 (UTC)
IronPort-SDR: 5j85aMiSPeQYQw48zsPPOzhO3U111c7RxPoKXvooom52dZtnorM3FnGFxolXA2P0Px0AUMOCC1
 zzJRiHmfDvoQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2020 06:46:31 -0700
IronPort-SDR: d0TLX+FIZaXcoRwowRiC/4MIvgQVE3z8apnijnrvCWNgDJroktIi1tN1OaVRrGPNSUp7dpWfLO
 909/llK1g9kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,403,1580803200"; d="scan'208";a="258075912"
Received: from weijiare-mobl.ccr.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.44.173])
 by orsmga006.jf.intel.com with ESMTP; 19 Apr 2020 06:46:29 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 19 Apr 2020 16:46:27 +0300
Message-Id: <20200419134627.359025-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: store HW tagging information into
 tracepoints
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

In Gpuvis [1] we added matching of the OA report tags against i915
tracepoints fields to figure what workload was submitted by what
process. It doesn't matter much whether HW tags get reused for a
single request, as it gets preempted for example. All we need is link
between the OA report and seqno/engine over a short period of time.
That is enough to find the relationship between the different elements
on a timeline.

The tags got removed from the tracepoints in 2935ed5339c4 ("drm/i915:
Remove logical HW ID"). I was fine with the idea of reuse and dropping
them from most tracepoints, but we still need it at execlist port
insertion.

This change brings the hw_id back just for the i915_request_in
tracepoint.

TODO: someone figures what Guc's putting in the upper 32bits of the
      execlist port

v2: s/hw_tag/hw_id/ to keep the old gpuvis code going

[1] : https://github.com/mikesart/gpuvis/wiki/TechDocs-Intel#gpu-generated-countersevents

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Fixes: 2935ed5339c4 ("drm/i915: Remove logical HW ID")
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 19 +++++++++++--------
 drivers/gpu/drm/i915/i915_request.h |  3 +++
 drivers/gpu/drm/i915/i915_trace.h   |  6 ++++--
 3 files changed, 18 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 6fbad5e2343f..d59da28c7b7c 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1252,18 +1252,17 @@ __execlists_schedule_in(struct i915_request *rq)
 	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
 		execlists_check_context(ce, engine);
 
-	ce->lrc_desc &= ~GENMASK_ULL(47, 37);
 	if (ce->tag) {
-		/* Use a fixed tag for OA and friends */
-		ce->lrc_desc |= (u64)ce->tag << 32;
+		rq->tag = ce->tag;
 	} else {
-		/* We don't need a strict matching tag, just different values */
-		ce->lrc_desc |=
-			(u64)(++engine->context_tag % NUM_CONTEXT_TAG) <<
-			GEN11_SW_CTX_ID_SHIFT;
+		rq->tag = (++engine->context_tag % NUM_CONTEXT_TAG) <<
+			(GEN11_SW_CTX_ID_SHIFT - 32);
 		BUILD_BUG_ON(NUM_CONTEXT_TAG > GEN12_MAX_CONTEXT_HW_ID);
 	}
 
+	ce->lrc_desc &= ~GENMASK_ULL(47, 37);
+	ce->lrc_desc |= (u64)rq->tag << 32;
+
 	__intel_gt_pm_get(engine->gt);
 	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_IN);
 	intel_engine_context_in(engine);
@@ -1278,7 +1277,6 @@ execlists_schedule_in(struct i915_request *rq, int idx)
 	struct intel_engine_cs *old;
 
 	GEM_BUG_ON(!intel_engine_pm_is_awake(rq->engine));
-	trace_i915_request_in(rq, idx);
 
 	old = READ_ONCE(ce->inflight);
 	do {
@@ -1288,6 +1286,11 @@ execlists_schedule_in(struct i915_request *rq, int idx)
 		}
 	} while (!try_cmpxchg(&ce->inflight, &old, ptr_inc(old)));
 
+	/*
+	 * Emit the tracepoint once the rq->tag has been selected.
+	 */
+	trace_i915_request_in(rq, idx);
+
 	GEM_BUG_ON(intel_context_inflight(ce) != rq->engine);
 	return i915_request_get(rq);
 }
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index d8ce908e1346..f875d8049a17 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -289,6 +289,9 @@ struct i915_request {
 		struct list_head link;
 		unsigned long delay;
 	} mock;)
+
+	/** Last tag used in the execlist descriptor */
+	u32 tag;
 };
 
 #define I915_FENCE_GFP (GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_NOWARN)
diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
index bc854ad60954..ba5301321c44 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -801,6 +801,7 @@ TRACE_EVENT(i915_request_in,
 			     __field(u32, seqno)
 			     __field(u32, port)
 			     __field(s32, prio)
+			     __field(u32, hw_id)
 			    ),
 
 	    TP_fast_assign(
@@ -811,12 +812,13 @@ TRACE_EVENT(i915_request_in,
 			   __entry->seqno = rq->fence.seqno;
 			   __entry->prio = rq->sched.attr.priority;
 			   __entry->port = port;
+			   __entry->hw_id = rq->tag;
 			   ),
 
-	    TP_printk("dev=%u, engine=%u:%u, ctx=%llu, seqno=%u, prio=%d, port=%u",
+	    TP_printk("dev=%u, engine=%u:%u, ctx=%llu, seqno=%u, prio=%d, port=%u hw_id=%u",
 		      __entry->dev, __entry->class, __entry->instance,
 		      __entry->ctx, __entry->seqno,
-		      __entry->prio, __entry->port)
+		      __entry->prio, __entry->port, __entry->hw_id)
 );
 
 TRACE_EVENT(i915_request_out,
-- 
2.26.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
