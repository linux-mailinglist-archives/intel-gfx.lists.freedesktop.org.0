Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D717C39E5B5
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jun 2021 19:46:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7BB76E985;
	Mon,  7 Jun 2021 17:46:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38B236E983;
 Mon,  7 Jun 2021 17:46:06 +0000 (UTC)
IronPort-SDR: XFMhJWNXM5lB4iFkZm1nJzjkmTL98RGaFv6weUaXJKhNQG/G4q0nak1wn41YyO5EWwjzfytBMx
 bLxiepyRVJog==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204695175"
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="204695175"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 10:46:05 -0700
IronPort-SDR: 33cRAn3+4vQweh/NopAp+qyKPA2zFSpI4rbimMG1XKrlRrRGYNHcm1hAit/aA5DqsEjEuPWNRP
 hi+efNgYJ9bw==
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="551970160"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 10:46:04 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Mon,  7 Jun 2021 11:03:46 -0700
Message-Id: <20210607180356.165785-5-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210607180356.165785-1-matthew.brost@intel.com>
References: <20210607180356.165785-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/13] drm/i915/guc: Support per context
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
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c  | 26 +++--------------
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 31 +++++----------------
 2 files changed, 11 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 9abfbc6edbd6..4fcbe4b921f9 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -59,30 +59,12 @@ static u32 guc_ads_blob_size(struct intel_guc *guc)
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
index fb04e2211b79..251c3836bd2c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -247,32 +247,14 @@ struct guc_stage_desc {
 
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
@@ -286,6 +268,7 @@ struct guc_policies {
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
