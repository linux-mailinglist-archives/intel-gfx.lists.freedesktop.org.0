Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CEA464F40
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 14:57:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB3B872D82;
	Wed,  1 Dec 2021 13:57:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48AE572D85
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 13:57:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="223338481"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="223338481"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 05:57:26 -0800
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="609560192"
Received: from pwedlarx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.43])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 05:57:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Dec 2021 15:57:04 +0200
Message-Id: <6105d0ff44efac3c999af6382e4b0729e251f1e1.1638366969.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1638366969.git.jani.nikula@intel.com>
References: <cover.1638366969.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/10] drm/i915/crtc: rename
 intel_get_crtc_for_pipe() to intel_crtc_for_pipe()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The "get" in the name implies reference counting, remove it. This also
makes the function conform to naming style.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c     | 16 ++++++++--------
 .../gpu/drm/i915/display/intel_display_types.h   |  6 +++---
 drivers/gpu/drm/i915/display/intel_dpll.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_fdi.c         |  4 ++--
 .../gpu/drm/i915/display/intel_fifo_underrun.c   | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_sprite.c      |  4 ++--
 drivers/gpu/drm/i915/display/intel_vdsc.c        |  2 +-
 drivers/gpu/drm/i915/i915_irq.c                  |  6 +++---
 drivers/gpu/drm/i915/i915_trace.h                |  4 ++--
 drivers/gpu/drm/i915/intel_pm.c                  |  8 ++++----
 12 files changed, 33 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index e3a0bfb7be84..27b8f99dd099 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -395,7 +395,7 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
 	const struct intel_plane_state *old_plane_state =
 		intel_atomic_get_old_plane_state(state, plane);
 	const struct intel_plane_state *new_master_plane_state;
-	struct intel_crtc *crtc = intel_get_crtc_for_pipe(i915, plane->pipe);
+	struct intel_crtc *crtc = intel_crtc_for_pipe(i915, plane->pipe);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc_state *new_crtc_state =
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 91c19e0a98d7..5a475aa52079 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2592,7 +2592,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 		struct intel_crtc_state *crtc_state;
 
 		pipe = ilog2(new_cdclk_state->active_pipes);
-		crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+		crtc = intel_crtc_for_pipe(dev_priv, pipe);
 
 		crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
 		if (IS_ERR(crtc_state))
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 503074dc5690..624a7d719531 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4830,7 +4830,7 @@ intel_encoder_current_mode(struct intel_encoder *encoder)
 	if (!encoder->get_hw_state(encoder, &pipe))
 		return NULL;
 
-	crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+	crtc = intel_crtc_for_pipe(dev_priv, pipe);
 
 	mode = kzalloc(sizeof(*mode), GFP_KERNEL);
 	if (!mode)
@@ -8962,8 +8962,8 @@ static void intel_plane_possible_crtcs_init(struct drm_i915_private *dev_priv)
 	struct intel_plane *plane;
 
 	for_each_intel_plane(&dev_priv->drm, plane) {
-		struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv,
-								  plane->pipe);
+		struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv,
+							      plane->pipe);
 
 		plane->base.possible_crtcs = drm_crtc_mask(&crtc->base);
 	}
@@ -9956,7 +9956,7 @@ int intel_modeset_init(struct drm_i915_private *i915)
 
 void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
-	struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
 	/* 640x480@60Hz, ~25175 kHz */
 	struct dpll clock = {
 		.m1 = 18,
@@ -10029,7 +10029,7 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 
 void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
-	struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
 
 	drm_dbg_kms(&dev_priv->drm, "disabling pipe %c due to force quirk\n",
 		    pipe_name(pipe));
@@ -10081,7 +10081,7 @@ intel_sanitize_plane_mapping(struct drm_i915_private *dev_priv)
 			    "[PLANE:%d:%s] attached to the wrong pipe, disabling plane\n",
 			    plane->base.base.id, plane->base.name);
 
-		plane_crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+		plane_crtc = intel_crtc_for_pipe(dev_priv, pipe);
 		intel_plane_disable_noatomic(plane_crtc, plane);
 	}
 }
@@ -10334,7 +10334,7 @@ static void readout_plane_state(struct drm_i915_private *dev_priv)
 
 		visible = plane->get_hw_state(plane, &pipe);
 
-		crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+		crtc = intel_crtc_for_pipe(dev_priv, pipe);
 		crtc_state = to_intel_crtc_state(crtc->base.state);
 
 		intel_set_plane_visible(crtc_state, plane_state, visible);
@@ -10401,7 +10401,7 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 		pipe = 0;
 
 		if (encoder->get_hw_state(encoder, &pipe)) {
-			crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+			crtc = intel_crtc_for_pipe(dev_priv, pipe);
 			crtc_state = to_intel_crtc_state(crtc->base.state);
 
 			encoder->base.crtc = &crtc->base;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 286c55c45f01..8009bcfa1a38 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1788,7 +1788,7 @@ intel_get_first_crtc(struct drm_i915_private *dev_priv)
 }
 
 static inline struct intel_crtc *
-intel_get_crtc_for_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
+intel_crtc_for_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
 	/* pipe_to_crtc_mapping may have hole on any of 3 display pipe system */
 	drm_WARN_ON(&dev_priv->drm,
@@ -2028,7 +2028,7 @@ intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc)
 static inline void
 intel_wait_for_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
-	struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
 
 	intel_crtc_wait_for_next_vblank(crtc);
 }
@@ -2036,7 +2036,7 @@ intel_wait_for_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
 static inline void
 intel_wait_for_vblank_if_active(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
-	struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
 
 	if (crtc->active)
 		intel_crtc_wait_for_next_vblank(crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 04a7af8340ca..1ce0c171f4fb 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1823,7 +1823,7 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 int vlv_force_pll_on(struct drm_i915_private *dev_priv, enum pipe pipe,
 		     const struct dpll *dpll)
 {
-	struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
 	struct intel_crtc_state *crtc_state;
 
 	crtc_state = intel_crtc_state_alloc(crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 2b5f80f3b4e0..be77be626420 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -157,7 +157,7 @@ static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
 		if (pipe_config->fdi_lanes <= 2)
 			return 0;
 
-		other_crtc = intel_get_crtc_for_pipe(dev_priv, PIPE_C);
+		other_crtc = intel_crtc_for_pipe(dev_priv, PIPE_C);
 		other_crtc_state =
 			intel_atomic_get_crtc_state(state, other_crtc);
 		if (IS_ERR(other_crtc_state))
@@ -178,7 +178,7 @@ static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
 			return -EINVAL;
 		}
 
-		other_crtc = intel_get_crtc_for_pipe(dev_priv, PIPE_B);
+		other_crtc = intel_crtc_for_pipe(dev_priv, PIPE_B);
 		other_crtc_state =
 			intel_atomic_get_crtc_state(state, other_crtc);
 		if (IS_ERR(other_crtc_state))
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index 28d9eeb7b4f3..98b401d60b31 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -61,7 +61,7 @@ static bool ivb_can_enable_err_int(struct drm_device *dev)
 	lockdep_assert_held(&dev_priv->irq_lock);
 
 	for_each_pipe(dev_priv, pipe) {
-		crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+		crtc = intel_crtc_for_pipe(dev_priv, pipe);
 
 		if (crtc->cpu_fifo_underrun_disabled)
 			return false;
@@ -79,7 +79,7 @@ static bool cpt_can_enable_serr_int(struct drm_device *dev)
 	lockdep_assert_held(&dev_priv->irq_lock);
 
 	for_each_pipe(dev_priv, pipe) {
-		crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+		crtc = intel_crtc_for_pipe(dev_priv, pipe);
 
 		if (crtc->pch_fifo_underrun_disabled)
 			return false;
@@ -279,7 +279,7 @@ static bool __intel_set_cpu_fifo_underrun_reporting(struct drm_device *dev,
 						    enum pipe pipe, bool enable)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
 	bool old;
 
 	lockdep_assert_held(&dev_priv->irq_lock);
@@ -348,7 +348,7 @@ bool intel_set_pch_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
 					   bool enable)
 {
 	struct intel_crtc *crtc =
-		intel_get_crtc_for_pipe(dev_priv, pch_transcoder);
+		intel_crtc_for_pipe(dev_priv, pch_transcoder);
 	unsigned long flags;
 	bool old;
 
@@ -391,7 +391,7 @@ bool intel_set_pch_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
 void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
 					 enum pipe pipe)
 {
-	struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
 	u32 underruns = 0;
 
 	/* We may be called too early in init, thanks BIOS! */
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 1b99a9501a45..6befd30f9883 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -1584,8 +1584,8 @@ int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
 		 */
 		if (!ret && has_dst_key_in_primary_plane(dev_priv)) {
 			struct intel_crtc *crtc =
-				intel_get_crtc_for_pipe(dev_priv,
-							to_intel_plane(plane)->pipe);
+				intel_crtc_for_pipe(dev_priv,
+						    to_intel_plane(plane)->pipe);
 
 			plane_state = drm_atomic_get_plane_state(state,
 								 crtc->base.primary);
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index bf8d3c7ca2d9..c6851b0e0bed 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1116,7 +1116,7 @@ _get_crtc_for_pipe(struct drm_i915_private *i915, enum pipe pipe)
 	if (!intel_pipe_valid(i915, pipe))
 		return NULL;
 
-	return intel_get_crtc_for_pipe(i915, pipe);
+	return intel_crtc_for_pipe(i915, pipe);
 }
 
 struct intel_crtc *
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 6aea159abc50..d0be94456bd8 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -224,7 +224,7 @@ static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
 static void
 intel_handle_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
-	struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
 
 	drm_crtc_handle_vblank(&crtc->base);
 }
@@ -1318,7 +1318,7 @@ static void display_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 					 u32 crc2, u32 crc3,
 					 u32 crc4)
 {
-	struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
 	struct intel_pipe_crc *pipe_crc = &crtc->pipe_crc;
 	u32 crcs[5] = { crc0, crc1, crc2, crc3, crc4 };
 
@@ -1357,7 +1357,7 @@ display_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 static void flip_done_handler(struct drm_i915_private *i915,
 			      enum pipe pipe)
 {
-	struct intel_crtc *crtc = intel_get_crtc_for_pipe(i915, pipe);
+	struct intel_crtc *crtc = intel_crtc_for_pipe(i915, pipe);
 	struct drm_crtc_state *crtc_state = crtc->base.state;
 	struct drm_pending_vblank_event *e = crtc_state->event;
 	struct drm_device *dev = &i915->drm;
diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
index 6b8fb6ffe8da..26b8d75029d4 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -109,7 +109,7 @@ TRACE_EVENT(intel_cpu_fifo_underrun,
 			     ),
 
 	    TP_fast_assign(
-			    struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+			    struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
 			   __entry->pipe = pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
@@ -132,7 +132,7 @@ TRACE_EVENT(intel_pch_fifo_underrun,
 
 	    TP_fast_assign(
 			   enum pipe pipe = pch_transcoder;
-			   struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+			   struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
 			   __entry->pipe = pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 01fa3fac1b57..fadcd8af5452 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -989,7 +989,7 @@ static void g4x_write_wm_values(struct drm_i915_private *dev_priv,
 	enum pipe pipe;
 
 	for_each_pipe(dev_priv, pipe)
-		trace_g4x_wm(intel_get_crtc_for_pipe(dev_priv, pipe), wm);
+		trace_g4x_wm(intel_crtc_for_pipe(dev_priv, pipe), wm);
 
 	intel_uncore_write(&dev_priv->uncore, DSPFW1,
 		   FW_WM(wm->sr.plane, SR) |
@@ -1021,7 +1021,7 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
 	enum pipe pipe;
 
 	for_each_pipe(dev_priv, pipe) {
-		trace_vlv_wm(intel_get_crtc_for_pipe(dev_priv, pipe), wm);
+		trace_vlv_wm(intel_crtc_for_pipe(dev_priv, pipe), wm);
 
 		intel_uncore_write(&dev_priv->uncore, VLV_DDL(pipe),
 			   (wm->ddl[pipe].plane[PLANE_CURSOR] << DDL_CURSOR_SHIFT) |
@@ -6909,7 +6909,7 @@ void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
 
 	for_each_intel_plane(&dev_priv->drm, plane) {
 		struct intel_crtc *crtc =
-			intel_get_crtc_for_pipe(dev_priv, plane->pipe);
+			intel_crtc_for_pipe(dev_priv, plane->pipe);
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_plane_state *plane_state =
@@ -7065,7 +7065,7 @@ void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
 
 	for_each_intel_plane(&dev_priv->drm, plane) {
 		struct intel_crtc *crtc =
-			intel_get_crtc_for_pipe(dev_priv, plane->pipe);
+			intel_crtc_for_pipe(dev_priv, plane->pipe);
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_plane_state *plane_state =
-- 
2.30.2

