Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F48B640B3F
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 17:51:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A76D010E70E;
	Fri,  2 Dec 2022 16:51:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7C5810E717
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Dec 2022 16:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669999906; x=1701535906;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZzpSpsxX6hA5EuF6IT52E6rUGcZoeXof6TzHlFNXX0c=;
 b=KGPT+SUZSY2Qatl4NuqQ9UJdcuysVvWsnfTmNVaiROOEMMFK6zj3+eOI
 Kr0QkUKqcGegVnDdHWjubB9vxw3wE7u99+JlHXdl9C433bvcjWILKpGix
 MObvc6BP7fRf4sbzGwGroIKAD/0Y+EudU61GC6ljN4PE/R8dtZrMQVmQA
 ezSfv5M63raI5p59RHQT2NzRLAro20W3VqmobytODnOI6aD8AeiJv1Htk
 Xx629zNtLOeKqrxVpiGRPmmWk7eRrFldPJbpgUyqCy0itlhqh+S/48YTa
 fPnzaHMhoSYkD10URrDqa2Uk1U8MyNoCJ59YWeg1uU9rz7Zv0YgMLebAe Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="296348439"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="296348439"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 08:51:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="733868088"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="733868088"
Received: from zhengha1-mobl1.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.212.14.82])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 08:51:45 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Dec 2022 08:51:43 -0800
Message-Id: <20221202165143.82538-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [Patch v2] drm/i915/mtl: Initial display workarounds
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Jouni Högander <jouni.hogander@intel.com>

This patch introduces initial workarounds for mtl platform

v2: switch IS_MTL_DISPLAY_STEP to use IS_METEORLAKE from testing display
ver. (Tvrtko)

Bspec: 66624

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c  |  4 +++-
 drivers/gpu/drm/i915/display/intel_hdmi.c |  3 ++-
 drivers/gpu/drm/i915/display/intel_psr.c  | 27 ++++++++++++++++-------
 drivers/gpu/drm/i915/i915_drv.h           |  4 ++++
 4 files changed, 28 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index b5ee5ea0d010..8f269553d826 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1095,7 +1095,9 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	}
 
 	/* Wa_14016291713 */
-	if (IS_DISPLAY_VER(i915, 12, 13) && crtc_state->has_psr) {
+	if ((IS_DISPLAY_VER(i915, 12, 13) ||
+	     IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
+	    crtc_state->has_psr) {
 		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
 		return 0;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index e82f8a07e2b0..efa2da080f62 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -537,7 +537,8 @@ void hsw_write_infoframe(struct intel_encoder *encoder,
 			       0);
 
 	/* Wa_14013475917 */
-	if (DISPLAY_VER(dev_priv) == 13 && crtc_state->has_psr &&
+	if ((DISPLAY_VER(dev_priv) == 13 ||
+	     IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) && crtc_state->has_psr &&
 	    type == DP_SDP_VSC)
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5b678916e6db..7982157fb1ff 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -797,7 +797,7 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
 		return intel_dp->psr.su_y_granularity == 4;
 
 	/*
-	 * adl_p and display 14+ platforms has 1 line granularity.
+	 * adl_p and mtl platforms has 1 line granularity.
 	 * For other platforms with SW tracking we can adjust the y coordinates
 	 * to match sink requirement if multiple of 4.
 	 */
@@ -1170,11 +1170,14 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 				     PSR2_ADD_VERTICAL_LINE_COUNT);
 
 		/*
-		 * Wa_16014451276:adlp
+		 * Wa_16014451276:adlp,mtl[a0,b0]
 		 * All supported adlp panels have 1-based X granularity, this may
 		 * cause issues if non-supported panels are used.
 		 */
-		if (IS_ALDERLAKE_P(dev_priv))
+		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_transcoder), 0,
+				     ADLP_1_BASED_X_GRANULARITY);
+		else if (IS_ALDERLAKE_P(dev_priv))
 			intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
 				     ADLP_1_BASED_X_GRANULARITY);
 
@@ -1185,8 +1188,12 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 				     TRANS_SET_CONTEXT_LATENCY_MASK,
 				     TRANS_SET_CONTEXT_LATENCY_VALUE(1));
 
-		/* Wa_16012604467:adlp */
-		if (IS_ALDERLAKE_P(dev_priv))
+		/* Wa_16012604467:adlp,mtl[a0,b0] */
+		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+			intel_de_rmw(dev_priv,
+				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder), 0,
+				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
+		else if (IS_ALDERLAKE_P(dev_priv))
 			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
 
@@ -1362,8 +1369,12 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 				     TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
 				     TRANS_SET_CONTEXT_LATENCY_MASK, 0);
 
-		/* Wa_16012604467:adlp */
-		if (IS_ALDERLAKE_P(dev_priv))
+		/* Wa_16012604467:adlp,mtl[a0,b0] */
+		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+			intel_de_rmw(dev_priv,
+				     MTL_CLKGATE_DIS_TRANS(intel_dp->psr.transcoder),
+				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
+		else if (IS_ALDERLAKE_P(dev_priv))
 			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
 
@@ -1625,7 +1636,7 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 
 	if (full_update) {
 		/*
-		 * Not applying Wa_14014971508:adlp as we do not support the
+		 * Not applying Wa_14014971508:adlp,mtl as we do not support the
 		 * feature that requires this workaround.
 		 */
 		val |= man_trk_ctl_single_full_frame_bit_get(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a8a5bd426e78..0ad206f76b7b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -727,6 +727,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
 	 IS_GRAPHICS_STEP(__i915, since, until))
 
+#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
+	(IS_METEORLAKE(__i915) && \
+	 IS_DISPLAY_STEP(__i915, since, until))
+
 /*
  * DG2 hardware steppings are a bit unusual.  The hardware design was forked to
  * create three variants (G10, G11, and G12) which each have distinct
-- 
2.38.1

