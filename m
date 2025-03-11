Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C98A5BCB2
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 10:49:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 401F810E551;
	Tue, 11 Mar 2025 09:49:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bk4ubPEl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5465210E54F;
 Tue, 11 Mar 2025 09:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741686596; x=1773222596;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KLTXgdycyzeO2KAxM32HZKxHEQbhif8JsaS4g5LS8zo=;
 b=bk4ubPElxYHF1vpDXy+Y8ro80PxE49f2QTsaCxW/qXb1Hu02N2rimbgO
 xSXjTveV0fPQJxTc0jrlDn3HDbPP2XXzI//8ZbrbXWUOOZ8I34vZ+J/dc
 hroKjCsHs/GsLVCxaDqJLUTUsndbpyZwVKbezKbwls/P7OQE8OJQQ7DXc
 azbxGSt+ou9tBxaAu56fdliZe+QVTZ0fOe13KZ0cntoKPFYEU9wb7Jx7o
 H69OyDwcu07rblQAw9GbMpET66dzY79ZSRtymsAh0FXpnQLpKju5W3c/J
 lRNOk/Bto+nIoG1JxviYL0NAjd1SckuR/tg4shJibp7EAIxccCmgPWCib g==;
X-CSE-ConnectionGUID: Xw8103pGQ9aMdusXsjrEVQ==
X-CSE-MsgGUID: gB4AeYkZSZCXSEnq+dIfrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="45499805"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="45499805"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 02:49:56 -0700
X-CSE-ConnectionGUID: jmRxuF2DSpq0c5SbeEKAeA==
X-CSE-MsgGUID: GJ2tLl0eTzmuqevSQEj/dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="125319648"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 02:49:55 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [RESEND PATCH 3/8] drm/i915/vrr: Make helpers for cmrr and vrr timings
Date: Tue, 11 Mar 2025 15:07:46 +0530
Message-ID: <20250311093751.1329043-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250311093751.1329043-1-ankit.k.nautiyal@intel.com>
References: <20250311093751.1329043-1-ankit.k.nautiyal@intel.com>
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

