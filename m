Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E3859ED9E
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 22:42:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A928B10E80F;
	Tue, 23 Aug 2022 20:42:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6202F10E76C
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 20:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661287326; x=1692823326;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OFgmSJZejiy86iVhYEibPKmAbGKMmIr1BLjDkj8IZGA=;
 b=KsiCv9XP6PuCUZz2vBFiWJcsygDEviuHpUoNpx+OW+k6h+jvEmWqqtiX
 BoiF3pVjC01SQ//OOXGKvTmn528U6arv/d9bm8S2RkyzB0efRzlGuqse4
 /tC/T+sSVl5hdJVe1b/urO8++1DotUvFYp0WrgzdAnPsCMmn1CHiRmUrZ
 oDqZdawLA9zvjR4X36df3WerwYxO57Tn/KaCJ9pr5bVbJ2tzvbbx/hRTB
 /RYwCgRDXxnjMbqGvFbpZBwKCyKPK/un1DB1NFq6HvpoGs8DzUD/1IDPt
 Yv9Nd9oI/ijV7lJ5IcdrD3yll6ey3Im2tiEr9haToRu2FfEts2CkULaVe A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="294579399"
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="294579399"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 13:42:00 -0700
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="638815687"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 13:42:00 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Aug 2022 20:41:54 +0000
Message-Id: <20220823204155.8178-19-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 18/19] drm/i915/guc: Support OA when
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

There is a w/a to reset RCS/CCS before it goes into RC6. This breaks
OA. Fix it by disabling RC6.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 .../drm/i915/gt/uc/abi/guc_actions_slpc_abi.h |  9 ++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   | 45 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |  2 +
 drivers/gpu/drm/i915/i915_perf.c              | 29 ++++++++++++
 4 files changed, 85 insertions(+)

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
index e1fa1f32f29e..23989f5452a7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -642,6 +642,51 @@ static void slpc_get_rp_values(struct intel_guc_slpc *slpc)
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
+	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
+
+	ret = slpc_set_param(slpc, SLPC_PARAM_PWRGATE_RC_MODE, mode);
+	if (ret)
+		drm_err(&i915->drm,
+			"Override gucrc mode %d failed %d\n",
+			mode, ret);
+
+	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+
+	return ret;
+}
+
+int intel_guc_slpc_unset_gucrc_mode(struct intel_guc_slpc *slpc)
+{
+	struct drm_i915_private *i915 = slpc_to_i915(slpc);
+	int ret = 0;
+
+	ret = slpc_unset_param(slpc, SLPC_PARAM_PWRGATE_RC_MODE);
+	if (ret)
+		drm_err(&i915->drm,
+			"Unsetting gucrc mode failed %d\n",
+			ret);
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
index 132c2ce8b33b..ce1b6ad4d107 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -208,6 +208,7 @@
 #include "gt/intel_lrc.h"
 #include "gt/intel_lrc_reg.h"
 #include "gt/intel_ring.h"
+#include "gt/uc/intel_guc_slpc.h"
 
 #include "i915_drv.h"
 #include "i915_file_private.h"
@@ -1651,6 +1652,16 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 
 	free_oa_buffer(stream);
 
+	/*
+	 * Wa_16011777198:dg2: Unset the override of GUCRC mode to enable rc6.
+	 */
+	if (intel_guc_slpc_is_used(&gt->uc.guc) &&
+	    intel_uc_uses_guc_rc(&gt->uc) &&
+	    (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
+	     IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0)))
+		drm_WARN_ON(&gt->i915->drm,
+			    intel_guc_slpc_unset_gucrc_mode(&gt->uc.guc.slpc));
+
 	intel_uncore_forcewake_put(stream->uncore, FORCEWAKE_ALL);
 	intel_engine_pm_put(stream->engine);
 
@@ -3339,6 +3350,24 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	intel_engine_pm_get(stream->engine);
 	intel_uncore_forcewake_get(stream->uncore, FORCEWAKE_ALL);
 
+	/*
+	 * Wa_16011777198:dg2: GuC resets render as part of the Wa. This causes
+	 * OA to lose the configuration state. Prevent this by overriding GUCRC
+	 * mode.
+	 */
+	if (intel_guc_slpc_is_used(&gt->uc.guc) &&
+	    intel_uc_uses_guc_rc(&gt->uc) &&
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

