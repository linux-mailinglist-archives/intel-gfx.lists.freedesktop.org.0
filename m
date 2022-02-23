Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 344524C13C2
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 14:14:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3683010E443;
	Wed, 23 Feb 2022 13:14:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D097610E443
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 13:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645622045; x=1677158045;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Ix2Yffj8PAAEuC2D1hStgDIPQiZleheUJWdCKviTk/0=;
 b=UsJxkvf8R12iz+DhPbwRqFo/9jB0r0IVjUGjZOFoT8s/l9u30OA/baA+
 OTAbs41IKJ4YX8SqzF12L2JFemcmOpks5myWUPtsaU7sJqrPJeOOd3LWm
 8qobOYPkqej5XSZgpxVqJEpxpfzI5yEJqP5Azo+vSAZn7wOPcF9G00L7s
 RkBGobesoAKB7aXjA07IODsTxpZQsn6mUDgBXLKd9og4REotMU+Bwj1oN
 lcQPGRMAQPx7ZgRgDFiWONxON9JCg2RlxIo9zzY8WTwdClVa63iZubftK
 Qqt5rYok4HL+R1NGjpBqm0OXRxxHnJoErOhie43kLwo+/cGsXrog3SGDe w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="231931795"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="231931795"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 05:14:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="532676583"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 23 Feb 2022 05:13:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Feb 2022 15:13:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 15:13:14 +0200
Message-Id: <20220223131315.18016-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
References: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 12/13] drm/i915: Use bigjoiner_pipes more
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

Replace the hardcoded 2 pipe assumptions when we're massaging
pipe_mode and the pipe_src rect to be suitable for bigjoiner.
Instead we can just count the number of pipes in the bitmask.

v2: Introduce intel_bigjoiner_num_pipes()

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 31 +++++++++++++-------
 1 file changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9b4013ed3d98..7a09bb33c1eb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -368,6 +368,11 @@ bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state)
 		crtc->pipe == bigjoiner_master_pipe(crtc_state);
 }
 
+static int intel_bigjoiner_num_pipes(const struct intel_crtc_state *crtc_state)
+{
+	return hweight8(crtc_state->bigjoiner_pipes);
+}
+
 struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
@@ -2731,16 +2736,18 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
 static void intel_bigjoiner_adjust_timings(const struct intel_crtc_state *crtc_state,
 					   struct drm_display_mode *mode)
 {
-	if (!crtc_state->bigjoiner_pipes)
+	int num_pipes = intel_bigjoiner_num_pipes(crtc_state);
+
+	if (num_pipes < 2)
 		return;
 
-	mode->crtc_clock /= 2;
-	mode->crtc_hdisplay /= 2;
-	mode->crtc_hblank_start /= 2;
-	mode->crtc_hblank_end /= 2;
-	mode->crtc_hsync_start /= 2;
-	mode->crtc_hsync_end /= 2;
-	mode->crtc_htotal /= 2;
+	mode->crtc_clock /= num_pipes;
+	mode->crtc_hdisplay /= num_pipes;
+	mode->crtc_hblank_start /= num_pipes;
+	mode->crtc_hblank_end /= num_pipes;
+	mode->crtc_hsync_start /= num_pipes;
+	mode->crtc_hsync_end /= num_pipes;
+	mode->crtc_htotal /= num_pipes;
 }
 
 static void intel_splitter_adjust_timings(const struct intel_crtc_state *crtc_state,
@@ -2792,7 +2799,8 @@ static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state
 	/* Populate the "user" mode with full numbers */
 	drm_mode_copy(mode, pipe_mode);
 	intel_mode_from_crtc_timings(mode, mode);
-	mode->hdisplay = drm_rect_width(&crtc_state->pipe_src) << !!crtc_state->bigjoiner_pipes;
+	mode->hdisplay = drm_rect_width(&crtc_state->pipe_src) *
+		(intel_bigjoiner_num_pipes(crtc_state) ?: 1);
 	mode->vdisplay = drm_rect_height(&crtc_state->pipe_src);
 
 	/* Derive per-pipe timings in case bigjoiner is used */
@@ -2812,16 +2820,17 @@ static void intel_encoder_get_config(struct intel_encoder *encoder,
 
 static void intel_bigjoiner_compute_pipe_src(struct intel_crtc_state *crtc_state)
 {
+	int num_pipes = intel_bigjoiner_num_pipes(crtc_state);
 	int width, height;
 
-	if (!crtc_state->bigjoiner_pipes)
+	if (num_pipes < 2)
 		return;
 
 	width = drm_rect_width(&crtc_state->pipe_src);
 	height = drm_rect_height(&crtc_state->pipe_src);
 
 	drm_rect_init(&crtc_state->pipe_src, 0, 0,
-		      width / 2, height);
+		      width / num_pipes, height);
 }
 
 static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
-- 
2.34.1

