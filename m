Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C763D6A9A
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 02:06:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0D166EC3A;
	Tue, 27 Jul 2021 00:06:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E6DE73218;
 Tue, 27 Jul 2021 00:06:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="191932143"
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="191932143"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 17:06:01 -0700
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="662339196"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 17:06:01 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Mon, 26 Jul 2021 17:23:35 -0700
Message-Id: <20210727002348.97202-21-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210727002348.97202-1-matthew.brost@intel.com>
References: <20210727002348.97202-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/33] drm/i915/guc: Hook GuC scheduling
 policies up
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

From: John Harrison <John.C.Harrison@Intel.com>

Use the official driver default scheduling policies for configuring
the GuC scheduler rather than a bunch of hardcoded values.

v2:
 (Matthew Brost)
  - Move I915_ENGINE_WANT_FORCED_PREEMPTION to later patch

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
Cc: Jose Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  2 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    | 44 ++++++++++++++++++-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  8 ++--
 3 files changed, 49 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index f355a70bbec4..8c8cf842c29a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -277,6 +277,8 @@ int intel_guc_engine_failure_process_msg(struct intel_guc *guc,
 
 void intel_guc_find_hung_context(struct intel_engine_cs *engine);
 
+int intel_guc_global_policies_update(struct intel_guc *guc);
+
 void intel_guc_submission_reset_prepare(struct intel_guc *guc);
 void intel_guc_submission_reset(struct intel_guc *guc, bool stalled);
 void intel_guc_submission_reset_finish(struct intel_guc *guc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 97cfaaaf2397..60b73625f686 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -77,14 +77,54 @@ static u32 guc_ads_blob_size(struct intel_guc *guc)
 	       guc_ads_private_data_size(guc);
 }
 
-static void guc_policies_init(struct guc_policies *policies)
+static void guc_policies_init(struct intel_guc *guc, struct guc_policies *policies)
 {
+	struct intel_gt *gt = guc_to_gt(guc);
+	struct drm_i915_private *i915 = gt->i915;
+
 	policies->dpc_promote_time = GLOBAL_POLICY_DEFAULT_DPC_PROMOTE_TIME_US;
 	policies->max_num_work_items = GLOBAL_POLICY_MAX_NUM_WI;
+
 	policies->global_flags = 0;
+	if (i915->params.reset < 2)
+		policies->global_flags |= GLOBAL_POLICY_DISABLE_ENGINE_RESET;
+
 	policies->is_valid = 1;
 }
 
+static int guc_action_policies_update(struct intel_guc *guc, u32 policy_offset)
+{
+	u32 action[] = {
+		INTEL_GUC_ACTION_GLOBAL_SCHED_POLICY_CHANGE,
+		policy_offset
+	};
+
+	return intel_guc_send(guc, action, ARRAY_SIZE(action));
+}
+
+int intel_guc_global_policies_update(struct intel_guc *guc)
+{
+	struct __guc_ads_blob *blob = guc->ads_blob;
+	struct intel_gt *gt = guc_to_gt(guc);
+	intel_wakeref_t wakeref;
+	int ret;
+
+	if (!blob)
+		return -EOPNOTSUPP;
+
+	GEM_BUG_ON(!blob->ads.scheduler_policies);
+
+	guc_policies_init(guc, &blob->policies);
+
+	if (!intel_guc_is_ready(guc))
+		return 0;
+
+	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
+		ret = guc_action_policies_update(guc, blob->ads.scheduler_policies);
+
+	return ret;
+}
+
 static void guc_mapping_table_init(struct intel_gt *gt,
 				   struct guc_gt_system_info *system_info)
 {
@@ -281,7 +321,7 @@ static void __guc_ads_init(struct intel_guc *guc)
 	u8 engine_class, guc_class;
 
 	/* GuC scheduling policies */
-	guc_policies_init(&blob->policies);
+	guc_policies_init(guc, &blob->policies);
 
 	/*
 	 * GuC expects a per-engine-class context image and size
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 76c2d927e1c3..cea3e3073a71 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -874,6 +874,7 @@ void intel_guc_submission_reset_finish(struct intel_guc *guc)
 	GEM_WARN_ON(atomic_read(&guc->outstanding_submission_g2h));
 	atomic_set(&guc->outstanding_submission_g2h, 0);
 
+	intel_guc_global_policies_update(guc);
 	enable_submission(guc);
 	intel_gt_unpark_heartbeats(guc_to_gt(guc));
 }
@@ -1170,8 +1171,9 @@ static void guc_context_policy_init(struct intel_engine_cs *engine,
 {
 	desc->policy_flags = 0;
 
-	desc->execution_quantum = CONTEXT_POLICY_DEFAULT_EXECUTION_QUANTUM_US;
-	desc->preemption_timeout = CONTEXT_POLICY_DEFAULT_PREEMPTION_TIME_US;
+	/* NB: For both of these, zero means disabled. */
+	desc->execution_quantum = engine->props.timeslice_duration_ms * 1000;
+	desc->preemption_timeout = engine->props.preempt_timeout_ms * 1000;
 }
 
 static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
@@ -1942,13 +1944,13 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
 	engine->set_default_submission = guc_set_default_submission;
 
 	engine->flags |= I915_ENGINE_HAS_PREEMPTION;
+	engine->flags |= I915_ENGINE_HAS_TIMESLICES;
 
 	/*
 	 * TODO: GuC supports timeslicing and semaphores as well, but they're
 	 * handled by the firmware so some minor tweaks are required before
 	 * enabling.
 	 *
-	 * engine->flags |= I915_ENGINE_HAS_TIMESLICES;
 	 * engine->flags |= I915_ENGINE_HAS_SEMAPHORES;
 	 */
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
