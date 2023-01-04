Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E91A665CEF3
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 10:02:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A9B610E4F6;
	Wed,  4 Jan 2023 09:02:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 473FB10E4F6
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 09:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672822974; x=1704358974;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pCfo4zFqzGfvwtX2q7fSpxu0a1NjAk+DUPQzDmGqk70=;
 b=Dp8QUXGNucYoTOgSSRLBBfoHgZfI+IgbYH0qttJxgARkPoH1s78x1IR4
 hnsISWDwhn6J2MKtDTND3g/2EZbX9cOm5v3U/taQVwJfpM6oyom+B3wtC
 6aH44YloIlYhH1vf6mnmldTYs5NUvPwaUPe8RRgKpXTZBXyVGEoCrW3qo
 TJqguprHkLFxRFto8xzm5nqYou+zrPF8UDi/HPZtsc0ykj/HnYkleu7W1
 OllJQeZYJyzo20xHcrjNMHY3O68sDspONBqjG4A32uY3XzFVdIyRjhzPs
 V7f1Wkq5pyBflHxZ8i61JesOg4DXPHRhHamWlQZSUE3oOpP7pvY1IqYlK g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="408144039"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="408144039"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 01:02:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="900494559"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="900494559"
Received: from nzaki1-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.35.65])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 01:02:51 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Jan 2023 11:02:29 +0200
Message-Id: <20230104090229.1402628-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Implement Wa_14015648006
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

Add 4th pipe and extend TGL Wa_16013835468 to support ADLP, MTL and
DG2 and all TGL steppings.

BSpec: 54369, 55378, 66624

v2:
 - apply for PSR1 as well
 - remove stepping information from comments

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 48 ++++++++++++++----------
 drivers/gpu/drm/i915/i915_reg.h          |  1 +
 2 files changed, 29 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index d0d774219cc5..507f810d4a4a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1112,6 +1112,8 @@ static u32 wa_16013835468_bit_get(struct intel_dp *intel_dp)
 		return LATENCY_REPORTING_REMOVED_PIPE_B;
 	case PIPE_C:
 		return LATENCY_REPORTING_REMOVED_PIPE_C;
+	case PIPE_D:
+		return LATENCY_REPORTING_REMOVED_PIPE_D;
 	default:
 		MISSING_CASE(intel_dp->psr.pipe);
 		return 0;
@@ -1163,6 +1165,23 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 			     intel_dp->psr.psr2_sel_fetch_enabled ?
 			     IGNORE_PSR2_HW_TRACKING : 0);
 
+	/*
+	 * Wa_16013835468
+	 * Wa_14015648006
+	 */
+	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
+	    IS_DISPLAY_VER(dev_priv, 12, 13)) {
+		u16 vtotal, vblank;
+
+		vtotal = crtc_state->uapi.adjusted_mode.crtc_vtotal -
+			crtc_state->uapi.adjusted_mode.crtc_vdisplay;
+		vblank = crtc_state->uapi.adjusted_mode.crtc_vblank_end -
+			crtc_state->uapi.adjusted_mode.crtc_vblank_start;
+		if (vblank > vtotal)
+			intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
+				     wa_16013835468_bit_get(intel_dp));
+	}
+
 	if (intel_dp->psr.psr2_enabled) {
 		if (DISPLAY_VER(dev_priv) == 9)
 			intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
@@ -1196,20 +1215,6 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 		else if (IS_ALDERLAKE_P(dev_priv))
 			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
-
-		/* Wa_16013835468:tgl[b0+], dg1 */
-		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_B0, STEP_FOREVER) ||
-		    IS_DG1(dev_priv)) {
-			u16 vtotal, vblank;
-
-			vtotal = crtc_state->uapi.adjusted_mode.crtc_vtotal -
-				 crtc_state->uapi.adjusted_mode.crtc_vdisplay;
-			vblank = crtc_state->uapi.adjusted_mode.crtc_vblank_end -
-				 crtc_state->uapi.adjusted_mode.crtc_vblank_start;
-			if (vblank > vtotal)
-				intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
-					     wa_16013835468_bit_get(intel_dp));
-		}
 	}
 }
 
@@ -1362,6 +1367,15 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
 			     DIS_RAM_BYPASS_PSR2_MAN_TRACK, 0);
 
+	/*
+	 * Wa_16013835468
+	 * Wa_14015648006
+	 */
+	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
+	    IS_DISPLAY_VER(dev_priv, 12, 13))
+		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
+			     wa_16013835468_bit_get(intel_dp), 0);
+
 	if (intel_dp->psr.psr2_enabled) {
 		/* Wa_16011168373:adl-p */
 		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
@@ -1377,12 +1391,6 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 		else if (IS_ALDERLAKE_P(dev_priv))
 			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
-
-		/* Wa_16013835468:tgl[b0+], dg1 */
-		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_B0, STEP_FOREVER) ||
-		    IS_DG1(dev_priv))
-			intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
-				     wa_16013835468_bit_get(intel_dp), 0);
 	}
 
 	intel_snps_phy_update_psr_power_state(dev_priv, phy, false);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8b2cf980f323..b0b3b511e19f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5737,6 +5737,7 @@
 #define  RESET_PCH_HANDSHAKE_ENABLE	REG_BIT(4)
 
 #define GEN8_CHICKEN_DCPR_1			_MMIO(0x46430)
+#define   LATENCY_REPORTING_REMOVED_PIPE_D	REG_BIT(31)
 #define   SKL_SELECT_ALTERNATE_DC_EXIT		REG_BIT(30)
 #define   LATENCY_REPORTING_REMOVED_PIPE_C	REG_BIT(25)
 #define   LATENCY_REPORTING_REMOVED_PIPE_B	REG_BIT(24)
-- 
2.34.1

