Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35301894F1A
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 11:50:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6634410FBE1;
	Tue,  2 Apr 2024 09:50:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lS9VsVDM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4309010FBD9
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 09:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712051451; x=1743587451;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nGu/9BKTtNwbht5Wx7K8JZrlOreAXaU6MgVwiTzxEyA=;
 b=lS9VsVDMnwXyFFPHMrTchYTQSbDmeU/EkzP/R1F1zvKTJsxCkAb4/j1X
 /1EiirbV2ajkhrhV+3/smoNZM4UqXkPkEpppeEWWVD1CIgVII3x9uqpvA
 +7KiKvTWG9twhoanz2KL9aPftf3sra9bMVDjaAgsjkaLbRCSHUvsAET4w
 cO3qN5LXRGyvf4HJ1JqbZP0zxggvTXWE3307PKyjVdnoN0Q1Sg+kOa6KE
 Vfzx8IJN7XbXU6++v63FsAnzDLEcQ2CrjBn39nUICS/j4wWBzjd7Mg+gh
 +mK2pLOdL4rGJxi40Xbq/bvbOSR/DGYiV2Xql54XKj+CNCj5RKcSAQ3d6 w==;
X-CSE-ConnectionGUID: xHF1xafGTfCj+1tSyLZewQ==
X-CSE-MsgGUID: tP7uyFRDQQGubulmM5aZyQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="7422674"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; 
   d="scan'208";a="7422674"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="22693407"
Received: from sudhirj1-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.34.252])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:50 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 16/19] drm/i915/psr: Do not apply workarounds in case of
 panel replay
Date: Tue,  2 Apr 2024 12:50:08 +0300
Message-Id: <20240402095011.200558-17-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240402095011.200558-1-jouni.hogander@intel.com>
References: <20240402095011.200558-1-jouni.hogander@intel.com>
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

There are some workarounds that are not applicable for panel replay. Do not
apply these if panel replay is used.

Bspec: 66624, 50422

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c  |  5 +++--
 drivers/gpu/drm/i915/display/intel_hdmi.c |  3 ++-
 drivers/gpu/drm/i915/display/intel_psr.c  | 16 ++++++++++------
 3 files changed, 15 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 5bfce36fb892..555058c0a1dc 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1250,7 +1250,8 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	 * Recommendation is to keep this combination disabled
 	 * Bspec: 50422 HSD: 14010260002
 	 */
-	if (IS_DISPLAY_VER(i915, 12, 14) && crtc_state->has_sel_update) {
+	if (IS_DISPLAY_VER(i915, 12, 14) && crtc_state->has_sel_update &&
+	    !crtc_state->has_panel_replay) {
 		plane_state->no_fbc_reason = "PSR2 enabled";
 		return 0;
 	}
@@ -1258,7 +1259,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	/* Wa_14016291713 */
 	if ((IS_DISPLAY_VER(i915, 12, 13) ||
 	     IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0)) &&
-	    crtc_state->has_psr) {
+	    crtc_state->has_psr && !crtc_state->has_panel_replay) {
 		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
 		return 0;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index a32cb4d25bc7..0bfd352d9f14 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -524,7 +524,8 @@ void hsw_write_infoframe(struct intel_encoder *encoder,
 			       0);
 
 	/* Wa_14013475917 */
-	if (!(IS_DISPLAY_VER(dev_priv, 13, 14) && crtc_state->has_psr && type == DP_SDP_VSC))
+	if (!(IS_DISPLAY_VER(dev_priv, 13, 14) && crtc_state->has_psr &&
+	      !crtc_state->has_panel_replay && type == DP_SDP_VSC))
 		val |= hsw_infoframe_enable(type);
 
 	if (type == DP_SDP_VSC)
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index bba1063ccd2e..3879bdbad6fd 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1948,13 +1948,15 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 		 * All supported adlp panels have 1-based X granularity, this may
 		 * cause issues if non-supported panels are used.
 		 */
-		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
-		    IS_ALDERLAKE_P(dev_priv))
+		if (!intel_dp->psr.panel_replay_enabled &&
+		    (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
+		     IS_ALDERLAKE_P(dev_priv)))
 			intel_de_rmw(dev_priv, hsw_chicken_trans_reg(dev_priv, cpu_transcoder),
 				     0, ADLP_1_BASED_X_GRANULARITY);
 
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
-		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
+		if (!intel_dp->psr.panel_replay_enabled &&
+		    IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv,
 				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder), 0,
 				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
@@ -2130,7 +2132,8 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 
 	if (intel_dp->psr.sel_update_enabled) {
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
-		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
+		if (!intel_dp->psr.panel_replay_enabled &&
+		    IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv,
 				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder),
 				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
@@ -2616,8 +2619,9 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		goto skip_sel_fetch_set_loop;
 
 	/* Wa_14014971492 */
-	if ((IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
-	     IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
+	if (!crtc_state->has_panel_replay &&
+	    ((IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
+	      IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv))) &&
 	    crtc_state->splitter.enable)
 		crtc_state->psr2_su_area.y1 = 0;
 
-- 
2.34.1

