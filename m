Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5143E287E35
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 23:44:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 362D06EB4E;
	Thu,  8 Oct 2020 21:44:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09CA889B9A
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 21:44:25 +0000 (UTC)
IronPort-SDR: lRQkLvYnioab8bXeGhG4gzDp8jyRFmTO6k4+20BdGx1iIl3qMkHSW39JpvDVPdq2iiKdNo9La1
 mZ9g2jqC+Fjg==
X-IronPort-AV: E=McAfee;i="6000,8403,9768"; a="227057660"
X-IronPort-AV: E=Sophos;i="5.77,352,1596524400"; d="scan'208";a="227057660"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 14:44:24 -0700
IronPort-SDR: vK7m6B/bcWj6ALvWqsWKyr2T9Juh7JH26BSxdeOqVmk1eUXw+YrXeJ9t7LtRXTZH0Iaf2kOcR9
 19l6IbFxZ3dQ==
X-IronPort-AV: E=Sophos;i="5.77,352,1596524400"; d="scan'208";a="312338256"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 08 Oct 2020 14:44:23 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Oct 2020 14:45:31 -0700
Message-Id: <20201008214535.22942-7-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201008214535.22942-1-manasi.d.navare@intel.com>
References: <20201008214535.22942-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 07/11] drm/i915: Make hardware readout work
 on i915.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Unfortunately I have no way to test this, but it should be correct
if the bios sets up bigjoiner in a sane way.

Skip iterating over bigjoiner slaves, only the master has the state we
care about.

Add the width of the bigjoiner slave to the reconstructed fb.

Hide the bigjoiner slave to userspace, and double the mode on bigjoiner
master.

And last, disable bigjoiner slave from primary if reconstruction fails.

v2:
* Manual Rebase (Manasi)

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 64 +++++++++++++++++++-
 1 file changed, 62 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index faf8bf757bed..aa981aa4f6a1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3619,6 +3619,8 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
 	struct intel_plane *intel_plane = to_intel_plane(primary);
 	struct intel_plane_state *intel_state =
 		to_intel_plane_state(plane_state);
+	 struct intel_crtc_state *crtc_state =
+		 to_intel_crtc_state(intel_crtc->base.state);
 	struct drm_framebuffer *fb;
 	struct i915_vma *vma;
 
@@ -3641,7 +3643,7 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
 		if (c == &intel_crtc->base)
 			continue;
 
-		if (!to_intel_crtc(c)->active)
+		if (!to_intel_crtc_state(c->state)->uapi.active)
 			continue;
 
 		state = to_intel_plane_state(c->primary->state);
@@ -3663,6 +3665,11 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
 	 * pretend the BIOS never had it enabled.
 	 */
 	intel_plane_disable_noatomic(intel_crtc, intel_plane);
+	if (crtc_state->bigjoiner) {
+		struct intel_crtc *slave =
+			crtc_state->bigjoiner_linked_crtc;
+		intel_plane_disable_noatomic(slave, to_intel_plane(slave->base.primary));
+	}
 
 	return;
 
@@ -10687,6 +10694,7 @@ static void
 skl_get_initial_plane_config(struct intel_crtc *crtc,
 			     struct intel_initial_plane_config *plane_config)
 {
+	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
@@ -10795,6 +10803,18 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 	fb->height = ((val >> 16) & 0xffff) + 1;
 	fb->width = ((val >> 0) & 0xffff) + 1;
 
+	/* add bigjoiner slave as well, if the fb stretches both */
+	if (crtc_state->bigjoiner) {
+		enum pipe bigjoiner_pipe = crtc_state->bigjoiner_linked_crtc->pipe;
+
+		if (fb->width == crtc_state->pipe_src_w &&
+		    (intel_de_read(dev_priv, PLANE_SURF(pipe, plane_id)) & 0xfffff000) == plane_config->base) {
+			val = intel_de_read(dev_priv, PLANE_SIZE(bigjoiner_pipe, plane_id));
+			fb->height += ((val >> 16) & 0xfff) + 1;
+			fb->width += ((val >> 0) & 0x1fff) + 1;
+		}
+	}
+
 	val = intel_de_read(dev_priv, PLANE_STRIDE(pipe, plane_id));
 	stride_mult = skl_plane_stride_mult(fb, 0, DRM_MODE_ROTATE_0);
 	fb->pitches[0] = (val & 0x3ff) * stride_mult;
@@ -18793,7 +18813,8 @@ static void intel_sanitize_crtc(struct intel_crtc *crtc,
 
 	/* Adjust the state of the output pipe according to whether we
 	 * have active connectors/encoders. */
-	if (crtc_state->hw.active && !intel_crtc_has_encoders(crtc))
+	if (crtc_state->hw.active && !intel_crtc_has_encoders(crtc) &&
+	    !crtc_state->bigjoiner_slave)
 		intel_crtc_disable_noatomic(crtc, ctx);
 
 	if (crtc_state->hw.active || HAS_GMCH(dev_priv)) {
@@ -19072,6 +19093,9 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 		struct intel_plane *plane;
 		int min_cdclk = 0;
 
+		if (crtc_state->bigjoiner_slave)
+			continue;
+
 		if (crtc_state->hw.active) {
 			struct drm_display_mode mode;
 
@@ -19096,6 +19120,9 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 			mode.hdisplay = crtc_state->pipe_src_w;
 			mode.vdisplay = crtc_state->pipe_src_h;
 
+			if (crtc_state->bigjoiner)
+				mode.hdisplay *= 2;
+
 			intel_crtc_compute_pixel_rate(crtc_state);
 
 			intel_crtc_update_active_timings(crtc_state);
@@ -19146,6 +19173,39 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 		intel_bw_crtc_update(bw_state, crtc_state);
 
 		intel_pipe_config_sanity_check(dev_priv, crtc_state);
+
+		/* discard our incomplete slave state, copy it from master */
+		if (crtc_state->bigjoiner && crtc_state->hw.active) {
+			struct intel_crtc *slave = crtc_state->bigjoiner_linked_crtc;
+			struct intel_crtc_state *slave_crtc_state =
+				to_intel_crtc_state(slave->base.state);
+
+			copy_bigjoiner_crtc_state(slave_crtc_state, crtc_state);
+			slave->base.mode = crtc->base.mode;
+
+			cdclk_state->min_cdclk[slave->pipe] = min_cdclk;
+			cdclk_state->min_voltage_level[slave->pipe] =
+				crtc_state->min_voltage_level;
+
+			for_each_intel_plane_on_crtc(&dev_priv->drm, slave, plane) {
+				const struct intel_plane_state *plane_state =
+					to_intel_plane_state(plane->base.state);
+
+				/*
+				 * FIXME don't have the fb yet, so can't
+				 * use intel_plane_data_rate() :(
+				 */
+				if (plane_state->uapi.visible)
+					crtc_state->data_rate[plane->id] =
+						4 * crtc_state->pixel_rate;
+				else
+					crtc_state->data_rate[plane->id] = 0;
+			}
+
+			intel_bw_crtc_update(bw_state, slave_crtc_state);
+			drm_calc_timestamping_constants(&slave->base,
+							&slave_crtc_state->hw.adjusted_mode);
+		}
 	}
 }
 
-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
