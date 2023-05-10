Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D43356FDBAB
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 12:31:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 749EF10E47A;
	Wed, 10 May 2023 10:31:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 999BC10E471
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 10:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683714661; x=1715250661;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/hPee39SLxvfoxPwswfVL1/2gR+FqP0KS8lg6FVQN5g=;
 b=Kgr8PL3IYtcPy2XyDAQOOrHHTw9/vQdm3Tra22LT2OGgHAlVox1W9kcd
 DeoInR+gQDiUtCYJQkkpvQdBe49vqkfZRmGIrAR1qZBlVv/cu7eH7B8P+
 rpcESgywWrGykQobnPw8xxugk17n5vBdcEGh1FQnwFPdck33Egt52cayZ
 4nzqdCFUA6hDQUzlrsgLbbgqRoR5GXZ+uC/DPAD1GvVOAFW1esSEF78CK
 NDFRlU0grhn6P5HYr07ZuRNqZwcAxpeyS0fAOw8wkpqHX7C/WdlWnu9WF
 8HPGbqnPpD18on31Y0sVgcnkRaZ8Myo2B7iQV00SdqJFVtaiJrFDmolCE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="350214416"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="350214416"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:31:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="676796712"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="676796712"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:31:00 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 May 2023 13:31:22 +0300
Message-Id: <20230510103131.1618266-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230510103131.1618266-1-imre.deak@intel.com>
References: <20230510103131.1618266-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 05/14] drm/i915: Separate
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

