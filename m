Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D24B3A70FDD
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 05:17:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6C8710E669;
	Wed, 26 Mar 2025 04:17:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HQeYU1Kx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13C1A10E650;
 Wed, 26 Mar 2025 04:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742962648; x=1774498648;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UWicEPhgmIItAyy3B5fMHN5zZsORkNvdzzQ8NCN3Q1o=;
 b=HQeYU1Kx+rC9dVXJ9/tbNjNUGDQwqU4KSgkABhdweVm+S6RXndJvkFPr
 9XxjrvdIGoG7UjDb/Y/Juwj4soWRclXCFSUbNuWzIJrYo8E5jP+99+KCz
 s5rC+gA1756D/ylTvYst40ZIVm5n89avxWWsQZSV3bzXHSY5MJD0g4mc3
 vY/J1QCfGc1mJ9T6CwSvTI6byk8jPPfy4SNKGZBc63z9yZrVO2tA0r6X/
 aK0rYoqWb6vKo4XDqluhZbwoIyzxk/eghKdUY+GMGU/WHhjB+lPpOrn+C
 NNk/Utq8aJyTYsZN7Brp3y5qOppqtx59BhgeL/aR/3/br8q3RA9GhsxzV g==;
X-CSE-ConnectionGUID: qetFRi2KTSSurmdNrxgRwA==
X-CSE-MsgGUID: fznwe3wUSxi5MNLurZSnEg==
X-IronPort-AV: E=McAfee;i="6700,10204,11384"; a="61627964"
X-IronPort-AV: E=Sophos;i="6.14,276,1736841600"; d="scan'208";a="61627964"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 21:17:28 -0700
X-CSE-ConnectionGUID: iXzu6JrCSQSMqMYFrqK9fQ==
X-CSE-MsgGUID: deqgQuV+T4W8O9pBQe0rkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,276,1736841600"; d="scan'208";a="124423131"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 21:17:26 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 1/2] drm/i915/display: Introduce transcoder_has_vrr() helper
Date: Wed, 26 Mar 2025 09:35:37 +0530
Message-ID: <20250326040538.504861-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250326040538.504861-1-ankit.k.nautiyal@intel.com>
References: <20250326040538.504861-1-ankit.k.nautiyal@intel.com>
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

To avoid having VRR read/write for DSI transcoders, we currently use
!transcoder_is_dsi() in many places.
Instead introduce a new helper to check transcoder_has_vrr() and use
that to exclude transcoders which do not support VRR.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ee7812126129..bde53b2de70c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2625,6 +2625,12 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
 		      PIPE_LINK_N2(display, transcoder));
 }
 
+static bool
+transcoder_has_vrr(enum transcoder cpu_transcoder)
+{
+	return !transcoder_is_dsi(cpu_transcoder);
+}
+
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -2635,7 +2641,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
 	int vsyncshift = 0;
 
-	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
+	drm_WARN_ON(display->drm, !transcoder_has_vrr(cpu_transcoder));
 
 	/* We need to be careful not to changed the adjusted mode, for otherwise
 	 * the hw state checker will get angry at the mismatch. */
@@ -2717,7 +2723,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
 
-	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
+	drm_WARN_ON(display->drm, !transcoder_has_vrr(cpu_transcoder));
 
 	crtc_vdisplay = adjusted_mode->crtc_vdisplay;
 	crtc_vtotal = adjusted_mode->crtc_vtotal;
@@ -3908,7 +3914,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	    DISPLAY_VER(display) >= 11)
 		intel_get_transcoder_timings(crtc, pipe_config);
 
-	if (HAS_VRR(display) && !transcoder_is_dsi(pipe_config->cpu_transcoder))
+	if (HAS_VRR(display) && transcoder_has_vrr(pipe_config->cpu_transcoder))
 		intel_vrr_get_config(pipe_config);
 
 	intel_get_pipe_src_size(crtc, pipe_config);
-- 
2.45.2

