Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 072D3B1A38C
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 15:38:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9413F10E52A;
	Mon,  4 Aug 2025 13:38:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CfpApEth";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45C7D10E524;
 Mon,  4 Aug 2025 13:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754314737; x=1785850737;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=In7YlSdKEBsYm2y5mDxsL48ymJsmuL3thSEv+1B+hhE=;
 b=CfpApEthh5fmu4pJvce0zVWrQrZWyYf9MKVe+EnHXqME6icHUrUohvoH
 0z2StUrV+rNA+JMoub6oX/XDLkptpdD3Lck4J6QxW9Y4nGqcvkLzOoodK
 9i/STpB1G5YA4bWaRP1kKatic9Sr2nrHOXF1UWSJRiq0jekjZIuRYxvzO
 xjUdXrA13IioXfquyzurvLdra52czFyb7M4zVrkKykfOkfsvlVVuCdGUM
 mjp0KvoVmYNVlO/xYStPulHCEcbyP8zjQurKX27x/FnwJcEJ5Pni04wiu
 zXq+c+tHHHk5pI85vTX6rPUCYMLrWnGNN7D70e4xiYlg6Fk9hZ/tTiPPR g==;
X-CSE-ConnectionGUID: UpQTs10QTfeekotLFKjvHA==
X-CSE-MsgGUID: eppprrk3RLCPvo7XZCjJfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56447388"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="56447388"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:38:57 -0700
X-CSE-ConnectionGUID: 17XOc5YnRAWdEwaIe5r8Qw==
X-CSE-MsgGUID: k7HMC7f3TMqX/mDMfwxkZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163430670"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:38:55 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 09/15] drm/i915/vrr: Use vrr.sync_start for getting vtotal
Date: Mon,  4 Aug 2025 18:54:34 +0530
Message-ID: <20250804132441.990441-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250804132441.990441-1-ankit.k.nautiyal@intel.com>
References: <20250804132441.990441-1-ankit.k.nautiyal@intel.com>
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
index 3eed37f271b0..46a85720411f 100644
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

