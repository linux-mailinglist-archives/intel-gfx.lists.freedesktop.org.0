Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AF5A73525
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 15:58:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE81C10E8FC;
	Thu, 27 Mar 2025 14:58:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="czOobY6A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FAF010E8F8;
 Thu, 27 Mar 2025 14:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743087500; x=1774623500;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=maXhYlV18eQ6CmLzEeOQvWLX73fzDb9hIlKZ9FOoaCA=;
 b=czOobY6AplNIR8sIwDtd38WBTVylB/HaJ81Giu+CGkEIcVbpk8Tj3iMh
 PKMkz9K1OvF++rDtGAx1in8c1tYVXJK2PldqQsimoMjrFRA/9jroWXT3y
 LUBh9wqiCSDvfXAyd0Vx1OLBznQ2UOpBTBHogxgBIvy3ZDJBkYqIcLLh0
 SXOgXtB7M6Tjx+8kDapqSC8wv/a36Qd5Nl0tOV/7l59NF6lTILdV0tGlr
 72EGqhQ7u2R24UDa6za6mZPAIgFPALCtIAmaLzccYzW3fbsdJM9ulAZQ8
 uhLfOgNeADX/CuJZstFjPMaHl7gp+pe6JQE6n2hrYz91WVq1RKhSsnP51 g==;
X-CSE-ConnectionGUID: QaayyOPwQUquxfeOJOdMIA==
X-CSE-MsgGUID: bOwpC+4RQ3GFWoZ4aRwHxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="69788022"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="69788022"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 07:58:20 -0700
X-CSE-ConnectionGUID: KNH60ncKSbi4/uCaWRhnww==
X-CSE-MsgGUID: DkNJvb1aT/Sk9A9pr6MErg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="125381260"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 07:58:18 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 2/2] drm/i915/display: Avoid use of VTOTAL.Vtotal bits
Date: Thu, 27 Mar 2025 20:16:29 +0530
Message-ID: <20250327144629.648306-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250327144629.648306-1-ankit.k.nautiyal@intel.com>
References: <20250327144629.648306-1-ankit.k.nautiyal@intel.com>
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

Since for these platforms vrr.vmin is always filled with crtc_vtotal,
use TRAN_VRR_VMIN to get the vtotal for adjusted_mode.

v2: Avoid having a helper for manipulating VTOTAL register, and instead
just make the change where required. (Ville)
v3: Set crtc_vtotal instead of working with the bits directly (Ville).
Use intel_vrr_vmin_vtotal() to set the vtotal during readout. (Ville)
v4: Keep the reading part unchanged, and let it get overwritten for
cases where we use vrr.vmin. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.c     | 10 ++++++++++
 2 files changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b82b3d63be73..b447fca1c616 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2698,6 +2698,15 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
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
@@ -2758,6 +2767,15 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
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

