Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F22DAA71B97
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 17:15:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B3AA10E716;
	Wed, 26 Mar 2025 16:15:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PIwXyy86";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DEC410E716;
 Wed, 26 Mar 2025 16:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743005710; x=1774541710;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2LZpVN/ud87asfbsWFuFQIGGcg28CnhyHsh/j6nT1SQ=;
 b=PIwXyy86lFOqlTH4OMAbWCnmrQNP/P8wU3bUCIwLi+u9ovxkEDCsqhGF
 KvmGapiw8Te1MHLzWIJerjpJpUL6jo3Ary9JNf5EzGAZB69w1Se4gsU46
 mGMN/qDSildLtntEJ5mGT5ByKU8Hr1vsco/0wj6yO0qSLhszpG0dpHbyh
 hMBUcgMQqil726HWmlCw31XpO55//GdfZnqFAa5QbIzPoYikr8F42gekJ
 d30ws1ue9ku8Mnx4w7uFm5EYDsB1uUnBnPGB5/Li6W+hO/AqdOF3lUStE
 Q/C/0diZC6IGmEMWO/aOzv3XameQJvE0/eBpXkb8h5AnPNviUnDh8n+2u g==;
X-CSE-ConnectionGUID: qx8JNALdRfqosEP9tQzcvw==
X-CSE-MsgGUID: w15qiuj+SdWhWa/yCaQY+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44488107"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="44488107"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 09:15:10 -0700
X-CSE-ConnectionGUID: 5VeX8G/tSZejb7vVjQZb6A==
X-CSE-MsgGUID: LMN2pTcrT8GsNESv6kz15Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="129929741"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 09:15:08 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 1/2] drm/i915/display: Introduce transcoder_has_vrr() helper
Date: Wed, 26 Mar 2025 21:33:20 +0530
Message-ID: <20250326160321.550753-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250326160321.550753-1-ankit.k.nautiyal@intel.com>
References: <20250326160321.550753-1-ankit.k.nautiyal@intel.com>
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

v2: Include HAS_VRR into the helper. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ee7812126129..0db1cd4fc963 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2625,6 +2625,15 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
 		      PIPE_LINK_N2(display, transcoder));
 }
 
+static bool
+transcoder_has_vrr(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	return HAS_VRR(display) && !transcoder_is_dsi(cpu_transcoder);
+}
+
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -2635,7 +2644,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
 	int vsyncshift = 0;
 
-	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
+	drm_WARN_ON(display->drm, !transcoder_has_vrr(crtc_state));
 
 	/* We need to be careful not to changed the adjusted mode, for otherwise
 	 * the hw state checker will get angry at the mismatch. */
@@ -2717,7 +2726,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
 
-	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
+	drm_WARN_ON(display->drm, !transcoder_has_vrr(crtc_state));
 
 	crtc_vdisplay = adjusted_mode->crtc_vdisplay;
 	crtc_vtotal = adjusted_mode->crtc_vtotal;
@@ -3908,7 +3917,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	    DISPLAY_VER(display) >= 11)
 		intel_get_transcoder_timings(crtc, pipe_config);
 
-	if (HAS_VRR(display) && !transcoder_is_dsi(pipe_config->cpu_transcoder))
+	if (transcoder_has_vrr(pipe_config))
 		intel_vrr_get_config(pipe_config);
 
 	intel_get_pipe_src_size(crtc, pipe_config);
-- 
2.45.2

