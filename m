Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F28183276F
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 11:11:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0C0610E9CE;
	Fri, 19 Jan 2024 10:11:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B63D510E9E1
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jan 2024 10:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705659080; x=1737195080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9DvoO/y3LmFBTGwsuRZ/itSL53oGNOvjpYIqLEhMW0w=;
 b=BAPQ1SjBJ1NEODnM8H5J9YO5VQvXDxpfWSY4yyXPX5TucF1stIECOR5T
 UjkQy9NL2vzXC6VWPzsxzKZ3JGHym5vfH1qBo7kw5SMvyXnJ7P6qVdZUp
 +gqD0cOYEGmOqD9YVfmNu4mRpWb569LeyPBX7u+V6EvlgOAnHVPVBtRCE
 w/mURll1JurXhDEjYrfHiySXvRCBUOjcIchqg/22Jw3cALWIxTIy86cpp
 Zuk5hYNfnOU/Bol2BqMc8EG2lgiFDtyGv15IiRu/sQfHgGlKVsh7SmGS6
 K4LcnaTj8Hj1HZbYSuy6u+44PEM0PDT/YAA6M2x2ITR0Zhip4beUvFw0q Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="14070889"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208";a="14070889"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:11:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; 
   d="scan'208";a="563409"
Received: from randiapp-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.39.12])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:11:19 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 18/21] drm/i915/psr: Do not apply workarounds in case of
 panel replay
Date: Fri, 19 Jan 2024 12:10:21 +0200
Message-Id: <20240119101024.1060812-19-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240119101024.1060812-1-jouni.hogander@intel.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
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
index 647dd1b56073..c5a1395428cd 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1235,7 +1235,8 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	 * Recommendation is to keep this combination disabled
 	 * Bspec: 50422 HSD: 14010260002
 	 */
-	if (IS_DISPLAY_VER(i915, 12, 14) && crtc_state->has_sel_update) {
+	if (IS_DISPLAY_VER(i915, 12, 14) && crtc_state->has_sel_update &&
+	    !crtc_state->has_panel_replay) {
 		plane_state->no_fbc_reason = "PSR2 enabled";
 		return 0;
 	}
@@ -1243,7 +1244,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	/* Wa_14016291713 */
 	if ((IS_DISPLAY_VER(i915, 12, 13) ||
 	     IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0)) &&
-	    crtc_state->has_psr) {
+	    crtc_state->has_psr && !crtc_state->has_panel_replay) {
 		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
 		return 0;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 7020e5806109..7aabb2f745d8 100644
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
index 01785587adbb..d28a3a1e945b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1694,13 +1694,15 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
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
@@ -1879,7 +1881,8 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 
 	if (intel_dp->psr.sel_update_enabled) {
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
-		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
+		if (!intel_dp->psr.panel_replay_enabled &&
+		    IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv,
 				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder),
 				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
@@ -2321,8 +2324,9 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
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

