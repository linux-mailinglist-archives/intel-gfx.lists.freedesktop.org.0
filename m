Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D919E4C13C3
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 14:14:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C973B10E899;
	Wed, 23 Feb 2022 13:14:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A205410E899
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 13:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645622048; x=1677158048;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OJORfNVzb8wPDCOMDLaKoPmae72/+rja/jCc6UbPf7s=;
 b=nOcgEKgsrMQSu8vNMtUx5NydofERaDJ2sV/ls1ySR5+IDCB2j70uq20e
 d6b7WqSwcIBENJ/KJp/BXdcEIx3QpScyILhbHRHEHwZrCLwyIgq1FPkxU
 c37cu8itiJ9oDEHwhDW8ljcHHGtQBLEpx+Ahq6lcuBMVNbQMjfAZi1oJ2
 cMejuwq0aF1RZeU809573lNZr7jKdc/UhHw9Q//JzBsWJS2gK0tCiI7LL
 n/RwRgQkCUSV/RWspoo7JjvDRNTiTFMlSDhLkFcaUqnn4Khw+q3tPBW5c
 kn1AjoXe1KOIWVGmNdvitLwO3mThFWw5zOghHDlMxL9JvztsIP36bwvMx g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="231931796"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="231931796"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 05:14:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="508432065"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 23 Feb 2022 05:14:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Feb 2022 15:14:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 15:13:15 +0200
Message-Id: <20220223131315.18016-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
References: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 13/13] drm/i915: Make the PIPESC rect
 relative to the entire bigjoiner area
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

When using bigjoiner it's useful to know the offset of each
individual pipe in the whole set of joined pipes. Let's include
that information in our PIPESRC rectangle. With this we can make
the plane clipping code blissfully unaware of bigjoiner usage, as
all we have to do is remove the pipe's offset from the final plane
destination coordinates.

v2: Use intel_bigjoiner_num_pipes()

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  7 +++---
 drivers/gpu/drm/i915/display/intel_cursor.c   |  8 ++++---
 drivers/gpu/drm/i915/display/intel_display.c  | 21 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_overlay.c  | 22 +++++++++----------
 4 files changed, 40 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 3cbf66146da0..92ae4eebc62f 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -824,10 +824,6 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 		return -ERANGE;
 	}
 
-	/* right side of the image is on the slave crtc, adjust dst to match */
-	if (intel_crtc_is_bigjoiner_slave(crtc_state))
-		drm_rect_translate(dst, -drm_rect_width(&crtc_state->pipe_src), 0);
-
 	/*
 	 * FIXME: This might need further adjustment for seamless scaling
 	 * with phase information, for the 2p2 and 2p1 scenarios.
@@ -844,6 +840,9 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 		return -EINVAL;
 	}
 
+	/* final plane coordinates will be relative to the plane's pipe */
+	drm_rect_translate(dst, -clip->x1, -clip->y1);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index da6cf0515164..9279e2783e7e 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -152,9 +152,11 @@ static int intel_check_cursor(struct intel_crtc_state *crtc_state,
 	/* Use the unclipped src/dst rectangles, which we program to hw */
 	plane_state->uapi.src = src;
 	plane_state->uapi.dst = dst;
-	if (intel_crtc_is_bigjoiner_slave(crtc_state))
-		drm_rect_translate(&plane_state->uapi.dst,
-				   -drm_rect_width(&crtc_state->pipe_src), 0);
+
+	/* final plane coordinates will be relative to the plane's pipe */
+	drm_rect_translate(&plane_state->uapi.dst,
+			   -crtc_state->pipe_src.x1,
+			   -crtc_state->pipe_src.y1);
 
 	ret = intel_cursor_check_surface(plane_state);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7a09bb33c1eb..a9c15f27b948 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3204,6 +3204,23 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 	}
 }
 
+static void intel_bigjoiner_adjust_pipe_src(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	int num_pipes = intel_bigjoiner_num_pipes(crtc_state);
+	enum pipe master_pipe, pipe = crtc->pipe;
+	int width;
+
+	if (num_pipes < 2)
+		return;
+
+	master_pipe = bigjoiner_master_pipe(crtc_state);
+	width = drm_rect_width(&crtc_state->pipe_src);
+
+	drm_rect_translate_to(&crtc_state->pipe_src,
+			      (pipe - master_pipe) * width, 0);
+}
+
 static void intel_get_pipe_src_size(struct intel_crtc *crtc,
 				    struct intel_crtc_state *pipe_config)
 {
@@ -3216,6 +3233,8 @@ static void intel_get_pipe_src_size(struct intel_crtc *crtc,
 	drm_rect_init(&pipe_config->pipe_src, 0, 0,
 		      REG_FIELD_GET(PIPESRC_WIDTH_MASK, tmp) + 1,
 		      REG_FIELD_GET(PIPESRC_HEIGHT_MASK, tmp) + 1);
+
+	intel_bigjoiner_adjust_pipe_src(pipe_config);
 }
 
 static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
@@ -5853,6 +5872,8 @@ intel_modeset_pipe_config_late(struct intel_crtc_state *crtc_state)
 	struct drm_connector *connector;
 	int i;
 
+	intel_bigjoiner_adjust_pipe_src(crtc_state);
+
 	for_each_new_connector_in_state(&state->base, connector,
 					conn_state, i) {
 		struct intel_encoder *encoder =
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 631e1f1dc5e6..ee46561b5ae8 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -958,21 +958,21 @@ static void update_pfit_vscale_ratio(struct intel_overlay *overlay)
 static int check_overlay_dst(struct intel_overlay *overlay,
 			     struct drm_intel_overlay_put_image *rec)
 {
-	const struct intel_crtc_state *pipe_config =
+	const struct intel_crtc_state *crtc_state =
 		overlay->crtc->config;
-	int pipe_src_w = drm_rect_width(&pipe_config->pipe_src);
-	int pipe_src_h = drm_rect_height(&pipe_config->pipe_src);
+	struct drm_rect req, clipped;
 
-	if (rec->dst_height == 0 || rec->dst_width == 0)
-		return -EINVAL;
+	drm_rect_init(&req, rec->dst_x, rec->dst_y,
+		      rec->dst_width, rec->dst_height);
+
+	clipped = req;
+	drm_rect_intersect(&clipped, &crtc_state->pipe_src);
 
-	if (rec->dst_x < pipe_src_w &&
-	    rec->dst_x + rec->dst_width <= pipe_src_w &&
-	    rec->dst_y < pipe_src_h &&
-	    rec->dst_y + rec->dst_height <= pipe_src_h)
-		return 0;
-	else
+	if (!drm_rect_visible(&clipped) ||
+	    !drm_rect_equals(&clipped, &req))
 		return -EINVAL;
+
+	return 0;
 }
 
 static int check_overlay_scaling(struct drm_intel_overlay_put_image *rec)
-- 
2.34.1

