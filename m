Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0C98B5775
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 14:08:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A85B4112BF1;
	Mon, 29 Apr 2024 12:08:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PFhI9ozs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4638F112B95
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 12:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714392506; x=1745928506;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ubrqydh3h4d4o1TPM66QLdv3mkFN0kg2m8qq0YC51y0=;
 b=PFhI9ozsDgDwNj0zttwXJkHH+mvkJ2jJsYBJ41/ZMTlrHKGIn8V71Qg0
 +sZN8xoJAqpiUKYMBpkEdFY9PN4kVz09ubNVCPcw9onVPA7MTN6co+2LL
 H61PzhCKaFmCM66Ox/sAH5Pf+Kft6NrkMsDYS4UBOppawdQ+AOeh0+4Mg
 v9zRqJwvplDD7dKCw0opYOLliU2sd/l4002xqfSXK0Bqt4Q9s/d2e7mV6
 ed3q5k9iypvUc+V2/7pyB/O4nsC5DlSR8LNXpCQCFacSwZBwbrxvUm8AC
 veDtqQ/WUwJOJ2pPLdJQCpU1Es+rOLW8Ro4K+QBpNdDF5SdD8XWlzUjQL A==;
X-CSE-ConnectionGUID: ue5Z/SO1TUGdvpgbsjjraQ==
X-CSE-MsgGUID: N2cUiQNdT6O9+vLEQdH4GA==
X-IronPort-AV: E=McAfee;i="6600,9927,11057"; a="21455449"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="21455449"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 05:08:26 -0700
X-CSE-ConnectionGUID: k6urAIl0Q2+tfvzS09pIOQ==
X-CSE-MsgGUID: cGD1AjW+TIeN2Zqp/4ZKKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="26074504"
Received: from domelchx-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.208.96])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 05:08:25 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 08/11] drm/i915/psr: Do not apply workarounds in case of
 panel replay
Date: Mon, 29 Apr 2024 15:07:52 +0300
Message-Id: <20240429120755.3990652-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240429120755.3990652-1-jouni.hogander@intel.com>
References: <20240429120755.3990652-1-jouni.hogander@intel.com>
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
index 984f13d8c0c8..50dd8eb9012e 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1251,7 +1251,8 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	 * Recommendation is to keep this combination disabled
 	 * Bspec: 50422 HSD: 14010260002
 	 */
-	if (IS_DISPLAY_VER(i915, 12, 14) && crtc_state->has_sel_update) {
+	if (IS_DISPLAY_VER(i915, 12, 14) && crtc_state->has_sel_update &&
+	    !crtc_state->has_panel_replay) {
 		plane_state->no_fbc_reason = "PSR2 enabled";
 		return 0;
 	}
@@ -1259,7 +1260,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	/* Wa_14016291713 */
 	if ((IS_DISPLAY_VER(i915, 12, 13) ||
 	     IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0)) &&
-	    crtc_state->has_psr) {
+	    crtc_state->has_psr && !crtc_state->has_panel_replay) {
 		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
 		return 0;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 5f6deceaf8ba..0faf2afa1c09 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -532,7 +532,8 @@ void hsw_write_infoframe(struct intel_encoder *encoder,
 			       0);
 
 	/* Wa_14013475917 */
-	if (!(IS_DISPLAY_VER(dev_priv, 13, 14) && crtc_state->has_psr && type == DP_SDP_VSC))
+	if (!(IS_DISPLAY_VER(dev_priv, 13, 14) && crtc_state->has_psr &&
+	      !crtc_state->has_panel_replay && type == DP_SDP_VSC))
 		val |= hsw_infoframe_enable(type);
 
 	if (type == DP_SDP_VSC)
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f1b7d17f7b27..ad97d58decb6 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1959,13 +1959,15 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
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
@@ -2141,7 +2143,8 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 
 	if (intel_dp->psr.sel_update_enabled) {
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
-		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
+		if (!intel_dp->psr.panel_replay_enabled &&
+		    IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv,
 				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder),
 				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
@@ -2627,8 +2630,9 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
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

