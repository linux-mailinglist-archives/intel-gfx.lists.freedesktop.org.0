Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29BD448DD92
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 19:21:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B279810E54B;
	Thu, 13 Jan 2022 18:21:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF3F110E557;
 Thu, 13 Jan 2022 18:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642098083; x=1673634083;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JRo16gmX95URu9lqDiVWdJnJBVRYzk5hap8Lks14oEw=;
 b=ROQj4zNRvm9EhB3YY8RkNio0JLNyf2VzqHHzc6fibiHUlokm2qHDqBLY
 CB19254vMVcfVArJg1DOC2lqQ/Tqe5ADEQVH4scRFenj5gCmLPI1tCPEx
 7gx9JzxZc7Lnib/eLspiF9BGMorpxnPGL7CM4U5gwoPg9tKcN0x2iwnMl
 9Oymv5AAyT0xHIK1Z3SFq8iD4TZDt6sgOi+FKFZqdkb001kEXZjHJ1HAB
 cLw+gLuTGlAPcx9pfeKxVhiakhZ+W3hdVBdyWWLlpy0SE2IXe9LbtlYUB
 54bPdNAbflPP9ltGRwCH9lvTaUTEpj2NlGAXiQoNSQO1yRWNW2jVuIXWl A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="268440156"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="268440156"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 10:19:44 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="765634145"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 10:19:43 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Thu, 13 Jan 2022 10:13:51 -0800
Message-Id: <20220113181351.21296-3-matthew.brost@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220113181351.21296-1-matthew.brost@intel.com>
References: <20220113181351.21296-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Remove hacks for reset and
 schedule disable G2H being received out of order
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

In the i915 there are several hacks in place to make request cancellation
work with an old version of the GuC which delivered the G2H indicating
schedule disable is done before G2H indicating a context reset. Version
69 fixes this, so we can remove these hacks.

v2:
 (Checkpatch)
  - s/cancelation/cancellation

Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 30 ++-----------------
 1 file changed, 2 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 23a40f10d376d..3918f1be114fa 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1533,7 +1533,6 @@ static void __guc_reset_context(struct intel_context *ce, bool stalled)
 	unsigned long flags;
 	u32 head;
 	int i, number_children = ce->parallel.number_children;
-	bool skip = false;
 	struct intel_context *parent = ce;
 
 	GEM_BUG_ON(intel_context_is_child(ce));
@@ -1544,23 +1543,10 @@ static void __guc_reset_context(struct intel_context *ce, bool stalled)
 	 * GuC will implicitly mark the context as non-schedulable when it sends
 	 * the reset notification. Make sure our state reflects this change. The
 	 * context will be marked enabled on resubmission.
-	 *
-	 * XXX: If the context is reset as a result of the request cancellation
-	 * this G2H is received after the schedule disable complete G2H which is
-	 * wrong as this creates a race between the request cancellation code
-	 * re-submitting the context and this G2H handler. This is a bug in the
-	 * GuC but can be worked around in the meantime but converting this to a
-	 * NOP if a pending enable is in flight as this indicates that a request
-	 * cancellation has occurred.
 	 */
 	spin_lock_irqsave(&ce->guc_state.lock, flags);
-	if (likely(!context_pending_enable(ce)))
-		clr_context_enabled(ce);
-	else
-		skip = true;
+	clr_context_enabled(ce);
 	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
-	if (unlikely(skip))
-		goto out_put;
 
 	/*
 	 * For each context in the relationship find the hanging request
@@ -1592,7 +1578,6 @@ static void __guc_reset_context(struct intel_context *ce, bool stalled)
 	}
 
 	__unwind_incomplete_requests(parent);
-out_put:
 	intel_context_put(parent);
 }
 
@@ -2531,12 +2516,6 @@ static void guc_context_cancel_request(struct intel_context *ce,
 					true);
 		}
 
-		/*
-		 * XXX: Racey if context is reset, see comment in
-		 * __guc_reset_context().
-		 */
-		flush_work(&ce_to_guc(ce)->ct.requests.worker);
-
 		guc_context_unblock(block_context);
 		intel_context_put(ce);
 	}
@@ -3971,12 +3950,7 @@ static void guc_handle_context_reset(struct intel_guc *guc,
 {
 	trace_intel_context_reset(ce);
 
-	/*
-	 * XXX: Racey if request cancellation has occurred, see comment in
-	 * __guc_reset_context().
-	 */
-	if (likely(!intel_context_is_banned(ce) &&
-		   !context_blocked(ce))) {
+	if (likely(!intel_context_is_banned(ce))) {
 		capture_error_state(guc, ce);
 		guc_context_replay(ce);
 	} else {
-- 
2.34.1

