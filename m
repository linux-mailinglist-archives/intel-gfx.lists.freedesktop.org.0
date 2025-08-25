Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCDDB33FFB
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Aug 2025 14:49:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B43D110E468;
	Mon, 25 Aug 2025 12:49:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JthVAH3f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 435FC10E465;
 Mon, 25 Aug 2025 12:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756126187; x=1787662187;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bz9FaiO0jXm0/x/zxPcJEeB+MRp817uB2yDxjQuvgm4=;
 b=JthVAH3f7to1t6R0r186s/z28wTpXHCd+DScKaDCOnZZXnFhUnrY0ofO
 1XOcubkXcfZloB5EHj0+05EI4qMoopCU7M2Kj1otLcJ/dPfiNsrFSPvdN
 dcGw7JOYm+VywikO8itAk/G1xK5rD22xO5jjZmwVTjf9wDArp77tJWW8z
 O4bZ1pqtxCEFDomtWk9BpSffGqsmkaH3SAhkBGPPauRPSEOlOvAC3GJwv
 IhjHdW1VkT8TkzRAcfrh4A3YYe/oBTZ1TDNeqSZ0h7xNW9Fpu8fvi4DRp
 Me/+94pCfgBS32WRdtHaSMRAP8fPpa6ujztpiBIZieliGu40T2RFjKn5V A==;
X-CSE-ConnectionGUID: 5mDRTAkLQe+Ln+BNJKgQpQ==
X-CSE-MsgGUID: sCaY6x7ARHmp2PncW7/lsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62164123"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62164123"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 05:49:46 -0700
X-CSE-ConnectionGUID: o8+AYs2eT6+rLNWwVD9DPw==
X-CSE-MsgGUID: iVF32fgDQf+W15GpvAJCQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,213,1751266800"; d="scan'208";a="200229976"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 05:49:44 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 07/12] drm/i915/vrr: Use vrr.sync_start for getting vtotal
Date: Mon, 25 Aug 2025 18:05:43 +0530
Message-ID: <20250825123548.3022474-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250825123548.3022474-1-ankit.k.nautiyal@intel.com>
References: <20250825123548.3022474-1-ankit.k.nautiyal@intel.com>
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

Currently, in intel_vrr_get_config() crtc_vtotal is computed from
vrr.vmin vtotal, since the VTOTAL.Vtotal bits are deprecated.
Since vmin is currently set to crtc_vtotal, this gives us the vtotal.
However, as we move to optimized guardband, vmin will be modified to set
to the minimum Vtotal for highest refresh rate supported.

Instead of depending on vmin, compute vtotal from crtc_vsync_start and
vrr.vsync_start. This works since vrr.vsync_start is measured from the
end of vblank, and crtc_vsync_start is measured from start of the
scanline. Together their sum is equal to the crtc_vtotal.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 1cd15c9ddd7f..862adddcfebb 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -735,17 +735,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 						     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
 		crtc_state->vrr.vmin = intel_de_read(display,
 						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
-
-		/*
-		 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
-		 * bits are not filled. Since for these platforms TRAN_VMIN is always
-		 * filled with crtc_vtotal, use TRAN_VRR_VMIN to get the vtotal for
-		 * adjusted_mode.
-		 */
-		if (intel_vrr_always_use_vrr_tg(display))
-			crtc_state->hw.adjusted_mode.crtc_vtotal =
-				intel_vrr_vmin_vtotal(crtc_state);
-
 		if (HAS_AS_SDP(display)) {
 			trans_vrr_vsync =
 				intel_de_read(display,
@@ -755,6 +744,16 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 			crtc_state->vrr.vsync_end =
 				REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
 		}
+		/*
+		 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
+		 * bits are not filled. Since vrr.vsync_start is computed as:
+		 * crtc_vtotal - crtc_vsync_start, we can derive vtotal from
+		 * vrr.vsync_start and crtc_vsync_start.
+		 */
+		if (intel_vrr_always_use_vrr_tg(display))
+			crtc_state->hw.adjusted_mode.crtc_vtotal =
+				crtc_state->hw.adjusted_mode.crtc_vsync_start +
+				crtc_state->vrr.vsync_start;
 	}
 
 	vrr_enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
-- 
2.45.2

