Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8EAA59457
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 13:28:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D030810E426;
	Mon, 10 Mar 2025 12:28:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eX2y6Li7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BEE210E419;
 Mon, 10 Mar 2025 12:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741609702; x=1773145702;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=juqJ0qvFmDilx/F20PaSB7Cd1TJX/eYkO/z+meC5J0I=;
 b=eX2y6Li7Ng+qgDMuQuiRMVcLBSLNNhvvI3flMs/FkK1q/oOuQZfy/VN0
 oiwtKEKbtHndRukTA86wZvIrFYB5FENMlCTM6Xi+iNmSrwrw81Y2Ex+3g
 4hMkbOK0iF59FAzWY0YdX9TlPQtbl2yI7mR82XgqszWON8Gh1OVWUHuab
 SU6joIXh8tdT21iBWi8T16I+54ro+lK4TmuD1B7LrruoUeJig6NkR47df
 3LQsdEd7tqFNJQv7Y6t908qqKP6MFDZzx5YyFM8VJm6klN4Uwfmtzuol8
 DVz460BmQOWcrGcnuxON7dvtrtV+E1oCf+AZJpAv2eCtKB0Y6v99Prk0t g==;
X-CSE-ConnectionGUID: TgQMjk1CTQyLCdmSRvz0yQ==
X-CSE-MsgGUID: I6HCW+s+Rm2NfNneZwFcKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="65057266"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="65057266"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 05:28:18 -0700
X-CSE-ConnectionGUID: Xg+xPjsOShq6LJO+zc4vGw==
X-CSE-MsgGUID: 2UsjCPHBSyK1TaZ3K1N5Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="143180494"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 05:28:16 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 02/21] drm/i915:vrr: Separate out functions to compute vmin
 and vmax
Date: Mon, 10 Mar 2025 17:45:56 +0530
Message-ID: <20250310121615.1077079-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
References: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
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

