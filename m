Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 221B94B7463
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 19:32:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3287210E511;
	Tue, 15 Feb 2022 18:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C310C10E52B
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 18:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644949974; x=1676485974;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=R4twXjJg3ddeOxQ2ti7s5WI1k6rlg79VKVNVRgdndHA=;
 b=Rvg0eXZUOVh0X7lDW5HOQIpIF3ximqPFwpJPZjrQYOv86ovkVfSdPo//
 qYgDDl61VqMPEhKuBon++oSv5nN/l8L4JcSRBFrwuObHznvZ1gm3+092a
 0631ksLhywdhs6oyFIoFx8/2x+yMwWiTfQpoUSMWj5wpHdGH+RztrVxYa
 Dy24tMs6B57PdGQF+Uny8JLN3PxhzWYPR0ZBmZvW2yRVszYZKKN+ARkQK
 JifuTkfqzBEVHUbyvWkaEeE1e6zhqdmAgUPkWRfluW3Su/fkYNCSnk9WH
 RqGvCg+VwSfyT57riL2zltqyZ/tYRwwTjaCKxoD9+7EG5gVcUJK9fzIUA A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="231054209"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="231054209"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 10:32:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="632939289"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 15 Feb 2022 10:32:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Feb 2022 20:32:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 20:32:07 +0200
Message-Id: <20220215183208.6143-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/12] drm/i915: Use bigjoiner_pipes more
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 23 +++++++++++---------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 192474163edb..0690470eab97 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2727,16 +2727,18 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
 static void intel_bigjoiner_adjust_timings(const struct intel_crtc_state *crtc_state,
 					   struct drm_display_mode *mode)
 {
-	if (!crtc_state->bigjoiner_pipes)
+	int num_pipes = hweight8(crtc_state->bigjoiner_pipes);
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
@@ -2809,16 +2811,17 @@ static void intel_encoder_get_config(struct intel_encoder *encoder,
 
 static void intel_bigjoiner_compute_pipe_src(struct intel_crtc_state *crtc_state)
 {
+	int num_pipes = hweight8(crtc_state->bigjoiner_pipes);
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

