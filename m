Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FDB3DB0EC
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 04:01:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E6F66EF31;
	Fri, 30 Jul 2021 02:01:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 468826EF21;
 Fri, 30 Jul 2021 02:01:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="200186014"
X-IronPort-AV: E=Sophos;i="5.84,280,1620716400"; d="scan'208";a="200186014"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 19:01:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,280,1620716400"; d="scan'208";a="664637596"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by fmsmga006.fm.intel.com with ESMTP; 29 Jul 2021 19:01:42 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 29 Jul 2021 19:01:01 -0700
Message-Id: <20210730020107.31415-9-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210730020107.31415-1-vinay.belgaumkar@intel.com>
References: <20210730020107.31415-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/14] drm/i915/guc/slpc: Add get max/min freq
 hooks
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

Add helpers to read the min/max frequency being used
by SLPC. This is done by send a H2G command which forces
SLPC to update the shared data struct which can then be
read. These helpers will be used in a sysfs patch later
on.

v2: Address review comments (Michal W)
v3: Return err in case of query failure (Michal W)
v4: Move decode_min/max_freq to this patch

Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Sundaresan Sujaritha <sujaritha.sundaresan@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 76 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h |  2 +
 2 files changed, 78 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 2635feb59576..8bfd1880b2f5 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -245,6 +245,28 @@ static int slpc_reset(struct intel_guc_slpc *slpc)
 	return 0;
 }
 
+static u32 slpc_decode_min_freq(struct intel_guc_slpc *slpc)
+{
+	struct slpc_shared_data *data = slpc->vaddr;
+
+	GEM_BUG_ON(!slpc->vma);
+
+	return	DIV_ROUND_CLOSEST(REG_FIELD_GET(SLPC_MIN_UNSLICE_FREQ_MASK,
+				  data->task_state_data.freq) *
+				  GT_FREQUENCY_MULTIPLIER, GEN9_FREQ_SCALER);
+}
+
+static u32 slpc_decode_max_freq(struct intel_guc_slpc *slpc)
+{
+	struct slpc_shared_data *data = slpc->vaddr;
+
+	GEM_BUG_ON(!slpc->vma);
+
+	return	DIV_ROUND_CLOSEST(REG_FIELD_GET(SLPC_MAX_UNSLICE_FREQ_MASK,
+				  data->task_state_data.freq) *
+				  GT_FREQUENCY_MULTIPLIER, GEN9_FREQ_SCALER);
+}
+
 static void slpc_shared_data_reset(struct slpc_shared_data *data)
 {
 	memset(data, 0, sizeof(struct slpc_shared_data));
@@ -291,6 +313,33 @@ int intel_guc_slpc_set_max_freq(struct intel_guc_slpc *slpc, u32 val)
 	return ret;
 }
 
+/**
+ * intel_guc_slpc_get_max_freq() - Get max frequency limit for SLPC.
+ * @slpc: pointer to intel_guc_slpc.
+ * @val: pointer to val which will hold max frequency (MHz)
+ *
+ * This function will invoke GuC SLPC action to read the max frequency
+ * limit for unslice.
+ *
+ * Return: 0 on success, non-zero error code on failure.
+ */
+int intel_guc_slpc_get_max_freq(struct intel_guc_slpc *slpc, u32 *val)
+{
+	struct drm_i915_private *i915 = slpc_to_i915(slpc);
+	intel_wakeref_t wakeref;
+	int ret = 0;
+
+	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
+		/* Force GuC to update task data */
+		ret = slpc_query_task_state(slpc);
+
+		if (!ret)
+			*val = slpc_decode_max_freq(slpc);
+	}
+
+	return ret;
+}
+
 /**
  * intel_guc_slpc_set_min_freq() - Set min frequency limit for SLPC.
  * @slpc: pointer to intel_guc_slpc.
@@ -320,6 +369,33 @@ int intel_guc_slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 val)
 	return ret;
 }
 
+/**
+ * intel_guc_slpc_get_min_freq() - Get min frequency limit for SLPC.
+ * @slpc: pointer to intel_guc_slpc.
+ * @val: pointer to val which will hold min frequency (MHz)
+ *
+ * This function will invoke GuC SLPC action to read the min frequency
+ * limit for unslice.
+ *
+ * Return: 0 on success, non-zero error code on failure.
+ */
+int intel_guc_slpc_get_min_freq(struct intel_guc_slpc *slpc, u32 *val)
+{
+	struct drm_i915_private *i915 = slpc_to_i915(slpc);
+	intel_wakeref_t wakeref;
+	int ret = 0;
+
+	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
+		/* Force GuC to update task data */
+		ret = slpc_query_task_state(slpc);
+
+		if (!ret)
+			*val = slpc_decode_min_freq(slpc);
+	}
+
+	return ret;
+}
+
 /*
  * intel_guc_slpc_enable() - Start SLPC
  * @slpc: pointer to intel_guc_slpc.
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
index 788d87ff7b58..78a7893ce489 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
@@ -31,5 +31,7 @@ int intel_guc_slpc_enable(struct intel_guc_slpc *slpc);
 void intel_guc_slpc_fini(struct intel_guc_slpc *slpc);
 int intel_guc_slpc_set_max_freq(struct intel_guc_slpc *slpc, u32 val);
 int intel_guc_slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 val);
+int intel_guc_slpc_get_max_freq(struct intel_guc_slpc *slpc, u32 *val);
+int intel_guc_slpc_get_min_freq(struct intel_guc_slpc *slpc, u32 *val);
 
 #endif
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
