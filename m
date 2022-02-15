Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 948C24B7461
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 19:32:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C206F10E534;
	Tue, 15 Feb 2022 18:32:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 555E710E539
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 18:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644949967; x=1676485967;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=w86nN8CmYD/vkhOT1kXV9M3eO5gxoS29Og0+Fpe/kkY=;
 b=DsIlUR4H1OFOupcJhxaljyJ4tJTBznc37vQwcEmJEbNYyKj5DDWQVMhT
 89ANF59pg7VZOrX/ZlAGS2QyWVxcxXlghuBUFAKehgPY1+6XJ7u2dIekl
 UH3ZAAc+SkcfUsRAi+NtXdkYuhQH316dNG5fPukzQHuLhH8K/LiPtjxYU
 2uj8sxVgQLMUD7UdtC7zQtVMIuznqlPgMAfAUuqpLZ4ZN7UduZ8zdmi5A
 pA9xI74DKTYyoGZefZgfhpIUZlDf03AY55kXinv8ce3o8CwBZ4yHm+OPs
 0X67fXdpd8UZMqyveH2vsg8cyMEz6hy+Al/vkB84PCxaAIAZb/DInnOCC w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="250371105"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="250371105"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 10:32:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="539472506"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 15 Feb 2022 10:32:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Feb 2022 20:32:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 20:32:08 +0200
Message-Id: <20220215183208.6143-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/12] drm/i915: Make the PIPESC rect relative
 to the entire bigjoiner area
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  7 +++---
 drivers/gpu/drm/i915/display/intel_cursor.c   |  8 ++++---
 drivers/gpu/drm/i915/display/intel_display.c  | 21 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_overlay.c  | 22 +++++++++----------
 4 files changed, 40 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 4f5a17e008a5..ab25be519193 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -628,10 +628,6 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 		return -ERANGE;
 	}
 
-	/* right side of the image is on the slave crtc, adjust dst to match */
-	if (intel_crtc_is_bigjoiner_slave(crtc_state))
-		drm_rect_translate(dst, -drm_rect_width(&crtc_state->pipe_src), 0);
-
 	/*
 	 * FIXME: This might need further adjustment for seamless scaling
 	 * with phase information, for the 2p2 and 2p1 scenarios.
@@ -648,6 +644,9 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
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
index 0690470eab97..628599958afd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3195,6 +3195,23 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 	}
 }
 
+static void intel_bigjoiner_adjust_pipe_src(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	int num_pipes = hweight8(crtc_state->bigjoiner_pipes);
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
@@ -3207,6 +3224,8 @@ static void intel_get_pipe_src_size(struct intel_crtc *crtc,
 	drm_rect_init(&pipe_config->pipe_src, 0, 0,
 		      REG_FIELD_GET(PIPESRC_WIDTH_MASK, tmp) + 1,
 		      REG_FIELD_GET(PIPESRC_HEIGHT_MASK, tmp) + 1);
+
+	intel_bigjoiner_adjust_pipe_src(pipe_config);
 }
 
 static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
@@ -6034,6 +6053,8 @@ intel_modeset_pipe_config_late(struct intel_crtc_state *crtc_state)
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

