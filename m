Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3174449F770
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 11:38:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A4D910EF3C;
	Fri, 28 Jan 2022 10:38:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD15810EEAD
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 10:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643366307; x=1674902307;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=75VoPjyhYuXefVxsQjFWNz2uDUA2sDuPke8mhKB+o7w=;
 b=FjGZZ0ks+lcckyxOONZf1wM8QgJSq0SOqJn3S8TX5N8xw8TiH3hGhVkD
 eIsGgHiFicgEVnTA8MBvLzoQqaSQnF0NrxwZti1/uzTxqDIE6QRlksgKv
 9FnJuH72VQrfCbaZ/LULqTEp1SGCQbtmu8vlPQ1zPYzNjXwa07kignIyr
 5SlTGeehhmFnCOGwy8Q19oT+eIwColOXqptZmLaQTj6zv8g4WHspdPygj
 Xp476qf/qF89ceS8livmN9oO/a6cmZirU32Qibss7O5Jc1xG8iGMjlldr
 WxYxPyiAYJ2bUVSC1+tDYRqhCwtfCZozs22FVAF2GlzsKkT5BReVz4Ql5 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="307811462"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="307811462"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 02:38:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="564159765"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga001.jf.intel.com with SMTP; 28 Jan 2022 02:38:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Jan 2022 12:38:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 12:37:49 +0200
Message-Id: <20220128103757.22461-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
References: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/17] drm/i915: Extract {i9xx,
 ilk}_configure_cpu_transcoder()
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

Follow the path laid out by hsw+ and extract helpers to configure
the cpu transcoder for earlier platforms as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 68 ++++++++++----------
 1 file changed, 35 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bd1b5de1d3d4..1e97279ba268 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1808,13 +1808,29 @@ static void intel_disable_primary_plane(const struct intel_crtc_state *crtc_stat
 	plane->disable_arm(plane, crtc_state);
 }
 
+static void ilk_configure_cpu_transcoder(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	if (crtc_state->has_pch_encoder) {
+		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder, &crtc_state->fdi_m_n);
+	} else if (intel_crtc_has_dp_encoder(crtc_state)) {
+		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder, &crtc_state->dp_m_n);
+		intel_cpu_transcoder_set_m2_n2(crtc, cpu_transcoder, &crtc_state->dp_m2_n2);
+	}
+
+	intel_set_transcoder_timings(crtc_state);
+
+	ilk_set_pipeconf(crtc_state);
+}
+
 static void ilk_crtc_enable(struct intel_atomic_state *state,
 			    struct intel_crtc *crtc)
 {
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 	enum pipe pipe = crtc->pipe;
 
 	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
@@ -1833,21 +1849,10 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
 	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, false);
 
-	if (new_crtc_state->has_pch_encoder) {
-		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
-					       &new_crtc_state->fdi_m_n);
-	} else if (intel_crtc_has_dp_encoder(new_crtc_state)) {
-		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
-					       &new_crtc_state->dp_m_n);
-		intel_cpu_transcoder_set_m2_n2(crtc, cpu_transcoder,
-					       &new_crtc_state->dp_m2_n2);
-	}
+	ilk_configure_cpu_transcoder(new_crtc_state);
 
-	intel_set_transcoder_timings(new_crtc_state);
 	intel_set_pipe_src_size(new_crtc_state);
 
-	ilk_set_pipeconf(new_crtc_state);
-
 	crtc->active = true;
 
 	intel_encoders_pre_enable(state, crtc);
@@ -2445,26 +2450,34 @@ static void modeset_put_crtc_power_domains(struct intel_crtc *crtc,
 					    domains);
 }
 
+static void i9xx_configure_cpu_transcoder(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder, &crtc_state->dp_m_n);
+		intel_cpu_transcoder_set_m2_n2(crtc, cpu_transcoder, &crtc_state->dp_m2_n2);
+	}
+
+	intel_set_transcoder_timings(crtc_state);
+
+	i9xx_set_pipeconf(crtc_state);
+}
+
 static void valleyview_crtc_enable(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 	enum pipe pipe = crtc->pipe;
 
 	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
 		return;
 
-	if (intel_crtc_has_dp_encoder(new_crtc_state)) {
-		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
-					       &new_crtc_state->dp_m_n);
-		intel_cpu_transcoder_set_m2_n2(crtc, cpu_transcoder,
-					       &new_crtc_state->dp_m2_n2);
-	}
+	i9xx_configure_cpu_transcoder(new_crtc_state);
 
-	intel_set_transcoder_timings(new_crtc_state);
 	intel_set_pipe_src_size(new_crtc_state);
 
 	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B) {
@@ -2472,8 +2485,6 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
 		intel_de_write(dev_priv, CHV_CANVAS(pipe), 0);
 	}
 
-	i9xx_set_pipeconf(new_crtc_state);
-
 	crtc->active = true;
 
 	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
@@ -2508,24 +2519,15 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 	enum pipe pipe = crtc->pipe;
 
 	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
 		return;
 
-	if (intel_crtc_has_dp_encoder(new_crtc_state)) {
-		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
-					       &new_crtc_state->dp_m_n);
-		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
-					       &new_crtc_state->dp_m2_n2);
-	}
+	i9xx_configure_cpu_transcoder(new_crtc_state);
 
-	intel_set_transcoder_timings(new_crtc_state);
 	intel_set_pipe_src_size(new_crtc_state);
 
-	i9xx_set_pipeconf(new_crtc_state);
-
 	crtc->active = true;
 
 	if (DISPLAY_VER(dev_priv) != 2)
-- 
2.34.1

