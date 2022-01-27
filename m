Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB14B49DE0C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 10:33:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11DD710EFC9;
	Thu, 27 Jan 2022 09:33:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B3BA10EF8E
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 09:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643276009; x=1674812009;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=krqkbpZ+GO3WPzs0pFDIpFiSFvZyuKX2Hdhs7a5EWSI=;
 b=YiRiSB7d4FdL9GPzTMhZJepJczXjA/ZYv2+kqx0vrI+9l9VRCzZ64+Od
 RfGhlcBxOfMno+qJ5hhY16WM+zPaCvF6WZU93G8YJI+xc9yLA/7lxp65q
 rZNqLMWDUWpe8QjCeZCV1AAiTHeAD0vvPUvGAtuxOfc99DkX7Bmj9eM0L
 XbTzlaQ0NzO48CyMEdtFWA9Gb4CMNJd2cMX3ExpxCYhVLOznwlMjiJQ0S
 UObFUU38+D9ft9GkWxkHqjceUysSXcTGQPlcGV1W+GQTmTa6z4M/sD8zY
 clHDYVejvYv3LfmI4YgT1J+x9gmNe7dksDWsNvKcJxJPCKR1UlVHl98Jw A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="310113689"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="310113689"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 01:33:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="625158775"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga002.fm.intel.com with SMTP; 27 Jan 2022 01:33:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Jan 2022 11:33:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jan 2022 11:32:56 +0200
Message-Id: <20220127093303.17309-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
References: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/14] drm/i915: Move M/N setup to a more
 logical place on ddi platforms
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Let's do the cpu transcoder M/N setup next to where we program
most other cpu transcoder timings/etc.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 10 +---------
 drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++++----
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  4 ----
 3 files changed, 11 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 9bc916d36bd2..b170ebb387f8 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2498,8 +2498,6 @@ static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
 				    const struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	if (DISPLAY_VER(dev_priv) >= 12)
 		tgl_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
@@ -2509,14 +2507,8 @@ static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	/* MST will call a setting of MSA after an allocating of Virtual Channel
 	 * from MST encoder pre_enable callback.
 	 */
-	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
+	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
 		intel_ddi_set_dp_msa(crtc_state, conn_state);
-
-		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
-					       &crtc_state->dp_m_n);
-		intel_cpu_transcoder_set_m2_n2(crtc, cpu_transcoder,
-					       &crtc_state->dp_m2_n2);
-	}
 }
 
 static void intel_ddi_pre_enable_hdmi(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 602ea6d15628..50dbc2116c14 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2003,16 +2003,22 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
+	if (crtc_state->has_pch_encoder) {
+		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
+					       &crtc_state->fdi_m_n);
+	} else if (intel_crtc_has_dp_encoder(crtc_state)) {
+		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
+					       &crtc_state->dp_m_n);
+		intel_cpu_transcoder_set_m2_n2(crtc, cpu_transcoder,
+					       &crtc_state->dp_m2_n2);
+	}
+
 	intel_set_transcoder_timings(crtc_state);
 
 	if (cpu_transcoder != TRANSCODER_EDP)
 		intel_de_write(dev_priv, PIPE_MULT(cpu_transcoder),
 			       crtc_state->pixel_multiplier - 1);
 
-	if (crtc_state->has_pch_encoder)
-		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
-					       &crtc_state->fdi_m_n);
-
 	hsw_set_frame_start_delay(crtc_state);
 
 	hsw_set_transconf(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 95f9a5c03a47..6b6eab507d30 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -472,7 +472,6 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
 	struct intel_digital_port *dig_port = intel_mst->primary;
 	struct intel_dp *intel_dp = &dig_port->dp;
-	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
@@ -523,9 +522,6 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 		intel_ddi_enable_pipe_clock(encoder, pipe_config);
 
 	intel_ddi_set_dp_msa(pipe_config, conn_state);
-
-	intel_cpu_transcoder_set_m1_n1(crtc, pipe_config->cpu_transcoder,
-				       &pipe_config->dp_m_n);
 }
 
 static void intel_mst_enable_dp(struct intel_atomic_state *state,
-- 
2.34.1

