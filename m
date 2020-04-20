Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7E81B06B5
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 12:38:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 520396E503;
	Mon, 20 Apr 2020 10:38:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B76D6E503
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 10:38:21 +0000 (UTC)
IronPort-SDR: 9hEPCco3h9ncRAzwjZS0Rl+rP6MkcLdBgKbzR0f9omT4wybZAVNOny/7fq8YAIJunPPKgvKzYj
 sflVRG+MSutQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 03:38:20 -0700
IronPort-SDR: Kj+UoneQDh7H4mRvz2XB1d5ldvTL/bYDO83/Kaewe9SdMiahJEMPPQrnNjZ2Q9BYbSBaNF2GJy
 PhFSfkSSTsoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,406,1580803200"; d="scan'208";a="290044463"
Received: from unknown (HELO delly.ger.corp.intel.com) ([10.252.46.74])
 by fmsmga002.fm.intel.com with ESMTP; 20 Apr 2020 03:38:18 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Apr 2020 13:38:16 +0300
Message-Id: <20200420103816.434734-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4] drm/i915: store HW tagging information into
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

v3: Don't store anything on i915_request

v4: Fix compilation

[1] : https://github.com/mikesart/gpuvis/wiki/TechDocs-Intel#gpu-generated-countersevents

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Fixes: 2935ed5339c4 ("drm/i915: Remove logical HW ID")
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c               |  6 +++++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c |  3 ++-
 drivers/gpu/drm/i915/i915_trace.h                 | 12 +++++++-----
 3 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 6fbad5e2343f..58970099db25 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1278,7 +1278,6 @@ execlists_schedule_in(struct i915_request *rq, int idx)
 	struct intel_engine_cs *old;
 
 	GEM_BUG_ON(!intel_engine_pm_is_awake(rq->engine));
-	trace_i915_request_in(rq, idx);
 
 	old = READ_ONCE(ce->inflight);
 	do {
@@ -1288,6 +1287,11 @@ execlists_schedule_in(struct i915_request *rq, int idx)
 		}
 	} while (!try_cmpxchg(&ce->inflight, &old, ptr_inc(old)));
 
+	/*
+	 * Emit the tracepoint once the ce->lrc_desc has been updated.
+	 */
+	trace_i915_request_in(rq, idx, ce->lrc_desc >> 32);
+
 	GEM_BUG_ON(intel_context_inflight(ce) != rq->engine);
 	return i915_request_get(rq);
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index fe7778c28d2d..fd3d63d720d9 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -263,7 +263,8 @@ static inline int rq_prio(const struct i915_request *rq)
 
 static struct i915_request *schedule_in(struct i915_request *rq, int idx)
 {
-	trace_i915_request_in(rq, idx);
+	trace_i915_request_in(rq, idx,
+			      0 /* TODO: figure out what value GuC chooses */);
 
 	/*
 	 * Currently we are not tracking the rq->context being inflight
diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
index bc854ad60954..b624d4b07589 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -790,8 +790,8 @@ DEFINE_EVENT(i915_request, i915_request_execute,
 );
 
 TRACE_EVENT(i915_request_in,
-	    TP_PROTO(struct i915_request *rq, unsigned int port),
-	    TP_ARGS(rq, port),
+	    TP_PROTO(struct i915_request *rq, unsigned int port, u32 hw_id),
+	    TP_ARGS(rq, port, hw_id),
 
 	    TP_STRUCT__entry(
 			     __field(u32, dev)
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
+			   __entry->hw_id = hw_id;
 			   ),
 
-	    TP_printk("dev=%u, engine=%u:%u, ctx=%llu, seqno=%u, prio=%d, port=%u",
+	    TP_printk("dev=%u, engine=%u:%u, ctx=%llu, seqno=%u, prio=%d, port=%u hw_id=%u",
 		      __entry->dev, __entry->class, __entry->instance,
 		      __entry->ctx, __entry->seqno,
-		      __entry->prio, __entry->port)
+		      __entry->prio, __entry->port, __entry->hw_id)
 );
 
 TRACE_EVENT(i915_request_out,
@@ -859,7 +861,7 @@ trace_i915_request_execute(struct i915_request *rq)
 }
 
 static inline void
-trace_i915_request_in(struct i915_request *rq, unsigned int port)
+trace_i915_request_in(struct i915_request *rq, unsigned int port, u32 hw_id)
 {
 }
 
-- 
2.26.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
