Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9FC7F66E9
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 20:05:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E318B10E338;
	Thu, 23 Nov 2023 19:05:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 420C110E338
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 19:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700766333; x=1732302333;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pY6+HUzn0E1puNSFKxbeaGvfsXNqCbMxdokU90m4tAc=;
 b=EwW/vIXlFIF0DIqoPiDtY+4YlEWh3C1qfwkEIQObrZQAEAGgtFjznMYt
 D7XSyq+iSkgC1Dm5VCoVrftUsg7BAbGZpOlCTd9DK2NPTw7cBxuAYzZPQ
 Pt0Muz684KMmO03+eRK1ss7IWVUUdhhswZIGQpK8gYbxjfYLiTcaVNLwU
 ytAz9EbwiSvTOP7NDeQaCuco4c1qQNQ9AlUS5jfO+vA7iHYdJBpNtE2xf
 i9hHgATPdD1fL1JDEwGqx9/z49LAG+wn8Srh29+PeV2q3s/fy0AiLFu4+
 P67XWA/11CZ6FL5cKP2Ew+/jzxSOAYypGwrmqam1sB0V/D3Nd7E/Yr24x A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="371668640"
X-IronPort-AV: E=Sophos;i="6.04,222,1695711600"; d="scan'208";a="371668640"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2023 11:05:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="771059344"
X-IronPort-AV: E=Sophos;i="6.04,222,1695711600"; d="scan'208";a="771059344"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga007.fm.intel.com with ESMTP; 23 Nov 2023 11:05:24 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Nov 2023 00:30:24 +0530
Message-Id: <20231123190024.34455-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231123190024.34455-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20231123190024.34455-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 1/1] drm/i915/display: Update vtotal based on
 closest possible panel timings
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For edp VRR supported panel, vtotal should be updated
based on closest available panel timings and adjusted_mode
panel configuration, instead of rounding up to nearest possible
integer.  This is to facilitate user about the refreh rate
they're going to get when it is slightly off from list of available modes.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 53 ++++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_vrr.h   |  2 +
 2 files changed, 45 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 0d8e5320a4f8..f53cea2d7b29 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -197,26 +197,56 @@ enum drrs_type intel_panel_drrs_type(struct intel_connector *connector)
 	return connector->panel.vbt.drrs_type;
 }
 
+static int
+mode_vrefresh_k(const struct drm_display_mode *mode)
+{
+	unsigned int num, den;
+
+	if (mode->htotal == 0 || mode->vtotal == 0)
+		return 0;
+
+	num = mode->clock;
+	den = mode->htotal * mode->vtotal;
+
+	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
+		num *= 2;
+	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
+		den *= 2;
+	if (mode->vscan > 1)
+		den *= mode->vscan;
+
+	return mul_u64_u64_div_u64(num,
+							   1000 * FIXED_POINT_PRECISION,
+							   den);
+}
+
 int intel_panel_compute_config(struct intel_connector *connector,
 			       struct drm_display_mode *adjusted_mode)
 {
 	const struct drm_display_mode *fixed_mode =
 		intel_panel_fixed_mode(connector, adjusted_mode);
-	int vrefresh, fixed_mode_vrefresh;
+	int vrefresh_int, vrefresh_fraction;
+	int fixed_mode_vrefresh_int;
+	int vrefresh_k = mode_vrefresh_k(adjusted_mode);
+	int fixed_mode_vrefresh_k = mode_vrefresh_k(fixed_mode);
 	bool is_vrr;
 
 	if (!fixed_mode)
 		return 0;
 
-	vrefresh = drm_mode_vrefresh(adjusted_mode);
-	fixed_mode_vrefresh = drm_mode_vrefresh(fixed_mode);
+	vrefresh_int = vrefresh_k / FIXED_POINT_PRECISION;
+	vrefresh_fraction = do_div(vrefresh_k, FIXED_POINT_PRECISION);
+	fixed_mode_vrefresh_int = fixed_mode_vrefresh_k / FIXED_POINT_PRECISION;
 
 	/*
 	 * Assume that we shouldn't muck about with the
 	 * timings if they don't land in the VRR range.
 	 */
-	is_vrr = intel_vrr_is_in_range(connector, vrefresh) &&
-		intel_vrr_is_in_range(connector, fixed_mode_vrefresh);
+	is_vrr =
+		intel_vrr_is_in_range(connector,
+				      drm_mode_vrefresh(adjusted_mode)) &&
+		intel_vrr_is_in_range(connector,
+				      drm_mode_vrefresh(fixed_mode));
 
 	if (!is_vrr) {
 		/*
@@ -225,11 +255,12 @@ int intel_panel_compute_config(struct intel_connector *connector,
 		 * for Xorg since it likes to automagically cook up modes with slightly
 		 * off refresh rates.
 		 */
-		if (abs(vrefresh - fixed_mode_vrefresh) > 1) {
+		if (abs(vrefresh_int - fixed_mode_vrefresh_int) > 1) {
 			drm_dbg_kms(connector->base.dev,
 				    "[CONNECTOR:%d:%s] Requested mode vrefresh (%d Hz) does not match fixed mode vrefresh (%d Hz)\n",
 				    connector->base.base.id, connector->base.name,
-				    vrefresh, fixed_mode_vrefresh);
+				    DIV_ROUND_UP(vrefresh_k, 1000),
+					DIV_ROUND_UP(fixed_mode_vrefresh_k, 1000));
 
 			return -EINVAL;
 		}
@@ -237,10 +268,12 @@ int intel_panel_compute_config(struct intel_connector *connector,
 
 	drm_mode_copy(adjusted_mode, fixed_mode);
 
-	if (is_vrr && fixed_mode_vrefresh != vrefresh)
+	if (is_vrr && fixed_mode_vrefresh_k != vrefresh_k)
 		adjusted_mode->vtotal =
-			DIV_ROUND_CLOSEST(adjusted_mode->clock * 1000,
-					  adjusted_mode->htotal * vrefresh);
+			mul_u64_u32_div(adjusted_mode->clock * 1000,
+					FIXED_POINT_PRECISION,
+					adjusted_mode->htotal *
+					(vrefresh_int * FIXED_POINT_PRECISION + vrefresh_fraction));
 
 	drm_mode_set_crtcinfo(adjusted_mode, 0);
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 89937858200d..4bfabaac9ac8 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -13,6 +13,8 @@ struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc_state;
 
+#define FIXED_POINT_PRECISION	100
+
 bool intel_vrr_is_capable(struct intel_connector *connector);
 bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh);
 void intel_vrr_check_modeset(struct intel_atomic_state *state);
-- 
2.25.1

