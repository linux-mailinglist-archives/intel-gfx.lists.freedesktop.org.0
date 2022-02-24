Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BF74C323F
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 17:53:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85C9910E7B2;
	Thu, 24 Feb 2022 16:53:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC9CA10E5EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 16:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645721607; x=1677257607;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0Ycj2DvT/yGkHD1GdZcBCbU6LlJzZfHaa5QVRNuNI50=;
 b=lEboQHTfTG11C+10UOJ9VwCbwVb7UCOr4IIvF66Qv2fzvNTEu/pWFczs
 Q6C4hQHirGvxAt8wHuuLGD5GCsKRh9P8UHbtavlJpui2dCom+LA9qqPbn
 UMKosqFSO7PR6K2NYCJA/w6QEqtutR29/4zYsWi39Ba6uccR1W6WJZAIP
 pVnrqGQTiFkqTxTUpjhDGTc38E+kAWKzc68igoeGdrschGSWS5rdX74D1
 IxItF7I6n45HNqzO11FXMv4BLwPosKK0VyfdtrWrWeIatscWvksTDUBCF
 XGAT2idLqwJTfUJmv7M09uRStmNinwe0siifCcPhFM5flp0URui6RYV3U w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="239681800"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="239681800"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 08:51:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="533203091"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 24 Feb 2022 08:51:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Feb 2022 18:51:12 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Feb 2022 18:51:02 +0200
Message-Id: <20220224165103.15682-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220224165103.15682-1-ville.syrjala@linux.intel.com>
References: <20220224165103.15682-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Split color_commit() into
 noarm+arm pair
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

To reduce the amount of registers written during the vblank evade
critical section let's also split the .color_commit() hook to
noarm+arm pair. The noarm hook runs before the vblank evasion
with the arm hook staying inside the critical section.

Just the framework here, actually moving stuff out into the noarm
hook will follow.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 59 +++++++++++++-------
 drivers/gpu/drm/i915/display/intel_color.h   |  3 +-
 drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++--
 3 files changed, 56 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index e94ec57260f1..df775c6179b2 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -31,12 +31,21 @@
 struct intel_color_funcs {
 	int (*color_check)(struct intel_crtc_state *crtc_state);
 	/*
-	 * Program double buffered color management registers during
-	 * vblank evasion. The registers should then latch during the
-	 * next vblank start, alongside any other double buffered registers
-	 * involved with the same commit.
+	 * Program non-arming double buffered color management registers
+	 * before vblank evasion. The registers should then latch after
+	 * the arming register is written (by color_commit_arm()) during
+	 * the next vblank start, alongside any other double buffered
+	 * registers involved with the same commit. This hook is optional.
 	 */
-	void (*color_commit)(const struct intel_crtc_state *crtc_state);
+	void (*color_commit_noarm)(const struct intel_crtc_state *crtc_state);
+	/*
+	 * Program arming double buffered color management registers
+	 * during vblank evasion. The registers (and whatever other registers
+	 * they arm that were written by color_commit_noarm) should then latch
+	 * during the next vblank start, alongside any other double buffered
+	 * registers involved with the same commit.
+	 */
+	void (*color_commit_arm)(const struct intel_crtc_state *crtc_state);
 	/*
 	 * Load LUTs (and other single buffered color management
 	 * registers). Will (hopefully) be called during the vblank
@@ -491,7 +500,7 @@ static void icl_lut_multi_seg_pack(struct drm_color_lut *entry, u32 ldw, u32 udw
 				    REG_FIELD_GET(PAL_PREC_MULTI_SEG_BLUE_LDW_MASK, ldw);
 }
 
-static void i9xx_color_commit(const struct intel_crtc_state *crtc_state)
+static void i9xx_color_commit_arm(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -504,7 +513,7 @@ static void i9xx_color_commit(const struct intel_crtc_state *crtc_state)
 	intel_de_write(dev_priv, PIPECONF(pipe), val);
 }
 
-static void ilk_color_commit(const struct intel_crtc_state *crtc_state)
+static void ilk_color_commit_arm(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -519,7 +528,7 @@ static void ilk_color_commit(const struct intel_crtc_state *crtc_state)
 	ilk_load_csc_matrix(crtc_state);
 }
 
-static void hsw_color_commit(const struct intel_crtc_state *crtc_state)
+static void hsw_color_commit_arm(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -530,7 +539,7 @@ static void hsw_color_commit(const struct intel_crtc_state *crtc_state)
 	ilk_load_csc_matrix(crtc_state);
 }
 
-static void skl_color_commit(const struct intel_crtc_state *crtc_state)
+static void skl_color_commit_arm(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -1169,11 +1178,19 @@ void intel_color_load_luts(const struct intel_crtc_state *crtc_state)
 	dev_priv->color_funcs->load_luts(crtc_state);
 }
 
-void intel_color_commit(const struct intel_crtc_state *crtc_state)
+void intel_color_commit_noarm(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
-	dev_priv->color_funcs->color_commit(crtc_state);
+	if (dev_priv->color_funcs->color_commit_noarm)
+		dev_priv->color_funcs->color_commit_noarm(crtc_state);
+}
+
+void intel_color_commit_arm(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+
+	dev_priv->color_funcs->color_commit_arm(crtc_state);
 }
 
 static bool intel_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
@@ -2132,70 +2149,70 @@ static void icl_read_luts(struct intel_crtc_state *crtc_state)
 
 static const struct intel_color_funcs chv_color_funcs = {
 	.color_check = chv_color_check,
-	.color_commit = i9xx_color_commit,
+	.color_commit_arm = i9xx_color_commit_arm,
 	.load_luts = chv_load_luts,
 	.read_luts = chv_read_luts,
 };
 
 static const struct intel_color_funcs i965_color_funcs = {
 	.color_check = i9xx_color_check,
-	.color_commit = i9xx_color_commit,
+	.color_commit_arm = i9xx_color_commit_arm,
 	.load_luts = i965_load_luts,
 	.read_luts = i965_read_luts,
 };
 
 static const struct intel_color_funcs i9xx_color_funcs = {
 	.color_check = i9xx_color_check,
-	.color_commit = i9xx_color_commit,
+	.color_commit_arm = i9xx_color_commit_arm,
 	.load_luts = i9xx_load_luts,
 	.read_luts = i9xx_read_luts,
 };
 
 static const struct intel_color_funcs icl_color_funcs = {
 	.color_check = icl_color_check,
-	.color_commit = skl_color_commit,
+	.color_commit_arm = skl_color_commit_arm,
 	.load_luts = icl_load_luts,
 	.read_luts = icl_read_luts,
 };
 
 static const struct intel_color_funcs glk_color_funcs = {
 	.color_check = glk_color_check,
-	.color_commit = skl_color_commit,
+	.color_commit_arm = skl_color_commit_arm,
 	.load_luts = glk_load_luts,
 	.read_luts = glk_read_luts,
 };
 
 static const struct intel_color_funcs skl_color_funcs = {
 	.color_check = ivb_color_check,
-	.color_commit = skl_color_commit,
+	.color_commit_arm = skl_color_commit_arm,
 	.load_luts = bdw_load_luts,
 	.read_luts = NULL,
 };
 
 static const struct intel_color_funcs bdw_color_funcs = {
 	.color_check = ivb_color_check,
-	.color_commit = hsw_color_commit,
+	.color_commit_arm = hsw_color_commit_arm,
 	.load_luts = bdw_load_luts,
 	.read_luts = NULL,
 };
 
 static const struct intel_color_funcs hsw_color_funcs = {
 	.color_check = ivb_color_check,
-	.color_commit = hsw_color_commit,
+	.color_commit_arm = hsw_color_commit_arm,
 	.load_luts = ivb_load_luts,
 	.read_luts = NULL,
 };
 
 static const struct intel_color_funcs ivb_color_funcs = {
 	.color_check = ivb_color_check,
-	.color_commit = ilk_color_commit,
+	.color_commit_arm = ilk_color_commit_arm,
 	.load_luts = ivb_load_luts,
 	.read_luts = NULL,
 };
 
 static const struct intel_color_funcs ilk_color_funcs = {
 	.color_check = ilk_color_check,
-	.color_commit = ilk_color_commit,
+	.color_commit_arm = ilk_color_commit_arm,
 	.load_luts = ilk_load_luts,
 	.read_luts = ilk_read_luts,
 };
diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm/i915/display/intel_color.h
index 173727aaa24d..fd873425e082 100644
--- a/drivers/gpu/drm/i915/display/intel_color.h
+++ b/drivers/gpu/drm/i915/display/intel_color.h
@@ -14,7 +14,8 @@ struct drm_property_blob;
 
 void intel_color_init(struct intel_crtc *crtc);
 int intel_color_check(struct intel_crtc_state *crtc_state);
-void intel_color_commit(const struct intel_crtc_state *crtc_state);
+void intel_color_commit_noarm(const struct intel_crtc_state *crtc_state);
+void intel_color_commit_arm(const struct intel_crtc_state *crtc_state);
 void intel_color_load_luts(const struct intel_crtc_state *crtc_state);
 void intel_color_get_config(struct intel_crtc_state *crtc_state);
 int intel_color_get_gamma_bit_precision(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 705f23be409c..741f5249db6c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1778,7 +1778,8 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	 * clocks enabled
 	 */
 	intel_color_load_luts(new_crtc_state);
-	intel_color_commit(new_crtc_state);
+	intel_color_commit_noarm(new_crtc_state);
+	intel_color_commit_arm(new_crtc_state);
 	/* update DSPCNTR to configure gamma for pipe bottom color */
 	intel_disable_primary_plane(new_crtc_state);
 
@@ -1969,7 +1970,8 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	 * clocks enabled
 	 */
 	intel_color_load_luts(new_crtc_state);
-	intel_color_commit(new_crtc_state);
+	intel_color_commit_noarm(new_crtc_state);
+	intel_color_commit_arm(new_crtc_state);
 	/* update DSPCNTR to configure gamma/csc for pipe bottom color */
 	if (DISPLAY_VER(dev_priv) < 9)
 		intel_disable_primary_plane(new_crtc_state);
@@ -2389,7 +2391,8 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
 	i9xx_pfit_enable(new_crtc_state);
 
 	intel_color_load_luts(new_crtc_state);
-	intel_color_commit(new_crtc_state);
+	intel_color_commit_noarm(new_crtc_state);
+	intel_color_commit_arm(new_crtc_state);
 	/* update DSPCNTR to configure gamma for pipe bottom color */
 	intel_disable_primary_plane(new_crtc_state);
 
@@ -2428,7 +2431,8 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 	i9xx_pfit_enable(new_crtc_state);
 
 	intel_color_load_luts(new_crtc_state);
-	intel_color_commit(new_crtc_state);
+	intel_color_commit_noarm(new_crtc_state);
+	intel_color_commit_arm(new_crtc_state);
 	/* update DSPCNTR to configure gamma for pipe bottom color */
 	intel_disable_primary_plane(new_crtc_state);
 
@@ -7897,7 +7901,7 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 	if (!modeset) {
 		if (new_crtc_state->uapi.color_mgmt_changed ||
 		    new_crtc_state->update_pipe)
-			intel_color_commit(new_crtc_state);
+			intel_color_commit_arm(new_crtc_state);
 
 		if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
 			bdw_set_pipemisc(new_crtc_state);
@@ -7977,6 +7981,11 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 
 	intel_fbc_update(state, crtc);
 
+	if (!modeset &&
+	    (new_crtc_state->uapi.color_mgmt_changed ||
+	     new_crtc_state->update_pipe))
+		intel_color_commit_noarm(new_crtc_state);
+
 	intel_crtc_planes_update_noarm(state, crtc);
 
 	/* Perform vblank evasion around commit operation */
@@ -9880,7 +9889,8 @@ static void intel_sanitize_crtc(struct intel_crtc *crtc,
 		}
 
 		/* Disable any background color/etc. set by the BIOS */
-		intel_color_commit(crtc_state);
+		intel_color_commit_noarm(crtc_state);
+		intel_color_commit_arm(crtc_state);
 	}
 
 	/* Adjust the state of the output pipe according to whether we
-- 
2.34.1

