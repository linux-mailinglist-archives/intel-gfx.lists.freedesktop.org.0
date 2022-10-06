Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3460B5F7163
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Oct 2022 00:49:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70F0610E0DC;
	Thu,  6 Oct 2022 22:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD2B810E0DC
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Oct 2022 22:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665096559; x=1696632559;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6Ux2jC/yOuanLjy0FNJXrVi7O/MFAWDft5kRlRgBZvw=;
 b=iD3gtlWYlIPxA4BJ4EIdtnh23ol1VYiJ/eKI87N3+2VVJthFVw5COvIj
 BHofQrYS8ChM+vliZ/YKzmy43evU/Ovy6j3xPjpoFBQ2AqQ1NY5F5+teC
 dQIrTiqfjxNi/ZIpi7TcfhuvrA7OqmRWAgq4TJ/H2fprqLeYWULPa8JM2
 nLrEyeonqAjE2eJuicW2IaeEeyYwEMHyEaaq2H6mzczDM1CRLKSvQ64bm
 OnMTzCrPBZmO0y419lppTX1Z0WDjcZEKqfRunwosAQ9z1USBtG1KEpxue
 LQJ8uoxGmUfiaW8ATchprhcQFuoyMguSsaSs82o9lgxe6asu68ynoUCLG A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="304591432"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="304591432"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 15:49:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="627200633"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="627200633"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga007.fm.intel.com with ESMTP; 06 Oct 2022 15:49:18 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Oct 2022 15:51:21 -0700
Message-Id: <20221006225121.826257-3-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221006225121.826257-1-alan.previn.teres.alexis@intel.com>
References: <20221006225121.826257-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/2] drm/i915/guc: Remove
 intel_context:number_committed_requests counter
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

With the introduction of the delayed disable-sched behavior,
we use the GuC's xarray of valid guc-id's as a way to
identify if new requests had been added to a context
when the said context is being checked for closure.

Additionally that prior change also closes the race for when
a new incoming request fails to cancel the pending
delayed disable-sched worker.

With these two complementary checks, we see no more
use for intel_context:guc_state:number_committed_requests.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context_types.h |  2 --
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 23 -------------------
 2 files changed, 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 6a49fa7e119f..e36670f2e626 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -199,8 +199,6 @@ struct intel_context {
 		 * context's submissions is complete.
 		 */
 		struct i915_sw_fence blocked;
-		/** @number_committed_requests: number of committed requests */
-		int number_committed_requests;
 		/** @requests: list of active requests on this context */
 		struct list_head requests;
 		/** @prio: the context's current guc priority */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 3cfdb0a5e5bb..b91c3085501d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -370,25 +370,6 @@ static inline void decr_context_blocked(struct intel_context *ce)
 	ce->guc_state.sched_state -= SCHED_STATE_BLOCKED;
 }
 
-static inline bool context_has_committed_requests(struct intel_context *ce)
-{
-	return !!ce->guc_state.number_committed_requests;
-}
-
-static inline void incr_context_committed_requests(struct intel_context *ce)
-{
-	lockdep_assert_held(&ce->guc_state.lock);
-	++ce->guc_state.number_committed_requests;
-	GEM_BUG_ON(ce->guc_state.number_committed_requests < 0);
-}
-
-static inline void decr_context_committed_requests(struct intel_context *ce)
-{
-	lockdep_assert_held(&ce->guc_state.lock);
-	--ce->guc_state.number_committed_requests;
-	GEM_BUG_ON(ce->guc_state.number_committed_requests < 0);
-}
-
 static struct intel_context *
 request_to_scheduling_context(struct i915_request *rq)
 {
@@ -3172,7 +3153,6 @@ static void __guc_context_destroy(struct intel_context *ce)
 		   ce->guc_state.prio_count[GUC_CLIENT_PRIORITY_HIGH] ||
 		   ce->guc_state.prio_count[GUC_CLIENT_PRIORITY_KMD_NORMAL] ||
 		   ce->guc_state.prio_count[GUC_CLIENT_PRIORITY_NORMAL]);
-	GEM_BUG_ON(ce->guc_state.number_committed_requests);
 
 	lrc_fini(ce);
 	intel_context_fini(ce);
@@ -3441,8 +3421,6 @@ static void remove_from_context(struct i915_request *rq)
 
 	guc_prio_fini(rq, ce);
 
-	decr_context_committed_requests(ce);
-
 	spin_unlock_irq(&ce->guc_state.lock);
 
 	atomic_dec(&ce->guc_id.ref);
@@ -3651,7 +3629,6 @@ static int guc_request_alloc(struct i915_request *rq)
 
 		list_add_tail(&rq->guc_fence_link, &ce->guc_state.fences);
 	}
-	incr_context_committed_requests(ce);
 	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
 
 	return 0;
-- 
2.34.1

