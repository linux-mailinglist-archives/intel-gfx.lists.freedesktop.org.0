Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB53A7E0AA4
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 22:13:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3509410EAD6;
	Fri,  3 Nov 2023 21:13:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63A6810EACF;
 Fri,  3 Nov 2023 21:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699045988; x=1730581988;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lg2+zbYkfkhVL4UtIhMtMA8kWDusWYKL75u3Wp5gIH8=;
 b=G29SXdW6VOQb2T9i5JrcBvH9ImfHYL3uz9TZeeqNuzZZ5lCxCvIQphqN
 OjckyEa3qnHai2XhzvEmRpgNuC2BndiY1/PnaO4ERbEiNm9rEUqHCGhdO
 tHBcNNlq7TpK8u30dHJ4a/TDtmXOf3v/NiTZo5ZCtGSs1r8QwmN6FGwUP
 xzqNeUOLFjZpGie87t32bDNyqiD9hEfPx0KUxJ8h8Hkpwo0mr+lfFfsrL
 IenE+MQ0U6dmqPK/QMMpyAk+9/3mEA8ScdbDnAjBHuLlf1eheeTSrBCN7
 6GMgMVDsH60ynXEDKvVeCSFigLjw9V2Sdp4Eo0cFcJOHPYr+AZ+lesjrf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="379416743"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="379416743"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 14:13:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="790877376"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="790877376"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga008.jf.intel.com with ESMTP; 03 Nov 2023 14:13:05 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Sat,  4 Nov 2023 02:30:34 +0530
Message-Id: <20231103210035.3151502-6-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20231103210035.3151502-1-animesh.manna@intel.com>
References: <20231103210035.3151502-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 5/6] drm/i915/panelreplay: enable/disable
 panel replay
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TRANS_DP2_CTL register is programmed to enable panel replay from source
and sink is enabled through panel replay dpcd configuration address.

Bspec: 1407940617

v1: Initial version.
v2:
- Use pr_* flags instead psr_* flags. [Jouni]
- Remove intel_dp_is_edp check as edp1.5 also has panel replay. [Jouni]

v3: Cover letter updated and selective fetch condition check is added
before updating its bit in PSR2_MAN_TRK_CTL register. [Jouni]

v4: Selective fetch related PSR2_MAN_TRK_CTL programmming dropped. [Jouni]

v5: Added PSR2_MAN_TRK_CTL programming as needed for Continuous Full
Frame (CFF) update.

v6: Rebased on latest.

Note: Initial plan is to enable panel replay in  full-screen live active
frame update mode. In a incremental approach panel replay will be enabled
in selctive update mode if there is any gap in curent implementation.

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  7 ++-
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 63 ++++++++++++++-----
 3 files changed, 55 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 2e37708fecdd..c446d8ef210f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2717,10 +2717,15 @@ static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
 				    const struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
-	if (HAS_DP20(dev_priv))
+	if (HAS_DP20(dev_priv)) {
 		intel_dp_128b132b_sdp_crc16(enc_to_intel_dp(encoder),
 					    crtc_state);
+		if (crtc_state->has_panel_replay)
+			drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG,
+					   DP_PANEL_REPLAY_ENABLE);
+	}
 
 	if (DISPLAY_VER(dev_priv) >= 14)
 		mtl_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 7d46bece7e06..81a7c6efa4a8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1708,6 +1708,7 @@ struct intel_psr {
 	u16 su_y_granularity;
 	bool source_panel_replay_support;
 	bool sink_panel_replay_support;
+	bool panel_replay_enabled;
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
 	struct delayed_work dc3co_work;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e53a2217627a..8ed4684b4528 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -608,8 +608,11 @@ static void intel_psr_enable_sink(struct intel_dp *intel_dp)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u8 dpcd_val = DP_PSR_ENABLE;
 
-	/* Enable ALPM at sink for psr2 */
+	if (intel_dp->psr.panel_replay_enabled)
+		return;
+
 	if (intel_dp->psr.psr2_enabled) {
+		/* Enable ALPM at sink for psr2 */
 		drm_dp_dpcd_writeb(&intel_dp->aux, DP_RECEIVER_ALPM_CONFIG,
 				   DP_ALPM_ENABLE |
 				   DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE);
@@ -761,6 +764,17 @@ static int psr2_block_count(struct intel_dp *intel_dp)
 	return psr2_block_count_lines(intel_dp) / 4;
 }
 
+static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	intel_de_rmw(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
+		     0, ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME);
+
+	intel_de_rmw(dev_priv, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
+		     TRANS_DP2_PANEL_REPLAY_ENABLE);
+}
+
 static void hsw_activate_psr2(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -1325,18 +1339,23 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 		return;
 
 	intel_dp = &dig_port->dp;
-	if (!CAN_PSR(intel_dp))
+	if (!(CAN_PSR(intel_dp) || CAN_PANEL_REPLAY(intel_dp)))
 		return;
 
 	mutex_lock(&intel_dp->psr.lock);
 	if (!intel_dp->psr.enabled)
 		goto unlock;
 
-	/*
-	 * Not possible to read EDP_PSR/PSR2_CTL registers as it is
-	 * enabled/disabled because of frontbuffer tracking and others.
-	 */
-	pipe_config->has_psr = true;
+	if (intel_dp->psr.panel_replay_enabled) {
+		pipe_config->has_panel_replay = true;
+	} else {
+		/*
+		 * Not possible to read EDP_PSR/PSR2_CTL registers as it is
+		 * enabled/disabled because of frontbuffer tracking and others.
+		 */
+		pipe_config->has_psr = true;
+	}
+
 	pipe_config->has_psr2 = intel_dp->psr.psr2_enabled;
 	pipe_config->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
 
@@ -1373,8 +1392,10 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
 
 	lockdep_assert_held(&intel_dp->psr.lock);
 
-	/* psr1 and psr2 are mutually exclusive.*/
-	if (intel_dp->psr.psr2_enabled)
+	/* psr1, psr2 and panel-replay are mutually exclusive.*/
+	if (intel_dp->psr.panel_replay_enabled)
+		dg2_activate_panel_replay(intel_dp);
+	else if (intel_dp->psr.psr2_enabled)
 		hsw_activate_psr2(intel_dp);
 	else
 		hsw_activate_psr1(intel_dp);
@@ -1554,6 +1575,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.enabled);
 
 	intel_dp->psr.psr2_enabled = crtc_state->has_psr2;
+	intel_dp->psr.panel_replay_enabled = crtc_state->has_panel_replay;
 	intel_dp->psr.busy_frontbuffer_bits = 0;
 	intel_dp->psr.pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
 	intel_dp->psr.transcoder = crtc_state->cpu_transcoder;
@@ -1569,8 +1591,12 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	if (!psr_interrupt_error_check(intel_dp))
 		return;
 
-	drm_dbg_kms(&dev_priv->drm, "Enabling PSR%s\n",
-		    intel_dp->psr.psr2_enabled ? "2" : "1");
+	if (intel_dp->psr.panel_replay_enabled)
+		drm_dbg_kms(&dev_priv->drm, "Enabling Panel Replay\n");
+	else
+		drm_dbg_kms(&dev_priv->drm, "Enabling PSR%s\n",
+			    intel_dp->psr.psr2_enabled ? "2" : "1");
+
 	intel_write_dp_vsc_sdp(encoder, crtc_state, &crtc_state->psr_vsc);
 	intel_snps_phy_update_psr_power_state(dev_priv, phy, true);
 	intel_psr_enable_sink(intel_dp);
@@ -1599,7 +1625,10 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
 		return;
 	}
 
-	if (intel_dp->psr.psr2_enabled) {
+	if (intel_dp->psr.panel_replay_enabled) {
+		intel_de_rmw(dev_priv, TRANS_DP2_CTL(intel_dp->psr.transcoder),
+			     TRANS_DP2_PANEL_REPLAY_ENABLE, 0);
+	} else if (intel_dp->psr.psr2_enabled) {
 		tgl_disallow_dc3co_on_psr2_exit(intel_dp);
 
 		val = intel_de_rmw(dev_priv, EDP_PSR2_CTL(cpu_transcoder),
@@ -1648,8 +1677,11 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	if (!intel_dp->psr.enabled)
 		return;
 
-	drm_dbg_kms(&dev_priv->drm, "Disabling PSR%s\n",
-		    intel_dp->psr.psr2_enabled ? "2" : "1");
+	if (intel_dp->psr.panel_replay_enabled)
+		drm_dbg_kms(&dev_priv->drm, "Disabling Panel Replay\n");
+	else
+		drm_dbg_kms(&dev_priv->drm, "Disabling PSR%s\n",
+			    intel_dp->psr.psr2_enabled ? "2" : "1");
 
 	intel_psr_exit(intel_dp);
 	intel_psr_wait_exit_locked(intel_dp);
@@ -1682,6 +1714,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 		drm_dp_dpcd_writeb(&intel_dp->aux, DP_RECEIVER_ALPM_CONFIG, 0);
 
 	intel_dp->psr.enabled = false;
+	intel_dp->psr.panel_replay_enabled = false;
 	intel_dp->psr.psr2_enabled = false;
 	intel_dp->psr.psr2_sel_fetch_enabled = false;
 	intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
@@ -2253,7 +2286,7 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder;
 
-	if (!crtc_state->has_psr)
+	if (!(crtc_state->has_psr || crtc_state->has_panel_replay))
 		return;
 
 	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
-- 
2.29.0

