Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C97BCAFAA9E
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jul 2025 06:43:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DC4C10E3F8;
	Mon,  7 Jul 2025 04:43:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bZEpsuey";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4504710E3F8;
 Mon,  7 Jul 2025 04:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751863437; x=1783399437;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NjJdxkUYGJq5L1VWTjXCNZ5EsvTC+xJeEzkUOF8ZBhA=;
 b=bZEpsuey+SYQOW91LkBBPCAMMbMowXyArkSSZZQPA20ZIjhy1Vh9O1vm
 pe77SQ56aX1jhBFPkeEjSFzVVkUoyIVF370qPafRi6LJCl7isE2sR/DrI
 HVWIlSgZn4m2/DRPn8n2wxotqoXbgIVa/S8z68L8TCjqyHYPmJ2GxgWPU
 tj3xbGrpJpaAuBO4BkZDGjfbOprP+icTiKZcr/waTHHhXSqKcShAjyiVi
 dUPCTDz8pm1m2eEOS8NugRvJzTZd3CHuGc6KyP10X8BssIIzcKtUKlgIq
 CZ3hJhIZ3Uq+i/Zd3mM9VAa56ze+RPm19Nh9JEF+BdlYpy9QpcL7INT0S A==;
X-CSE-ConnectionGUID: Dxmt9aJlSoKp5i0WI6Gfhg==
X-CSE-MsgGUID: +e+sZoS7Q6ePQ1ia0Q9UIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11486"; a="54215817"
X-IronPort-AV: E=Sophos;i="6.16,293,1744095600"; d="scan'208";a="54215817"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2025 21:43:57 -0700
X-CSE-ConnectionGUID: Oq47HeGVQqOX7L3jjpJGEg==
X-CSE-MsgGUID: hCtZ5o8hQ3esYEIAr2KEZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,293,1744095600"; d="scan'208";a="155209904"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2025 21:43:56 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 3/4] drm/i915/vrr: Set vrr.vmin to min Vtotal
Date: Mon,  7 Jul 2025 10:03:16 +0530
Message-ID: <20250707043321.97343-4-ankit.k.nautiyal@intel.com>
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

Previously, when vrr.guardband was matched to vblank length, vrr.vmin was
set to crtc_vtotal for all cases to avoid having vrr.vmin changed when we
switch from fixed refresh rate timings to variable refresh rate timings.

Now that we are using an optimized vrr.guardband, we can simply set the
vrr.vmin to the lowest Vtotal (for highest refresh rate supported by the
panel) .

For non-vrr panels, the vrr.vmin stays the same i.e. crtc_vtotal.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 37 ++++++++++++++++--------
 1 file changed, 25 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index b73d99877ce3..780f91db3bc8 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -280,6 +280,9 @@ int intel_vrr_fixed_rr_vmin(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
+	if (crtc_state->vrr.in_range)
+		return crtc_state->vrr.vmin;
+
 	return intel_vrr_fixed_rr_vtotal(crtc_state) -
 		intel_vrr_flipline_offset(display);
 }
@@ -310,26 +313,37 @@ static
 void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_state)
 {
 	/*
-	 * For fixed rr,  vmin = vmax = flipline.
-	 * vmin is already set to crtc_vtotal set vmax and flipline the same.
+	 * For fixed rr vmax = flipline.
+	 * set vmax and flipline same as vtotal.
 	 */
 	crtc_state->vrr.vmax = crtc_state->hw.adjusted_mode.crtc_vtotal;
 	crtc_state->vrr.flipline = crtc_state->hw.adjusted_mode.crtc_vtotal;
 }
 
 static
-int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
+int intel_vrr_compute_fixed_vmin(struct intel_crtc_state *crtc_state)
 {
 	/*
-	 * To make fixed rr and vrr work seamless the guardband/pipeline full
-	 * should be set such that it satisfies both the fixed and variable
-	 * timings.
-	 * For this set the vmin as crtc_vtotal. With this we never need to
-	 * change anything to do with the guardband.
+	 * For non VRR supporting panels/config, set the vmin to crtc_vtotal.
+	 * This will help the case where VRR TG is used even for non-vrr panels/config.
 	 */
 	return crtc_state->hw.adjusted_mode.crtc_vtotal;
 }
 
+static
+int intel_vrr_compute_vmin(struct intel_connector *connector,
+			   const struct drm_display_mode *adjusted_mode)
+{
+	const struct drm_display_info *info = &connector->base.display_info;
+	int vmin;
+
+	vmin = adjusted_mode->crtc_clock * 1000 /
+		(adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
+	vmin = min_t(int, vmin, adjusted_mode->crtc_vtotal);
+
+	return vmin;
+}
+
 static
 int intel_vrr_compute_vmax(struct intel_connector *connector,
 			   const struct drm_display_mode *adjusted_mode)
@@ -376,13 +390,13 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (crtc_state->joiner_pipes)
 		crtc_state->vrr.in_range = false;
 
-	vmin = intel_vrr_compute_vmin(crtc_state);
-
 	if (crtc_state->vrr.in_range) {
 		if (HAS_LRR(display))
 			crtc_state->update_lrr = true;
 		vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
+		vmin = intel_vrr_compute_vmin(connector, adjusted_mode);
 	} else {
+		vmin = intel_vrr_compute_fixed_vmin(crtc_state);
 		vmax = vmin;
 	}
 
@@ -769,8 +783,7 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
 bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
 {
 	return crtc_state->vrr.flipline &&
-	       crtc_state->vrr.flipline == crtc_state->vrr.vmax &&
-	       crtc_state->vrr.flipline == intel_vrr_vmin_flipline(crtc_state);
+	       crtc_state->vrr.flipline == crtc_state->vrr.vmax;
 }
 
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
-- 
2.45.2

