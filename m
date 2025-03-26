Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F082BA71B99
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 17:15:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63E9D10E722;
	Wed, 26 Mar 2025 16:15:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RDmg/7I7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EAAD10E720;
 Wed, 26 Mar 2025 16:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743005712; x=1774541712;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ddZJiIouxycuOGRacPShv8acQUlaeUmMfoJZsechc20=;
 b=RDmg/7I7D84bITF/N2PMboYYBVN3sJnoGuhxdsJnAVZXvg90TdRmce6F
 RQcENK6FCoOe6Ra2Ca1x5OIAcw3UBkju/gEjsfpSyESzz51DULqBhzYrL
 ni6HVzX+aT0t2xwpSbVG3QjZNGm/aWi4lIqVFqQYTUkZBnnEtJYjUyXEK
 oBDY0lXCmDkDh0iY/1+NyHVvalkSib1IqYRewC0+DbNJa+2YWQ1Z9y+P2
 mxwswUk5B0mdxig4fLESD4HONUybBjQNdvaLL3txY0MJMrd8Nwl7jh5MF
 opvckIHXlEFpMoJsXG/E34yHadNYQQ9M9i8BOLECDnRCfS+lGsn1I6KM+ g==;
X-CSE-ConnectionGUID: har0mKMvTYaGUnRLQ2dILg==
X-CSE-MsgGUID: rRRKl3uST5K8E/aP512AFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44488111"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="44488111"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 09:15:12 -0700
X-CSE-ConnectionGUID: I1O9JMSNTo220cWTpY43TQ==
X-CSE-MsgGUID: bJEDxyiSTbutTaCUqnAJoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="129929750"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 09:15:10 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 2/2] drm/i915/display: Avoid use of VTOTAL.Vtotal bits
Date: Wed, 26 Mar 2025 21:33:21 +0530
Message-ID: <20250326160321.550753-3-ankit.k.nautiyal@intel.com>
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

For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
bits are not required. Since the support for these bits is going to
be deprecated in upcoming platforms, avoid writing these bits for the
platforms that do not use legacy Timing Generator.

Since for these platforms TRAN_VMIN is always filled with crtc_vtotal,
use TRAN_VRR_VMIN to get the vtotal for adjusted_mode.

v2: Avoid having a helper for manipulating VTOTAL register, and instead
just make the change where required. (Ville)
v3: Set `crtc_vtotal` instead of working with the bits directly (Ville).
Use intel_vrr_vmin_vtotal() to set the vtotal during readout. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 31 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vrr.c     | 10 +++++++
 2 files changed, 40 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0db1cd4fc963..6796dd0307a6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2698,9 +2698,19 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
 		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
 
+	/*
+	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
+	 * bits are not required. Since the support for these bits is going to
+	 * be deprecated in upcoming platforms, avoid writing these bits for the
+	 * platforms that do not use legacy Timing Generator.
+	 */
+	if (intel_vrr_always_use_vrr_tg(display))
+		crtc_vtotal = 1;
+
 	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
 		       VACTIVE(crtc_vdisplay - 1) |
 		       VTOTAL(crtc_vtotal - 1));
+
 	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
 		       VBLANK_START(crtc_vblank_start - 1) |
 		       VBLANK_END(crtc_vblank_end - 1));
@@ -2758,6 +2768,15 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
 		       VBLANK_START(crtc_vblank_start - 1) |
 		       VBLANK_END(crtc_vblank_end - 1));
+	/*
+	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
+	 * bits are not required. Since the support for these bits is going to
+	 * be deprecated in upcoming platforms, avoid writing these bits for the
+	 * platforms that do not use legacy Timing Generator.
+	 */
+	if (intel_vrr_always_use_vrr_tg(display))
+		crtc_vtotal = 1;
+
 	/*
 	 * The double buffer latch point for TRANS_VTOTAL
 	 * is the transcoder's undelayed vblank.
@@ -2827,7 +2846,17 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 
 	tmp = intel_de_read(display, TRANS_VTOTAL(display, cpu_transcoder));
 	adjusted_mode->crtc_vdisplay = REG_FIELD_GET(VACTIVE_MASK, tmp) + 1;
-	adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
+
+	/*
+	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
+	 * bits are not filled. The value for adjusted_mode->crtc_vtotal is read
+	 * from VRR_VMIN register in intel_vrr_get_config.
+	 * Just set this to 0 here.
+	 */
+	if (intel_vrr_always_use_vrr_tg(display))
+		adjusted_mode->crtc_vtotal = 0;
+	else
+		adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
 
 	/* FIXME TGL+ DSI transcoders have this! */
 	if (!transcoder_is_dsi(cpu_transcoder)) {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 414f93851059..7359d66fc091 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -708,6 +708,16 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 		crtc_state->vrr.vmin = intel_de_read(display,
 						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
 
+		/*
+		 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
+		 * bits are not filled. Since for these platforms TRAN_VMIN is always
+		 * filled with crtc_vtotal, use TRAN_VRR_VMIN to get the vtotal for
+		 * adjusted_mode.
+		 */
+		if (intel_vrr_always_use_vrr_tg(display))
+			crtc_state->hw.adjusted_mode.crtc_vtotal =
+				intel_vrr_vmin_vtotal(crtc_state);
+
 		if (HAS_AS_SDP(display)) {
 			trans_vrr_vsync =
 				intel_de_read(display,
-- 
2.45.2

