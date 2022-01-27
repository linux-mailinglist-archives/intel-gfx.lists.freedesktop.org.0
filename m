Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDC349DE1E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 10:33:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88B9F10EFD3;
	Thu, 27 Jan 2022 09:33:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19A7110EFC3
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 09:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643276024; x=1674812024;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=IdRXw5VjC99UY6N/fZe61+XzlWTYjs0ySIwTKhsvSew=;
 b=MjeqyEkUS3mgbE5hK8W8ncWy9zw10oGMv+LBWjCJlXVMVgzJyF1tBdSk
 zEoFkv8lrw/ciwJ03N00N2ilOsayaosg8oKDKg5TmO2/9fJKvlH0PJo1s
 /OjaU6eHtSB0G/ThveuX0bDun64oIt5XAy9ufuqxt0qqDp+pf9qz6TuUA
 Qxysk31+Qk614Z5yiIbHSB64bTEgF6i1ZQO2vZCFFpS+D/D9z3I5YPzmB
 VEYBMRcH7R/Dm0ZNwOIqF9137Mcw42Ko9rNmrLusQUdYr403JAQ+SQvCz
 pyH63J4meNM4u5JNgpsvdYc1cODtChgwM0Xla3phzwo82hZHfXiUL5ChX Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="245639548"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="245639548"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 01:33:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="533049891"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga007.fm.intel.com with SMTP; 27 Jan 2022 01:33:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Jan 2022 11:33:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jan 2022 11:32:57 +0200
Message-Id: <20220127093303.17309-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
References: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/14] drm/i915: Extract {i9xx,
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
 drivers/gpu/drm/i915/display/intel_display.c | 65 +++++++++++---------
 1 file changed, 35 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 50dbc2116c14..0a58ecf21b70 100644
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
@@ -2508,21 +2519,15 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 	enum pipe pipe = crtc->pipe;
 
 	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
 		return;
 
-	if (intel_crtc_has_dp_encoder(new_crtc_state))
-		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
-					       &new_crtc_state->dp_m_n);
+	i9xx_configure_cpu_transcoder(new_crtc_state);
 
-	intel_set_transcoder_timings(new_crtc_state);
 	intel_set_pipe_src_size(new_crtc_state);
 
-	i9xx_set_pipeconf(new_crtc_state);
-
 	crtc->active = true;
 
 	if (DISPLAY_VER(dev_priv) != 2)
-- 
2.34.1

