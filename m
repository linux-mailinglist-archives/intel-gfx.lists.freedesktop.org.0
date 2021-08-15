Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1333D3ECADF
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Aug 2021 22:21:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90DF689D6C;
	Sun, 15 Aug 2021 20:21:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35B1C89C28
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Aug 2021 20:21:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10077"; a="276792974"
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="276792974"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2021 13:21:19 -0700
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="461849485"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2021 13:21:19 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>, drmdevel@freedesktop.org
Cc: <daniel.vetter@ffwll.ch>
Date: Sun, 15 Aug 2021 13:15:54 -0700
Message-Id: <20210815201559.1150-17-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210815201559.1150-1-matthew.brost@intel.com>
References: <20210815201559.1150-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 16/21] drm/i915/guc: Move guc_blocked fence to
 struct guc_state
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

Move guc_blocked fence to struct guc_state as the lock which protects
the fence lives there.

s/ce->guc_blocked/ce->guc_state.blocked_fence/g

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c        |  5 +++--
 drivers/gpu/drm/i915/gt/intel_context_types.h  |  5 ++---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c  | 18 +++++++++---------
 3 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 745e84c72c90..0e48939ec85f 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -405,8 +405,9 @@ intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
 	 * Initialize fence to be complete as this is expected to be complete
 	 * unless there is a pending schedule disable outstanding.
 	 */
-	i915_sw_fence_init(&ce->guc_blocked, sw_fence_dummy_notify);
-	i915_sw_fence_commit(&ce->guc_blocked);
+	i915_sw_fence_init(&ce->guc_state.blocked_fence,
+			   sw_fence_dummy_notify);
+	i915_sw_fence_commit(&ce->guc_state.blocked_fence);
 
 	i915_active_init(&ce->active,
 			 __intel_context_active, __intel_context_retire, 0);
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 3a73f3117873..c06171ee8792 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -167,6 +167,8 @@ struct intel_context {
 		 * fence related to GuC submission
 		 */
 		struct list_head fences;
+		/* GuC context blocked fence */
+		struct i915_sw_fence blocked_fence;
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
index b09be9b88cb3..64b12b91656a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1481,24 +1481,24 @@ static void guc_blocked_fence_complete(struct intel_context *ce)
 {
 	lockdep_assert_held(&ce->guc_state.lock);
 
-	if (!i915_sw_fence_done(&ce->guc_blocked))
-		i915_sw_fence_complete(&ce->guc_blocked);
+	if (!i915_sw_fence_done(&ce->guc_state.blocked_fence))
+		i915_sw_fence_complete(&ce->guc_state.blocked_fence);
 }
 
 static void guc_blocked_fence_reinit(struct intel_context *ce)
 {
 	lockdep_assert_held(&ce->guc_state.lock);
-	GEM_BUG_ON(!i915_sw_fence_done(&ce->guc_blocked));
+	GEM_BUG_ON(!i915_sw_fence_done(&ce->guc_state.blocked_fence));
 
 	/*
 	 * This fence is always complete unless a pending schedule disable is
 	 * outstanding. We arm the fence here and complete it when we receive
 	 * the pending schedule disable complete message.
 	 */
-	i915_sw_fence_fini(&ce->guc_blocked);
-	i915_sw_fence_reinit(&ce->guc_blocked);
-	i915_sw_fence_await(&ce->guc_blocked);
-	i915_sw_fence_commit(&ce->guc_blocked);
+	i915_sw_fence_fini(&ce->guc_state.blocked_fence);
+	i915_sw_fence_reinit(&ce->guc_state.blocked_fence);
+	i915_sw_fence_await(&ce->guc_state.blocked_fence);
+	i915_sw_fence_commit(&ce->guc_state.blocked_fence);
 }
 
 static u16 prep_context_pending_disable(struct intel_context *ce)
@@ -1538,7 +1538,7 @@ static struct i915_sw_fence *guc_context_block(struct intel_context *ce)
 		if (enabled)
 			clr_context_enabled(ce);
 		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
-		return &ce->guc_blocked;
+		return &ce->guc_state.blocked_fence;
 	}
 
 	/*
@@ -1554,7 +1554,7 @@ static struct i915_sw_fence *guc_context_block(struct intel_context *ce)
 	with_intel_runtime_pm(runtime_pm, wakeref)
 		__guc_context_sched_disable(guc, ce, guc_id);
 
-	return &ce->guc_blocked;
+	return &ce->guc_state.blocked_fence;
 }
 
 static void guc_context_unblock(struct intel_context *ce)
-- 
2.32.0

