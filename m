Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BB3AB08D6
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 05:22:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB85710E28C;
	Fri,  9 May 2025 03:22:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J9Y1KsWy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB84F10E289;
 Fri,  9 May 2025 03:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746760943; x=1778296943;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=I0N2VmO+epRVRCjiPpKMw96lDMm9GtLY0nd9kR11/8w=;
 b=J9Y1KsWyNG5C9UGZ527Aa6neBdRjBf8nuV/Zqo+lH3bYb1vB3BpcGwGs
 /DLU+Fg0TL36ycla92LzN8MeK5JjQJkcri31R3M+HTbHMX5pYfcdgjC68
 e75cxqBCqeE7HdBvX8SgPrd870rY+/foQ+rr8vrkDjEszjvY+V5LXerCF
 uhUF8/R7rBtsbwyoobYpJQn3PcotMG96GRKQdI/ZkZ47Nymo3wJNY6vo9
 kgvk2oMXQWjsU3JTo8K9Fw30sMWgg717+Gt2DsMZjUekaIE8hWcQR2QzM
 RGrz154F8qooh0UGwWcYBnEQovV7FBTotkKUT8fGRwaTxLjCSgQvee4/U g==;
X-CSE-ConnectionGUID: 9ZveC343Q5OY2smZCggQUw==
X-CSE-MsgGUID: LtW9mqBGRsS7kqaVx7B8Vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="59976123"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="59976123"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 20:22:23 -0700
X-CSE-ConnectionGUID: jZaRttWPQrGzmZTpDTvwig==
X-CSE-MsgGUID: EGHBppuHQqClQya4xBO9yQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="173660735"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 20:22:21 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH] drm/i915/vrr: Set vrr.vmin to min Vtotal to re-enable LRR for
 PTL
Date: Fri,  9 May 2025 08:41:07 +0530
Message-ID: <20250509031107.958280-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

Currently in intel_vrr_compute_config, we set vrr.vmin to crtc_vtotal for
all cases to avoid having vrr.vmin changed when we switch from
fixed refresh rate timings to variable refresh rate timings. This works for
all cases, except for LRR case where user can change the clock so as to
seamlessly switch to a lower refresh rate only for a VRR supporting panel.

In LRR case the crtc_vtotal changes for the mode, and due to which vrr.vmin
changes and therefore the guardband also changes. Since we cannot change
the guardband on the fly when VRR Timing Generator is on, this gets
rejected.

To overcome this, for panels that support VRR, instead of setting the
vrr.vmin to crtc_vtotal, we set that to the lowest Vtotal (for highest
Refresh rate supported by the panel). For non-vrr panels, the vrr.vmin
stays the same i.e. crtc_vtotal.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 64 ++++++++++++++++--------
 1 file changed, 42 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index c6565baf815a..f0949a598f53 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -278,6 +278,9 @@ int intel_vrr_fixed_rr_vmin(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
+	if (crtc_state->vrr.in_range)
+		return crtc_state->vrr.vmin;
+
 	return intel_vrr_fixed_rr_vtotal(crtc_state) -
 		intel_vrr_flipline_offset(display);
 }
@@ -308,26 +311,37 @@ static
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
@@ -374,13 +388,13 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
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
 
@@ -671,8 +685,7 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
 bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
 {
 	return crtc_state->vrr.flipline &&
-	       crtc_state->vrr.flipline == crtc_state->vrr.vmax &&
-	       crtc_state->vrr.flipline == intel_vrr_vmin_flipline(crtc_state);
+	       crtc_state->vrr.flipline == crtc_state->vrr.vmax;
 }
 
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
@@ -713,16 +726,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 		crtc_state->vrr.vmin = intel_de_read(display,
 						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
 
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
@@ -732,6 +735,23 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 			crtc_state->vrr.vsync_end =
 				REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
 		}
+		/*
+		 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
+		 * bits are not filled. For fixed timings the vmax vtotal can be used to
+		 * fill the VTOTAL. For variable timings, we need to compute the vtotal.
+		 */
+		if (intel_vrr_always_use_vrr_tg(display)) {
+			u32 crtc_vtotal;
+
+			if (intel_vrr_is_fixed_rr(crtc_state))
+				crtc_vtotal = intel_vrr_vmax_vtotal(crtc_state);
+			else
+				crtc_vtotal = intel_vrr_vmin_vtotal(crtc_state) +
+					      crtc_state->vrr.guardband +
+					      crtc_state->vrr.vsync_start +
+					      crtc_state->vrr.vsync_end + 1;
+			crtc_state->hw.adjusted_mode.crtc_vtotal = crtc_vtotal;
+		}
 	}
 
 	vrr_enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
-- 
2.45.2

