Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C55AA3ECADA
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Aug 2021 22:21:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DF5189192;
	Sun, 15 Aug 2021 20:21:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E8A789C08
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Aug 2021 20:21:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10077"; a="276792973"
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="276792973"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2021 13:21:19 -0700
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="461849483"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2021 13:21:19 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>, drmdevel@freedesktop.org
Cc: <daniel.vetter@ffwll.ch>
Date: Sun, 15 Aug 2021 13:15:53 -0700
Message-Id: <20210815201559.1150-16-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210815201559.1150-1-matthew.brost@intel.com>
References: <20210815201559.1150-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/21] drm/i915/guc: Release submit fence from
 an IRQ
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A subsequent patch will flip the locking hierarchy from
ce->guc_state.lock -> sched_engine->lock to sched_engine->lock ->
ce->guc_state.lock. As such we need to release the submit fence for a
request from an IRQ to break a lock inversion - i.e. the fence must be
release went holding ce->guc_state.lock and the releasing of the can
acquire sched_engine->lock.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 15 ++++++++++++++-
 drivers/gpu/drm/i915/i915_request.h               |  5 +++++
 2 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 54c0914b21f3..b09be9b88cb3 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -2016,6 +2016,14 @@ static const struct intel_context_ops guc_context_ops = {
 	.create_virtual = guc_create_virtual,
 };
 
+static void submit_work_cb(struct irq_work *wrk)
+{
+	struct i915_request *rq = container_of(wrk, typeof(*rq), submit_work);
+
+	might_lock(&rq->engine->sched_engine->lock);
+	i915_sw_fence_complete(&rq->submit);
+}
+
 static void __guc_signal_context_fence(struct intel_context *ce)
 {
 	struct i915_request *rq;
@@ -2025,8 +2033,12 @@ static void __guc_signal_context_fence(struct intel_context *ce)
 	if (!list_empty(&ce->guc_state.fences))
 		trace_intel_context_fence_release(ce);
 
+	/*
+	 * Use an IRQ to ensure locking order of sched_engine->lock ->
+	 * ce->guc_state.lock is preserved.
+	 */
 	list_for_each_entry(rq, &ce->guc_state.fences, guc_fence_link)
-		i915_sw_fence_complete(&rq->submit);
+		irq_work_queue(&rq->submit_work);
 
 	INIT_LIST_HEAD(&ce->guc_state.fences);
 }
@@ -2136,6 +2148,7 @@ static int guc_request_alloc(struct i915_request *rq)
 	spin_lock_irqsave(&ce->guc_state.lock, flags);
 	if (context_wait_for_deregister_to_register(ce) ||
 	    context_pending_disable(ce)) {
+		init_irq_work(&rq->submit_work, submit_work_cb);
 		i915_sw_fence_await(&rq->submit);
 
 		list_add_tail(&rq->guc_fence_link, &ce->guc_state.fences);
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 1bc1349ba3c2..d818cfbfc41d 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -218,6 +218,11 @@ struct i915_request {
 	};
 	struct llist_head execute_cb;
 	struct i915_sw_fence semaphore;
+	/**
+	 * @submit_work: complete submit fence from an IRQ if needed for
+	 * locking hierarchy reasons.
+	 */
+	struct irq_work submit_work;
 
 	/*
 	 * A list of everyone we wait upon, and everyone who waits upon us.
-- 
2.32.0

