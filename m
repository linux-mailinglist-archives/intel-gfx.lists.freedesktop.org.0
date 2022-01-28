Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC9F49F76E
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 11:38:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72E3E10EE9B;
	Fri, 28 Jan 2022 10:38:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 784D010EDCA
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 10:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643366301; x=1674902301;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=SXBpWL7PkkwYE3W45kKgXrN6plbWfP7+bEA59t26Gag=;
 b=LEbbEjbP0968vcMMyOYmzZUEfDAeFglqDdTPrq/Qfr7RyJQzimtd4TfI
 MIzOaHxKb9fernFvXYSDHUYwiyJ4jF6ea9lb8quUemV7MjTg7TUnsMau/
 Ca4JVmJahLqoPFVSQYwLiWJxvG8686BRiQr4tFXAcSKsZu2pWgW8jM4YB
 LqbyEIJ5PJgqr+C4YE8qvQJy7SHZLpUNsWRpQY+/2dJgTPCinlgPAZYWf
 0P17YmUGTAiI8JaBrxl9BhDutFO0z40eCyT+MjPX9HE7zetu+7evNh0wu
 2mjjSJIlNNwLJjpZraRI3BDdtcGn2frCaYpA1yc6Zv2f6Ir6E8TZTYegP w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="245938017"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="245938017"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 02:38:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="521647158"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga007.jf.intel.com with SMTP; 28 Jan 2022 02:38:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Jan 2022 12:38:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 12:37:47 +0200
Message-Id: <20220128103757.22461-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
References: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/17] drm/i915: Move PCH transcoder M/N
 setup into the PCH code
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
PCH transcoder stuff is programmed. Matches the spec modeset
sequence better.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |  1 +
 drivers/gpu/drm/i915/display/intel_display.c  | 66 +++++--------------
 drivers/gpu/drm/i915/display/intel_display.h  | 12 +++-
 .../gpu/drm/i915/display/intel_pch_display.c  | 24 +++++++
 .../gpu/drm/i915/display/intel_pch_display.h  |  4 ++
 5 files changed, 57 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 07432f6b56ac..34c7640386b8 100644
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
index 0392803bb790..b613272a777a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -118,8 +118,6 @@
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state);
-static void intel_pch_transcoder_set_m_n(struct intel_crtc *crtc,
-					 const struct intel_link_m_n *m_n);
 static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state);
 static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state);
 static void hsw_set_transconf(const struct intel_crtc_state *crtc_state);
@@ -1835,23 +1833,18 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
 	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, false);
 
-	if (intel_crtc_has_dp_encoder(new_crtc_state)) {
-		if (new_crtc_state->has_pch_encoder) {
-			intel_pch_transcoder_set_m_n(crtc, &new_crtc_state->dp_m_n);
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
 
@@ -3131,10 +3124,10 @@ static void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
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
@@ -3142,17 +3135,6 @@ static void intel_set_m_n(struct drm_i915_private *i915,
 	intel_de_write(i915, link_n_reg, m_n->link_n);
 }
 
-static void intel_pch_transcoder_set_m_n(struct intel_crtc *crtc,
-					 const struct intel_link_m_n *m_n)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum pipe pipe = crtc->pipe;
-
-	intel_set_m_n(dev_priv, m_n,
-		      PCH_TRANS_DATA_M1(pipe), PCH_TRANS_DATA_N1(pipe),
-		      PCH_TRANS_LINK_M1(pipe), PCH_TRANS_LINK_N1(pipe));
-}
-
 static bool transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
 				 enum transcoder transcoder)
 {
@@ -3852,10 +3834,10 @@ int ilk_get_lanes_required(int target_clock, int link_bw, int bpp)
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
@@ -3864,18 +3846,6 @@ static void intel_get_m_n(struct drm_i915_private *i915,
 	m_n->tu = REG_FIELD_GET(TU_SIZE_MASK, intel_de_read(i915, data_m_reg)) + 1;
 }
 
-void intel_pch_transcoder_get_m_n(struct intel_crtc *crtc,
-				  struct intel_link_m_n *m_n)
-{
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	enum pipe pipe = crtc->pipe;
-
-	intel_get_m_n(dev_priv, m_n,
-		      PCH_TRANS_DATA_M1(pipe), PCH_TRANS_DATA_N1(pipe),
-		      PCH_TRANS_LINK_M1(pipe), PCH_TRANS_LINK_N1(pipe));
-}
-
 void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
 				    enum transcoder transcoder,
 				    struct intel_link_m_n *m_n)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index e8b41b67a366..c104e578bf5d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -27,6 +27,8 @@
 
 #include <drm/drm_util.h>
 
+#include "i915_reg_defs.h"
+
 enum drm_scaling_filter;
 struct dpll;
 struct drm_connector;
@@ -604,6 +606,14 @@ bool intel_fuzzy_clock_check(int clock1, int clock2);
 
 void intel_display_prepare_reset(struct drm_i915_private *dev_priv);
 void intel_display_finish_reset(struct drm_i915_private *dev_priv);
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
@@ -616,8 +626,6 @@ void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
 void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 				    enum transcoder cpu_transcoder,
 				    struct intel_link_m_n *m_n);
-void intel_pch_transcoder_get_m_n(struct intel_crtc *crtc,
-				  struct intel_link_m_n *m_n);
 void i9xx_crtc_clock_get(struct intel_crtc *crtc,
 			 struct intel_crtc_state *pipe_config);
 int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n *m_n);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index dd010be534a2..3bd96411f306 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -88,6 +88,28 @@ static void assert_pch_transcoder_disabled(struct drm_i915_private *dev_priv,
 			pipe_name(pipe));
 }
 
+static void intel_pch_transcoder_set_m_n(struct intel_crtc *crtc,
+					 const struct intel_link_m_n *m_n)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+
+	intel_set_m_n(dev_priv, m_n,
+		      PCH_TRANS_DATA_M1(pipe), PCH_TRANS_DATA_N1(pipe),
+		      PCH_TRANS_LINK_M1(pipe), PCH_TRANS_LINK_N1(pipe));
+}
+
+void intel_pch_transcoder_get_m_n(struct intel_crtc *crtc,
+				  struct intel_link_m_n *m_n)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+
+	intel_get_m_n(dev_priv, m_n,
+		      PCH_TRANS_DATA_M1(pipe), PCH_TRANS_DATA_N1(pipe),
+		      PCH_TRANS_LINK_M1(pipe), PCH_TRANS_LINK_N1(pipe));
+}
+
 static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_state,
 					   enum pipe pch_transcoder)
 {
@@ -278,6 +300,8 @@ void ilk_pch_enable(struct intel_atomic_state *state,
 
 	/* set transcoder timing, panel must allow it */
 	assert_pps_unlocked(dev_priv, pipe);
+	if (intel_crtc_has_dp_encoder(crtc_state))
+		intel_pch_transcoder_set_m_n(crtc, &crtc_state->dp_m_n);
 	ilk_pch_transcoder_set_timings(crtc_state, pipe);
 
 	intel_fdi_normal_train(crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.h b/drivers/gpu/drm/i915/display/intel_pch_display.h
index f915fa4241d7..9a317b361a96 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.h
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.h
@@ -9,6 +9,7 @@
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_link_m_n;
 
 void ilk_pch_pre_enable(struct intel_atomic_state *state,
 			struct intel_crtc *crtc);
@@ -26,4 +27,7 @@ void lpt_pch_disable(struct intel_atomic_state *state,
 		     struct intel_crtc *crtc);
 void lpt_pch_get_config(struct intel_crtc_state *crtc_state);
 
+void intel_pch_transcoder_get_m_n(struct intel_crtc *crtc,
+				  struct intel_link_m_n *m_n);
+
 #endif
-- 
2.34.1

