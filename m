Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0333D1920
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 23:33:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 802F06EA0D;
	Wed, 21 Jul 2021 21:33:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77DFE6E2D1;
 Wed, 21 Jul 2021 21:33:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="198724328"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="198724328"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 14:33:11 -0700
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="470296665"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 14:33:11 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Wed, 21 Jul 2021 14:50:44 -0700
Message-Id: <20210721215101.139794-2-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210721215101.139794-1-matthew.brost@intel.com>
References: <20210721215101.139794-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/18] drm/i915/guc: Add new GuC interface
 defines and structures
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

Add new GuC interface defines and structures while maintaining old ones
in parallel.

Cc: John Harrison <john.c.harrison@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
---
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  | 14 +++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   | 42 +++++++++++++++++++
 2 files changed, 56 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
index 2d6198e63ebe..57e18babdf4b 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
@@ -124,10 +124,24 @@ enum intel_guc_action {
 	INTEL_GUC_ACTION_FORCE_LOG_BUFFER_FLUSH = 0x302,
 	INTEL_GUC_ACTION_ENTER_S_STATE = 0x501,
 	INTEL_GUC_ACTION_EXIT_S_STATE = 0x502,
+	INTEL_GUC_ACTION_GLOBAL_SCHED_POLICY_CHANGE = 0x506,
+	INTEL_GUC_ACTION_SCHED_CONTEXT = 0x1000,
+	INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_SET = 0x1001,
+	INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE = 0x1002,
+	INTEL_GUC_ACTION_SCHED_ENGINE_MODE_SET = 0x1003,
+	INTEL_GUC_ACTION_SCHED_ENGINE_MODE_DONE = 0x1004,
+	INTEL_GUC_ACTION_SET_CONTEXT_PRIORITY = 0x1005,
+	INTEL_GUC_ACTION_SET_CONTEXT_EXECUTION_QUANTUM = 0x1006,
+	INTEL_GUC_ACTION_SET_CONTEXT_PREEMPTION_TIMEOUT = 0x1007,
+	INTEL_GUC_ACTION_CONTEXT_RESET_NOTIFICATION = 0x1008,
+	INTEL_GUC_ACTION_ENGINE_FAILURE_NOTIFICATION = 0x1009,
 	INTEL_GUC_ACTION_SLPC_REQUEST = 0x3003,
 	INTEL_GUC_ACTION_AUTHENTICATE_HUC = 0x4000,
+	INTEL_GUC_ACTION_REGISTER_CONTEXT = 0x4502,
+	INTEL_GUC_ACTION_DEREGISTER_CONTEXT = 0x4503,
 	INTEL_GUC_ACTION_REGISTER_COMMAND_TRANSPORT_BUFFER = 0x4505,
 	INTEL_GUC_ACTION_DEREGISTER_COMMAND_TRANSPORT_BUFFER = 0x4506,
+	INTEL_GUC_ACTION_DEREGISTER_CONTEXT_DONE = 0x4600,
 	INTEL_GUC_ACTION_LIMIT
 };
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index 617ec601648d..3e060d5958cc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -17,6 +17,9 @@
 #include "abi/guc_communication_ctb_abi.h"
 #include "abi/guc_messages_abi.h"
 
+#define GUC_CONTEXT_DISABLE		0
+#define GUC_CONTEXT_ENABLE		1
+
 #define GUC_CLIENT_PRIORITY_KMD_HIGH	0
 #define GUC_CLIENT_PRIORITY_HIGH	1
 #define GUC_CLIENT_PRIORITY_KMD_NORMAL	2
@@ -26,6 +29,9 @@
 #define GUC_MAX_STAGE_DESCRIPTORS	1024
 #define	GUC_INVALID_STAGE_ID		GUC_MAX_STAGE_DESCRIPTORS
 
+#define GUC_MAX_LRC_DESCRIPTORS		65535
+#define	GUC_INVALID_LRC_ID		GUC_MAX_LRC_DESCRIPTORS
+
 #define GUC_RENDER_ENGINE		0
 #define GUC_VIDEO_ENGINE		1
 #define GUC_BLITTER_ENGINE		2
@@ -237,6 +243,42 @@ struct guc_stage_desc {
 	u64 desc_private;
 } __packed;
 
+#define CONTEXT_REGISTRATION_FLAG_KMD	BIT(0)
+
+#define CONTEXT_POLICY_DEFAULT_EXECUTION_QUANTUM_US 1000000
+#define CONTEXT_POLICY_DEFAULT_PREEMPTION_TIME_US 500000
+
+/* Preempt to idle on quantum expiry */
+#define CONTEXT_POLICY_FLAG_PREEMPT_TO_IDLE	BIT(0)
+
+/*
+ * GuC Context registration descriptor.
+ * FIXME: This is only required to exist during context registration.
+ * The current 1:1 between guc_lrc_desc and LRCs for the lifetime of the LRC
+ * is not required.
+ */
+struct guc_lrc_desc {
+	u32 hw_context_desc;
+	u32 slpm_perf_mode_hint;	/* SPLC v1 only */
+	u32 slpm_freq_hint;
+	u32 engine_submit_mask;		/* In logical space */
+	u8 engine_class;
+	u8 reserved0[3];
+	u32 priority;
+	u32 process_desc;
+	u32 wq_addr;
+	u32 wq_size;
+	u32 context_flags;		/* CONTEXT_REGISTRATION_* */
+	/* Time for one workload to execute. (in micro seconds) */
+	u32 execution_quantum;
+	/* Time to wait for a preemption request to complete before issuing a
+	 * reset. (in micro seconds).
+	 */
+	u32 preemption_timeout;
+	u32 policy_flags;		/* CONTEXT_POLICY_* */
+	u32 reserved1[19];
+} __packed;
+
 #define GUC_POWER_UNSPECIFIED	0
 #define GUC_POWER_D0		1
 #define GUC_POWER_D1		2
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
