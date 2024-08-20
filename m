Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3718D958E5F
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2024 21:01:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3D5910E85C;
	Tue, 20 Aug 2024 19:01:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zx4abPB+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12DC510E85C;
 Tue, 20 Aug 2024 19:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724180495; x=1755716495;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ShaYdbPca/POQMAbkAzGUTEz3FBwQX/cWD4DGnb2voo=;
 b=Zx4abPB+eOMJbZgbqikCCfxlIrwZ0taj5hrc/Y+S1zRJgbrIH6FNmSFk
 m+b6nenpQWueaMF6G3sVd3vesCtmNMcCOj6BWB3hz/Wd/1hapqwOOnC+M
 KkK1mLIlgnjPCBETV63uw4q9fK4scYPH2YUA3I8b8HVlM/mECXh0WA7zn
 Gi2KaRtKs96ye80wmtJIHLiM4O3e89uM2toY3ElmEd2GIjtThvYrC1zzc
 854i3nLMqdt4+/Rz7I8mAuypbs5c2SOZYRukP1hmpc1kn8XeCdPFlpHpU
 7gnipj9M8qCLNslHRDqX6pkRYMWdUdRb/fUahYdTUUlBQG1zbedTZr5lQ Q==;
X-CSE-ConnectionGUID: m5MALsPrRMujhKsSX0Fuqw==
X-CSE-MsgGUID: hp0xTL8DSmauyQwdSV4NvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="26258450"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="26258450"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 12:01:30 -0700
X-CSE-ConnectionGUID: eOHovBHdR127+MjhUXtT0w==
X-CSE-MsgGUID: GbC4euqgToePIPd7kfPq5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="61362133"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 12:01:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 06/10] drm/i915/display: rename IS_DISPLAY_IP_STEP() to
 IS_DISPLAY_VER_STEP()
Date: Tue, 20 Aug 2024 22:00:39 +0300
Message-Id: <6861e02f3adf15d56e89890000eb195070c33c9b.1724180287.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724180287.git.jani.nikula@intel.com>
References: <cover.1724180287.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Unify macro naming on VER.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 6 +++---
 drivers/gpu/drm/i915/display/intel_fbc.c            | 2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c           | 6 +++---
 drivers/gpu/drm/i915/display/intel_pmdemand.c       | 2 +-
 drivers/gpu/drm/i915/display/intel_psr.c            | 8 ++++----
 5 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 30c624989902..8bd342658291 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -175,13 +175,13 @@ enum intel_display_subplatform {
  * hardware fix is present and the software workaround is no longer necessary.
  * E.g.,
  *
- *    IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_B2)
- *    IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), STEP_C0, STEP_FOREVER)
+ *    IS_DISPLAY_VER_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_B2)
+ *    IS_DISPLAY_VER_STEP(i915, IP_VER(14, 0), STEP_C0, STEP_FOREVER)
  *
  * "STEP_FOREVER" can be passed as "until" for workarounds that have no upper
  * stepping bound for the specified IP version.
  */
-#define IS_DISPLAY_IP_STEP(__i915, ipver, from, until) \
+#define IS_DISPLAY_VER_STEP(__i915, ipver, from, until) \
 	(IS_DISPLAY_VER_FULL((__i915), (ipver), (ipver)) && \
 	 IS_DISPLAY_STEP((__i915), (from), (until)))
 
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 5eda258616ae..52b79bacef4d 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1346,7 +1346,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 
 	/* Wa_14016291713 */
 	if ((IS_DISPLAY_VER(display, 12, 13) ||
-	     IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0)) &&
+	     IS_DISPLAY_VER_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0)) &&
 	    crtc_state->has_psr && !crtc_state->has_panel_replay) {
 		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
 		return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 05402ae6b569..94418f218448 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -42,11 +42,11 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
 		return;
 
 	if (DISPLAY_VER(dev_priv) >= 14) {
-		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_D0, STEP_FOREVER))
+		if (IS_DISPLAY_VER_STEP(dev_priv, IP_VER(14, 0), STEP_D0, STEP_FOREVER))
 			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
 				     0, HDCP_LINE_REKEY_DISABLE);
-		else if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 1), STEP_B0, STEP_FOREVER) ||
-			 IS_DISPLAY_IP_STEP(dev_priv, IP_VER(20, 0), STEP_B0, STEP_FOREVER))
+		else if (IS_DISPLAY_VER_STEP(dev_priv, IP_VER(14, 1), STEP_B0, STEP_FOREVER) ||
+			 IS_DISPLAY_VER_STEP(dev_priv, IP_VER(20, 0), STEP_B0, STEP_FOREVER))
 			intel_de_rmw(dev_priv,
 				     TRANS_DDI_FUNC_CTL(dev_priv, hdcp->cpu_transcoder),
 				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index 9ca981b7a12c..ceaf9e3147da 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -92,7 +92,7 @@ int intel_pmdemand_init(struct drm_i915_private *i915)
 				     &pmdemand_state->base,
 				     &intel_pmdemand_funcs);
 
-	if (IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0))
+	if (IS_DISPLAY_VER_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0))
 		/* Wa_14016740474 */
 		intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEOUT_DISABLE);
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9cb1cdaaeefa..dea3694ddc3a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1862,14 +1862,14 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 		 * cause issues if non-supported panels are used.
 		 */
 		if (!intel_dp->psr.panel_replay_enabled &&
-		    (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
+		    (IS_DISPLAY_VER_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
 		     IS_ALDERLAKE_P(dev_priv)))
 			intel_de_rmw(dev_priv, hsw_chicken_trans_reg(dev_priv, cpu_transcoder),
 				     0, ADLP_1_BASED_X_GRANULARITY);
 
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
 		if (!intel_dp->psr.panel_replay_enabled &&
-		    IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
+		    IS_DISPLAY_VER_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv,
 				     MTL_CLKGATE_DIS_TRANS(dev_priv, cpu_transcoder),
 				     0,
@@ -2051,7 +2051,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	if (intel_dp->psr.sel_update_enabled) {
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
 		if (!intel_dp->psr.panel_replay_enabled &&
-		    IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
+		    IS_DISPLAY_VER_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv,
 				     MTL_CLKGATE_DIS_TRANS(dev_priv, cpu_transcoder),
 				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
@@ -2536,7 +2536,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 
 	/* Wa_14014971492 */
 	if (!crtc_state->has_panel_replay &&
-	    ((IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
+	    ((IS_DISPLAY_VER_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
 	      IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv))) &&
 	    crtc_state->splitter.enable)
 		crtc_state->psr2_su_area.y1 = 0;
-- 
2.39.2

