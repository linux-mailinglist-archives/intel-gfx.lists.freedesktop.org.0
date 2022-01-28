Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C9E49F76A
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 11:38:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BB8D10EDD2;
	Fri, 28 Jan 2022 10:38:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FD0310EDCA
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 10:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643366292; x=1674902292;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=PIM2XfW54U8FVuewl3ru3Ko7PhLmIQgSaklpxZTfIXo=;
 b=XxzsP+j3kPeC5LeXO4rs9Yry1HSEMCg1Km0ha2D749P88gRHfn8sDZKW
 yk/+xIICHNx8JH1FE8RNJsjDU7V3gHHT5Tgs6wcdCYcgKEBJH7LKtvf+8
 RAKzyhE7d2oASF4o8B3WrxdELJqVByY9BZahxODsqtcVFGCkxjabouOEN
 1+4u2QNTuVF7apMuQO8OsbHF0BP0eLQg9boCYsj/9Kik3jq6k2Sk5d5RI
 5Ww/tNZjDMHo/YH6+AIRsSbv3vzzFvz+6fgtThsT9bUUCXjhV9wcHfkpm
 frDLkpk+Al6lyqzYpZl7IIfiY1rQORNIauHK0vetZiReh40wjNLBArOVR w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="271558269"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="271558269"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 02:38:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="533467636"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga007.fm.intel.com with SMTP; 28 Jan 2022 02:38:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Jan 2022 12:38:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 12:37:44 +0200
Message-Id: <20220128103757.22461-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
References: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/17] drm/i915: Split
 intel_cpu_transcoder_set_m_n() into M1/N1 vs. M2/N2 variants
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

Make things a bit more explicit by splitting
intel_cpu_transcoder_set_m_n() into separate variants for M1/N1 vs.
M2/N2. Makes the DRRS M/N programming at least more obvious.

Note that for the MST and DRRS cases we don't need to call the
M2/N2 variant at all since the transcoders that support those
do not have the M2/N2 registers.

Same could be said for i9xx_crtc_enable() but I want to do a
higher level code sharing between that valleyview_crtc_enable()
later in which case we do need the M2/N2 variant. This is also
why I keep the transcoder_has_m2_n2() in intel_cpu_transcoder_set_m2_n2()
so the caller doesn't have necessarily care what the chosen
transcoder supports.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  7 +-
 drivers/gpu/drm/i915/display/intel_display.c | 75 +++++++++++---------
 drivers/gpu/drm/i915/display/intel_display.h |  7 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  5 +-
 drivers/gpu/drm/i915/display/intel_drrs.c    |  5 +-
 5 files changed, 54 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 2eb868eaab8f..dead4b72719f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2510,9 +2510,10 @@ static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
 		intel_ddi_set_dp_msa(crtc_state, conn_state);
 
-		intel_cpu_transcoder_set_m_n(crtc_state,
-					     &crtc_state->dp_m_n,
-					     &crtc_state->dp_m2_n2);
+		intel_cpu_transcoder_set_m1_n1(crtc_state,
+					       &crtc_state->dp_m_n);
+		intel_cpu_transcoder_set_m2_n2(crtc_state,
+					       &crtc_state->dp_m2_n2);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 25681197fd41..13355e8778f8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1835,21 +1835,23 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, false);
 
 	if (intel_crtc_has_dp_encoder(new_crtc_state)) {
-		if (new_crtc_state->has_pch_encoder)
+		if (new_crtc_state->has_pch_encoder) {
 			intel_pch_transcoder_set_m_n(new_crtc_state,
 						     &new_crtc_state->dp_m_n);
-		else
-			intel_cpu_transcoder_set_m_n(new_crtc_state,
-						     &new_crtc_state->dp_m_n,
-						     &new_crtc_state->dp_m2_n2);
+		} else {
+			intel_cpu_transcoder_set_m1_n1(new_crtc_state,
+						       &new_crtc_state->dp_m_n);
+			intel_cpu_transcoder_set_m2_n2(new_crtc_state,
+						       &new_crtc_state->dp_m2_n2);
+		}
 	}
 
 	intel_set_transcoder_timings(new_crtc_state);
 	intel_set_pipe_src_size(new_crtc_state);
 
 	if (new_crtc_state->has_pch_encoder)
-		intel_cpu_transcoder_set_m_n(new_crtc_state,
-					     &new_crtc_state->fdi_m_n, NULL);
+		intel_cpu_transcoder_set_m1_n1(new_crtc_state,
+					       &new_crtc_state->fdi_m_n);
 
 	ilk_set_pipeconf(new_crtc_state);
 
@@ -2015,8 +2017,8 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 			       crtc_state->pixel_multiplier - 1);
 
 	if (crtc_state->has_pch_encoder)
-		intel_cpu_transcoder_set_m_n(crtc_state,
-					     &crtc_state->fdi_m_n, NULL);
+		intel_cpu_transcoder_set_m1_n1(crtc_state,
+					       &crtc_state->fdi_m_n);
 
 	hsw_set_frame_start_delay(crtc_state);
 
@@ -2455,10 +2457,12 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
 	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
 		return;
 
-	if (intel_crtc_has_dp_encoder(new_crtc_state))
-		intel_cpu_transcoder_set_m_n(new_crtc_state,
-					     &new_crtc_state->dp_m_n,
-					     &new_crtc_state->dp_m2_n2);
+	if (intel_crtc_has_dp_encoder(new_crtc_state)) {
+		intel_cpu_transcoder_set_m1_n1(new_crtc_state,
+					       &new_crtc_state->dp_m_n);
+		intel_cpu_transcoder_set_m2_n2(new_crtc_state,
+					       &new_crtc_state->dp_m2_n2);
+	}
 
 	intel_set_transcoder_timings(new_crtc_state);
 	intel_set_pipe_src_size(new_crtc_state);
@@ -2509,10 +2513,12 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
 		return;
 
-	if (intel_crtc_has_dp_encoder(new_crtc_state))
-		intel_cpu_transcoder_set_m_n(new_crtc_state,
-					     &new_crtc_state->dp_m_n,
-					     &new_crtc_state->dp_m2_n2);
+	if (intel_crtc_has_dp_encoder(new_crtc_state)) {
+		intel_cpu_transcoder_set_m1_n1(new_crtc_state,
+					       &new_crtc_state->dp_m_n);
+		intel_cpu_transcoder_set_m2_n2(new_crtc_state,
+					       &new_crtc_state->dp_m2_n2);
+	}
 
 	intel_set_transcoder_timings(new_crtc_state);
 	intel_set_pipe_src_size(new_crtc_state);
@@ -3159,34 +3165,37 @@ static bool transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
 	return DISPLAY_VER(dev_priv) == 7 || IS_CHERRYVIEW(dev_priv);
 }
 
-void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *crtc_state,
-				  const struct intel_link_m_n *m_n,
-				  const struct intel_link_m_n *m2_n2)
+void intel_cpu_transcoder_set_m1_n1(const struct intel_crtc_state *crtc_state,
+				    const struct intel_link_m_n *m_n)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	enum transcoder transcoder = crtc_state->cpu_transcoder;
 
-	if (DISPLAY_VER(dev_priv) >= 5) {
+	if (DISPLAY_VER(dev_priv) >= 5)
 		intel_set_m_n(dev_priv, m_n,
 			      PIPE_DATA_M1(transcoder), PIPE_DATA_N1(transcoder),
 			      PIPE_LINK_M1(transcoder), PIPE_LINK_N1(transcoder));
-		/*
-		 *  M2_N2 registers are set only if DRRS is supported
-		 * (to make sure the registers are not unnecessarily accessed).
-		 */
-		if (m2_n2 && crtc_state->has_drrs &&
-		    transcoder_has_m2_n2(dev_priv, transcoder)) {
-			intel_set_m_n(dev_priv, m2_n2,
-				      PIPE_DATA_M2(transcoder), PIPE_DATA_N2(transcoder),
-				      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
-		}
-	} else {
+	else
 		intel_set_m_n(dev_priv, m_n,
 			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
 			      PIPE_LINK_M_G4X(pipe), PIPE_LINK_N_G4X(pipe));
-	}
+}
+
+void intel_cpu_transcoder_set_m2_n2(const struct intel_crtc_state *crtc_state,
+				    const struct intel_link_m_n *m_n)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum transcoder transcoder = crtc_state->cpu_transcoder;
+
+	if (!transcoder_has_m2_n2(dev_priv, transcoder))
+		return;
+
+	intel_set_m_n(dev_priv, m_n,
+		      PIPE_DATA_M2(transcoder), PIPE_DATA_N2(transcoder),
+		      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
 }
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 2747a7f2c6cd..036e28581019 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -604,9 +604,10 @@ bool intel_fuzzy_clock_check(int clock1, int clock2);
 
 void intel_display_prepare_reset(struct drm_i915_private *dev_priv);
 void intel_display_finish_reset(struct drm_i915_private *dev_priv);
-void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *crtc_state,
-				  const struct intel_link_m_n *m_n,
-				  const struct intel_link_m_n *m2_n2);
+void intel_cpu_transcoder_set_m1_n1(const struct intel_crtc_state *crtc_state,
+				    const struct intel_link_m_n *m_n);
+void intel_cpu_transcoder_set_m2_n2(const struct intel_crtc_state *crtc_state,
+				    const struct intel_link_m_n *m_n);
 void intel_cpu_transcoder_get_m_n(struct intel_crtc *crtc,
 				  enum transcoder cpu_transcoder,
 				  struct intel_link_m_n *m_n,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 7031bd786822..4e8d65fa6086 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -523,9 +523,8 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 
 	intel_ddi_set_dp_msa(pipe_config, conn_state);
 
-	intel_cpu_transcoder_set_m_n(pipe_config,
-				     &pipe_config->dp_m_n,
-				     &pipe_config->dp_m2_n2);
+	intel_cpu_transcoder_set_m1_n1(pipe_config,
+				       &pipe_config->dp_m_n);
 }
 
 static void intel_mst_enable_dp(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index c978badbc82f..a911066c7809 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -115,9 +115,8 @@ static void
 intel_drrs_set_refresh_rate_m_n(const struct intel_crtc_state *crtc_state,
 				enum drrs_refresh_rate_type refresh_type)
 {
-	intel_cpu_transcoder_set_m_n(crtc_state, refresh_type == DRRS_LOW_RR ?
-				     &crtc_state->dp_m2_n2 : &crtc_state->dp_m_n,
-				     NULL);
+	intel_cpu_transcoder_set_m1_n1(crtc_state, refresh_type == DRRS_LOW_RR ?
+				       &crtc_state->dp_m2_n2 : &crtc_state->dp_m_n);
 }
 
 static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
-- 
2.34.1

