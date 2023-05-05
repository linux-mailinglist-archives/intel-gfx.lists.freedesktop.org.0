Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C162C6F8A52
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 22:45:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E5DF10E676;
	Fri,  5 May 2023 20:45:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB76A10E676
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 20:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683319549; x=1714855549;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ArXEcmPngvKIqJWfdqJAVxdUXxeCnJUbQWK2bjKB+9o=;
 b=KI5T+yxIRiBibfMTcLuF/BrpgtH+0VhzsJ9ADpxCiXHK0hJK0oyB+DAN
 SlLlNLy/a3f+tVHAlR2SFp1Vpfj7TSUvD6cnUEW9bcQRHsFVhR8jCUE8j
 +iuesxb01Cakr/iZSoOS60DQCF20orDZH1mNFfZWVRqTDtAb3lGgXY4vU
 GQYxauh5h9nQJUEJsd8pNQzz99IffmvmWSsG5ObwOqXYmfMgUFldC6vVH
 orgyqDkydgIays0IL+kW+iJXOQH00ssuxyGmTNFeFJmU9zwJtKqsQfUjb
 vrw2Is9XEedLWXJUatjB8dUu6QxZvwRmAHidkHUXCWrnJWc+VqI2oZR3M A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="346763339"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="346763339"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 13:45:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="821860256"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="821860256"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 13:45:36 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 May 2023 23:46:05 +0300
Message-Id: <20230505204611.682946-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230503231048.432368-5-imre.deak@intel.com>
References: <20230503231048.432368-5-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 04/12] drm/i915: Separate
 intel_crtc_disable_noatomic_begin/complete()
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

Split calling the CRTC/encoder disabling hooks and updating the CRTC and
DPLL object states from updating the CRTC and atomic state and other
global state (BW, CDCLK, DBUF) into separate functions. When disabling a
bigjoiner configuration the latter step can be done only after all the
linked pipes are disabled, so this change prepares for that.

No functional changes.

v2:
- Rebased on changes in patch 2.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_modeset_setup.c    | 34 +++++++++++++------
 1 file changed, 24 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 66796e8eef90a..2c93f4c5dc8cf 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -30,23 +30,15 @@
 #include "intel_wm.h"
 #include "skl_watermark.h"
 
-static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
-					struct drm_modeset_acquire_ctx *ctx)
+static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
+					      struct drm_modeset_acquire_ctx *ctx)
 {
-	struct intel_encoder *encoder;
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct intel_bw_state *bw_state =
-		to_intel_bw_state(i915->display.bw.obj.state);
-	struct intel_cdclk_state *cdclk_state =
-		to_intel_cdclk_state(i915->display.cdclk.obj.state);
-	struct intel_dbuf_state *dbuf_state =
-		to_intel_dbuf_state(i915->display.dbuf.obj.state);
 	struct intel_crtc_state *crtc_state =
 		to_intel_crtc_state(crtc->base.state);
 	struct intel_plane *plane;
 	struct drm_atomic_state *state;
 	struct intel_crtc_state *temp_crtc_state;
-	enum pipe pipe = crtc->pipe;
 	int ret;
 
 	if (!crtc_state->hw.active)
@@ -92,6 +84,21 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 		intel_unreference_shared_dpll_crtc(crtc,
 						   crtc_state->shared_dpll,
 						   &crtc_state->shared_dpll->state);
+}
+
+static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
+{
+	struct intel_encoder *encoder;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_bw_state *bw_state =
+		to_intel_bw_state(i915->display.bw.obj.state);
+	struct intel_cdclk_state *cdclk_state =
+		to_intel_cdclk_state(i915->display.cdclk.obj.state);
+	struct intel_dbuf_state *dbuf_state =
+		to_intel_dbuf_state(i915->display.dbuf.obj.state);
+	struct intel_crtc_state *crtc_state =
+		to_intel_crtc_state(crtc->base.state);
+	enum pipe pipe = crtc->pipe;
 
 	__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
 	intel_crtc_free_hw_state(crtc_state);
@@ -115,6 +122,13 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 	bw_state->num_active_planes[pipe] = 0;
 }
 
+static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
+					struct drm_modeset_acquire_ctx *ctx)
+{
+	intel_crtc_disable_noatomic_begin(crtc, ctx);
+	intel_crtc_disable_noatomic_complete(crtc);
+}
+
 static void intel_modeset_update_connector_atomic_state(struct drm_i915_private *i915)
 {
 	struct intel_connector *connector;
-- 
2.37.2

