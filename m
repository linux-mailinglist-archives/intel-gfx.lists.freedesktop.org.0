Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7A042E9DF
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 09:16:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDC9B6ECD9;
	Fri, 15 Oct 2021 07:16:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86CC76ECD9
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 07:16:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="207980323"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="207980323"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 00:16:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="461487054"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 15 Oct 2021 00:16:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Oct 2021 10:16:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>,
	Jani Nikula <jani.nikula@intel.com>
Date: Fri, 15 Oct 2021 10:16:19 +0300
Message-Id: <20211015071625.593-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211015071625.593-1-ville.syrjala@linux.intel.com>
References: <20211015071625.593-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/9] drm/i915: Clean up the {ilk,
 lpt}_pch_enable() calling convention
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

Use the clean "atomic_state+crtc" approach of passing
arguments to the top level PCH modeset code.

And while at it we can also just pass the whole crtc to
ilk_disable_pch_transcoder().

Cc: Dave Airlie <airlied@redhat.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  4 ++--
 .../gpu/drm/i915/display/intel_pch_display.c  | 23 +++++++++++--------
 .../gpu/drm/i915/display/intel_pch_display.h  | 12 +++++-----
 4 files changed, 22 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 54540138bd1d..4038ae342ea1 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -318,7 +318,7 @@ static void hsw_enable_crt(struct intel_atomic_state *state,
 
 	intel_enable_transcoder(crtc_state);
 
-	lpt_pch_enable(crtc_state);
+	lpt_pch_enable(state, crtc);
 
 	intel_crtc_vblank_on(crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 69549886fe5b..2ee02c16bd1c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2020,7 +2020,7 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	intel_enable_transcoder(new_crtc_state);
 
 	if (new_crtc_state->has_pch_encoder)
-		ilk_pch_enable(state, new_crtc_state);
+		ilk_pch_enable(state, crtc);
 
 	intel_crtc_vblank_on(new_crtc_state);
 
@@ -2299,7 +2299,7 @@ static void ilk_crtc_disable(struct intel_atomic_state *state,
 	intel_encoders_post_disable(state, crtc);
 
 	if (old_crtc_state->has_pch_encoder) {
-		ilk_disable_pch_transcoder(dev_priv, pipe);
+		ilk_disable_pch_transcoder(crtc);
 
 		if (HAS_PCH_CPT(dev_priv)) {
 			i915_reg_t reg;
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 0056c2fe49ec..50995c4f2aaa 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -179,9 +179,10 @@ static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 			pipe_name(pipe));
 }
 
-void ilk_disable_pch_transcoder(struct drm_i915_private *dev_priv,
-				enum pipe pipe)
+void ilk_disable_pch_transcoder(struct intel_crtc *crtc)
 {
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
 	i915_reg_t reg;
 	u32 val;
 
@@ -218,12 +219,12 @@ void ilk_disable_pch_transcoder(struct drm_i915_private *dev_priv,
  *   - DP transcoding bits
  *   - transcoder
  */
-void ilk_pch_enable(const struct intel_atomic_state *state,
-		    const struct intel_crtc_state *crtc_state)
+void ilk_pch_enable(struct intel_atomic_state *state,
+		    struct intel_crtc *crtc)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	const struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state,  crtc);
 	enum pipe pipe = crtc->pipe;
 	u32 temp;
 
@@ -289,7 +290,7 @@ void ilk_pch_enable(const struct intel_atomic_state *state,
 			temp |= TRANS_DP_VSYNC_ACTIVE_HIGH;
 
 		port = intel_get_crtc_new_encoder(state, crtc_state)->port;
-		drm_WARN_ON(dev, port < PORT_B || port > PORT_D);
+		drm_WARN_ON(&dev_priv->drm, port < PORT_B || port > PORT_D);
 		temp |= TRANS_DP_PORT_SEL(port);
 
 		intel_de_write(dev_priv, reg, temp);
@@ -348,10 +349,12 @@ void lpt_disable_pch_transcoder(struct drm_i915_private *dev_priv)
 	intel_de_write(dev_priv, TRANS_CHICKEN2(PIPE_A), val);
 }
 
-void lpt_pch_enable(const struct intel_crtc_state *crtc_state)
+void lpt_pch_enable(struct intel_atomic_state *state,
+		    struct intel_crtc *crtc)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	const struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state,  crtc);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	assert_pch_transcoder_disabled(dev_priv, PIPE_A);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.h b/drivers/gpu/drm/i915/display/intel_pch_display.h
index 6eba1fd667ea..7f9df2c13cf3 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.h
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.h
@@ -6,17 +6,17 @@
 #ifndef _INTEL_PCH_DISPLAY_H_
 #define _INTEL_PCH_DISPLAY_H_
 
-enum pipe;
 struct drm_i915_private;
 struct intel_atomic_state;
+struct intel_crtc;
 struct intel_crtc_state;
 
-void ilk_disable_pch_transcoder(struct drm_i915_private *dev_priv,
-				enum pipe pipe);
-void ilk_pch_enable(const struct intel_atomic_state *state,
-		    const struct intel_crtc_state *crtc_state);
+void ilk_disable_pch_transcoder(struct intel_crtc *crtc);
+void ilk_pch_enable(struct intel_atomic_state *state,
+		    struct intel_crtc *crtc);
 
 void lpt_disable_pch_transcoder(struct drm_i915_private *dev_priv);
-void lpt_pch_enable(const struct intel_crtc_state *crtc_state);
+void lpt_pch_enable(struct intel_atomic_state *state,
+		    struct intel_crtc *crtc);
 
 #endif
-- 
2.32.0

