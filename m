Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A5DA4D66C
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 09:32:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5132B10E51B;
	Tue,  4 Mar 2025 08:32:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IIsbE9LR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9670810E518;
 Tue,  4 Mar 2025 08:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741077120; x=1772613120;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=juqJ0qvFmDilx/F20PaSB7Cd1TJX/eYkO/z+meC5J0I=;
 b=IIsbE9LRD8K+AQZnyh/jyrUUrgScsAexOcScxF41ARy90JiXm0gHLeDr
 gUIdHheNguhRuGCxEVe36O7+4zseuyUblkqSMqxhFZ6qoRRfnPi/uIHFd
 Ei+wyXPabGweSqGGVN4gzJN4FgP0MbhnCg0RhtYjiDbkiy3jSZZJiEOyh
 q3zduo4QpaUi5ntRyyLLq/kCp2e4kIxK+TcnaDu5ewxwitEIBNl4RR9Fu
 jAaMEhPwtotq+RpkgjMRD66QX3Kp3sGMEfDEJZ5bfoDgZ8XXqCQk26PXy
 9OctAvr3nyWCpzTUip/h2uZgjB38u3BF8iHl5tV2HW48d7KE71SzfOHqT A==;
X-CSE-ConnectionGUID: fnZw18YEQ9muNWI+1Y/mIQ==
X-CSE-MsgGUID: Nv7pS4uxS2a49Q8Xa81sGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="45910138"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="45910138"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:31:58 -0800
X-CSE-ConnectionGUID: m68OkdrdRI6XMmsUnz7vrQ==
X-CSE-MsgGUID: ucqG2xPPTbaq5bY5XS2mTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="155492140"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:31:56 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 02/22] drm/i915:vrr: Separate out functions to compute vmin
 and vmax
Date: Tue,  4 Mar 2025 13:49:28 +0530
Message-ID: <20250304081948.3177034-3-ankit.k.nautiyal@intel.com>
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

Make helpers to compute vmin and vmax.

v2: Make the adjusted mode const (Ville)
Use reverse xmas tree order of declarations. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 38 +++++++++++++++++++-----
 1 file changed, 30 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 106bfaf6649b..a88b77114867 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -222,6 +222,34 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
 	return vtotal;
 }
 
+static
+int intel_vrr_compute_vmin(struct intel_connector *connector,
+			   const struct drm_display_mode *adjusted_mode)
+{
+	const struct drm_display_info *info = &connector->base.display_info;
+	int vmin;
+
+	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
+			    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
+	vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
+
+	return vmin;
+}
+
+static
+int intel_vrr_compute_vmax(struct intel_connector *connector,
+			   const struct drm_display_mode *adjusted_mode)
+{
+	const struct drm_display_info *info = &connector->base.display_info;
+	int vmax;
+
+	vmax = adjusted_mode->crtc_clock * 1000 /
+		(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
+	vmax = max_t(int, vmax, adjusted_mode->crtc_vtotal);
+
+	return vmax;
+}
+
 void
 intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			 struct drm_connector_state *conn_state)
@@ -232,7 +260,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	bool is_edp = intel_dp_is_edp(intel_dp);
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-	const struct drm_display_info *info = &connector->base.display_info;
 	int vmin, vmax;
 
 	/*
@@ -253,13 +280,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (HAS_LRR(display))
 		crtc_state->update_lrr = true;
 
-	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
-			    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
-	vmax = adjusted_mode->crtc_clock * 1000 /
-		(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
-
-	vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
-	vmax = max_t(int, vmax, adjusted_mode->crtc_vtotal);
+	vmin = intel_vrr_compute_vmin(connector, adjusted_mode);
+	vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
 
 	if (vmin >= vmax)
 		return;
-- 
2.45.2

