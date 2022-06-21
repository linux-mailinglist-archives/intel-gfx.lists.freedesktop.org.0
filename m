Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 934295531E1
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 14:22:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3B3610E6A6;
	Tue, 21 Jun 2022 12:22:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 075A710E6A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 12:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655814152; x=1687350152;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=PHW9cJ84UtoFCQaZNypTW6ypAWIjTBefEGp/ykgpR+0=;
 b=NfTg7tlLo6Su3gMr0hslzmOelmmvMVBAPwEUx5oueqCpRcvv4eyV/16u
 2G9dNFVxtiGCEK5UAxmSETwF1EWKStPgosaAtaJvHTuv3wb6zGjKQBcxI
 Ml9ByDE1klTeSGGfdcgX26RfLvIkRSjK2h5oyCfWmaZv8aJYwBGSGD+ZB
 +OwbRyrf4nNXYHEaVX01/uUSnFczTVXRFbsULqOBlXNOaeNh0uXR6VuBO
 4m8pBz2HbI+5nGSL0lt5SGe3OMJ3k12awwa/xjBq9tBT5vcVZMNYoKHp0
 uCOsnCWgNj9OWpEeCmVhW46YCYMl5RCx5FtrUoSCIQQTdn09BtnkowMEb w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="344096419"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="344096419"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 05:22:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="591629651"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga007.fm.intel.com with ESMTP; 21 Jun 2022 05:22:28 -0700
Received: from intel.com (tttangud-desk.iind.intel.com [10.145.144.118])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 25LCMKjm013778; Tue, 21 Jun 2022 13:22:24 +0100
From: Tilak Tangudu <tilak.tangudu@intel.com>
To: intel-gfx@lists.freedesktop.org, jon.ewins@intel.com,
 rodrigo.vivi@intel.com, vinay.belgaumkar@intel.com,
 chris.p.wilson@intel.com, ashutosh.dixit@intel.com,
 badal.nilawar@intel.com, anshuman.gupta@intel.com,
 tilak.tangudu@intel.com, matthew.d.roper@intel.com,
 saurabhg.gupta@intel.com, Aravind.Iddamsetty@intel.com,
 Sujaritha.Sundaresan@intel.com
Date: Tue, 21 Jun 2022 18:05:06 +0530
Message-Id: <20220621123516.370479-2-tilak.tangudu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220621123516.370479-1-tilak.tangudu@intel.com>
References: <20220621123516.370479-1-tilak.tangudu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/11] drm/i915: Avoid rpm helpers in
 intel_guc_global_policies_update
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

1. Removed rpm helpers in intel_guc_global_policies_update
and added rpm helpers in below higher level functions,
-intel_selftest_modify_policy
-intel_selftest_restore_policy
-notify_guc
-intel_uc_reset_finish calls intel_guc_global_policies_update
via intel_guc_submission_reset_finish

2. Removed rpm helpers in intel_guc_submission_reset_finish
and added rpm helpers in below higher level functions,
- at intel_uc_reset_finish in reset_finish
- intel_gt_resume (already rpm wakeref is available)

Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_reset.c               |  4 +++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c          |  5 +----
 drivers/gpu/drm/i915/i915_debugfs_params.c          |  7 +++++--
 .../drm/i915/selftests/intel_scheduler_helpers.c    | 13 +++++++++++--
 4 files changed, 20 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index a5338c3fde7a..c8e05b48c14f 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -828,6 +828,7 @@ static void reset_finish(struct intel_gt *gt, intel_engine_mask_t awake)
 {
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
+	intel_wakeref_t wakeref;
 
 	for_each_engine(engine, gt, id) {
 		reset_finish_engine(engine);
@@ -835,7 +836,8 @@ static void reset_finish(struct intel_gt *gt, intel_engine_mask_t awake)
 			intel_engine_pm_put(engine);
 	}
 
-	intel_uc_reset_finish(&gt->uc);
+	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
+		intel_uc_reset_finish(&gt->uc);
 }
 
 static void nop_submit_request(struct i915_request *request)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index ba7541f3ca61..3f24ad4cb2e1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -182,9 +182,7 @@ static int guc_action_policies_update(struct intel_guc *guc, u32 policy_offset)
 
 int intel_guc_global_policies_update(struct intel_guc *guc)
 {
-	struct intel_gt *gt = guc_to_gt(guc);
 	u32 scheduler_policies;
-	intel_wakeref_t wakeref;
 	int ret;
 
 	if (iosys_map_is_null(&guc->ads_map))
@@ -198,8 +196,7 @@ int intel_guc_global_policies_update(struct intel_guc *guc)
 	if (!intel_guc_is_ready(guc))
 		return 0;
 
-	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
-		ret = guc_action_policies_update(guc, scheduler_policies);
+	ret = guc_action_policies_update(guc, scheduler_policies);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/i915_debugfs_params.c b/drivers/gpu/drm/i915/i915_debugfs_params.c
index 783c8676eee2..cf92c98fa81a 100644
--- a/drivers/gpu/drm/i915/i915_debugfs_params.c
+++ b/drivers/gpu/drm/i915/i915_debugfs_params.c
@@ -39,9 +39,12 @@ static int i915_param_int_open(struct inode *inode, struct file *file)
 static int notify_guc(struct drm_i915_private *i915)
 {
 	int ret = 0;
+	intel_wakeref_t wakeref;
 
-	if (intel_uc_uses_guc_submission(&to_gt(i915)->uc))
-		ret = intel_guc_global_policies_update(&to_gt(i915)->uc.guc);
+	if (intel_uc_uses_guc_submission(&to_gt(i915)->uc)) {
+		with_intel_runtime_pm(to_gt(i915)->uncore->rpm, wakeref)
+			ret = intel_guc_global_policies_update(&to_gt(i915)->uc.guc);
+	}
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c b/drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c
index 310fb83c527e..463a378f0abb 100644
--- a/drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c
+++ b/drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c
@@ -32,6 +32,7 @@ int intel_selftest_modify_policy(struct intel_engine_cs *engine,
 
 {
 	int err;
+	intel_wakeref_t wakeref;
 
 	saved->reset = engine->i915->params.reset;
 	saved->flags = engine->flags;
@@ -66,7 +67,9 @@ int intel_selftest_modify_policy(struct intel_engine_cs *engine,
 	if (!intel_engine_uses_guc(engine))
 		return 0;
 
-	err = intel_guc_global_policies_update(&engine->gt->uc.guc);
+	with_intel_runtime_pm(engine->gt->uncore->rpm, wakeref)
+		err = intel_guc_global_policies_update(&engine->gt->uc.guc);
+
 	if (err)
 		intel_selftest_restore_policy(engine, saved);
 
@@ -76,6 +79,9 @@ int intel_selftest_modify_policy(struct intel_engine_cs *engine,
 int intel_selftest_restore_policy(struct intel_engine_cs *engine,
 				  struct intel_selftest_saved_policy *saved)
 {
+	intel_wakeref_t wakeref;
+	int ret;
+
 	/* Restore the original policies */
 	engine->i915->params.reset = saved->reset;
 	engine->flags = saved->flags;
@@ -85,7 +91,10 @@ int intel_selftest_restore_policy(struct intel_engine_cs *engine,
 	if (!intel_engine_uses_guc(engine))
 		return 0;
 
-	return intel_guc_global_policies_update(&engine->gt->uc.guc);
+	with_intel_runtime_pm(engine->gt->uncore->rpm, wakeref)
+		ret = intel_guc_global_policies_update(&engine->gt->uc.guc);
+
+	return ret;
 }
 
 int intel_selftest_wait_for_rq(struct i915_request *rq)
-- 
2.25.1

