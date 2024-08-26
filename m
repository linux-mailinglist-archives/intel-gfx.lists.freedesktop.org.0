Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 594B295EF90
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 13:14:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9648310E1D8;
	Mon, 26 Aug 2024 11:14:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="atsdIKDQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 322FF10E1D8;
 Mon, 26 Aug 2024 11:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724670866; x=1756206866;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=196HMXE8qyZyuMQOcc/wN5Ys8WvKVVKKdNwXDkK2HuQ=;
 b=atsdIKDQjEKJbe15GIS8jbXfDDA03YcI6Wb69MzZG/ouM6WTg5NcFgCV
 EWD71uORg2tEl+J0cn1kWTOmYC2I6cQ5ybdbmh3VFO4eG2yiZuGScm88q
 PHDBOQ/Nr2YJ8kKe5zKeZiTP8R7mpPXmW53L3g3IKRvT5bFlPDgYB0sdc
 p0B9bVgvNg4JzYyUKHakf6yoMN+N55km8hKVN8+D03P4pNE60x17ijXLL
 5hpCy8RACYdTc6+40zvOVaWkWQbWLGl/cOlV7Y4PaNCsj9ODn9+0N16eK
 oUibuwtci01pEAvu5hPilyTuk9UxwRJmH7jw7C7yujQjJN+++ZZ69mYh/ A==;
X-CSE-ConnectionGUID: OAttTHFiQu+orzFAMTz4DQ==
X-CSE-MsgGUID: ef2yDBVkSRuNO1Ys0CGclQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11175"; a="23213595"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="23213595"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:14:26 -0700
X-CSE-ConnectionGUID: TeaMyZ6+SbmAfkL2fW8r3w==
X-CSE-MsgGUID: vOApMv9lRqSpRgPTl6aI0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="67291453"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:14:25 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 12/12] drm/i915/display: Move intel_joiner_num_pipes to intel
 dss
Date: Mon, 26 Aug 2024 16:45:26 +0530
Message-ID: <20240826111527.1113622-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
References: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

In line with other joiner helpers, move the function to get the number
of joined pipes to intel_dss.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 13 ++++---------
 drivers/gpu/drm/i915/display/intel_dss.c     |  5 +++++
 drivers/gpu/drm/i915/display/intel_dss.h     |  1 +
 3 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 432d39415689..51090190bc17 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -249,11 +249,6 @@ is_trans_port_sync_mode(const struct intel_crtc_state *crtc_state)
 		is_trans_port_sync_slave(crtc_state);
 }
 
-static int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
-{
-	return hweight8(crtc_state->joiner_pipes);
-}
-
 struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
@@ -2308,7 +2303,7 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
 static void intel_joiner_adjust_timings(const struct intel_crtc_state *crtc_state,
 					struct drm_display_mode *mode)
 {
-	int num_pipes = intel_joiner_num_pipes(crtc_state);
+	int num_pipes = intel_dss_get_num_joiner_pipes(crtc_state);
 
 	if (num_pipes < 2)
 		return;
@@ -2372,7 +2367,7 @@ static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state
 	drm_mode_copy(mode, pipe_mode);
 	intel_mode_from_crtc_timings(mode, mode);
 	mode->hdisplay = drm_rect_width(&crtc_state->pipe_src) *
-		(intel_joiner_num_pipes(crtc_state) ?: 1);
+		(intel_dss_get_num_joiner_pipes(crtc_state) ?: 1);
 	mode->vdisplay = drm_rect_height(&crtc_state->pipe_src);
 
 	/* Derive per-pipe timings in case joiner is used */
@@ -2392,7 +2387,7 @@ void intel_encoder_get_config(struct intel_encoder *encoder,
 
 static void intel_joiner_compute_pipe_src(struct intel_crtc_state *crtc_state)
 {
-	int num_pipes = intel_joiner_num_pipes(crtc_state);
+	int num_pipes = intel_dss_get_num_joiner_pipes(crtc_state);
 	int width, height;
 
 	if (num_pipes < 2)
@@ -2852,7 +2847,7 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 static void intel_joiner_adjust_pipe_src(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	int num_pipes = intel_joiner_num_pipes(crtc_state);
+	int num_pipes = intel_dss_get_num_joiner_pipes(crtc_state);
 	enum pipe primary_pipe, pipe = crtc->pipe;
 	int width;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dss.c b/drivers/gpu/drm/i915/display/intel_dss.c
index 976fdcac4b55..cdab6ec5f7a0 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.c
+++ b/drivers/gpu/drm/i915/display/intel_dss.c
@@ -298,3 +298,8 @@ u8 intel_dss_get_secondary_joiner_pipes(const struct intel_crtc_state *crtc_stat
 	else
 		return 0;
 }
+
+int intel_dss_get_num_joiner_pipes(const struct intel_crtc_state *crtc_state)
+{
+	return hweight8(crtc_state->joiner_pipes);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dss.h b/drivers/gpu/drm/i915/display/intel_dss.h
index ff9195b8fd92..49fd9d8829ec 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.h
+++ b/drivers/gpu/drm/i915/display/intel_dss.h
@@ -40,6 +40,7 @@ enum pipe intel_dss_get_primary_joiner_pipe(const struct intel_crtc_state *crtc_
 bool intel_dss_is_primary_joiner_pipe(const struct intel_crtc_state *crtc_state);
 bool intel_dss_is_secondary_joiner_pipe(const struct intel_crtc_state *crtc_state);
 u8 intel_dss_get_secondary_joiner_pipes(const struct intel_crtc_state *crtc_state);
+int intel_dss_get_num_joiner_pipes(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_DSS_H__ */
 
-- 
2.45.2

