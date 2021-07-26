Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF563D675B
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 21:09:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3D8972C22;
	Mon, 26 Jul 2021 19:08:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C997672C74;
 Mon, 26 Jul 2021 19:08:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="234162130"
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="234162130"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 12:08:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="566278239"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga004.jf.intel.com with ESMTP; 26 Jul 2021 12:08:57 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 26 Jul 2021 12:07:53 -0700
Message-Id: <20210726190800.26762-9-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210726190800.26762-1-vinay.belgaumkar@intel.com>
References: <20210726190800.26762-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/15] drm/i915/guc/slpc: Add methods to set
 min/max frequency
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

Add param set h2g helpers to set the min and max frequencies
for use by SLPC.

v2: Address review comments (Michal W)
v3: Check for positive error code (Michal W)

Signed-off-by: Sundaresan Sujaritha <sujaritha.sundaresan@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 89 ++++++++++++++++++++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h |  2 +
 2 files changed, 90 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index f5808d2acbca..63656640189c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -109,6 +109,21 @@ static u32 slpc_get_state(struct intel_guc_slpc *slpc)
 	return data->header.global_state;
 }
 
+static int guc_action_slpc_set_param(struct intel_guc *guc, u8 id, u32 value)
+{
+	u32 request[] = {
+		INTEL_GUC_ACTION_SLPC_REQUEST,
+		SLPC_EVENT(SLPC_EVENT_PARAMETER_SET, 2),
+		id,
+		value,
+	};
+	int ret;
+
+	ret = intel_guc_send(guc, request, ARRAY_SIZE(request));
+
+	return ret > 0 ? -EPROTO : ret;
+}
+
 static bool slpc_is_running(struct intel_guc_slpc *slpc)
 {
 	return (slpc_get_state(slpc) == SLPC_GLOBAL_STATE_RUNNING);
@@ -118,7 +133,7 @@ static int guc_action_slpc_query(struct intel_guc *guc, u32 offset)
 {
 	u32 request[] = {
 		INTEL_GUC_ACTION_SLPC_REQUEST,
- 		SLPC_EVENT(SLPC_EVENT_QUERY_TASK_STATE, 2),
+		SLPC_EVENT(SLPC_EVENT_QUERY_TASK_STATE, 2),
 		offset,
 		0,
 	};
@@ -146,6 +161,15 @@ static int slpc_query_task_state(struct intel_guc_slpc *slpc)
 	return ret;
 }
 
+static int slpc_set_param(struct intel_guc_slpc *slpc, u8 id, u32 value)
+{
+	struct intel_guc *guc = slpc_to_guc(slpc);
+
+	GEM_BUG_ON(id >= SLPC_MAX_PARAM);
+
+	return guc_action_slpc_set_param(guc, id, value);
+}
+
 static const char *slpc_global_state_to_string(enum slpc_global_state state)
 {
 	const char *str = NULL;
@@ -251,6 +275,69 @@ static u32 slpc_decode_max_freq(struct intel_guc_slpc *slpc)
 		GT_FREQUENCY_MULTIPLIER, GEN9_FREQ_SCALER);
 }
 
+/**
+ * intel_guc_slpc_set_max_freq() - Set max frequency limit for SLPC.
+ * @slpc: pointer to intel_guc_slpc.
+ * @val: frequency (MHz)
+ *
+ * This function will invoke GuC SLPC action to update the max frequency
+ * limit for unslice.
+ *
+ * Return: 0 on success, non-zero error code on failure.
+ */
+int intel_guc_slpc_set_max_freq(struct intel_guc_slpc *slpc, u32 val)
+{
+	struct drm_i915_private *i915 = slpc_to_i915(slpc);
+	intel_wakeref_t wakeref;
+	int ret;
+
+	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
+		ret = slpc_set_param(slpc,
+			       SLPC_PARAM_GLOBAL_MAX_GT_UNSLICE_FREQ_MHZ,
+			       val);
+		if (ret) {
+			drm_err(&i915->drm,
+				"Set max frequency unslice returned (%pe)\n", ERR_PTR(ret));
+			/* Return standardized err code for sysfs */
+			ret = -EIO;
+		}
+	}
+
+	return ret;
+}
+
+/**
+ * intel_guc_slpc_set_min_freq() - Set min frequency limit for SLPC.
+ * @slpc: pointer to intel_guc_slpc.
+ * @val: frequency (MHz)
+ *
+ * This function will invoke GuC SLPC action to update the min unslice
+ * frequency.
+ *
+ * Return: 0 on success, non-zero error code on failure.
+ */
+int intel_guc_slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 val)
+{
+	int ret;
+	struct intel_guc *guc = slpc_to_guc(slpc);
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+	intel_wakeref_t wakeref;
+
+	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
+		ret = slpc_set_param(slpc,
+			       SLPC_PARAM_GLOBAL_MIN_GT_UNSLICE_FREQ_MHZ,
+			       val);
+		if (ret) {
+			drm_err(&i915->drm,
+				"Set min frequency for unslice returned (%pe)\n", ERR_PTR(ret));
+			/* Return standardized err code for sysfs */
+			ret = -EIO;
+		}
+	}
+
+	return ret;
+}
+
 /*
  * intel_guc_slpc_enable() - Start SLPC
  * @slpc: pointer to intel_guc_slpc.
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
index c3b0ad7f0f93..e594510497ec 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
@@ -29,5 +29,7 @@ void intel_guc_slpc_init_early(struct intel_guc_slpc *slpc);
 int intel_guc_slpc_init(struct intel_guc_slpc *slpc);
 int intel_guc_slpc_enable(struct intel_guc_slpc *slpc);
 void intel_guc_slpc_fini(struct intel_guc_slpc *slpc);
+int intel_guc_slpc_set_max_freq(struct intel_guc_slpc *slpc, u32 val);
+int intel_guc_slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 val);
 
 #endif
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
