Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 552E0A953B7
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Apr 2025 17:51:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53F2410E27A;
	Mon, 21 Apr 2025 15:51:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aSbJEysq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47DD110E0ED;
 Mon, 21 Apr 2025 15:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745250668; x=1776786668;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xaErQpjTOFI5gGW8ELb86Uy2U3jv4OZOJmYA9XLXnlQ=;
 b=aSbJEysqwAD+fxFlNVCEPwP3Gw49hUPoT14JAvnnpMA48QKt9WJtbyWF
 V7aRnjuc8t7vZJRltySTL9qhknar+tUoFE8D+uq3pRT9mpIVRdsS2ptRq
 8KXW+Opcj/RuiBRVwKXXClNnXRP5qPlh2euknH59bsV4IOJMU3YLzMw2b
 7T+9m+ddSf33tO7P1ryMg311ZHFGJWZ82u30r3Y2t/kzNEX7wi1vtv5I6
 +cZKrCrpKicQBwuCLERs6C14EQYzsF7iMDZnqWrgNuaG3AhClTRSDu8dU
 gyoz5UxuHDGnrG/eQuivkMjGkKU4XJTZtxLn7lefhXHkYdAi0LDs2tC4g A==;
X-CSE-ConnectionGUID: oX2Kd+jNRE2b0azDbVLMAw==
X-CSE-MsgGUID: A/GJhD4+RJaqOhC9+9TJTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="57434058"
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="57434058"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 08:51:08 -0700
X-CSE-ConnectionGUID: EjnDYk0lTGyM0sq8z22GgQ==
X-CSE-MsgGUID: l0FnK8RVQE6vjBYTDCHOMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="162725559"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 21 Apr 2025 08:51:06 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	ankit.k.nautiyal@intel.com
Subject: [PATCH v2 01/13] drm/i915/vrr: Refactor vmin/vmax stuff
Date: Mon, 21 Apr 2025 21:18:48 +0530
Message-ID: <20250421154900.2095202-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Refactor vmin/vmax functions for better computation.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 41 +++++++++++-------------
 1 file changed, 19 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index c6565baf815a..adfd231eb578 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -146,37 +146,41 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
 		return crtc_state->vrr.pipeline_full + crtc_state->framestart_delay + 1;
 }
 
-int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
+static int intel_vrr_vtotal(const struct intel_crtc_state *crtc_state, int vmin_vmax)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	/* Min vblank actually determined by flipline */
 	if (DISPLAY_VER(display) >= 13)
-		return intel_vrr_vmin_flipline(crtc_state);
+		return vmin_vmax;
 	else
-		return intel_vrr_vmin_flipline(crtc_state) +
-			intel_vrr_real_vblank_delay(crtc_state);
+		return vmin_vmax + intel_vrr_real_vblank_delay(crtc_state);
 }
 
-int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
+static int intel_vrr_vblank_start(const struct intel_crtc_state *crtc_state,
+				  int vmin_vmax)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
+	return intel_vrr_vtotal(crtc_state, vmin_vmax) -
+			intel_vrr_vblank_exit_length(crtc_state);
+}
 
-	if (DISPLAY_VER(display) >= 13)
-		return crtc_state->vrr.vmax;
-	else
-		return crtc_state->vrr.vmax +
-			intel_vrr_real_vblank_delay(crtc_state);
+int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
+{
+	return intel_vrr_vtotal(crtc_state, intel_vrr_vmin_flipline(crtc_state));
+}
+
+int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
+{
+	return intel_vrr_vtotal(crtc_state, crtc_state->vrr.vmax);
 }
 
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
 {
-	return intel_vrr_vmin_vtotal(crtc_state) - intel_vrr_vblank_exit_length(crtc_state);
+	return intel_vrr_vblank_start(crtc_state, intel_vrr_vmin_flipline(crtc_state));
 }
 
 int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
 {
-	return intel_vrr_vmax_vtotal(crtc_state) - intel_vrr_vblank_exit_length(crtc_state);
+	return intel_vrr_vblank_start(crtc_state, crtc_state->vrr.vmax);
 }
 
 static bool
@@ -257,14 +261,7 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
 static
 int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
-	int crtc_vtotal = crtc_state->hw.adjusted_mode.crtc_vtotal;
-
-	if (DISPLAY_VER(display) >= 13)
-		return crtc_vtotal;
-	else
-		return crtc_vtotal -
-			intel_vrr_real_vblank_delay(crtc_state);
+	return intel_vrr_vtotal(crtc_state, crtc_state->hw.adjusted_mode.crtc_vtotal);
 }
 
 static
-- 
2.48.1

