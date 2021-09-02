Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DF83FE6EA
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 02:53:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66D786E42C;
	Thu,  2 Sep 2021 00:53:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9826C6E432;
 Thu,  2 Sep 2021 00:52:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="198468257"
X-IronPort-AV: E=Sophos;i="5.84,370,1620716400"; d="scan'208";a="198468257"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 17:52:52 -0700
X-IronPort-AV: E=Sophos;i="5.84,370,1620716400"; d="scan'208";a="646030210"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 17:52:51 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, John.C.Harrison@Intel.com,
 matthew.brost@intel.com
Date: Wed,  1 Sep 2021 17:50:15 -0700
Message-Id: <20210902005022.711767-19-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210902005022.711767-1-daniele.ceraolospurio@intel.com>
References: <20210902005022.711767-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 18/25] drm/i915/guc: Move guc_blocked fence
 to struct guc_state
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

From: Matthew Brost <matthew.brost@intel.com>

Move guc_blocked fence to struct guc_state as the lock which protects
the fence lives there.

s/ce->guc_blocked/ce->guc_state.blocked/g

v2:
 (Daniele)
  - s/blocked_fence/blocked/g

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c        |  5 +++--
 drivers/gpu/drm/i915/gt/intel_context_types.h  |  5 ++---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c  | 18 +++++++++---------
 3 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 745e84c72c90..3048267ddc7e 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -405,8 +405,9 @@ intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
 	 * Initialize fence to be complete as this is expected to be complete
 	 * unless there is a pending schedule disable outstanding.
 	 */
-	i915_sw_fence_init(&ce->guc_blocked, sw_fence_dummy_notify);
-	i915_sw_fence_commit(&ce->guc_blocked);
+	i915_sw_fence_init(&ce->guc_state.blocked,
+			   sw_fence_dummy_notify);
+	i915_sw_fence_commit(&ce->guc_state.blocked);
 
 	i915_active_init(&ce->active,
 			 __intel_context_active, __intel_context_retire, 0);
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 3a73f3117873..5aecb9038b5b 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -167,6 +167,8 @@ struct intel_context {
 		 * fence related to GuC submission
 		 */
 		struct list_head fences;
+		/* GuC context blocked fence */
+		struct i915_sw_fence blocked;
 	} guc_state;
 
 	struct {
@@ -190,9 +192,6 @@ struct intel_context {
 	 */
 	struct list_head guc_id_link;
 
-	/* GuC context blocked fence */
-	struct i915_sw_fence guc_blocked;
-
 	/*
 	 * GuC priority management
 	 */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 7c7cbd57d568..38068d5851e2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1488,24 +1488,24 @@ static void guc_blocked_fence_complete(struct intel_context *ce)
 {
 	lockdep_assert_held(&ce->guc_state.lock);
 
-	if (!i915_sw_fence_done(&ce->guc_blocked))
-		i915_sw_fence_complete(&ce->guc_blocked);
+	if (!i915_sw_fence_done(&ce->guc_state.blocked))
+		i915_sw_fence_complete(&ce->guc_state.blocked);
 }
 
 static void guc_blocked_fence_reinit(struct intel_context *ce)
 {
 	lockdep_assert_held(&ce->guc_state.lock);
-	GEM_BUG_ON(!i915_sw_fence_done(&ce->guc_blocked));
+	GEM_BUG_ON(!i915_sw_fence_done(&ce->guc_state.blocked));
 
 	/*
 	 * This fence is always complete unless a pending schedule disable is
 	 * outstanding. We arm the fence here and complete it when we receive
 	 * the pending schedule disable complete message.
 	 */
-	i915_sw_fence_fini(&ce->guc_blocked);
-	i915_sw_fence_reinit(&ce->guc_blocked);
-	i915_sw_fence_await(&ce->guc_blocked);
-	i915_sw_fence_commit(&ce->guc_blocked);
+	i915_sw_fence_fini(&ce->guc_state.blocked);
+	i915_sw_fence_reinit(&ce->guc_state.blocked);
+	i915_sw_fence_await(&ce->guc_state.blocked);
+	i915_sw_fence_commit(&ce->guc_state.blocked);
 }
 
 static u16 prep_context_pending_disable(struct intel_context *ce)
@@ -1545,7 +1545,7 @@ static struct i915_sw_fence *guc_context_block(struct intel_context *ce)
 		if (enabled)
 			clr_context_enabled(ce);
 		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
-		return &ce->guc_blocked;
+		return &ce->guc_state.blocked;
 	}
 
 	/*
@@ -1561,7 +1561,7 @@ static struct i915_sw_fence *guc_context_block(struct intel_context *ce)
 	with_intel_runtime_pm(runtime_pm, wakeref)
 		__guc_context_sched_disable(guc, ce, guc_id);
 
-	return &ce->guc_blocked;
+	return &ce->guc_state.blocked;
 }
 
 #define SCHED_STATE_MULTI_BLOCKED_MASK \
-- 
2.25.1

