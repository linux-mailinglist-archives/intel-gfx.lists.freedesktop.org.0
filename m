Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C0D49DE09
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 10:33:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2239510EB00;
	Thu, 27 Jan 2022 09:33:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA5D210EF7B
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 09:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643276006; x=1674812006;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ib7ANNVdr6RkwRiApjs9jfCNGnRfIXsu8+O3dv1AZ8I=;
 b=EGvB21znAQalic1b3Tgu4CM03rlzGgEtIw89UFfZAdUX4KaLyEaWhpy3
 d10EcW1u8BnZfJimHdaybdX4yzPdM8nU3dimwD6jlgR7YN2hFz0h+wKV6
 oO7i9RjTizKwQkkjGgz1Qrs50aaZ4B986udnkPCFW+xCDb4Vmd3nR1BfW
 QlY6PxJtzWXaJ1Fv8CS8khYZfZTTVXgjP08wwkWfFZ6uTOhs+dBEL/AIZ
 1LEnq4QP5Rm0bkSYck2R/2GKbvDbeR7DAJWKx0/Fg7o7NquI8d/mvJ4sp
 rkbuXlKWdl9lO7PfSgT4aF3XUjX47Co54TIHV+GAAHLMGKY7zVTzaL5o1 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="246578219"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="246578219"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 01:33:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="581412952"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga008.fm.intel.com with SMTP; 27 Jan 2022 01:33:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Jan 2022 11:33:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jan 2022 11:32:55 +0200
Message-Id: <20220127093303.17309-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
References: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/14] drm/i915: Move PCH transcoder M/N setup
 into the PCH code
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

Do the PCH transcoder M/N setup next to where all the other
PCH transcoder stuff is programmed.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |  1 +
 drivers/gpu/drm/i915/display/intel_display.c  | 92 ++++---------------
 drivers/gpu/drm/i915/display/intel_display.h  | 14 ++-
 .../gpu/drm/i915/display/intel_pch_display.c  | 48 ++++++++++
 .../gpu/drm/i915/display/intel_pch_display.h  |  6 ++
 5 files changed, 83 insertions(+), 78 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index da2b59d990bb..a08936d8c0e7 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -18,6 +18,7 @@
 #include "intel_fifo_underrun.h"
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
+#include "intel_pch_display.h"
 #include "intel_pps.h"
 #include "vlv_sideband.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3b40a0b0b79e..602ea6d15628 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -118,10 +118,6 @@
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state);
-static void intel_pch_transcoder_set_m1_n1(struct intel_crtc *crtc,
-					   const struct intel_link_m_n *m_n);
-static void intel_pch_transcoder_set_m2_n2(struct intel_crtc *crtc,
-					   const struct intel_link_m_n *m_n);
 static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state);
 static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state);
 static void hsw_set_transconf(const struct intel_crtc_state *crtc_state);
@@ -1837,26 +1833,18 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
 	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, false);
 
-	if (intel_crtc_has_dp_encoder(new_crtc_state)) {
-		if (new_crtc_state->has_pch_encoder) {
-			intel_pch_transcoder_set_m1_n1(crtc,
-						       &new_crtc_state->dp_m_n);
-			intel_pch_transcoder_set_m2_n2(crtc,
-						       &new_crtc_state->dp_m2_n2);
-		} else {
-			intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
-						       &new_crtc_state->dp_m_n);
-			intel_cpu_transcoder_set_m2_n2(crtc, cpu_transcoder,
-						       &new_crtc_state->dp_m2_n2);
-		}
-	}
-
-	intel_set_transcoder_timings(new_crtc_state);
-	intel_set_pipe_src_size(new_crtc_state);
-
-	if (new_crtc_state->has_pch_encoder)
+	if (new_crtc_state->has_pch_encoder) {
 		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
 					       &new_crtc_state->fdi_m_n);
+	} else if (intel_crtc_has_dp_encoder(new_crtc_state)) {
+		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
+					       &new_crtc_state->dp_m_n);
+		intel_cpu_transcoder_set_m2_n2(crtc, cpu_transcoder,
+					       &new_crtc_state->dp_m2_n2);
+	}
+
+	intel_set_transcoder_timings(new_crtc_state);
+	intel_set_pipe_src_size(new_crtc_state);
 
 	ilk_set_pipeconf(new_crtc_state);
 
@@ -3133,10 +3121,10 @@ static void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
 	}
 }
 
-static void intel_set_m_n(struct drm_i915_private *i915,
-			  const struct intel_link_m_n *m_n,
-			  i915_reg_t data_m_reg, i915_reg_t data_n_reg,
-			  i915_reg_t link_m_reg, i915_reg_t link_n_reg)
+void intel_set_m_n(struct drm_i915_private *i915,
+		   const struct intel_link_m_n *m_n,
+		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
+		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
 {
 	intel_de_write(i915, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
 	intel_de_write(i915, data_n_reg, m_n->data_n);
@@ -3144,28 +3132,6 @@ static void intel_set_m_n(struct drm_i915_private *i915,
 	intel_de_write(i915, link_n_reg, m_n->link_n);
 }
 
-static void intel_pch_transcoder_set_m1_n1(struct intel_crtc *crtc,
-					   const struct intel_link_m_n *m_n)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum pipe pipe = crtc->pipe;
-
-	intel_set_m_n(dev_priv, m_n,
-		      PCH_TRANS_DATA_M1(pipe), PCH_TRANS_DATA_N1(pipe),
-		      PCH_TRANS_LINK_M1(pipe), PCH_TRANS_LINK_N1(pipe));
-}
-
-static void intel_pch_transcoder_set_m2_n2(struct intel_crtc *crtc,
-					   const struct intel_link_m_n *m_n)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum pipe pipe = crtc->pipe;
-
-	intel_set_m_n(dev_priv, m_n,
-		      PCH_TRANS_DATA_M2(pipe), PCH_TRANS_DATA_N2(pipe),
-		      PCH_TRANS_LINK_M2(pipe), PCH_TRANS_LINK_N2(pipe));
-}
-
 static bool transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
 				 enum transcoder cpu_transcoder)
 {
@@ -3861,10 +3827,10 @@ int ilk_get_lanes_required(int target_clock, int link_bw, int bpp)
 	return DIV_ROUND_UP(bps, link_bw * 8);
 }
 
-static void intel_get_m_n(struct drm_i915_private *i915,
-			  struct intel_link_m_n *m_n,
-			  i915_reg_t data_m_reg, i915_reg_t data_n_reg,
-			  i915_reg_t link_m_reg, i915_reg_t link_n_reg)
+void intel_get_m_n(struct drm_i915_private *i915,
+		   struct intel_link_m_n *m_n,
+		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
+		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
 {
 	m_n->link_m = intel_de_read(i915, link_m_reg) & DATA_LINK_M_N_MASK;
 	m_n->link_n = intel_de_read(i915, link_n_reg) & DATA_LINK_M_N_MASK;
@@ -3873,28 +3839,6 @@ static void intel_get_m_n(struct drm_i915_private *i915,
 	m_n->tu = REG_FIELD_GET(TU_SIZE_MASK, intel_de_read(i915, data_m_reg)) + 1;
 }
 
-void intel_pch_transcoder_get_m1_n1(struct intel_crtc *crtc,
-				    struct intel_link_m_n *m_n)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum pipe pipe = crtc->pipe;
-
-	intel_get_m_n(dev_priv, m_n,
-		      PCH_TRANS_DATA_M1(pipe), PCH_TRANS_DATA_N1(pipe),
-		      PCH_TRANS_LINK_M1(pipe), PCH_TRANS_LINK_N1(pipe));
-}
-
-void intel_pch_transcoder_get_m2_n2(struct intel_crtc *crtc,
-				    struct intel_link_m_n *m_n)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum pipe pipe = crtc->pipe;
-
-	intel_get_m_n(dev_priv, m_n,
-		      PCH_TRANS_DATA_M2(pipe), PCH_TRANS_DATA_N2(pipe),
-		      PCH_TRANS_LINK_M2(pipe), PCH_TRANS_LINK_N2(pipe));
-}
-
 void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
 				    enum transcoder cpu_transcoder,
 				    struct intel_link_m_n *m_n)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 090534eb4535..afa312e11624 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -27,6 +27,8 @@
 
 #include <drm/drm_util.h>
 
+#include "i915_reg_defs.h"
+
 enum drm_scaling_filter;
 struct dpll;
 struct drm_connector;
@@ -553,6 +555,14 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 				bool bigjoiner);
 enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
 bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
+void intel_set_m_n(struct drm_i915_private *i915,
+		   const struct intel_link_m_n *m_n,
+		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
+		   i915_reg_t link_m_reg, i915_reg_t link_n_reg);
+void intel_get_m_n(struct drm_i915_private *i915,
+		   struct intel_link_m_n *m_n,
+		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
+		   i915_reg_t link_m_reg, i915_reg_t link_n_reg);
 void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
 				    enum transcoder cpu_transcoder,
 				    const struct intel_link_m_n *m_n);
@@ -565,10 +575,6 @@ void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
 void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 				    enum transcoder cpu_transcoder,
 				    struct intel_link_m_n *m_n);
-void intel_pch_transcoder_get_m1_n1(struct intel_crtc *crtc,
-				    struct intel_link_m_n *m_n);
-void intel_pch_transcoder_get_m2_n2(struct intel_crtc *crtc,
-				    struct intel_link_m_n *m_n);
 
 void intel_plane_destroy(struct drm_plane *plane);
 void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index dd010be534a2..9192769e3337 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -88,6 +88,50 @@ static void assert_pch_transcoder_disabled(struct drm_i915_private *dev_priv,
 			pipe_name(pipe));
 }
 
+static void intel_pch_transcoder_set_m1_n1(struct intel_crtc *crtc,
+					   const struct intel_link_m_n *m_n)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+
+	intel_set_m_n(dev_priv, m_n,
+		      PCH_TRANS_DATA_M1(pipe), PCH_TRANS_DATA_N1(pipe),
+		      PCH_TRANS_LINK_M1(pipe), PCH_TRANS_LINK_N1(pipe));
+}
+
+static void intel_pch_transcoder_set_m2_n2(struct intel_crtc *crtc,
+					   const struct intel_link_m_n *m_n)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+
+	intel_set_m_n(dev_priv, m_n,
+		      PCH_TRANS_DATA_M2(pipe), PCH_TRANS_DATA_N2(pipe),
+		      PCH_TRANS_LINK_M2(pipe), PCH_TRANS_LINK_N2(pipe));
+}
+
+void intel_pch_transcoder_get_m1_n1(struct intel_crtc *crtc,
+				    struct intel_link_m_n *m_n)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+
+	intel_get_m_n(dev_priv, m_n,
+		      PCH_TRANS_DATA_M1(pipe), PCH_TRANS_DATA_N1(pipe),
+		      PCH_TRANS_LINK_M1(pipe), PCH_TRANS_LINK_N1(pipe));
+}
+
+void intel_pch_transcoder_get_m2_n2(struct intel_crtc *crtc,
+				    struct intel_link_m_n *m_n)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+
+	intel_get_m_n(dev_priv, m_n,
+		      PCH_TRANS_DATA_M2(pipe), PCH_TRANS_DATA_N2(pipe),
+		      PCH_TRANS_LINK_M2(pipe), PCH_TRANS_LINK_N2(pipe));
+}
+
 static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_state,
 					   enum pipe pch_transcoder)
 {
@@ -278,6 +322,10 @@ void ilk_pch_enable(struct intel_atomic_state *state,
 
 	/* set transcoder timing, panel must allow it */
 	assert_pps_unlocked(dev_priv, pipe);
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		intel_pch_transcoder_set_m1_n1(crtc, &crtc_state->dp_m_n);
+		intel_pch_transcoder_set_m2_n2(crtc, &crtc_state->dp_m2_n2);
+	}
 	ilk_pch_transcoder_set_timings(crtc_state, pipe);
 
 	intel_fdi_normal_train(crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.h b/drivers/gpu/drm/i915/display/intel_pch_display.h
index f915fa4241d7..749473d99320 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.h
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.h
@@ -9,6 +9,7 @@
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_link_m_n;
 
 void ilk_pch_pre_enable(struct intel_atomic_state *state,
 			struct intel_crtc *crtc);
@@ -26,4 +27,9 @@ void lpt_pch_disable(struct intel_atomic_state *state,
 		     struct intel_crtc *crtc);
 void lpt_pch_get_config(struct intel_crtc_state *crtc_state);
 
+void intel_pch_transcoder_get_m1_n1(struct intel_crtc *crtc,
+				    struct intel_link_m_n *m_n);
+void intel_pch_transcoder_get_m2_n2(struct intel_crtc *crtc,
+				    struct intel_link_m_n *m_n);
+
 #endif
-- 
2.34.1

