Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A0149F768
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 11:38:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B9E810ED9B;
	Fri, 28 Jan 2022 10:38:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A308510ED9D
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 10:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643366286; x=1674902286;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=U/Mufj+IcnyqbNZbIRCRyjg5zokjDsr2GyCz19ra0Eg=;
 b=UEprqyKweh6UYZ+V8jb9oDMYy21/RaeeGSXfDuVmXAI5+8YWZtziezYe
 u0WQrviAv7teNCV1Fh6QIdt/oj6ZFjR1UJ+oEhfVH2VBwY7HNLS1oVCM6
 u3FdMOwsfPGnv1F9+RsWbue4Bdg1Y5x+NmDGPzr+ckkrkg9HvPIp9rcHh
 bDhInCehcK6iyG/eb2AzHyOp2uC8ZorZdFSqEUlWkGSxzSqDJrS0dVXPy
 VYwaNgf5oHdz3MR0gWFMljkdZrfq8JkbEWaHhcrCAPQeC+O+lfA5icM2m
 xnDDPGYV5oWstAS5hDm+RD4TrFSOSEbOUl6X7saLodGiCzh9MHbbUtoyU g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="244698647"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="244698647"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 02:38:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="581820404"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga008.fm.intel.com with SMTP; 28 Jan 2022 02:38:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Jan 2022 12:38:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 12:37:42 +0200
Message-Id: <20220128103757.22461-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
References: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/17] drm/i915: Nuke intel_dp_get_m_n()
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

As with intel_dp_set_m_n() let's get rid of the wrapper and just
call the relevant PCH vs. CPU transcoder functions directly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c        | 14 +++++++++++-
 drivers/gpu/drm/i915/display/intel_ddi.c     |  9 ++++++--
 drivers/gpu/drm/i915/display/intel_display.c | 23 +++++---------------
 drivers/gpu/drm/i915/display/intel_display.h |  8 +++++--
 4 files changed, 32 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index f37677df6ebf..771bff714772 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -333,6 +333,18 @@ static bool intel_dp_get_hw_state(struct intel_encoder *encoder,
 	return ret;
 }
 
+static void g4x_dp_get_m_n(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	if (crtc_state->has_pch_encoder)
+		intel_pch_transcoder_get_m_n(crtc, &crtc_state->dp_m_n);
+	else
+		intel_cpu_transcoder_get_m_n(crtc, crtc_state->cpu_transcoder,
+					     &crtc_state->dp_m_n,
+					     &crtc_state->dp_m2_n2);
+}
+
 static void intel_dp_get_config(struct intel_encoder *encoder,
 				struct intel_crtc_state *pipe_config)
 {
@@ -384,7 +396,7 @@ static void intel_dp_get_config(struct intel_encoder *encoder,
 	pipe_config->lane_count =
 		((tmp & DP_PORT_WIDTH_MASK) >> DP_PORT_WIDTH_SHIFT) + 1;
 
-	intel_dp_get_m_n(crtc, pipe_config);
+	g4x_dp_get_m_n(pipe_config);
 
 	if (port == PORT_A) {
 		if ((intel_de_read(dev_priv, DP_A) & DP_PLL_FREQ_MASK) == DP_PLL_FREQ_162MHZ)
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 41342a1333cf..2eb868eaab8f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3360,7 +3360,10 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 			pipe_config->output_types |= BIT(INTEL_OUTPUT_DP);
 		pipe_config->lane_count =
 			((temp & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
-		intel_dp_get_m_n(crtc, pipe_config);
+
+		intel_cpu_transcoder_get_m_n(crtc, cpu_transcoder,
+					     &pipe_config->dp_m_n,
+					     &pipe_config->dp_m2_n2);
 
 		if (DISPLAY_VER(dev_priv) >= 11) {
 			i915_reg_t dp_tp_ctl = dp_tp_ctl_reg(encoder, pipe_config);
@@ -3397,7 +3400,9 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 			pipe_config->mst_master_transcoder =
 					REG_FIELD_GET(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, temp);
 
-		intel_dp_get_m_n(crtc, pipe_config);
+		intel_cpu_transcoder_get_m_n(crtc, cpu_transcoder,
+					     &pipe_config->dp_m_n,
+					     &pipe_config->dp_m2_n2);
 
 		pipe_config->infoframes.enable |=
 			intel_hdmi_infoframes_enabled(encoder, pipe_config);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 372e7603101a..fd12740408e8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3856,8 +3856,8 @@ static void intel_get_m_n(struct drm_i915_private *i915,
 	m_n->tu = REG_FIELD_GET(TU_SIZE_MASK, intel_de_read(i915, data_m_reg)) + 1;
 }
 
-static void intel_pch_transcoder_get_m_n(struct intel_crtc *crtc,
-					 struct intel_link_m_n *m_n)
+void intel_pch_transcoder_get_m_n(struct intel_crtc *crtc,
+				  struct intel_link_m_n *m_n)
 {
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
@@ -3868,10 +3868,10 @@ static void intel_pch_transcoder_get_m_n(struct intel_crtc *crtc,
 		      PCH_TRANS_LINK_M1(pipe), PCH_TRANS_LINK_N1(pipe));
 }
 
-static void intel_cpu_transcoder_get_m_n(struct intel_crtc *crtc,
-					 enum transcoder transcoder,
-					 struct intel_link_m_n *m_n,
-					 struct intel_link_m_n *m2_n2)
+void intel_cpu_transcoder_get_m_n(struct intel_crtc *crtc,
+				  enum transcoder transcoder,
+				  struct intel_link_m_n *m_n,
+				  struct intel_link_m_n *m2_n2)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
@@ -3893,17 +3893,6 @@ static void intel_cpu_transcoder_get_m_n(struct intel_crtc *crtc,
 	}
 }
 
-void intel_dp_get_m_n(struct intel_crtc *crtc,
-		      struct intel_crtc_state *pipe_config)
-{
-	if (pipe_config->has_pch_encoder)
-		intel_pch_transcoder_get_m_n(crtc, &pipe_config->dp_m_n);
-	else
-		intel_cpu_transcoder_get_m_n(crtc, pipe_config->cpu_transcoder,
-					     &pipe_config->dp_m_n,
-					     &pipe_config->dp_m2_n2);
-}
-
 void ilk_get_fdi_m_n_config(struct intel_crtc *crtc,
 			    struct intel_crtc_state *pipe_config)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 5c3bd1b4d9c9..ac05ee47c6a7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -604,11 +604,15 @@ bool intel_fuzzy_clock_check(int clock1, int clock2);
 
 void intel_display_prepare_reset(struct drm_i915_private *dev_priv);
 void intel_display_finish_reset(struct drm_i915_private *dev_priv);
-void intel_dp_get_m_n(struct intel_crtc *crtc,
-		      struct intel_crtc_state *pipe_config);
 void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *crtc_state,
 				  const struct intel_link_m_n *m_n,
 				  const struct intel_link_m_n *m2_n2);
+void intel_cpu_transcoder_get_m_n(struct intel_crtc *crtc,
+				  enum transcoder cpu_transcoder,
+				  struct intel_link_m_n *m_n,
+				  struct intel_link_m_n *m2_n2);
+void intel_pch_transcoder_get_m_n(struct intel_crtc *crtc,
+				  struct intel_link_m_n *m_n);
 void ilk_get_fdi_m_n_config(struct intel_crtc *crtc,
 			    struct intel_crtc_state *pipe_config);
 void i9xx_crtc_clock_get(struct intel_crtc *crtc,
-- 
2.34.1

