Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E54AFAA9D
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jul 2025 06:43:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E95F10E3F6;
	Mon,  7 Jul 2025 04:43:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FRnM4yYg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE18510E3F3;
 Mon,  7 Jul 2025 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751863433; x=1783399433;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lySCfT0sOYiTS/XCla5zLSy7Tr6493WD8scychd1etk=;
 b=FRnM4yYgJ4DipXEt/1Su4lGAUT/7sH9t/reCsyYl1q+rZWtVkJSitoY+
 G8IuQ5SOUjgdE+KhWzUlnmOOFZPvoy2jzNxAkKlHqez9PIA1FG2zygg9K
 H1PsqJ1x3a5bvrKM9y5ILxXD4MDhueH/v81Jq+lmodLIHwY7CTlA+XDsh
 y2O7I6hddImGrAS+cGltQO4Mb+utT8yEz647fr8GduhC/HPhX6IguYuDd
 M7tohr5bUwCJSjRQQYtfRDfL9W0Gl7it1ssZDCXupj3Vv8qTl+3Mgmbpf
 wrWpIsCbXj8XoqE+ox8876T7vyBT7NMdYCp5oJGrgMUGogK1/TQdWSyEV w==;
X-CSE-ConnectionGUID: hBt6aOpFS8G8g3RNCY90TA==
X-CSE-MsgGUID: YbQNAMuiRlajZzrRsWuJiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11486"; a="54215815"
X-IronPort-AV: E=Sophos;i="6.16,293,1744095600"; d="scan'208";a="54215815"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2025 21:43:53 -0700
X-CSE-ConnectionGUID: VTvshfgHT7SySXWd0FOa4g==
X-CSE-MsgGUID: b+PAKiTqQTCWNeiMOB6TZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,293,1744095600"; d="scan'208";a="155209888"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2025 21:43:52 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/4] drm/i915/vrr: Use vrr.sync_start for getting vtotal
Date: Mon,  7 Jul 2025 10:03:14 +0530
Message-ID: <20250707043321.97343-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250707043321.97343-1-ankit.k.nautiyal@intel.com>
References: <20250707043321.97343-1-ankit.k.nautiyal@intel.com>
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

