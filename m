Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD5D3DBF9C
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 22:21:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6230A6F486;
	Fri, 30 Jul 2021 20:21:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF8DE6F47C;
 Fri, 30 Jul 2021 20:21:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10061"; a="276939704"
X-IronPort-AV: E=Sophos;i="5.84,282,1620716400"; d="scan'208";a="276939704"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 13:21:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,282,1620716400"; d="scan'208";a="499741586"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga001.jf.intel.com with ESMTP; 30 Jul 2021 13:21:46 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Sundaresan Sujaritha <sujaritha.sundaresan@intel.com>
Date: Fri, 30 Jul 2021 13:21:08 -0700
Message-Id: <20210730202119.23810-4-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210730202119.23810-1-vinay.belgaumkar@intel.com>
References: <20210730202119.23810-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/14] drm/i915/guc/slpc: Adding SLPC
 communication interfaces
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

Add constants and params that are needed to configure SLPC.

v2: Add a new abi header for SLPC. Replace bitfields with
genmasks. Address other comments from Michal W.

v3: Add slpc H2G format in abi, other review commments (Michal W)

v4: Update status bits according to latest spec

v5: checkpatch()

Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Sundaresan Sujaritha <sujaritha.sundaresan@intel.com>
---
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |   1 -
 .../drm/i915/gt/uc/abi/guc_actions_slpc_abi.h | 235 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   3 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   7 +
 4 files changed, 245 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
index d832c8f11c11..ca538e5de940 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
@@ -135,7 +135,6 @@ enum intel_guc_action {
 	INTEL_GUC_ACTION_SET_CONTEXT_PREEMPTION_TIMEOUT = 0x1007,
 	INTEL_GUC_ACTION_CONTEXT_RESET_NOTIFICATION = 0x1008,
 	INTEL_GUC_ACTION_ENGINE_FAILURE_NOTIFICATION = 0x1009,
-	INTEL_GUC_ACTION_SLPC_REQUEST = 0x3003,
 	INTEL_GUC_ACTION_AUTHENTICATE_HUC = 0x4000,
 	INTEL_GUC_ACTION_REGISTER_CONTEXT = 0x4502,
 	INTEL_GUC_ACTION_DEREGISTER_CONTEXT = 0x4503,
diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h
new file mode 100644
index 000000000000..7a8d4bfc5f6a
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h
@@ -0,0 +1,235 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef _GUC_ACTIONS_SLPC_ABI_H_
+#define _GUC_ACTIONS_SLPC_ABI_H_
+
+#include <linux/types.h>
+#include "i915_reg.h"
+
+/**
+ * DOC: SLPC SHARED DATA STRUCTURE
+ *
+ *  +----+------+--------------------------------------------------------------+
+ *  | CL | Bytes| Description                                                  |
+ *  +====+======+==============================================================+
+ *  | 1  | 0-3  | SHARED DATA SIZE                                             |
+ *  |    +------+--------------------------------------------------------------+
+ *  |    | 4-7  | GLOBAL STATE                                                 |
+ *  |    +------+--------------------------------------------------------------+
+ *  |    | 8-11 | DISPLAY DATA ADDRESS                                         |
+ *  |    +------+--------------------------------------------------------------+
+ *  |    | 12:63| PADDING                                                      |
+ *  +----+------+--------------------------------------------------------------+
+ *  |    | 0:63 | PADDING(PLATFORM INFO)                                       |
+ *  +----+------+--------------------------------------------------------------+
+ *  | 3  | 0-3  | TASK STATE DATA                                              |
+ *  +    +------+--------------------------------------------------------------+
+ *  |    | 4:63 | PADDING                                                      |
+ *  +----+------+--------------------------------------------------------------+
+ *  |4-21|0:1087| OVERRIDE PARAMS AND BIT FIELDS                               |
+ *  +----+------+--------------------------------------------------------------+
+ *  |    |      | PADDING + EXTRA RESERVED PAGE                                |
+ *  +----+------+--------------------------------------------------------------+
+ */
+
+/*
+ * SLPC exposes certain parameters for global configuration by the host.
+ * These are referred to as override parameters, because in most cases
+ * the host will not need to modify the default values used by SLPC.
+ * SLPC remembers the default values which allows the host to easily restore
+ * them by simply unsetting the override. The host can set or unset override
+ * parameters during SLPC (re-)initialization using the SLPC Reset event.
+ * The host can also set or unset override parameters on the fly using the
+ * Parameter Set and Parameter Unset events
+ */
+
+#define SLPC_MAX_OVERRIDE_PARAMETERS		256
+#define SLPC_OVERRIDE_BITFIELD_SIZE \
+		(SLPC_MAX_OVERRIDE_PARAMETERS / 32)
+
+#define SLPC_PAGE_SIZE_BYTES			4096
+#define SLPC_CACHELINE_SIZE_BYTES		64
+#define SLPC_SHARED_DATA_SIZE_BYTE_HEADER	SLPC_CACHELINE_SIZE_BYTES
+#define SLPC_SHARED_DATA_SIZE_BYTE_PLATFORM_INFO	SLPC_CACHELINE_SIZE_BYTES
+#define SLPC_SHARED_DATA_SIZE_BYTE_TASK_STATE	SLPC_CACHELINE_SIZE_BYTES
+#define SLPC_SHARED_DATA_MODE_DEFN_TABLE_SIZE	SLPC_PAGE_SIZE_BYTES
+#define SLPC_SHARED_DATA_SIZE_BYTE_MAX		(2 * SLPC_PAGE_SIZE_BYTES)
+
+/*
+ * Cacheline size aligned (Total size needed for
+ * SLPM_KMD_MAX_OVERRIDE_PARAMETERS=256 is 1088 bytes)
+ */
+#define SLPC_OVERRIDE_PARAMS_TOTAL_BYTES	(((((SLPC_MAX_OVERRIDE_PARAMETERS * 4) \
+						+ ((SLPC_MAX_OVERRIDE_PARAMETERS / 32) * 4)) \
+		+ (SLPC_CACHELINE_SIZE_BYTES - 1)) / SLPC_CACHELINE_SIZE_BYTES) * \
+					SLPC_CACHELINE_SIZE_BYTES)
+
+#define SLPC_SHARED_DATA_SIZE_BYTE_OTHER	(SLPC_SHARED_DATA_SIZE_BYTE_MAX - \
+					(SLPC_SHARED_DATA_SIZE_BYTE_HEADER \
+					+ SLPC_SHARED_DATA_SIZE_BYTE_PLATFORM_INFO \
+					+ SLPC_SHARED_DATA_SIZE_BYTE_TASK_STATE \
+					+ SLPC_OVERRIDE_PARAMS_TOTAL_BYTES \
+					+ SLPC_SHARED_DATA_MODE_DEFN_TABLE_SIZE))
+
+enum slpc_task_enable {
+	SLPC_PARAM_TASK_DEFAULT = 0,
+	SLPC_PARAM_TASK_ENABLED,
+	SLPC_PARAM_TASK_DISABLED,
+	SLPC_PARAM_TASK_UNKNOWN
+};
+
+enum slpc_global_state {
+	SLPC_GLOBAL_STATE_NOT_RUNNING = 0,
+	SLPC_GLOBAL_STATE_INITIALIZING = 1,
+	SLPC_GLOBAL_STATE_RESETTING = 2,
+	SLPC_GLOBAL_STATE_RUNNING = 3,
+	SLPC_GLOBAL_STATE_SHUTTING_DOWN = 4,
+	SLPC_GLOBAL_STATE_ERROR = 5
+};
+
+enum slpc_param_id {
+	SLPC_PARAM_TASK_ENABLE_GTPERF = 0,
+	SLPC_PARAM_TASK_DISABLE_GTPERF = 1,
+	SLPC_PARAM_TASK_ENABLE_BALANCER = 2,
+	SLPC_PARAM_TASK_DISABLE_BALANCER = 3,
+	SLPC_PARAM_TASK_ENABLE_DCC = 4,
+	SLPC_PARAM_TASK_DISABLE_DCC = 5,
+	SLPC_PARAM_GLOBAL_MIN_GT_UNSLICE_FREQ_MHZ = 6,
+	SLPC_PARAM_GLOBAL_MAX_GT_UNSLICE_FREQ_MHZ = 7,
+	SLPC_PARAM_GLOBAL_MIN_GT_SLICE_FREQ_MHZ = 8,
+	SLPC_PARAM_GLOBAL_MAX_GT_SLICE_FREQ_MHZ = 9,
+	SLPC_PARAM_GTPERF_THRESHOLD_MAX_FPS = 10,
+	SLPC_PARAM_GLOBAL_DISABLE_GT_FREQ_MANAGEMENT = 11,
+	SLPC_PARAM_GTPERF_ENABLE_FRAMERATE_STALLING = 12,
+	SLPC_PARAM_GLOBAL_DISABLE_RC6_MODE_CHANGE = 13,
+	SLPC_PARAM_GLOBAL_OC_UNSLICE_FREQ_MHZ = 14,
+	SLPC_PARAM_GLOBAL_OC_SLICE_FREQ_MHZ = 15,
+	SLPC_PARAM_GLOBAL_ENABLE_IA_GT_BALANCING = 16,
+	SLPC_PARAM_GLOBAL_ENABLE_ADAPTIVE_BURST_TURBO = 17,
+	SLPC_PARAM_GLOBAL_ENABLE_EVAL_MODE = 18,
+	SLPC_PARAM_GLOBAL_ENABLE_BALANCER_IN_NON_GAMING_MODE = 19,
+	SLPC_PARAM_GLOBAL_RT_MODE_TURBO_FREQ_DELTA_MHZ = 20,
+	SLPC_PARAM_PWRGATE_RC_MODE = 21,
+	SLPC_PARAM_EDR_MODE_COMPUTE_TIMEOUT_MS = 22,
+	SLPC_PARAM_EDR_QOS_FREQ_MHZ = 23,
+	SLPC_PARAM_MEDIA_FF_RATIO_MODE = 24,
+	SLPC_PARAM_ENABLE_IA_FREQ_LIMITING = 25,
+	SLPC_PARAM_STRATEGIES = 26,
+	SLPC_PARAM_POWER_PROFILE = 27,
+	SLPC_PARAM_IGNORE_EFFICIENT_FREQUENCY = 28,
+	SLPC_MAX_PARAM = 32,
+};
+
+enum slpc_event_id {
+	SLPC_EVENT_RESET = 0,
+	SLPC_EVENT_SHUTDOWN = 1,
+	SLPC_EVENT_PLATFORM_INFO_CHANGE = 2,
+	SLPC_EVENT_DISPLAY_MODE_CHANGE = 3,
+	SLPC_EVENT_FLIP_COMPLETE = 4,
+	SLPC_EVENT_QUERY_TASK_STATE = 5,
+	SLPC_EVENT_PARAMETER_SET = 6,
+	SLPC_EVENT_PARAMETER_UNSET = 7,
+};
+
+struct slpc_task_state_data {
+	union {
+		u32 task_status_padding;
+		struct {
+			u32 status;
+#define SLPC_GTPERF_TASK_ENABLED	REG_BIT(0)
+#define SLPC_DCC_TASK_ENABLED		REG_BIT(11)
+#define SLPC_IN_DCC			REG_BIT(12)
+#define SLPC_BALANCER_ENABLED		REG_BIT(15)
+#define SLPC_IBC_TASK_ENABLED		REG_BIT(16)
+#define SLPC_BALANCER_IA_LMT_ENABLED	REG_BIT(17)
+#define SLPC_BALANCER_IA_LMT_ACTIVE	REG_BIT(18)
+		};
+	};
+	union {
+		u32 freq_padding;
+		struct {
+#define SLPC_MAX_UNSLICE_FREQ_MASK	REG_GENMASK(7, 0)
+#define SLPC_MIN_UNSLICE_FREQ_MASK	REG_GENMASK(15, 8)
+#define SLPC_MAX_SLICE_FREQ_MASK	REG_GENMASK(23, 16)
+#define SLPC_MIN_SLICE_FREQ_MASK	REG_GENMASK(31, 24)
+			u32 freq;
+		};
+	};
+} __packed;
+
+struct slpc_shared_data_header {
+	/* Total size in bytes of this shared buffer. */
+	u32 size;
+	u32 global_state;
+	u32 display_data_addr;
+} __packed;
+
+struct slpc_override_params {
+	u32 bits[SLPC_OVERRIDE_BITFIELD_SIZE];
+	u32 values[SLPC_MAX_OVERRIDE_PARAMETERS];
+} __packed;
+
+struct slpc_shared_data {
+	struct slpc_shared_data_header header;
+	u8 shared_data_header_pad[SLPC_SHARED_DATA_SIZE_BYTE_HEADER -
+				sizeof(struct slpc_shared_data_header)];
+
+	u8 platform_info_pad[SLPC_SHARED_DATA_SIZE_BYTE_PLATFORM_INFO];
+
+	struct slpc_task_state_data task_state_data;
+	u8 task_state_data_pad[SLPC_SHARED_DATA_SIZE_BYTE_TASK_STATE -
+				sizeof(struct slpc_task_state_data)];
+
+	struct slpc_override_params override_params;
+	u8 override_params_pad[SLPC_OVERRIDE_PARAMS_TOTAL_BYTES -
+				sizeof(struct slpc_override_params)];
+
+	u8 shared_data_pad[SLPC_SHARED_DATA_SIZE_BYTE_OTHER];
+
+	/* PAGE 2 (4096 bytes), mode based parameter will be removed soon */
+	u8 reserved_mode_definition[4096];
+} __packed;
+
+/**
+ * DOC: SLPC H2G MESSAGE FORMAT
+ *
+ *  +---+-------+--------------------------------------------------------------+
+ *  |   | Bits  | Description                                                  |
+ *  +===+=======+==============================================================+
+ *  | 0 |    31 | ORIGIN = GUC_HXG_ORIGIN_HOST_                                |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   | 30:28 | TYPE = GUC_HXG_TYPE_REQUEST_                                 |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   | 27:16 | DATA0 = MBZ                                                  |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   |  15:0 | ACTION = _`GUC_ACTION_HOST2GUC_PC_SLPM_REQUEST` = 0x3003     |
+ *  +---+-------+--------------------------------------------------------------+
+ *  | 1 |  31:8 | **EVENT_ID**                                                 |
+ *  +   +-------+--------------------------------------------------------------+
+ *  |   |   7:0 | **EVENT_ARGC** - number of data arguments                    |
+ *  +---+-------+--------------------------------------------------------------+
+ *  | 2 |  31:0 | **EVENT_DATA1**                                              |
+ *  +---+-------+--------------------------------------------------------------+
+ *  |...|  31:0 | ...                                                          |
+ *  +---+-------+--------------------------------------------------------------+
+ *  |2+n|  31:0 | **EVENT_DATAn**                                              |
+ *  +---+-------+--------------------------------------------------------------+
+ */
+
+#define GUC_ACTION_HOST2GUC_PC_SLPC_REQUEST		0x3003
+
+#define HOST2GUC_PC_SLPC_REQUEST_MSG_MIN_LEN \
+				(GUC_HXG_REQUEST_MSG_MIN_LEN + 1u)
+#define HOST2GUC_PC_SLPC_EVENT_MAX_INPUT_ARGS		9
+#define HOST2GUC_PC_SLPC_REQUEST_MSG_MAX_LEN \
+		(HOST2GUC_PC_SLPC_REQUEST_REQUEST_MSG_MIN_LEN + \
+			HOST2GUC_PC_SLPC_EVENT_MAX_INPUT_ARGS)
+#define HOST2GUC_PC_SLPC_REQUEST_MSG_0_MBZ		GUC_HXG_REQUEST_MSG_0_DATA0
+#define HOST2GUC_PC_SLPC_REQUEST_MSG_1_EVENT_ID		(0xff << 8)
+#define HOST2GUC_PC_SLPC_REQUEST_MSG_1_EVENT_ARGC	(0xff << 0)
+#define HOST2GUC_PC_SLPC_REQUEST_MSG_N_EVENT_DATA_N	GUC_HXG_REQUEST_MSG_n_DATAn
+
+#endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 39bc3c16057b..5b0f8c541b69 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -208,6 +208,9 @@ static u32 guc_ctl_feature_flags(struct intel_guc *guc)
 	if (!intel_guc_submission_is_used(guc))
 		flags |= GUC_CTL_DISABLE_SCHEDULER;
 
+	if (intel_guc_slpc_is_used(guc))
+		flags |= GUC_CTL_ENABLE_SLPC;
+
 	return flags;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index 82534259b7ad..fa4be13c8854 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -12,6 +12,7 @@
 #include "gt/intel_engine_types.h"
 
 #include "abi/guc_actions_abi.h"
+#include "abi/guc_actions_slpc_abi.h"
 #include "abi/guc_errors_abi.h"
 #include "abi/guc_communication_mmio_abi.h"
 #include "abi/guc_communication_ctb_abi.h"
@@ -95,6 +96,7 @@
 #define GUC_CTL_WA			1
 #define GUC_CTL_FEATURE			2
 #define   GUC_CTL_DISABLE_SCHEDULER	(1 << 14)
+#define   GUC_CTL_ENABLE_SLPC		BIT(2)
 
 #define GUC_CTL_DEBUG			3
 #define   GUC_LOG_VERBOSITY_SHIFT	0
@@ -141,6 +143,11 @@
 #define GUC_ID_TO_ENGINE_INSTANCE(guc_id) \
 	(((guc_id) & GUC_ENGINE_INSTANCE_MASK) >> GUC_ENGINE_INSTANCE_SHIFT)
 
+#define SLPC_EVENT(id, c) (\
+FIELD_PREP(HOST2GUC_PC_SLPC_REQUEST_MSG_1_EVENT_ID, id) | \
+FIELD_PREP(HOST2GUC_PC_SLPC_REQUEST_MSG_1_EVENT_ARGC, c) \
+)
+
 static inline u8 engine_class_to_guc_class(u8 class)
 {
 	BUILD_BUG_ON(GUC_RENDER_CLASS != RENDER_CLASS);
-- 
2.25.0

