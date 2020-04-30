Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8AF1C0AD4
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 01:08:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A02C6EA48;
	Thu, 30 Apr 2020 23:08:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9497B6E0E3
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 23:08:32 +0000 (UTC)
IronPort-SDR: Uwfx/CD5XkN4xOwoSdTWAUh+h47UWGJiXKnlvw5Osm4/kNissSR0v+TNc7bA9jHldrQQ3VDe/D
 LiNnLKgeckNg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 16:08:30 -0700
IronPort-SDR: JZU9I9m/usdouAGmOXZO6Lu9kI+PzqDNdSEAVtxbzbjhjrFKaRD2Pc2GuZKFoqWhOOtnOVZAQd
 +66kkN8mrYJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,337,1583222400"; d="scan'208";a="405581170"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga004.jf.intel.com with ESMTP; 30 Apr 2020 16:08:30 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 16:09:47 -0700
Message-Id: <20200430230951.2508-8-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200430230951.2508-1-manasi.d.navare@intel.com>
References: <20200430230951.2508-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 07/11] drm/i915: Make hardware readout work
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
index 93ac3c1af3e9..4ec8650cd147 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3605,6 +3605,8 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
 	struct intel_plane *intel_plane = to_intel_plane(primary);
 	struct intel_plane_state *intel_state =
 		to_intel_plane_state(plane_state);
+	 struct intel_crtc_state *crtc_state =
+		 to_intel_crtc_state(intel_crtc->base.state);
 	struct drm_framebuffer *fb;
 	struct i915_vma *vma;
 
@@ -3627,7 +3629,7 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
 		if (c == &intel_crtc->base)
 			continue;
 
-		if (!to_intel_crtc(c)->active)
+		if (!to_intel_crtc_state(c->state)->uapi.active)
 			continue;
 
 		state = to_intel_plane_state(c->primary->state);
@@ -3649,6 +3651,11 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
 	 * pretend the BIOS never had it enabled.
 	 */
 	intel_plane_disable_noatomic(intel_crtc, intel_plane);
+	if (crtc_state->bigjoiner) {
+		struct intel_crtc *slave =
+			crtc_state->bigjoiner_linked_crtc;
+		intel_plane_disable_noatomic(slave, to_intel_plane(slave->base.primary));
+	}
 
 	return;
 
@@ -10541,6 +10548,7 @@ static void
 skl_get_initial_plane_config(struct intel_crtc *crtc,
 			     struct intel_initial_plane_config *plane_config)
 {
+	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
@@ -10649,6 +10657,18 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
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
@@ -18280,7 +18300,8 @@ static void intel_sanitize_crtc(struct intel_crtc *crtc,
 
 	/* Adjust the state of the output pipe according to whether we
 	 * have active connectors/encoders. */
-	if (crtc_state->hw.active && !intel_crtc_has_encoders(crtc))
+	if (crtc_state->hw.active && !intel_crtc_has_encoders(crtc) &&
+	    !crtc_state->bigjoiner_slave)
 		intel_crtc_disable_noatomic(crtc, ctx);
 
 	if (crtc_state->hw.active || HAS_GMCH(dev_priv)) {
@@ -18554,6 +18575,9 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 		struct intel_plane *plane;
 		int min_cdclk = 0;
 
+		if (crtc_state->bigjoiner_slave)
+			continue;
+
 		if (crtc_state->hw.active) {
 			struct drm_display_mode mode;
 
@@ -18578,6 +18602,9 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 			mode.hdisplay = crtc_state->pipe_src_w;
 			mode.vdisplay = crtc_state->pipe_src_h;
 
+			if (crtc_state->bigjoiner)
+				mode.hdisplay *= 2;
+
 			intel_crtc_compute_pixel_rate(crtc_state);
 
 			intel_crtc_update_active_timings(crtc_state);
@@ -18628,6 +18655,39 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
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
