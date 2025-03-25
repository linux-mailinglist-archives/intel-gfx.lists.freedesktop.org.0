Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F24A6F43F
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 12:35:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CC1210E570;
	Tue, 25 Mar 2025 11:35:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Eltu1xLd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92C1910E562;
 Tue, 25 Mar 2025 11:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742902509; x=1774438509;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pYbWBOWmX5gyvkyMWTM3++v3XQtXa74Eb67UTDw/e+Q=;
 b=Eltu1xLdnpkDgc01MPTHvgOnxPfVTkoX6w2rEKNwnUovNx3PJl27omXp
 adWdonBRWJpQ5rajiRWwIwYPcjKqFjNbelid5sohhd90x4Q+fh1vbgMAB
 JmbuLWik4GzhmOXNCzI5bhK2TcjPXO8tNAUhknV6OPFE20KdYTSOhKy8M
 Y9UF7ZRxWv+wjB0RuHeu7PQdPygVc2A85G0TaDOr65NrhILVJ7mt1lFWc
 aDHHzR5WTTu2bDzI0rHaYC+uw2W4//Yn8AvyJDwNi14PmoDguWlXgWaUP
 lBGU9zr91J2hU34ZFb35UjOSDf1kGyTpzGMcF0vzW8Eez8k3UWvKzAEid A==;
X-CSE-ConnectionGUID: 4qTZoWduTrma+x+v0pb69w==
X-CSE-MsgGUID: d1BCJVLMRUGyOg3iWH619Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="44266946"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="44266946"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 04:35:09 -0700
X-CSE-ConnectionGUID: pU3HycGFQryCz9sJy6u1iw==
X-CSE-MsgGUID: IeR1WOipSPGA+GB+9B4acg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="124070669"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 04:35:07 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 16/16] drm/i915/display: Introduce transcoder_has_vrr() helper
Date: Tue, 25 Mar 2025 16:52:49 +0530
Message-ID: <20250325112249.228444-17-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250325112249.228444-1-ankit.k.nautiyal@intel.com>
References: <20250325112249.228444-1-ankit.k.nautiyal@intel.com>
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
index 7e06b7e6e4e3..6849e63104ff 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2638,6 +2638,12 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
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
@@ -2649,7 +2655,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	u32 vtotal_bits;
 	int vsyncshift = 0;
 
-	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
+	drm_WARN_ON(display->drm, !transcoder_has_vrr(cpu_transcoder));
 
 	/* We need to be careful not to changed the adjusted mode, for otherwise
 	 * the hw state checker will get angry at the mismatch. */
@@ -2744,7 +2750,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
 	u32 vtotal_bits;
 
-	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
+	drm_WARN_ON(display->drm, !transcoder_has_vrr(cpu_transcoder));
 
 	crtc_vdisplay = adjusted_mode->crtc_vdisplay;
 	crtc_vtotal = adjusted_mode->crtc_vtotal;
@@ -3957,7 +3963,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	    DISPLAY_VER(display) >= 11)
 		intel_get_transcoder_timings(crtc, pipe_config);
 
-	if (HAS_VRR(display) && !transcoder_is_dsi(pipe_config->cpu_transcoder))
+	if (HAS_VRR(display) && transcoder_has_vrr(pipe_config->cpu_transcoder))
 		intel_vrr_get_config(pipe_config);
 
 	intel_get_pipe_src_size(crtc, pipe_config);
-- 
2.45.2

