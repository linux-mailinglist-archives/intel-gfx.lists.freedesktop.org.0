Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF17D375ADA
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 20:59:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DDCA6EDCE;
	Thu,  6 May 2021 18:57:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CF876ECF2;
 Thu,  6 May 2021 18:57:12 +0000 (UTC)
IronPort-SDR: 9YwKTJr7xwFiSxqQpeLHnu8vrziUi0PcVlvk42DJ5GSJA+S8ORAGGOrz2FUo65tHH/JzxhaQSe
 Hn7U/XJQDVWA==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="196530996"
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="196530996"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 11:57:11 -0700
IronPort-SDR: 1BiwuDBPorNTQ6nuR2/vlpAky0JbLrP416KcdoE1Q0h0QxIxAtscDlx3Rs3BEyV5JA9Ef7TH2T
 lbJaaTmGXl0g==
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="469583429"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 11:57:09 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Thu,  6 May 2021 12:13:37 -0700
Message-Id: <20210506191451.77768-24-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210506191451.77768-1-matthew.brost@intel.com>
References: <20210506191451.77768-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 23/97] drm/i915/guc: Support per context
 scheduling policies
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
Cc: jason.ekstrand@intel.com, daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

GuC firmware v53.0.0 introduced per context scheduling policies. This
includes changes to some of the ADS structures which are required to
load the firmware even if not using GuC submission.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c  | 26 +++--------------
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 31 +++++----------------
 2 files changed, 11 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 17526717368c..648e1767b17a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -58,30 +58,12 @@ static u32 guc_ads_blob_size(struct intel_guc *guc)
 	       guc_ads_private_data_size(guc);
 }
 
-static void guc_policy_init(struct guc_policy *policy)
-{
-	policy->execution_quantum = POLICY_DEFAULT_EXECUTION_QUANTUM_US;
-	policy->preemption_time = POLICY_DEFAULT_PREEMPTION_TIME_US;
-	policy->fault_time = POLICY_DEFAULT_FAULT_TIME_US;
-	policy->policy_flags = 0;
-}
-
 static void guc_policies_init(struct guc_policies *policies)
 {
-	struct guc_policy *policy;
-	u32 p, i;
-
-	policies->dpc_promote_time = POLICY_DEFAULT_DPC_PROMOTE_TIME_US;
-	policies->max_num_work_items = POLICY_MAX_NUM_WI;
-
-	for (p = 0; p < GUC_CLIENT_PRIORITY_NUM; p++) {
-		for (i = 0; i < GUC_MAX_ENGINE_CLASSES; i++) {
-			policy = &policies->policy[p][i];
-
-			guc_policy_init(policy);
-		}
-	}
-
+	policies->dpc_promote_time = GLOBAL_POLICY_DEFAULT_DPC_PROMOTE_TIME_US;
+	policies->max_num_work_items = GLOBAL_POLICY_MAX_NUM_WI;
+	/* Disable automatic resets as not yet supported. */
+	policies->global_flags = GLOBAL_POLICY_DISABLE_ENGINE_RESET;
 	policies->is_valid = 1;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index d445f6b77db4..95db4a7d3f4d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -221,32 +221,14 @@ struct guc_stage_desc {
 
 /* Scheduling policy settings */
 
-/* Reset engine upon preempt failure */
-#define POLICY_RESET_ENGINE		(1<<0)
-/* Preempt to idle on quantum expiry */
-#define POLICY_PREEMPT_TO_IDLE		(1<<1)
-
-#define POLICY_MAX_NUM_WI 15
-#define POLICY_DEFAULT_DPC_PROMOTE_TIME_US 500000
-#define POLICY_DEFAULT_EXECUTION_QUANTUM_US 1000000
-#define POLICY_DEFAULT_PREEMPTION_TIME_US 500000
-#define POLICY_DEFAULT_FAULT_TIME_US 250000
-
-struct guc_policy {
-	/* Time for one workload to execute. (in micro seconds) */
-	u32 execution_quantum;
-	/* Time to wait for a preemption request to completed before issuing a
-	 * reset. (in micro seconds). */
-	u32 preemption_time;
-	/* How much time to allow to run after the first fault is observed.
-	 * Then preempt afterwards. (in micro seconds) */
-	u32 fault_time;
-	u32 policy_flags;
-	u32 reserved[8];
-} __packed;
+#define GLOBAL_POLICY_MAX_NUM_WI 15
+
+/* Don't reset an engine upon preemption failure */
+#define GLOBAL_POLICY_DISABLE_ENGINE_RESET				BIT(0)
+
+#define GLOBAL_POLICY_DEFAULT_DPC_PROMOTE_TIME_US 500000
 
 struct guc_policies {
-	struct guc_policy policy[GUC_CLIENT_PRIORITY_NUM][GUC_MAX_ENGINE_CLASSES];
 	u32 submission_queue_depth[GUC_MAX_ENGINE_CLASSES];
 	/* In micro seconds. How much time to allow before DPC processing is
 	 * called back via interrupt (to prevent DPC queue drain starving).
@@ -260,6 +242,7 @@ struct guc_policies {
 	 * idle. */
 	u32 max_num_work_items;
 
+	u32 global_flags;
 	u32 reserved[4];
 } __packed;
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
