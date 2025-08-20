Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DF2B2D5FA
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 10:18:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9136310E6AF;
	Wed, 20 Aug 2025 08:18:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ewlOubNb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D711710E6BB;
 Wed, 20 Aug 2025 08:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755677934; x=1787213934;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=In7YlSdKEBsYm2y5mDxsL48ymJsmuL3thSEv+1B+hhE=;
 b=ewlOubNbu1mhRMZAOqNHWP2klBfbfFYKTujfehDlqAYprhWu5Dn/v04C
 qQBqo7FCdDE9Tggp/Gtrkv5nLEimNbjFKYHzf+TZ7QzZF0eAI46XQE+rX
 ZISrjnmQbnWk474OjB0ZOccyYWMHDnAwi7/aEhLtbgRLASTXY4NVPCDmz
 aJCyTgF/b4mNku1SX2V6r02DpyFUXIL1fF+ZVvPvI0B0K8TqELSinfOrk
 AlH5BLXB4VRg67ujsDNmWG5RlQlK+e/LGZzrxmSbUVMUXsgHHC7RLhkyo
 LjlsiLPWjqVivYQaRbDR5NHpNhf2C1nIew3Y1DvRFIDwp1apbG82pBeBB w==;
X-CSE-ConnectionGUID: 3tCPvEA0SO+T67f5VZuqOw==
X-CSE-MsgGUID: YiQHFks5Rse4+qWrEgEkzQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="69316809"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="69316809"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 01:18:53 -0700
X-CSE-ConnectionGUID: gaDbx+DbQK6bFP7FGvRUow==
X-CSE-MsgGUID: daAZ1HzVSx6t4kxMS04NDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="172292796"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 01:18:52 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 07/12] drm/i915/vrr: Use vrr.sync_start for getting vtotal
Date: Wed, 20 Aug 2025 13:34:45 +0530
Message-ID: <20250820080451.2634888-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250820080451.2634888-1-ankit.k.nautiyal@intel.com>
References: <20250820080451.2634888-1-ankit.k.nautiyal@intel.com>
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

