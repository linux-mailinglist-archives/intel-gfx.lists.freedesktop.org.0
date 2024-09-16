Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C84979F3D
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 12:26:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7872110E340;
	Mon, 16 Sep 2024 10:26:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iPuXtN1B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB71210E333
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 10:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726482411; x=1758018411;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GJdp7aN8pMH06FFG7aX74wAHFj0hW0flrUoHx+L6Xts=;
 b=iPuXtN1B4GQY+XlwAg2O7DPXbkufN187vjsm+B50zYACOeZW+layx6l5
 T/vBSLCYNi6zftkB5nWRt2Z9CTbrPQetJI8XBlKb4Ai3J43m4bDe0F8Hx
 auvLKvwFTflBOjSSJ/LS2G91Fs4Tt1H0Bx+6msQKGPPT/Ixnw+1t3yS1P
 w7aviX9Vj1YTre6Umj1N/GyAgZPh53HP5YOwOrxwSsBSEmjgcNzfz2aIQ
 ZX4jsQd5LxWv8WhSzNszJ7WEg0gi0UOhxiTw1MxQpCJ+LfraF3cG0DiGq
 k8w5r50yfMeA9PQh8oBrv8S/jESqWUZJR2BjGahOC+WxMvCMNxzKHrbLN g==;
X-CSE-ConnectionGUID: Hxewcb1hSzikj+ISaxWXoA==
X-CSE-MsgGUID: jjxl9Yx+RYGQDXJ2xbSJ1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11196"; a="25428499"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="25428499"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 03:26:51 -0700
X-CSE-ConnectionGUID: Y126oVxFSRaos2U/w0wcXQ==
X-CSE-MsgGUID: ip1D0RLxSIGIfmtyBki8MQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="99678250"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 03:26:50 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 1/4] drm/i915/display: Simplify intel_joiner_num_pipes and its
 usage
Date: Mon, 16 Sep 2024 15:58:33 +0530
Message-ID: <20240916102836.2149012-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240916102836.2149012-1-ankit.k.nautiyal@intel.com>
References: <20240916102836.2149012-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Currently intel_joiner_num_pipes is used to get num of pipes wrt num of
pipes joined. Simplify this by returning 1 when no joiner is used and
update the checks for no joiner case.

v2: Rename the function to intel_crtc_num_joined_pipes and use helper
intel_crtc_joined_pipe_mask. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d4a371edfcdd..67962cb4dbfa 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -278,9 +278,9 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state)
 		crtc->pipe == joiner_primary_pipe(crtc_state);
 }
 
-static int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
+static int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state)
 {
-	return hweight8(crtc_state->joiner_pipes);
+	return hweight8(intel_crtc_joined_pipe_mask(crtc_state));
 }
 
 u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
@@ -2347,9 +2347,9 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
 static void intel_joiner_adjust_timings(const struct intel_crtc_state *crtc_state,
 					struct drm_display_mode *mode)
 {
-	int num_pipes = intel_joiner_num_pipes(crtc_state);
+	int num_pipes = intel_crtc_num_joined_pipes(crtc_state);
 
-	if (num_pipes < 2)
+	if (num_pipes == 1)
 		return;
 
 	mode->crtc_clock /= num_pipes;
@@ -2411,7 +2411,7 @@ static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state
 	drm_mode_copy(mode, pipe_mode);
 	intel_mode_from_crtc_timings(mode, mode);
 	mode->hdisplay = drm_rect_width(&crtc_state->pipe_src) *
-		(intel_joiner_num_pipes(crtc_state) ?: 1);
+		intel_crtc_num_joined_pipes(crtc_state);
 	mode->vdisplay = drm_rect_height(&crtc_state->pipe_src);
 
 	/* Derive per-pipe timings in case joiner is used */
@@ -2431,10 +2431,10 @@ void intel_encoder_get_config(struct intel_encoder *encoder,
 
 static void intel_joiner_compute_pipe_src(struct intel_crtc_state *crtc_state)
 {
-	int num_pipes = intel_joiner_num_pipes(crtc_state);
+	int num_pipes = intel_crtc_num_joined_pipes(crtc_state);
 	int width, height;
 
-	if (num_pipes < 2)
+	if (num_pipes == 1)
 		return;
 
 	width = drm_rect_width(&crtc_state->pipe_src);
@@ -2891,11 +2891,11 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 static void intel_joiner_adjust_pipe_src(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	int num_pipes = intel_joiner_num_pipes(crtc_state);
+	int num_pipes = intel_crtc_num_joined_pipes(crtc_state);
 	enum pipe primary_pipe, pipe = crtc->pipe;
 	int width;
 
-	if (num_pipes < 2)
+	if (num_pipes == 1)
 		return;
 
 	primary_pipe = joiner_primary_pipe(crtc_state);
-- 
2.45.2

