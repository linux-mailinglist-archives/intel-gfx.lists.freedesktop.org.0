Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBD449F76D
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 11:38:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12AC510EE5B;
	Fri, 28 Jan 2022 10:38:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BEA210EDCA
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 10:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643366304; x=1674902304;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=4Y+qhfp6MVMKQvfQD1Nq5etNu/5nwLgPGV4gJyT51uM=;
 b=d4eJZA+NAZNGxzJHxpu9Sn6yrtC7Srml/3yCUy9CWqGwcXDAkETgoCvD
 2dkRvM571uOfM7eEZxW0enn/zZaoMblHe8A38CWjc37Ly1c0YLiBBZtM+
 l3vMdvcHqKBhc6KqH40X6uBWnoh86oLMnpoGBU3wnnDdn6a34+W2jVUNW
 FP/r/6iWV5ofzHJphpcpAQWSlRR2s5OQnO51vkH6EbE1gaztAjGcDTnM3
 FNKuFhQMneo/XmBg2WwsyUojoHBP5Q7NMQtAbg5oldxSmDOb2Kq1mbKAe
 Na6Kt/YACAeQf3CyMpZdBbon2Sa/BjWDphKwXsdZ7WKSgun9kChpAF7E8 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="310411636"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="310411636"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 02:38:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="480694149"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga006.jf.intel.com with SMTP; 28 Jan 2022 02:38:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Jan 2022 12:38:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 12:37:48 +0200
Message-Id: <20220128103757.22461-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
References: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/17] drm/i915: Move M/N setup to a more
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
index 360f62665b54..354b08d6f81d 100644
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
index b613272a777a..bd1b5de1d3d4 100644
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
index 30edb9117443..6b6eab507d30 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -473,7 +473,6 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	struct intel_digital_port *dig_port = intel_mst->primary;
 	struct intel_dp *intel_dp = &dig_port->dp;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	int ret;
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

