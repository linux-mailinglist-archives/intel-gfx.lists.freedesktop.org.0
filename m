Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A02E0A4D66B
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 09:32:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55ED010E51A;
	Tue,  4 Mar 2025 08:32:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z9RCZ4bf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1209610E51A;
 Tue,  4 Mar 2025 08:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741077122; x=1772613122;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KLTXgdycyzeO2KAxM32HZKxHEQbhif8JsaS4g5LS8zo=;
 b=Z9RCZ4bfZApP+S1W3zQdico/ROL/9cWdPuoQsbi+OQ2qjBO1aL/GhtEc
 c5ycHSVWb4w1YScegfQ6zMWB//YC6ORXepGXn1Av97QBbUuO0IQcM/2Pv
 mPh0BeSGkL91qTjsW0uGH3nx6lK85YvjJnNHrzTY3c/WjKSYtv9ipUnVr
 KPEtoDFoyeLE24swggFdJPFWHAvYKNR/09Mo0f3MNAQ5xw6Sp6LCxHKLG
 SL43iNHesQlPn6Ax8WGJzd+2qppVg7VxwKv9U6t05mMaQ6+Bo2AiD6hNp
 aNA7DAda4pV/K33saCRQJPJTQHJYwWwb4WVZmopMf78eemvE+3GWkUOEA A==;
X-CSE-ConnectionGUID: FFVAQj5aRWWgklnILYPMGw==
X-CSE-MsgGUID: 3xASMSKQRwm4bAwpcGTr2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="45910139"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="45910139"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:32:00 -0800
X-CSE-ConnectionGUID: WxV8fJyMRKet29c2Hk8piQ==
X-CSE-MsgGUID: 091ciRB9QH2Gc8vXLbckYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="155492144"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:31:59 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 03/22] drm/i915/vrr: Make helpers for cmrr and vrr timings
Date: Tue,  4 Mar 2025 13:49:29 +0530
Message-ID: <20250304081948.3177034-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
References: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
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

Separate out functions for computing cmrr and vrr timings.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 45 +++++++++++++++---------
 1 file changed, 28 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index a88b77114867..db0ea206e26e 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -222,6 +222,30 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
 	return vtotal;
 }
 
+static
+void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
+{
+	crtc_state->vrr.enable = true;
+	crtc_state->cmrr.enable = true;
+	/*
+	 * TODO: Compute precise target refresh rate to determine
+	 * if video_mode_required should be true. Currently set to
+	 * false due to uncertainty about the precise target
+	 * refresh Rate.
+	 */
+	crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state, false);
+	crtc_state->vrr.vmin = crtc_state->vrr.vmax;
+	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
+	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+}
+
+static
+void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
+{
+	crtc_state->vrr.enable = true;
+	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+}
+
 static
 int intel_vrr_compute_vmin(struct intel_connector *connector,
 			   const struct drm_display_mode *adjusted_mode)
@@ -298,23 +322,10 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	 */
 	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
 
-	if (crtc_state->uapi.vrr_enabled) {
-		crtc_state->vrr.enable = true;
-		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
-	} else if (is_cmrr_frac_required(crtc_state) && is_edp) {
-		crtc_state->vrr.enable = true;
-		crtc_state->cmrr.enable = true;
-		/*
-		 * TODO: Compute precise target refresh rate to determine
-		 * if video_mode_required should be true. Currently set to
-		 * false due to uncertainty about the precise target
-		 * refresh Rate.
-		 */
-		crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state, false);
-		crtc_state->vrr.vmin = crtc_state->vrr.vmax;
-		crtc_state->vrr.flipline = crtc_state->vrr.vmin;
-		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
-	}
+	if (crtc_state->uapi.vrr_enabled)
+		intel_vrr_compute_vrr_timings(crtc_state);
+	else if (is_cmrr_frac_required(crtc_state) && is_edp)
+		intel_vrr_compute_cmrr_timings(crtc_state);
 
 	if (HAS_AS_SDP(display)) {
 		crtc_state->vrr.vsync_start =
-- 
2.45.2

