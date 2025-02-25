Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9E8A446D4
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 17:49:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B68C310E765;
	Tue, 25 Feb 2025 16:49:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WkW58EUD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C82C10E76D;
 Tue, 25 Feb 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740502193; x=1772038193;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=06jQvgX80+5+veV6jqwFObPEfcSqdjzeGG5lRnecQ1k=;
 b=WkW58EUDra+pbYD47caj6iyxjk8OrfCNtA0eW8/4sAh//cjSIl4Y08HJ
 B9FVdZF1wdKW6tN8KbQ2oxaJaHctN2RPJvM+a77lE+Fqy9EAzb8kXAWMQ
 6w7A1bdbweTHMPlTPM/UOld/1MTmJM5OmaGxVeGigQ0PPxk7f8T1gNJMj
 CvzbwggwvZOpZZW0u8Obt+tTe3V739i/jzobsQ9FgUMHMUse3kRnHquFF
 8KgEVZ6fTwJtRFHfDJ0A7dEqNdiwYzJ98mlOSZ4+fyIJfH1P4ecrn49CF
 bBP2p2MmpqIhSc6qBNSlnzHhquBVlkJ21qan44J5T0pMKZaF5TV92M+zw g==;
X-CSE-ConnectionGUID: xGx+WrDERRq6OQmMep3/fQ==
X-CSE-MsgGUID: Kqxo2uHRROmWHqhTJNeQ1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="52741766"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="52741766"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:49:53 -0800
X-CSE-ConnectionGUID: gddgE123SHK4X2qCLkiRSw==
X-CSE-MsgGUID: blOQ45mkS6ahogw7KwWuZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121691812"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:49:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 07/12] drm/i915/display: convert the M/N functions to struct
 intel_display
Date: Tue, 25 Feb 2025 18:49:08 +0200
Message-Id: <8ac3472fe8e6647c0da57013c8bef575d8324a88.1740502116.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740502116.git.jani.nikula@intel.com>
References: <cover.1740502116.git.jani.nikula@intel.com>
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

Going forward, struct intel_display is the main display device data
pointer. Convert the functions to set/get M/N values and check for M2/N2
support to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 88 +++++++++----------
 drivers/gpu/drm/i915/display/intel_display.h  |  6 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     |  8 +-
 .../gpu/drm/i915/display/intel_pch_display.c  | 16 ++--
 5 files changed, 59 insertions(+), 62 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 46fb8e088c15..49a67d629c07 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2662,45 +2662,45 @@ void intel_zero_m_n(struct intel_link_m_n *m_n)
 	m_n->tu = 1;
 }
 
-void intel_set_m_n(struct drm_i915_private *i915,
+void intel_set_m_n(struct intel_display *display,
 		   const struct intel_link_m_n *m_n,
 		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
 		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
 {
-	intel_de_write(i915, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
-	intel_de_write(i915, data_n_reg, m_n->data_n);
-	intel_de_write(i915, link_m_reg, m_n->link_m);
+	intel_de_write(display, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
+	intel_de_write(display, data_n_reg, m_n->data_n);
+	intel_de_write(display, link_m_reg, m_n->link_m);
 	/*
 	 * On BDW+ writing LINK_N arms the double buffered update
 	 * of all the M/N registers, so it must be written last.
 	 */
-	intel_de_write(i915, link_n_reg, m_n->link_n);
+	intel_de_write(display, link_n_reg, m_n->link_n);
 }
 
-bool intel_cpu_transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
+bool intel_cpu_transcoder_has_m2_n2(struct intel_display *display,
 				    enum transcoder transcoder)
 {
-	if (IS_HASWELL(dev_priv))
+	if (display->platform.haswell)
 		return transcoder == TRANSCODER_EDP;
 
-	return IS_DISPLAY_VER(dev_priv, 5, 7) || IS_CHERRYVIEW(dev_priv);
+	return IS_DISPLAY_VER(display, 5, 7) || display->platform.cherryview;
 }
 
 void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
 				    enum transcoder transcoder,
 				    const struct intel_link_m_n *m_n)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	enum pipe pipe = crtc->pipe;
 
-	if (DISPLAY_VER(dev_priv) >= 5)
-		intel_set_m_n(dev_priv, m_n,
-			      PIPE_DATA_M1(dev_priv, transcoder),
-			      PIPE_DATA_N1(dev_priv, transcoder),
-			      PIPE_LINK_M1(dev_priv, transcoder),
-			      PIPE_LINK_N1(dev_priv, transcoder));
+	if (DISPLAY_VER(display) >= 5)
+		intel_set_m_n(display, m_n,
+			      PIPE_DATA_M1(display, transcoder),
+			      PIPE_DATA_N1(display, transcoder),
+			      PIPE_LINK_M1(display, transcoder),
+			      PIPE_LINK_N1(display, transcoder));
 	else
-		intel_set_m_n(dev_priv, m_n,
+		intel_set_m_n(display, m_n,
 			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
 			      PIPE_LINK_M_G4X(pipe), PIPE_LINK_N_G4X(pipe));
 }
@@ -2709,16 +2709,16 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
 				    enum transcoder transcoder,
 				    const struct intel_link_m_n *m_n)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 
-	if (!intel_cpu_transcoder_has_m2_n2(dev_priv, transcoder))
+	if (!intel_cpu_transcoder_has_m2_n2(display, transcoder))
 		return;
 
-	intel_set_m_n(dev_priv, m_n,
-		      PIPE_DATA_M2(dev_priv, transcoder),
-		      PIPE_DATA_N2(dev_priv, transcoder),
-		      PIPE_LINK_M2(dev_priv, transcoder),
-		      PIPE_LINK_N2(dev_priv, transcoder));
+	intel_set_m_n(display, m_n,
+		      PIPE_DATA_M2(display, transcoder),
+		      PIPE_DATA_N2(display, transcoder),
+		      PIPE_LINK_M2(display, transcoder),
+		      PIPE_LINK_N2(display, transcoder));
 }
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
@@ -3404,33 +3404,33 @@ int ilk_get_lanes_required(int target_clock, int link_bw, int bpp)
 	return DIV_ROUND_UP(bps, link_bw * 8);
 }
 
-void intel_get_m_n(struct drm_i915_private *i915,
+void intel_get_m_n(struct intel_display *display,
 		   struct intel_link_m_n *m_n,
 		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
 		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
 {
-	m_n->link_m = intel_de_read(i915, link_m_reg) & DATA_LINK_M_N_MASK;
-	m_n->link_n = intel_de_read(i915, link_n_reg) & DATA_LINK_M_N_MASK;
-	m_n->data_m = intel_de_read(i915, data_m_reg) & DATA_LINK_M_N_MASK;
-	m_n->data_n = intel_de_read(i915, data_n_reg) & DATA_LINK_M_N_MASK;
-	m_n->tu = REG_FIELD_GET(TU_SIZE_MASK, intel_de_read(i915, data_m_reg)) + 1;
+	m_n->link_m = intel_de_read(display, link_m_reg) & DATA_LINK_M_N_MASK;
+	m_n->link_n = intel_de_read(display, link_n_reg) & DATA_LINK_M_N_MASK;
+	m_n->data_m = intel_de_read(display, data_m_reg) & DATA_LINK_M_N_MASK;
+	m_n->data_n = intel_de_read(display, data_n_reg) & DATA_LINK_M_N_MASK;
+	m_n->tu = REG_FIELD_GET(TU_SIZE_MASK, intel_de_read(display, data_m_reg)) + 1;
 }
 
 void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
 				    enum transcoder transcoder,
 				    struct intel_link_m_n *m_n)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	enum pipe pipe = crtc->pipe;
 
-	if (DISPLAY_VER(dev_priv) >= 5)
-		intel_get_m_n(dev_priv, m_n,
-			      PIPE_DATA_M1(dev_priv, transcoder),
-			      PIPE_DATA_N1(dev_priv, transcoder),
-			      PIPE_LINK_M1(dev_priv, transcoder),
-			      PIPE_LINK_N1(dev_priv, transcoder));
+	if (DISPLAY_VER(display) >= 5)
+		intel_get_m_n(display, m_n,
+			      PIPE_DATA_M1(display, transcoder),
+			      PIPE_DATA_N1(display, transcoder),
+			      PIPE_LINK_M1(display, transcoder),
+			      PIPE_LINK_N1(display, transcoder));
 	else
-		intel_get_m_n(dev_priv, m_n,
+		intel_get_m_n(display, m_n,
 			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
 			      PIPE_LINK_M_G4X(pipe), PIPE_LINK_N_G4X(pipe));
 }
@@ -3439,16 +3439,16 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 				    enum transcoder transcoder,
 				    struct intel_link_m_n *m_n)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 
-	if (!intel_cpu_transcoder_has_m2_n2(dev_priv, transcoder))
+	if (!intel_cpu_transcoder_has_m2_n2(display, transcoder))
 		return;
 
-	intel_get_m_n(dev_priv, m_n,
-		      PIPE_DATA_M2(dev_priv, transcoder),
-		      PIPE_DATA_N2(dev_priv, transcoder),
-		      PIPE_LINK_M2(dev_priv, transcoder),
-		      PIPE_LINK_N2(dev_priv, transcoder));
+	intel_get_m_n(display, m_n,
+		      PIPE_DATA_M2(display, transcoder),
+		      PIPE_DATA_N2(display, transcoder),
+		      PIPE_LINK_M2(display, transcoder),
+		      PIPE_LINK_N2(display, transcoder));
 }
 
 static void ilk_get_pfit_config(struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 91f01e81a8f0..f8b8610b0280 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -481,15 +481,15 @@ int ilk_get_lanes_required(int target_clock, int link_bw, int bpp);
 bool intel_fuzzy_clock_check(int clock1, int clock2);
 
 void intel_zero_m_n(struct intel_link_m_n *m_n);
-void intel_set_m_n(struct drm_i915_private *i915,
+void intel_set_m_n(struct intel_display *display,
 		   const struct intel_link_m_n *m_n,
 		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
 		   i915_reg_t link_m_reg, i915_reg_t link_n_reg);
-void intel_get_m_n(struct drm_i915_private *i915,
+void intel_get_m_n(struct intel_display *display,
 		   struct intel_link_m_n *m_n,
 		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
 		   i915_reg_t link_m_reg, i915_reg_t link_n_reg);
-bool intel_cpu_transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
+bool intel_cpu_transcoder_has_m2_n2(struct intel_display *display,
 				    enum transcoder transcoder);
 void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
 				    enum transcoder cpu_transcoder,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index bf96433d63c3..d0fa98628a73 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2943,7 +2943,6 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 			     int link_bpp_x16)
 {
 	struct intel_display *display = to_intel_display(connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	const struct drm_display_mode *downclock_mode =
 		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
 	int pixel_clock;
@@ -2956,7 +2955,7 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 		pipe_config->update_m_n = true;
 
 	if (!can_enable_drrs(connector, pipe_config, downclock_mode)) {
-		if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config->cpu_transcoder))
+		if (intel_cpu_transcoder_has_m2_n2(display, pipe_config->cpu_transcoder))
 			intel_zero_m_n(&pipe_config->dp_m2_n2);
 		return;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index bf420400b505..05cd0f6e6d71 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -68,12 +68,10 @@ const char *intel_drrs_type_str(enum drrs_type drrs_type)
 bool intel_cpu_transcoder_has_drrs(struct intel_display *display,
 				   enum transcoder cpu_transcoder)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	if (HAS_DOUBLE_BUFFERED_M_N(display))
 		return true;
 
-	return intel_cpu_transcoder_has_m2_n2(i915, cpu_transcoder);
+	return intel_cpu_transcoder_has_m2_n2(display, cpu_transcoder);
 }
 
 static void
@@ -110,12 +108,12 @@ bool intel_drrs_is_active(struct intel_crtc *crtc)
 static void intel_drrs_set_state(struct intel_crtc *crtc,
 				 enum drrs_refresh_rate refresh_rate)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 
 	if (refresh_rate == crtc->drrs.refresh_rate)
 		return;
 
-	if (intel_cpu_transcoder_has_m2_n2(dev_priv, crtc->drrs.cpu_transcoder))
+	if (intel_cpu_transcoder_has_m2_n2(display, crtc->drrs.cpu_transcoder))
 		intel_drrs_set_refresh_rate_pipeconf(crtc, refresh_rate);
 	else
 		intel_drrs_set_refresh_rate_m_n(crtc, refresh_rate);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 1abe0a784570..806729ec73c8 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -181,10 +181,10 @@ static void ibx_sanitize_pch_ports(struct drm_i915_private *dev_priv)
 static void intel_pch_transcoder_set_m1_n1(struct intel_crtc *crtc,
 					   const struct intel_link_m_n *m_n)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	enum pipe pipe = crtc->pipe;
 
-	intel_set_m_n(dev_priv, m_n,
+	intel_set_m_n(display, m_n,
 		      PCH_TRANS_DATA_M1(pipe), PCH_TRANS_DATA_N1(pipe),
 		      PCH_TRANS_LINK_M1(pipe), PCH_TRANS_LINK_N1(pipe));
 }
@@ -192,10 +192,10 @@ static void intel_pch_transcoder_set_m1_n1(struct intel_crtc *crtc,
 static void intel_pch_transcoder_set_m2_n2(struct intel_crtc *crtc,
 					   const struct intel_link_m_n *m_n)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	enum pipe pipe = crtc->pipe;
 
-	intel_set_m_n(dev_priv, m_n,
+	intel_set_m_n(display, m_n,
 		      PCH_TRANS_DATA_M2(pipe), PCH_TRANS_DATA_N2(pipe),
 		      PCH_TRANS_LINK_M2(pipe), PCH_TRANS_LINK_N2(pipe));
 }
@@ -203,10 +203,10 @@ static void intel_pch_transcoder_set_m2_n2(struct intel_crtc *crtc,
 void intel_pch_transcoder_get_m1_n1(struct intel_crtc *crtc,
 				    struct intel_link_m_n *m_n)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	enum pipe pipe = crtc->pipe;
 
-	intel_get_m_n(dev_priv, m_n,
+	intel_get_m_n(display, m_n,
 		      PCH_TRANS_DATA_M1(pipe), PCH_TRANS_DATA_N1(pipe),
 		      PCH_TRANS_LINK_M1(pipe), PCH_TRANS_LINK_N1(pipe));
 }
@@ -214,10 +214,10 @@ void intel_pch_transcoder_get_m1_n1(struct intel_crtc *crtc,
 void intel_pch_transcoder_get_m2_n2(struct intel_crtc *crtc,
 				    struct intel_link_m_n *m_n)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	enum pipe pipe = crtc->pipe;
 
-	intel_get_m_n(dev_priv, m_n,
+	intel_get_m_n(display, m_n,
 		      PCH_TRANS_DATA_M2(pipe), PCH_TRANS_DATA_N2(pipe),
 		      PCH_TRANS_LINK_M2(pipe), PCH_TRANS_LINK_N2(pipe));
 }
-- 
2.39.5

