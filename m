Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A13648A85
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Dec 2022 23:05:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7672D10E58B;
	Fri,  9 Dec 2022 22:05:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3625110E58B
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Dec 2022 22:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670623547; x=1702159547;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5M5LMG5u0Q+xy6wgGDEvO2tb5+Qf+/HZ6G++2CEfaJg=;
 b=HhRytTAO1qSR/qFCrLy4S4BICvgIWuQGYLjgI80hlWqB6hTHJF+E1k6h
 v6CwevFj07J8ohjjdWBnDX3iPjRG0CuAimQ+eyDM+Nz/zXztRsFP499UW
 0H+T45geb31NXGK2uULjo/MHN1Z++iekAbGIVu5zcd6fxfsPhu9Xy8wts
 6tstxlAnTdB55Xl3Oj1L92nTKlhanQGkpHhQJgIyXScr4bSpK4L2SXWTC
 yV4xLOqCRvi6IwhUmYCo10mQ/c1/6eq5uBt2NlDFX8Lb8vZAh/1bhOGVc
 +Zv228ZIvKjS5ODjgxXHBuOAArLVI3QyJX5ptJRofDAea0iCRihkhckON A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="344600278"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="344600278"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 14:05:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="625248879"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="625248879"
Received: from klcrozie-mobl1.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.212.11.162])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 14:05:45 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Dec 2022 14:05:43 -0800
Message-Id: <20221209220543.502047-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4] drm/i915/mtl: Initial display workarounds
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

v3: clerical issues, extend 16015201720 to mtl. (MattR)

v4: make sure 16015201720 includes display 13. (MattR)

Bspec: 66624

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c  |  4 ++--
 drivers/gpu/drm/i915/display/intel_fbc.c  |  6 +++--
 drivers/gpu/drm/i915/display/intel_hdmi.c |  3 ++-
 drivers/gpu/drm/i915/display/intel_psr.c  | 27 ++++++++++++++++-------
 drivers/gpu/drm/i915/i915_drv.h           |  4 ++++
 5 files changed, 31 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index eff3add70611..8f4880a17ae0 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -387,11 +387,11 @@ static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
 {
 	enum pipe pipe;
 
-	if (DISPLAY_VER(i915) != 13)
+	if (DISPLAY_VER(i915) < 13)
 		return;
 
 	/*
-	 * Wa_16015201720:adl-p,dg2
+	 * Wa_16015201720:adl-p,dg2, mtl
 	 * The WA requires clock gating to be disabled all the time
 	 * for pipe A and B.
 	 * For pipe C and D clock gating needs to be disabled only
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index deba0c49c827..5e69d3c11d21 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -811,7 +811,7 @@ static void intel_fbc_program_cfb(struct intel_fbc *fbc)
 
 static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
 {
-	/* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,adlp */
+	/* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,adlp,mtl */
 	if (DISPLAY_VER(fbc->i915) >= 11 && !IS_DG2(fbc->i915))
 		intel_de_rmw(fbc->i915, ILK_DPFC_CHICKEN(fbc->id), 0,
 			     DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
@@ -1091,7 +1091,9 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
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
index 5b678916e6db..9820e5fdd087 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -797,7 +797,7 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
 		return intel_dp->psr.su_y_granularity == 4;
 
 	/*
-	 * adl_p and display 14+ platforms has 1 line granularity.
+	 * adl_p and mtl platforms have 1 line granularity.
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

