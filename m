Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E818B1A5FFE
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Apr 2020 21:23:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D07AD6E135;
	Sun, 12 Apr 2020 19:23:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 686666E135
 for <intel-gfx@lists.freedesktop.org>; Sun, 12 Apr 2020 19:23:39 +0000 (UTC)
IronPort-SDR: O/dYkQ92bpN9O2ID/VM+TEfmRGM3GfFuM/TqpYL3GQNGWSiaR5ldHLK3CqztFnBZjkKi+OTlus
 XjD99TWOt4lQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2020 12:23:38 -0700
IronPort-SDR: gF2fbopNIlNXzYoyAJlTyXQnH4Qu/VOGg29ZsbdjhnYYrjLenDEsB1fpTZQ6zpYfpsCzu5cbbP
 9prE3mKVuxiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,375,1580803200"; d="scan'208";a="244990224"
Received: from bleysen-mobl.ger.corp.intel.com (HELO delly.ger.corp.intel.com)
 ([10.249.40.235])
 by fmsmga008.fm.intel.com with ESMTP; 12 Apr 2020 12:23:37 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 12 Apr 2020 22:23:32 +0300
Message-Id: <20200412192332.19328-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: store HW tagging information into
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In Gpuvis [1] we added matching of the OA report tags against i915
tracepoints fields to figure what workload was submitted by what
process.

But the tags got removed from the tracepoints in 2935ed5339c4
("drm/i915: Remove logical HW ID").

I would like to bring the tags back so that we can built the HW tag to
process relationship when post processing perf & i915/perf data.

[1] : https://github.com/mikesart/gpuvis/wiki/TechDocs-Intel#gpu-generated-countersevents

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 16 ++++++++--------
 drivers/gpu/drm/i915/i915_request.h |  3 +++
 drivers/gpu/drm/i915/i915_trace.h   |  2 ++
 3 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 6fbad5e2343f..ec5ea4a5008d 100644
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
@@ -1288,6 +1286,8 @@ execlists_schedule_in(struct i915_request *rq, int idx)
 		}
 	} while (!try_cmpxchg(&ce->inflight, &old, ptr_inc(old)));
 
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
index bc854ad60954..cfa5f3cdcd39 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -801,6 +801,7 @@ TRACE_EVENT(i915_request_in,
 			     __field(u32, seqno)
 			     __field(u32, port)
 			     __field(s32, prio)
+			     __field(u32, tag)
 			    ),
 
 	    TP_fast_assign(
@@ -811,6 +812,7 @@ TRACE_EVENT(i915_request_in,
 			   __entry->seqno = rq->fence.seqno;
 			   __entry->prio = rq->sched.attr.priority;
 			   __entry->port = port;
+			   __entry->tag = rq->tag;
 			   ),
 
 	    TP_printk("dev=%u, engine=%u:%u, ctx=%llu, seqno=%u, prio=%d, port=%u",
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
