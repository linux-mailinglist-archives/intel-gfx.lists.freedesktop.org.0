Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 683C33DBF9E
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 22:21:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C45E6F487;
	Fri, 30 Jul 2021 20:21:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0FEE6F487;
 Fri, 30 Jul 2021 20:21:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10061"; a="276939717"
X-IronPort-AV: E=Sophos;i="5.84,282,1620716400"; d="scan'208";a="276939717"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 13:21:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,282,1620716400"; d="scan'208";a="499741598"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga001.jf.intel.com with ESMTP; 30 Jul 2021 13:21:51 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Sundaresan Sujaritha <sujaritha.sundaresan@intel.com>
Date: Fri, 30 Jul 2021 13:21:10 -0700
Message-Id: <20210730202119.23810-6-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210730202119.23810-1-vinay.belgaumkar@intel.com>
References: <20210730202119.23810-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/14] drm/i915/guc/slpc: Enable SLPC and add
 related H2G events
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

Add methods for interacting with GuC for enabling SLPC. Enable
SLPC after GuC submission has been established. GuC load will
fail if SLPC cannot be successfully initialized. Add various
helper methods to set/unset the parameters for SLPC. They can
be set using H2G calls or directly setting bits in the shared
data structure.

v2: Address several review comments, add new helpers for
decoding the SLPC min/max frequencies. Use masks instead of hardcoded
constants. (Michal W)

v3: Split global_state_to_string function, and check for positive
non-zero return value from intel_guc_send() (Michal W)

v4: Optimize the stringify function and other comments (Michal W)

v5: Enable slpc as well before declaring GuC submission status (Michal W)

v6: Checkpatch()

Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Sundaresan Sujaritha <sujaritha.sundaresan@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   | 202 ++++++++++++++++++
 .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  11 +
 3 files changed, 215 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 377e09187e9f..f26cf07ec87b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -45,6 +45,40 @@ void intel_guc_slpc_init_early(struct intel_guc_slpc *slpc)
 	slpc->selected = __guc_slpc_selected(guc);
 }
 
+static void slpc_mem_set_param(struct slpc_shared_data *data,
+			       u32 id, u32 value)
+{
+	GEM_BUG_ON(id >= SLPC_MAX_OVERRIDE_PARAMETERS);
+	/*
+	 * When the flag bit is set, corresponding value will be read
+	 * and applied by SLPC.
+	 */
+	data->override_params.bits[id >> 5] |= (1 << (id % 32));
+	data->override_params.values[id] = value;
+}
+
+static void slpc_mem_set_enabled(struct slpc_shared_data *data,
+				 u8 enable_id, u8 disable_id)
+{
+	/*
+	 * Enabling a param involves setting the enable_id
+	 * to 1 and disable_id to 0.
+	 */
+	slpc_mem_set_param(data, enable_id, 1);
+	slpc_mem_set_param(data, disable_id, 0);
+}
+
+static void slpc_mem_set_disabled(struct slpc_shared_data *data,
+				  u8 enable_id, u8 disable_id)
+{
+	/*
+	 * Disabling a param involves setting the enable_id
+	 * to 0 and disable_id to 1.
+	 */
+	slpc_mem_set_param(data, disable_id, 1);
+	slpc_mem_set_param(data, enable_id, 0);
+}
+
 int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
 {
 	struct intel_guc *guc = slpc_to_guc(slpc);
@@ -65,6 +99,174 @@ int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
 	return err;
 }
 
+static u32 slpc_get_state(struct intel_guc_slpc *slpc)
+{
+	struct slpc_shared_data *data;
+
+	GEM_BUG_ON(!slpc->vma);
+
+	drm_clflush_virt_range(slpc->vaddr, sizeof(u32));
+	data = slpc->vaddr;
+
+	return data->header.global_state;
+}
+
+static bool slpc_is_running(struct intel_guc_slpc *slpc)
+{
+	return slpc_get_state(slpc) == SLPC_GLOBAL_STATE_RUNNING;
+}
+
+static int guc_action_slpc_query(struct intel_guc *guc, u32 offset)
+{
+	u32 request[] = {
+		GUC_ACTION_HOST2GUC_PC_SLPC_REQUEST,
+		SLPC_EVENT(SLPC_EVENT_QUERY_TASK_STATE, 2),
+		offset,
+		0,
+	};
+	int ret;
+
+	ret = intel_guc_send(guc, request, ARRAY_SIZE(request));
+
+	return ret > 0 ? -EPROTO : ret;
+}
+
+static int slpc_query_task_state(struct intel_guc_slpc *slpc)
+{
+	struct intel_guc *guc = slpc_to_guc(slpc);
+	struct drm_i915_private *i915 = slpc_to_i915(slpc);
+	u32 offset = intel_guc_ggtt_offset(guc, slpc->vma);
+	int ret;
+
+	ret = guc_action_slpc_query(guc, offset);
+	if (unlikely(ret))
+		drm_err(&i915->drm, "Failed to query task state (%pe)\n",
+			ERR_PTR(ret));
+
+	drm_clflush_virt_range(slpc->vaddr, SLPC_PAGE_SIZE_BYTES);
+
+	return ret;
+}
+
+static const char *slpc_global_state_to_string(enum slpc_global_state state)
+{
+	switch (state) {
+	case SLPC_GLOBAL_STATE_NOT_RUNNING:
+		return "not running";
+	case SLPC_GLOBAL_STATE_INITIALIZING:
+		return "initializing";
+	case SLPC_GLOBAL_STATE_RESETTING:
+		return "resetting";
+	case SLPC_GLOBAL_STATE_RUNNING:
+		return "running";
+	case SLPC_GLOBAL_STATE_SHUTTING_DOWN:
+		return "shutting down";
+	case SLPC_GLOBAL_STATE_ERROR:
+		return "error";
+	default:
+		return "unknown";
+	}
+}
+
+static const char *slpc_get_state_string(struct intel_guc_slpc *slpc)
+{
+	return slpc_global_state_to_string(slpc_get_state(slpc));
+}
+
+static int guc_action_slpc_reset(struct intel_guc *guc, u32 offset)
+{
+	u32 request[] = {
+		GUC_ACTION_HOST2GUC_PC_SLPC_REQUEST,
+		SLPC_EVENT(SLPC_EVENT_RESET, 2),
+		offset,
+		0,
+	};
+	int ret;
+
+	ret = intel_guc_send(guc, request, ARRAY_SIZE(request));
+
+	return ret > 0 ? -EPROTO : ret;
+}
+
+static int slpc_reset(struct intel_guc_slpc *slpc)
+{
+	struct drm_i915_private *i915 = slpc_to_i915(slpc);
+	struct intel_guc *guc = slpc_to_guc(slpc);
+	u32 offset = intel_guc_ggtt_offset(guc, slpc->vma);
+	int ret;
+
+	ret = guc_action_slpc_reset(guc, offset);
+
+	if (unlikely(ret < 0)) {
+		drm_err(&i915->drm, "SLPC reset action failed (%pe)\n",
+			ERR_PTR(ret));
+		return ret;
+	}
+
+	if (!ret) {
+		if (wait_for(slpc_is_running(slpc), SLPC_RESET_TIMEOUT_MS)) {
+			drm_err(&i915->drm, "SLPC not enabled! State = %s\n",
+				slpc_get_state_string(slpc));
+			return -EIO;
+		}
+	}
+
+	return 0;
+}
+
+static void slpc_shared_data_reset(struct slpc_shared_data *data)
+{
+	memset(data, 0, sizeof(struct slpc_shared_data));
+
+	data->header.size = sizeof(struct slpc_shared_data);
+
+	/* Enable only GTPERF task, disable others */
+	slpc_mem_set_enabled(data, SLPC_PARAM_TASK_ENABLE_GTPERF,
+			     SLPC_PARAM_TASK_DISABLE_GTPERF);
+
+	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_BALANCER,
+			      SLPC_PARAM_TASK_DISABLE_BALANCER);
+
+	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_DCC,
+			      SLPC_PARAM_TASK_DISABLE_DCC);
+}
+
+/*
+ * intel_guc_slpc_enable() - Start SLPC
+ * @slpc: pointer to intel_guc_slpc.
+ *
+ * SLPC is enabled by setting up the shared data structure and
+ * sending reset event to GuC SLPC. Initial data is setup in
+ * intel_guc_slpc_init. Here we send the reset event. We do
+ * not currently need a slpc_disable since this is taken care
+ * of automatically when a reset/suspend occurs and the GuC
+ * CTB is destroyed.
+ *
+ * Return: 0 on success, non-zero error code on failure.
+ */
+int intel_guc_slpc_enable(struct intel_guc_slpc *slpc)
+{
+	struct drm_i915_private *i915 = slpc_to_i915(slpc);
+	int ret;
+
+	GEM_BUG_ON(!slpc->vma);
+
+	slpc_shared_data_reset(slpc->vaddr);
+
+	ret = slpc_reset(slpc);
+	if (unlikely(ret < 0)) {
+		drm_err(&i915->drm, "SLPC Reset event returned (%pe)\n",
+			ERR_PTR(ret));
+		return ret;
+	}
+
+	ret = slpc_query_task_state(slpc);
+	if (unlikely(ret < 0))
+		return ret;
+
+	return 0;
+}
+
 void intel_guc_slpc_fini(struct intel_guc_slpc *slpc)
 {
 	if (!slpc->vma)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
index 8bd753167234..3cefe19b17b2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
@@ -8,6 +8,8 @@
 
 #include <linux/types.h>
 
+#define SLPC_RESET_TIMEOUT_MS 5
+
 struct intel_guc_slpc {
 	struct i915_vma *vma;
 	struct slpc_shared_data *vaddr;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index e6bd9406c7b2..3e0cd1f05e3b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -500,12 +500,21 @@ static int __uc_init_hw(struct intel_uc *uc)
 	if (intel_uc_uses_guc_submission(uc))
 		intel_guc_submission_enable(guc);
 
+	if (intel_uc_uses_guc_slpc(uc)) {
+		ret = intel_guc_slpc_enable(&guc->slpc);
+		if (ret)
+			goto err_submission;
+	}
+
 	drm_info(&i915->drm, "%s firmware %s version %u.%u %s:%s\n",
 		 intel_uc_fw_type_repr(INTEL_UC_FW_TYPE_GUC), guc->fw.path,
 		 guc->fw.major_ver_found, guc->fw.minor_ver_found,
 		 "submission",
 		 enableddisabled(intel_uc_uses_guc_submission(uc)));
 
+	drm_info(&i915->drm, "GuC SLPC: %s\n",
+		 enableddisabled(intel_uc_uses_guc_slpc(uc)));
+
 	if (intel_uc_uses_huc(uc)) {
 		drm_info(&i915->drm, "%s firmware %s version %u.%u %s:%s\n",
 			 intel_uc_fw_type_repr(INTEL_UC_FW_TYPE_HUC),
@@ -520,6 +529,8 @@ static int __uc_init_hw(struct intel_uc *uc)
 	/*
 	 * We've failed to load the firmware :(
 	 */
+err_submission:
+	intel_guc_submission_disable(guc);
 err_log_capture:
 	__uc_capture_load_err_log(uc);
 err_out:
-- 
2.25.0

