Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 505E34BD951
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Feb 2022 12:04:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC8E710E559;
	Mon, 21 Feb 2022 11:04:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE02310E52D
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Feb 2022 11:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645441450; x=1676977450;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=pzHPLPQkx+D5/TN3FjYs4L1YJWZZrjXAqbToNinKEoE=;
 b=k2IfFUvaITtDsIXTpniYm/xisrmRgyMHz1V4kalf15EO31fEhxl621RJ
 JhQNN2phIL7aj8+E5q7aXt25icoBoTnPQcINvWxVlgxNprKGNxMuFhHlb
 0oH5WMAFs9ntJQ29QeBh3u3BJoyCtezu7GiVdgJv0CSDHo7jVVXp6Cgpd
 4Ju8UNsnb3FUYqxmq6mUWTsiY1lJAIfh5ko6lRobSykW3uJHaW9/Ho7WU
 csBgDBhsR9htUIXZwbuIkhu3dKlramn2tcU4m8nVJQvIrZoTSVGmpYpw2
 +FY6p0Zb2lfdlXpeG6V4z7Dv5gDc6hbY67wcgZlHYKfcU0R3GLthTp0RX Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="276080073"
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="276080073"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 03:04:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="505010401"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 21 Feb 2022 03:04:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 21 Feb 2022 13:04:05 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Feb 2022 13:03:56 +0200
Message-Id: <20220221110356.5532-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220221110356.5532-1-ville.syrjala@linux.intel.com>
References: <20220221110356.5532-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Relocate a few more pch
 transcoder bits
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

Move intel_crtc_pch_transcoder() and has_pch_trancoder() to a
more appropritate place (intel_pch_display.c).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 19 +------------------
 drivers/gpu/drm/i915/display/intel_display.h  |  1 -
 drivers/gpu/drm/i915/display/intel_dp.c       |  1 +
 .../gpu/drm/i915/display/intel_pch_display.c  | 17 +++++++++++++++++
 .../gpu/drm/i915/display/intel_pch_display.h  |  7 +++++++
 5 files changed, 26 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7f0ba41ad35b..0e6310aa2e10 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -514,16 +514,6 @@ void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
 			 expected_mask);
 }
 
-enum pipe intel_crtc_pch_transcoder(struct intel_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-
-	if (HAS_PCH_LPT(dev_priv))
-		return PIPE_A;
-	else
-		return crtc->pipe;
-}
-
 void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
@@ -9815,13 +9805,6 @@ static struct intel_connector *intel_encoder_find_connector(struct intel_encoder
 	return NULL;
 }
 
-static bool has_pch_trancoder(struct drm_i915_private *dev_priv,
-			      enum pipe pch_transcoder)
-{
-	return HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv) ||
-		(HAS_PCH_LPT_H(dev_priv) && pch_transcoder == PIPE_A);
-}
-
 static void intel_sanitize_crtc(struct intel_crtc *crtc,
 				struct drm_modeset_acquire_ctx *ctx)
 {
@@ -9876,7 +9859,7 @@ static void intel_sanitize_crtc(struct intel_crtc *crtc,
 		 * PCH transcoders B and C would prevent enabling the south
 		 * error interrupt (see cpt_can_enable_serr_int()).
 		 */
-		if (has_pch_trancoder(dev_priv, crtc->pipe))
+		if (intel_has_pch_trancoder(dev_priv, crtc->pipe))
 			crtc->pch_fifo_underrun_disabled = true;
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 11d6134c53c8..8513703086b7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -565,7 +565,6 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state);
 void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state);
 void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe);
 void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe);
-enum pipe intel_crtc_pch_transcoder(struct intel_crtc *crtc);
 int vlv_get_hpll_vco(struct drm_i915_private *dev_priv);
 int vlv_get_cck_clock(struct drm_i915_private *dev_priv,
 		      const char *name, u32 reg, int ref_freq);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1046e7fe310a..f93878011cad 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -67,6 +67,7 @@
 #include "intel_lspcon.h"
 #include "intel_lvds.h"
 #include "intel_panel.h"
+#include "intel_pch_display.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
 #include "intel_tc.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 43e717f4f8e7..837152dca063 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -14,6 +14,23 @@
 #include "intel_pps.h"
 #include "intel_sdvo.h"
 
+bool intel_has_pch_trancoder(struct drm_i915_private *i915,
+			     enum pipe pch_transcoder)
+{
+	return HAS_PCH_IBX(i915) || HAS_PCH_CPT(i915) ||
+		(HAS_PCH_LPT_H(i915) && pch_transcoder == PIPE_A);
+}
+
+enum pipe intel_crtc_pch_transcoder(struct intel_crtc *crtc)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+
+	if (HAS_PCH_LPT(i915))
+		return PIPE_A;
+	else
+		return crtc->pipe;
+}
+
 static void assert_pch_dp_disabled(struct drm_i915_private *dev_priv,
 				   enum pipe pipe, enum port port,
 				   i915_reg_t dp_reg)
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.h b/drivers/gpu/drm/i915/display/intel_pch_display.h
index 4ef033bb5807..41a63413cb3d 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.h
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.h
@@ -6,12 +6,19 @@
 #ifndef _INTEL_PCH_DISPLAY_H_
 #define _INTEL_PCH_DISPLAY_H_
 
+#include <linux/types.h>
+
+enum pipe;
 struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_link_m_n;
 
+bool intel_has_pch_trancoder(struct drm_i915_private *i915,
+			     enum pipe pch_transcoder);
+enum pipe intel_crtc_pch_transcoder(struct intel_crtc *crtc);
+
 void ilk_pch_pre_enable(struct intel_atomic_state *state,
 			struct intel_crtc *crtc);
 void ilk_pch_enable(struct intel_atomic_state *state,
-- 
2.34.1

