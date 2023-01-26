Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B92567C210
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 01:54:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2181010E8DB;
	Thu, 26 Jan 2023 00:54:43 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6A2610E8CF;
 Thu, 26 Jan 2023 00:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674694472; x=1706230472;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f0f+KaFxcVQ5FLgvFUvHD7g59KXi06cG+dUy+Ao/QXI=;
 b=c6XcDzmf1i7ZIB+DnDX8cj1Pc9Oo3fu9aMeRg5XlJF/+agBJSD6Uy38s
 E3CMPa70NVcOPLAiUcutDjoTzHwGJcVjMLsj9zcIQunbg8RMV8a6QZAFB
 HiPvAfxArY7GbKwC7CrStMo2eZgzQCuG0bNgAqzxDyZEaBrEZxqLde9pl
 S9iFLZtCRjczVcKv+mH96ByqRAzUPTHuDZDcf1JEFl7A0uuJVIAxX9xy8
 k/mtgvOa7uC2uHIb0FdAkCRrnkfV6ZRP1BfYKsVwnboa0kZD2WH8toLY+
 ufStsQgIMACUJnQfo0EAt7Pzzm2osydNQBudT5jfSLsDPJ/jvMSaKcyuH A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="389064425"
X-IronPort-AV: E=Sophos;i="5.97,246,1669104000"; d="scan'208";a="389064425"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 16:54:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="751404280"
X-IronPort-AV: E=Sophos;i="5.97,246,1669104000"; d="scan'208";a="751404280"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Jan 2023 16:54:30 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 25 Jan 2023 16:54:14 -0800
Message-Id: <20230126005420.160070-3-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230126005420.160070-1-John.C.Harrison@Intel.com>
References: <20230126005420.160070-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/8] drm/i915: Fix request locking during
 error capture & debugfs dump
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Michael Cheng <michael.cheng@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 DRI-Devel@Lists.FreeDesktop.Org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

When GuC support was added to error capture, the locking around the
request object was broken. Fix it up.

The context based search manages the spinlocking around the search
internally. So it needs to grab the reference count internally as
well. The execlist only request based search relies on external
locking, so it needs an external reference count but within the
spinlock not outside it.

The only other caller of the context based search is the code for
dumping engine state to debugfs. That code wasn't previously getting
an explicit reference at all as it does everything while holding the
execlist specific spinlock. So, that needs updaing as well as that
spinlock doesn't help when using GuC submission. Rather than trying to
conditionally get/put depending on submission model, just change it to
always do the get/put.

v2: Explicitly document adding an extra blank line in some dense code
(Andy Shevchenko). Fix multiple potential null pointer derefs in case
of no request found (some spotted by Tvrtko, but there was more!).
Also fix a leaked request in case of !started and another in
__guc_reset_context now that intel_context_find_active_request is
actually reference counting the returned request.
v3: Add a _get suffix to intel_context_find_active_request now that it
grabs a reference (Daniele).
v4: Split the intel_guc_find_hung_context change to a separate patch
and rename intel_context_find_active_request_get to
intel_context_get_active_request (Tvrtko).

Fixes: dc0dad365c5e ("drm/i915/guc: Fix for error capture after full GPU reset with GuC")
Fixes: 573ba126aef3 ("drm/i915/guc: Capture error state on context reset")
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Cc: Michael Cheng <michael.cheng@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Bruce Chang <yu.bruce.chang@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c           |  4 +++-
 drivers/gpu/drm/i915/gt/intel_context.h           |  3 +--
 drivers/gpu/drm/i915/gt/intel_engine_cs.c         |  6 +++++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c |  3 ++-
 drivers/gpu/drm/i915/i915_gpu_error.c             | 13 ++++++-------
 5 files changed, 17 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index e94365b08f1ef..2aa63ec521b89 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -528,7 +528,7 @@ struct i915_request *intel_context_create_request(struct intel_context *ce)
 	return rq;
 }
 
-struct i915_request *intel_context_find_active_request(struct intel_context *ce)
+struct i915_request *intel_context_get_active_request(struct intel_context *ce)
 {
 	struct intel_context *parent = intel_context_to_parent(ce);
 	struct i915_request *rq, *active = NULL;
@@ -552,6 +552,8 @@ struct i915_request *intel_context_find_active_request(struct intel_context *ce)
 
 		active = rq;
 	}
+	if (active)
+		active = i915_request_get_rcu(active);
 	spin_unlock_irqrestore(&parent->guc_state.lock, flags);
 
 	return active;
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index fb62b7b8cbcda..0a8d553da3f43 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -268,8 +268,7 @@ int intel_context_prepare_remote_request(struct intel_context *ce,
 
 struct i915_request *intel_context_create_request(struct intel_context *ce);
 
-struct i915_request *
-intel_context_find_active_request(struct intel_context *ce);
+struct i915_request *intel_context_get_active_request(struct intel_context *ce);
 
 static inline bool intel_context_is_barrier(const struct intel_context *ce)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 922f1bb22dc68..a86bdbee7a6be 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -2237,9 +2237,11 @@ static void engine_dump_active_requests(struct intel_engine_cs *engine, struct d
 	if (guc) {
 		ce = intel_engine_get_hung_context(engine);
 		if (ce)
-			hung_rq = intel_context_find_active_request(ce);
+			hung_rq = intel_context_get_active_request(ce);
 	} else {
 		hung_rq = intel_engine_execlist_find_hung_request(engine);
+		if (hung_rq)
+			hung_rq = i915_request_get_rcu(hung_rq);
 	}
 
 	if (hung_rq)
@@ -2250,6 +2252,8 @@ static void engine_dump_active_requests(struct intel_engine_cs *engine, struct d
 	else
 		intel_engine_dump_active_requests(&engine->sched_engine->requests,
 						  hung_rq, m);
+	if (hung_rq)
+		i915_request_put(hung_rq);
 }
 
 void intel_engine_dump(struct intel_engine_cs *engine,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 3b34a82d692be..a2b263e5fd667 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1702,7 +1702,7 @@ static void __guc_reset_context(struct intel_context *ce, intel_engine_mask_t st
 			goto next_context;
 
 		guilty = false;
-		rq = intel_context_find_active_request(ce);
+		rq = intel_context_get_active_request(ce);
 		if (!rq) {
 			head = ce->ring->tail;
 			goto out_replay;
@@ -1715,6 +1715,7 @@ static void __guc_reset_context(struct intel_context *ce, intel_engine_mask_t st
 		head = intel_ring_wrap(ce->ring, rq->head);
 
 		__i915_request_reset(rq, guilty);
+		i915_request_put(rq);
 out_replay:
 		guc_reset_state(ce, head, guilty);
 next_context:
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 9d5d5a397b64e..9e2d17785a9a8 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1607,7 +1607,7 @@ capture_engine(struct intel_engine_cs *engine,
 	ce = intel_engine_get_hung_context(engine);
 	if (ce) {
 		intel_engine_clear_hung_context(engine);
-		rq = intel_context_find_active_request(ce);
+		rq = intel_context_get_active_request(ce);
 		if (!rq || !i915_request_started(rq))
 			goto no_request_capture;
 	} else {
@@ -1618,21 +1618,18 @@ capture_engine(struct intel_engine_cs *engine,
 		if (!intel_uc_uses_guc_submission(&engine->gt->uc)) {
 			spin_lock_irqsave(&engine->sched_engine->lock, flags);
 			rq = intel_engine_execlist_find_hung_request(engine);
+			if (rq)
+				rq = i915_request_get_rcu(rq);
 			spin_unlock_irqrestore(&engine->sched_engine->lock,
 					       flags);
 		}
 	}
-	if (rq)
-		rq = i915_request_get_rcu(rq);
-
 	if (!rq)
 		goto no_request_capture;
 
 	capture = intel_engine_coredump_add_request(ee, rq, ATOMIC_MAYFAIL);
-	if (!capture) {
-		i915_request_put(rq);
+	if (!capture)
 		goto no_request_capture;
-	}
 	if (dump_flags & CORE_DUMP_FLAG_IS_GUC_CAPTURE)
 		intel_guc_capture_get_matching_node(engine->gt, ee, ce);
 
@@ -1642,6 +1639,8 @@ capture_engine(struct intel_engine_cs *engine,
 	return ee;
 
 no_request_capture:
+	if (rq)
+		i915_request_put(rq);
 	kfree(ee);
 	return NULL;
 }
-- 
2.39.1

