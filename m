Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 223D16C22C9
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 21:34:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8524B10E66F;
	Mon, 20 Mar 2023 20:34:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B56F10E670
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 20:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679344441; x=1710880441;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qpgrGR+eqS695ekbpzmCfLolBnYWL85fLEhoKse+qx0=;
 b=mHHG9lK0LF6tgyVhR6rK3mKhZFePbSDI+ie53vPX3YCRN8Odl6+OWpZK
 LsRLKRfjKKrsdOA/gTWsO1iGSoMsTODCUzOHNL29Qs1LuDJEM/BmRGnkZ
 zdgWnjISd8OODtSGzIW3fPJ2gntWmt6ycGXx931YyVUDvk464SdHfRy3F
 LOjzcpARq94lAf2YLxHjTHcl4/qn5iUZgvgtsKkbVd7pFiBFuJuu36KCJ
 nEhX2GwWzXYdMuoN2LLiCcntsTEtq6CKfQtj0osqVhnodNyT35zxY9jFj
 SFRGno5hfpOr7zT0dyaHpnl+TAFJ2d3kznjgGf7NrwLWhwgoiudCBlv0W A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="327148259"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="327148259"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 13:34:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="770339164"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="770339164"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 20 Mar 2023 13:33:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 22:33:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 22:33:48 +0200
Message-Id: <20230320203352.19515-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320203352.19515-1-ville.syrjala@linux.intel.com>
References: <20230320203352.19515-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/vrr: Eliminate redundant function
 arguments
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

Some of the VRR functions take redundant arguments. Get rid
of them to make life simpler.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c     | 10 ++++------
 drivers/gpu/drm/i915/display/intel_vrr.h     |  9 ++-------
 4 files changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 8d5b73594657..d094485f080d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2951,7 +2951,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 
 	intel_enable_transcoder(crtc_state);
 
-	intel_vrr_enable(encoder, crtc_state);
+	intel_vrr_enable(crtc_state);
 
 	intel_crtc_vblank_on(crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3356b0724e1e..5ee93824861b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3976,7 +3976,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 		intel_get_transcoder_timings(crtc, pipe_config);
 
 	if (HAS_VRR(dev_priv) && !transcoder_is_dsi(pipe_config->cpu_transcoder))
-		intel_vrr_get_config(crtc, pipe_config);
+		intel_vrr_get_config(pipe_config);
 
 	intel_get_pipe_src_size(crtc, pipe_config);
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 4228f26b4c11..6d749de71058 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -168,10 +168,9 @@ static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
 			VRR_CTL_PIPELINE_FULL_OVERRIDE;
 }
 
-void intel_vrr_enable(struct intel_encoder *encoder,
-		      const struct intel_crtc_state *crtc_state)
+void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	if (!crtc_state->vrr.enable)
@@ -230,10 +229,9 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), 0);
 }
 
-void intel_vrr_get_config(struct intel_crtc *crtc,
-			  struct intel_crtc_state *crtc_state)
+void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 trans_vrr_ctl;
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 9fda1135b0dd..ee636a5367c8 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -11,22 +11,17 @@
 struct drm_connector_state;
 struct intel_atomic_state;
 struct intel_connector;
-struct intel_crtc;
 struct intel_crtc_state;
-struct intel_dp;
-struct intel_encoder;
 
 bool intel_vrr_is_capable(struct intel_connector *connector);
 void intel_vrr_check_modeset(struct intel_atomic_state *state);
 void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state);
-void intel_vrr_enable(struct intel_encoder *encoder,
-		      const struct intel_crtc_state *crtc_state);
+void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_send_push(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
-void intel_vrr_get_config(struct intel_crtc *crtc,
-			  struct intel_crtc_state *crtc_state);
+void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
 int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
 
-- 
2.39.2

