Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F0D65EC85
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 14:11:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75BC310E712;
	Thu,  5 Jan 2023 13:11:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FC5C10E712
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 13:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672924275; x=1704460275;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=T9Ow/8kZFJEb8DXedwEFYBSvBmD0OKoout+qi0367D8=;
 b=T4RILk7tFRo/fGTCSmlZe68TWQhNd78oiDHLF2XHjmSeihVikwgdMQGz
 DrTguRulzXLMPctm3RuA8UT777MspUKiZD5onlf3DMfVRR1RktvQcCS2i
 KueIl9EJ66fNJ8q74vwYr3prIlwm3WNAHX0fykCKYHM9Mpw1OfweQbfFl
 6UP2zRYQsmPlOO1q7WejFMjpAMrMCN6MfrLzTBQZzj7NgRFlh3iCAFQUB
 v/U/AKPC2oqwfA+w91k56kNDM7T3ieJl8ieLh7n25GxTxKsrjdrraWYnf
 Dioce036TlZcjQ0bzrD2tGKGXet5hi/Z3tWC6JvwbEp4SiAh0o8pAJNoZ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="323429745"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="323429745"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:11:15 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="633129044"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="633129044"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:11:12 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 14:10:38 +0100
Message-Id: <20230105131046.2173431-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/9] drm/i915/display/core: use intel_de_rmw
 if possible
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The helper makes the code more compact and readable.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 22 ++++++++-----------
 .../drm/i915/display/intel_modeset_setup.c    | 17 ++++++--------
 2 files changed, 16 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e75b9b2a0e015a..ce506c9fd6ab9f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -293,11 +293,11 @@ static void
 skl_wa_827(struct drm_i915_private *dev_priv, enum pipe pipe, bool enable)
 {
 	if (enable)
-		intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
-		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) | DUPS1_GATING_DIS | DUPS2_GATING_DIS);
+		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe),
+			     0, DUPS1_GATING_DIS | DUPS2_GATING_DIS);
 	else
-		intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
-		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~(DUPS1_GATING_DIS | DUPS2_GATING_DIS));
+		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe),
+			     DUPS1_GATING_DIS | DUPS2_GATING_DIS, 0);
 }
 
 /* Wa_2006604312:icl,ehl */
@@ -306,11 +306,9 @@ icl_wa_scalerclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
 		       bool enable)
 {
 	if (enable)
-		intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
-		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) | DPFR_GATING_DIS);
+		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe), 0, DPFR_GATING_DIS);
 	else
-		intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
-		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~DPFR_GATING_DIS);
+		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe), DPFR_GATING_DIS, 0);
 }
 
 /* Wa_1604331009:icl,jsl,ehl */
@@ -1852,12 +1850,10 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
 	enum transcoder transcoder = crtc_state->cpu_transcoder;
 	i915_reg_t reg = DISPLAY_VER(dev_priv) >= 14 ? MTL_CHICKEN_TRANS(transcoder) :
 			 CHICKEN_TRANS(transcoder);
-	u32 val;
 
-	val = intel_de_read(dev_priv, reg);
-	val &= ~HSW_FRAME_START_DELAY_MASK;
-	val |= HSW_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
-	intel_de_write(dev_priv, reg, val);
+	intel_de_rmw(dev_priv, reg,
+		     HSW_FRAME_START_DELAY_MASK,
+		     HSW_FRAME_START_DELAY(crtc_state->framestart_delay - 1));
 }
 
 static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 96395bfbd41dfb..6f6dc7c6b88b0c 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -647,17 +647,14 @@ static void intel_early_display_was(struct drm_i915_private *i915)
 	 * Also known as Wa_14010480278.
 	 */
 	if (IS_DISPLAY_VER(i915, 10, 12))
-		intel_de_write(i915, GEN9_CLKGATE_DIS_0,
-			       intel_de_read(i915, GEN9_CLKGATE_DIS_0) | DARBF_GATING_DIS);
+		intel_de_rmw(i915, GEN9_CLKGATE_DIS_0, 0, DARBF_GATING_DIS);
 
-	if (IS_HASWELL(i915)) {
-		/*
-		 * WaRsPkgCStateDisplayPMReq:hsw
-		 * System hang if this isn't done before disabling all planes!
-		 */
-		intel_de_write(i915, CHICKEN_PAR1_1,
-			       intel_de_read(i915, CHICKEN_PAR1_1) | FORCE_ARB_IDLE_PLANES);
-	}
+	/*
+	 * WaRsPkgCStateDisplayPMReq:hsw
+	 * System hang if this isn't done before disabling all planes!
+	 */
+	if (IS_HASWELL(i915))
+		intel_de_rmw(i915, CHICKEN_PAR1_1, 0, FORCE_ARB_IDLE_PLANES);
 
 	if (IS_KABYLAKE(i915) || IS_COFFEELAKE(i915) || IS_COMETLAKE(i915)) {
 		/* Display WA #1142:kbl,cfl,cml */
-- 
2.34.1

