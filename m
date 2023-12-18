Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC128179B7
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Dec 2023 19:31:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CADFC10E35E;
	Mon, 18 Dec 2023 18:30:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD7C710E259
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Dec 2023 18:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702924224; x=1734460224;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fbK+EadkkUUhW5J6YFSpd1PUHtL0g7sMidBRx+ZwbeY=;
 b=dy4djXY5D4wN+cZ2yopPeSZ9GxIJAOOEA5XC/Kgwzzi86BU4ShcnJjoX
 DAu0qxkn5Y4+WsEWWDIQEzbNCVf16eOfC351u9p8fvLy1JFhsv2JO2WnN
 nZam5cBfYeWY3mqtmfxASBprP1NIpLTqXcmLyHZLLb5FzksmMKwkL5Fu0
 eGT2FBF7BzT2c75f3iohpDpdt8jaC4f+CHTJBkLxauKyoWurhIv8YONaV
 8SVYp/FqSR5HKgm76lVWu9aJBRyZI07hpnCDQ+E4loTHRwf+iwnAga6OV
 xc2o/ul4SuBkYNA0BSqXE1ubBdqV+nxNeG1JxC5a2uIIW37oZAc+4Es5b A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="392714150"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="392714150"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 09:50:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="779176603"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="779176603"
Received: from etrunovx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.35.24])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 09:50:28 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 6/7] drm/i915/psr: Enable psr2 early transport as possible
Date: Mon, 18 Dec 2023 19:50:03 +0200
Message-Id: <20231218175004.52875-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231218175004.52875-1-jouni.hogander@intel.com>
References: <20231218175004.52875-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Check source and sink support for psr2 early transport and enable
it if not disabled by debug flag.

Bspec: 68934

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    | 16 ++++++++------
 drivers/gpu/drm/i915/display/intel_psr.c      | 22 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  1 +
 3 files changed, 31 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 05dd8decd610..ca8bc909ea35 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1215,6 +1215,7 @@ struct intel_crtc_state {
 	bool has_psr;
 	bool has_psr2;
 	bool enable_psr2_sel_fetch;
+	bool enable_psr2_su_region_et;
 	bool req_psr2_sdp_prior_scanline;
 	bool has_panel_replay;
 	bool wm_level_disabled;
@@ -1686,13 +1687,14 @@ struct intel_psr {
 	/* Mutex for PSR state of the transcoder */
 	struct mutex lock;
 
-#define I915_PSR_DEBUG_MODE_MASK	0x0f
-#define I915_PSR_DEBUG_DEFAULT		0x00
-#define I915_PSR_DEBUG_DISABLE		0x01
-#define I915_PSR_DEBUG_ENABLE		0x02
-#define I915_PSR_DEBUG_FORCE_PSR1	0x03
-#define I915_PSR_DEBUG_ENABLE_SEL_FETCH	0x4
-#define I915_PSR_DEBUG_IRQ		0x10
+#define I915_PSR_DEBUG_MODE_MASK		0x0f
+#define I915_PSR_DEBUG_DEFAULT			0x00
+#define I915_PSR_DEBUG_DISABLE			0x01
+#define I915_PSR_DEBUG_ENABLE			0x02
+#define I915_PSR_DEBUG_FORCE_PSR1		0x03
+#define I915_PSR_DEBUG_ENABLE_SEL_FETCH		0x4
+#define I915_PSR_DEBUG_IRQ			0x10
+#define I915_PSR_DEBUG_SU_REGION_ET_DISABLE	0x20
 
 	u32 debug;
 	bool sink_support;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 67f68c26a312..c29fd708608a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -528,7 +528,7 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
 		intel_dp_get_sink_sync_latency(intel_dp);
 
 	if (DISPLAY_VER(i915) >= 9 &&
-	    intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_IS_SUPPORTED) {
+	    intel_dp->psr_dpcd[0] >= DP_PSR2_WITH_Y_COORD_IS_SUPPORTED) {
 		bool y_req = intel_dp->psr_dpcd[1] &
 			     DP_PSR2_SU_Y_COORDINATE_REQUIRED;
 		bool alpm = intel_dp_get_alpm_status(intel_dp);
@@ -604,6 +604,18 @@ static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
 		       aux_ctl);
 }
 
+static bool psr2_su_region_et_valid(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	if (DISPLAY_VER(i915) >= 20 &&
+	    intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED &&
+	    !(intel_dp->psr.debug & I915_PSR_DEBUG_SU_REGION_ET_DISABLE))
+		return true;
+
+	return false;
+}
+
 static void intel_psr_enable_sink(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -619,6 +631,8 @@ static void intel_psr_enable_sink(struct intel_dp *intel_dp)
 				   DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE);
 
 		dpcd_val |= DP_PSR_ENABLE_PSR2 | DP_PSR_IRQ_HPD_WITH_CRC_ERRORS;
+		if (psr2_su_region_et_valid(intel_dp))
+			dpcd_val |= DP_PSR_ENABLE_SU_REGION_ET;
 	} else {
 		if (intel_dp->psr.link_standby)
 			dpcd_val |= DP_PSR_MAIN_LINK_ACTIVE;
@@ -869,6 +883,9 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 		intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder), 0);
 	}
 
+	if (psr2_su_region_et_valid(intel_dp))
+		val |= LNL_EDP_PSR2_SU_REGION_ET_ENABLE;
+
 	/*
 	 * PSR2 HW is incorrectly using EDP_PSR_TP1_TP3_SEL and BSpec is
 	 * recommending keep this bit unset while PSR2 is enabled.
@@ -1031,6 +1048,9 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
+	if (psr2_su_region_et_valid(intel_dp))
+		crtc_state->enable_psr2_su_region_et = true;
+
 	return crtc_state->enable_psr2_sel_fetch = true;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index ceefcc70e8f9..bc252f38239e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -159,6 +159,7 @@
 #define   TGL_EDP_PSR2_BLOCK_COUNT_MASK		REG_BIT(28)
 #define   TGL_EDP_PSR2_BLOCK_COUNT_NUM_2	REG_FIELD_PREP(TGL_EDP_PSR2_BLOCK_COUNT_MASK, 0)
 #define   TGL_EDP_PSR2_BLOCK_COUNT_NUM_3	REG_FIELD_PREP(TGL_EDP_PSR2_BLOCK_COUNT_MASK, 1)
+#define   LNL_EDP_PSR2_SU_REGION_ET_ENABLE	REG_BIT(27)
 #define   EDP_Y_COORDINATE_ENABLE		REG_BIT(25) /* display 10, 11 and 12 */
 #define   EDP_PSR2_SU_SDP_SCANLINE		REG_BIT(25) /* display 13+ */
 #define   EDP_MAX_SU_DISABLE_TIME_MASK		REG_GENMASK(24, 20)
-- 
2.34.1

