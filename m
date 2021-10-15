Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F1942E9E2
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 09:16:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28F406ECE8;
	Fri, 15 Oct 2021 07:16:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 342776ECE7
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 07:16:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="288732353"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="288732353"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 00:16:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="488037516"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 15 Oct 2021 00:16:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Oct 2021 10:16:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>,
	Jani Nikula <jani.nikula@intel.com>
Date: Fri, 15 Oct 2021 10:16:23 +0300
Message-Id: <20211015071625.593-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211015071625.593-1-ville.syrjala@linux.intel.com>
References: <20211015071625.593-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/9] drm/i915: Introduce ilk_pch_disable() and
 ilk_pch_post_disable()
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

Hoover the remaining open coded PCH modeset sequence bits
out from ilk_crtc_disable(). Somewhat annoyingly the
enable vs. disable is a bit asymmetric so we need two
functions for the disable case.

Cc: Dave Airlie <airlied@redhat.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 27 ++------------
 .../gpu/drm/i915/display/intel_pch_display.c  | 37 ++++++++++++++++++-
 .../gpu/drm/i915/display/intel_pch_display.h  |  5 ++-
 3 files changed, 43 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e8f15fb3ed07..76203ce9c980 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2289,33 +2289,12 @@ static void ilk_crtc_disable(struct intel_atomic_state *state,
 	ilk_pfit_disable(old_crtc_state);
 
 	if (old_crtc_state->has_pch_encoder)
-		ilk_fdi_disable(crtc);
+		ilk_pch_disable(state, crtc);
 
 	intel_encoders_post_disable(state, crtc);
 
-	if (old_crtc_state->has_pch_encoder) {
-		ilk_disable_pch_transcoder(crtc);
-
-		if (HAS_PCH_CPT(dev_priv)) {
-			i915_reg_t reg;
-			u32 temp;
-
-			/* disable TRANS_DP_CTL */
-			reg = TRANS_DP_CTL(pipe);
-			temp = intel_de_read(dev_priv, reg);
-			temp &= ~(TRANS_DP_OUTPUT_ENABLE |
-				  TRANS_DP_PORT_SEL_MASK);
-			temp |= TRANS_DP_PORT_SEL_NONE;
-			intel_de_write(dev_priv, reg, temp);
-
-			/* disable DPLL_SEL */
-			temp = intel_de_read(dev_priv, PCH_DPLL_SEL);
-			temp &= ~(TRANS_DPLL_ENABLE(pipe) | TRANS_DPLLB_SEL(pipe));
-			intel_de_write(dev_priv, PCH_DPLL_SEL, temp);
-		}
-
-		ilk_fdi_pll_disable(crtc);
-	}
+	if (old_crtc_state->has_pch_encoder)
+		ilk_pch_post_disable(state, crtc);
 
 	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
 	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, true);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 07ec43f8a7fa..f40bdb387a68 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -179,7 +179,7 @@ static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 			pipe_name(pipe));
 }
 
-void ilk_disable_pch_transcoder(struct intel_crtc *crtc)
+static void ilk_disable_pch_transcoder(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
@@ -299,6 +299,41 @@ void ilk_pch_enable(struct intel_atomic_state *state,
 	ilk_enable_pch_transcoder(crtc_state);
 }
 
+void ilk_pch_disable(struct intel_atomic_state *state,
+		     struct intel_crtc *crtc)
+{
+	ilk_fdi_disable(crtc);
+}
+
+void ilk_pch_post_disable(struct intel_atomic_state *state,
+			  struct intel_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+
+	ilk_disable_pch_transcoder(crtc);
+
+	if (HAS_PCH_CPT(dev_priv)) {
+		i915_reg_t reg;
+		u32 temp;
+
+		/* disable TRANS_DP_CTL */
+		reg = TRANS_DP_CTL(pipe);
+		temp = intel_de_read(dev_priv, reg);
+		temp &= ~(TRANS_DP_OUTPUT_ENABLE |
+			  TRANS_DP_PORT_SEL_MASK);
+		temp |= TRANS_DP_PORT_SEL_NONE;
+		intel_de_write(dev_priv, reg, temp);
+
+		/* disable DPLL_SEL */
+		temp = intel_de_read(dev_priv, PCH_DPLL_SEL);
+		temp &= ~(TRANS_DPLL_ENABLE(pipe) | TRANS_DPLLB_SEL(pipe));
+		intel_de_write(dev_priv, PCH_DPLL_SEL, temp);
+	}
+
+	ilk_fdi_pll_disable(crtc);
+}
+
 static void ilk_pch_clock_get(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.h b/drivers/gpu/drm/i915/display/intel_pch_display.h
index 6e834fbebd64..a983f4d5a3b6 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.h
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.h
@@ -11,9 +11,12 @@ struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
 
-void ilk_disable_pch_transcoder(struct intel_crtc *crtc);
 void ilk_pch_enable(struct intel_atomic_state *state,
 		    struct intel_crtc *crtc);
+void ilk_pch_disable(struct intel_atomic_state *state,
+		     struct intel_crtc *crtc);
+void ilk_pch_post_disable(struct intel_atomic_state *state,
+			  struct intel_crtc *crtc);
 void ilk_pch_get_config(struct intel_crtc_state *crtc_state);
 
 void lpt_disable_pch_transcoder(struct drm_i915_private *dev_priv);
-- 
2.32.0

