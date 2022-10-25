Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 677C160D568
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 22:18:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A51A10E21C;
	Tue, 25 Oct 2022 20:17:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51E9610E178
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 20:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666729031; x=1698265031;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zM7GuTbjWMlzRANswteKnJnfR56kggIRCBhe4j+YOFg=;
 b=BhPRo8mDLL/6xBv52lOn6kynTs6meAAEdrfA6voZAWQbjAO/LrTqzTRe
 +3Cyjuc1wEXykm+eUJUKyhqNo6Bb7dJQXLDbbe76Rf8V2Z7B/OJLKzu9u
 ZAbhYHsNigBW8OpJXiVxHb0N9XarukQbY4FBiHOwDIOUIM538DY3is861
 b++j9emYtcH7YQlSB79Y1kS4ZR8i+eUjLJEXpUWuYzQnX1TxcZRNvXAdr
 39JIoyg0r7KXkTFJt4AxI3tQqHs5xsCenMorgFkuBZcCdtGPg7Y8YyMAj
 bJTPDh7laSaUtk43c6s6kQOXUPA+EUWF7PP/S0aYvNqgu4yqLnuX1s62F w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="288177916"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="288177916"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 13:17:10 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="609699733"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="609699733"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 13:17:09 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Oct 2022 20:17:06 +0000
Message-Id: <20221025201708.84018-15-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221025201708.84018-1-umesh.nerlige.ramappa@intel.com>
References: <20221025201708.84018-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 14/16] drm/i915/guc: Support OA when
 Wa_16011777198 is enabled
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

From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

On DG2, a w/a resets RCS/CCS before it goes into RC6. This breaks OA
since OA does not expect engine resets during its use. Fix it by
disabling RC6.

v2: (Ashutosh)
- Bring back slpc_unset_param helper
- Update commit msg
- Use with_intel_runtime_pm helper for set/unset

v3: (Ashutosh)
- Just use intel_uc_uses_guc_rc

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 .../drm/i915/gt/uc/abi/guc_actions_slpc_abi.h |  9 +++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   | 66 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |  2 +
 drivers/gpu/drm/i915/i915_perf.c              | 27 ++++++++
 4 files changed, 104 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h
index 4c840a2639dc..811add10c30d 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h
@@ -128,6 +128,15 @@ enum slpc_media_ratio_mode {
 	SLPC_MEDIA_RATIO_MODE_FIXED_ONE_TO_TWO = 2,
 };
 
+enum slpc_gucrc_mode {
+	SLPC_GUCRC_MODE_HW = 0,
+	SLPC_GUCRC_MODE_GUCRC_NO_RC6 = 1,
+	SLPC_GUCRC_MODE_GUCRC_STATIC_TIMEOUT = 2,
+	SLPC_GUCRC_MODE_GUCRC_DYNAMIC_HYSTERESIS = 3,
+
+	SLPC_GUCRC_MODE_MAX,
+};
+
 enum slpc_event_id {
 	SLPC_EVENT_RESET = 0,
 	SLPC_EVENT_SHUTDOWN = 1,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index fdd895f73f9f..b3a4fb9e021f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -137,6 +137,17 @@ static int guc_action_slpc_set_param(struct intel_guc *guc, u8 id, u32 value)
 	return ret > 0 ? -EPROTO : ret;
 }
 
+static int guc_action_slpc_unset_param(struct intel_guc *guc, u8 id)
+{
+	u32 request[] = {
+		GUC_ACTION_HOST2GUC_PC_SLPC_REQUEST,
+		SLPC_EVENT(SLPC_EVENT_PARAMETER_UNSET, 1),
+		id,
+	};
+
+	return intel_guc_send(guc, request, ARRAY_SIZE(request));
+}
+
 static bool slpc_is_running(struct intel_guc_slpc *slpc)
 {
 	return slpc_get_state(slpc) == SLPC_GLOBAL_STATE_RUNNING;
@@ -190,6 +201,15 @@ static int slpc_set_param(struct intel_guc_slpc *slpc, u8 id, u32 value)
 	return ret;
 }
 
+static int slpc_unset_param(struct intel_guc_slpc *slpc, u8 id)
+{
+	struct intel_guc *guc = slpc_to_guc(slpc);
+
+	GEM_BUG_ON(id >= SLPC_MAX_PARAM);
+
+	return guc_action_slpc_unset_param(guc, id);
+}
+
 static int slpc_force_min_freq(struct intel_guc_slpc *slpc, u32 freq)
 {
 	struct drm_i915_private *i915 = slpc_to_i915(slpc);
@@ -610,6 +630,52 @@ static void slpc_get_rp_values(struct intel_guc_slpc *slpc)
 		slpc->boost_freq = slpc->rp0_freq;
 }
 
+/**
+ * intel_guc_slpc_override_gucrc_mode() - override GUCRC mode
+ * @slpc: pointer to intel_guc_slpc.
+ * @mode: new value of the mode.
+ *
+ * This function will override the GUCRC mode.
+ *
+ * Return: 0 on success, non-zero error code on failure.
+ */
+int intel_guc_slpc_override_gucrc_mode(struct intel_guc_slpc *slpc, u32 mode)
+{
+	int ret;
+	struct drm_i915_private *i915 = slpc_to_i915(slpc);
+	intel_wakeref_t wakeref;
+
+	if (mode >= SLPC_GUCRC_MODE_MAX)
+		return -EINVAL;
+
+	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
+		ret = slpc_set_param(slpc, SLPC_PARAM_PWRGATE_RC_MODE, mode);
+		if (ret)
+			drm_err(&i915->drm,
+				"Override gucrc mode %d failed %d\n",
+				mode, ret);
+	}
+
+	return ret;
+}
+
+int intel_guc_slpc_unset_gucrc_mode(struct intel_guc_slpc *slpc)
+{
+	struct drm_i915_private *i915 = slpc_to_i915(slpc);
+	intel_wakeref_t wakeref;
+	int ret = 0;
+
+	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
+		ret = slpc_unset_param(slpc, SLPC_PARAM_PWRGATE_RC_MODE);
+		if (ret)
+			drm_err(&i915->drm,
+				"Unsetting gucrc mode failed %d\n",
+				ret);
+	}
+
+	return ret;
+}
+
 /*
  * intel_guc_slpc_enable() - Start SLPC
  * @slpc: pointer to intel_guc_slpc.
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
index 82a98f78f96c..ccf483730d9d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
@@ -42,5 +42,7 @@ int intel_guc_slpc_set_media_ratio_mode(struct intel_guc_slpc *slpc, u32 val);
 void intel_guc_pm_intrmsk_enable(struct intel_gt *gt);
 void intel_guc_slpc_boost(struct intel_guc_slpc *slpc);
 void intel_guc_slpc_dec_waiters(struct intel_guc_slpc *slpc);
+int intel_guc_slpc_unset_gucrc_mode(struct intel_guc_slpc *slpc);
+int intel_guc_slpc_override_gucrc_mode(struct intel_guc_slpc *slpc, u32 mode);
 
 #endif
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 8540eb6156e4..bc0c486cf7d4 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -209,6 +209,7 @@
 #include "gt/intel_lrc.h"
 #include "gt/intel_lrc_reg.h"
 #include "gt/intel_ring.h"
+#include "gt/uc/intel_guc_slpc.h"
 
 #include "i915_drv.h"
 #include "i915_file_private.h"
@@ -1582,6 +1583,15 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 
 	free_oa_buffer(stream);
 
+	/*
+	 * Wa_16011777198:dg2: Unset the override of GUCRC mode to enable rc6.
+	 */
+	if (intel_uc_uses_guc_rc(&gt->uc) &&
+	    (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
+	     IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0)))
+		drm_WARN_ON(&gt->i915->drm,
+			    intel_guc_slpc_unset_gucrc_mode(&gt->uc.guc.slpc));
+
 	intel_uncore_forcewake_put(stream->uncore, FORCEWAKE_ALL);
 	intel_engine_pm_put(stream->engine);
 
@@ -3265,6 +3275,23 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	intel_engine_pm_get(stream->engine);
 	intel_uncore_forcewake_get(stream->uncore, FORCEWAKE_ALL);
 
+	/*
+	 * Wa_16011777198:dg2: GuC resets render as part of the Wa. This causes
+	 * OA to lose the configuration state. Prevent this by overriding GUCRC
+	 * mode.
+	 */
+	if (intel_uc_uses_guc_rc(&gt->uc) &&
+	    (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
+	     IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))) {
+		ret = intel_guc_slpc_override_gucrc_mode(&gt->uc.guc.slpc,
+							 SLPC_GUCRC_MODE_GUCRC_NO_RC6);
+		if (ret) {
+			drm_dbg(&stream->perf->i915->drm,
+				"Unable to override gucrc mode\n");
+			goto err_config;
+		}
+	}
+
 	ret = alloc_oa_buffer(stream);
 	if (ret)
 		goto err_oa_buf_alloc;
-- 
2.25.1

