Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A27A259ED
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:50:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64C8A10E4E3;
	Mon,  3 Feb 2025 12:50:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mp5cugZb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F03C610E4E6;
 Mon,  3 Feb 2025 12:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738587049; x=1770123049;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lanf3oZMuE9+tpAU1eRNlFOQj0FMaLub8EZp2lQ/dsw=;
 b=mp5cugZbwACQ1xrnWmERXSqzB67B8qgf38C+2z+CC2fzt3Gh0QENGUI6
 5a4LZDnoui8R6MXkwHm0cPFuj/mG/0M4/dhbvBlm8nrcA9VN7T5LeZnd5
 hCk8JvZpimT0pznVAunNng/vgU6vKFLs0m8AR1f72G9CoornNHk2Tv72B
 /uFQwXQpMhMXYQF7LWuG5rgJ6EjhSDo2wosvXGPDL7SRoEresWjFs1Uu5
 o+h73Vl3GtJB25GHjzbQltlMzrqXAUP8KkANFwClamzLGco0uA/qsEni4
 xVc0xSXr2uTlPOGO5jpECik/Nit1nplFKp07qu9thY4tLUh3ybkPmOsAD Q==;
X-CSE-ConnectionGUID: Wdln8XxnRl+eM4FXwxzs6w==
X-CSE-MsgGUID: 8Sp8wGoKRNinScwD+Dhzmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548161"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548161"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:49 -0800
X-CSE-ConnectionGUID: XcTRnyD2TwKyt/itJ6SziQ==
X-CSE-MsgGUID: 5SYUV5Z3RpaB1/XdXGwPNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133529107"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:47 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 27/28] drm/i915/vrr: Always use VRR timing generator for MTL+
Date: Mon,  3 Feb 2025 18:08:39 +0530
Message-ID: <20250203123840.3855874-28-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
References: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
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

Currently VRR timing generator is used only when VRR is enabled by
userspace. From MTL+, gradually move away from older timing
generator and use VRR timing generator for fixed refresh rate also.

In such a case, Flipline Vmin and Vmax all are set to the Vtotal of the
mode, which effectively makes the VRR timing generator work in
fixed refresh rate mode.
The MSA Vtotal is derived from Vmax register.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index ab0fdb204442..206244714a61 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -297,6 +297,14 @@ void intel_vrr_prepare_fixed_timings(struct intel_crtc_state *crtc_state)
 	crtc_state->vrr.flipline = intel_vrr_fixed_rr_flipline(crtc_state);
 }
 
+static
+void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_state)
+{
+	intel_vrr_prepare_fixed_timings(crtc_state);
+	crtc_state->vrr.mode = INTEL_VRRTG_MODE_FIXED_RR;
+	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+}
+
 static
 int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
 {
@@ -361,7 +369,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 
 	vmin = intel_vrr_compute_vmin(crtc_state);
 
-	if (vmin >= vmax)
+	if (vmin >= vmax && !intel_vrr_always_use_vrr_tg(display))
 		return;
 
 	crtc_state->vrr.vmin = vmin;
@@ -376,10 +384,12 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	 */
 	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
 
-	if (crtc_state->uapi.vrr_enabled)
+	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
 		intel_vrr_compute_vrr_timings(crtc_state);
 	else if (is_cmrr_frac_required(crtc_state) && is_edp)
 		intel_vrr_compute_cmrr_timings(crtc_state);
+	else if (intel_vrr_always_use_vrr_tg(display))
+		intel_vrr_compute_fixed_rr_timings(crtc_state);
 	else
 		intel_vrr_prepare_fixed_timings(crtc_state);
 
@@ -522,7 +532,9 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
 	if (!HAS_VRR(display))
 		return false;
 
-	/* #TODO return true for platforms supporting fixed_rr */
+	if (DISPLAY_VER(display) >= 14)
+		return true;
+
 	return false;
 }
 
-- 
2.45.2

