Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0C8A1B886
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:11:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD23F10E994;
	Fri, 24 Jan 2025 15:11:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fvfTEGib";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8748610E994;
 Fri, 24 Jan 2025 15:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731516; x=1769267516;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jBCJbk5UgWjqtP1Uxo9n+hP2CcrRl5kXG0ns/2mVy2c=;
 b=fvfTEGibduD5nakViGhTXtMCue8B2tP0ysKiMkLdcXOt7SuoShwXCtn3
 InNxWN+e339EB1i8kV7Va3hnUU82Nwe88DiAoBDlmCkYY+rF6qQPbP5NW
 5nFOdyMFI3EtNUSldd6g3OBvk26oH59IEHr3nq0AdfkhEDs7MIw4HdIat
 ZCsP7QRsH1THLagx7CDBVYC1Wv63z/OGsKsowrU7X5K/AQn0Ed7vfWqA7
 feDvXfOvkbGHRH+j1sypOkXYtlRdzFF0mkNqaOqXq+G978i0xDDf85U2L
 dL3Ozh4DjNh2tf7H4mq8jN6px7bbIArLGSCJBFjnBI0RnJ7cbyL84wmU/ Q==;
X-CSE-ConnectionGUID: R2q6Ad2IT8eqmsK3YEb+oQ==
X-CSE-MsgGUID: y/mKnRX0S4WQU6VNFWmsMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177394"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177394"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:11:55 -0800
X-CSE-ConnectionGUID: 86YZ79FiSAqS0qG4XnnLOQ==
X-CSE-MsgGUID: lxEq6pBPRne1JYZ6mWraEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221221"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:11:53 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 09/35] drm/i915:vrr: Separate out functions to compute vmin
 and vmax
Date: Fri, 24 Jan 2025 20:29:54 +0530
Message-ID: <20250124150020.2271747-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
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

Make helpers to compute vmin and vmax.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 39 +++++++++++++++++++-----
 1 file changed, 31 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index c6c38f089a05..a6d8751b6719 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -239,6 +239,35 @@ void intel_vrr_prepare_vrr_timings(struct intel_crtc_state *crtc_state, int vmin
 	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
 }
 
+static
+int intel_vrr_compute_vmin(struct intel_connector *connector,
+			   struct drm_display_mode *adjusted_mode)
+{
+	int vmin;
+	const struct drm_display_info *info = &connector->base.display_info;
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
+			   struct drm_display_mode *adjusted_mode)
+{
+	int vmax;
+	const struct drm_display_info *info = &connector->base.display_info;
+
+	vmax = adjusted_mode->crtc_clock * 1000 /
+		(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
+
+	vmax = max_t(int, vmax, adjusted_mode->crtc_vtotal);
+
+	return vmax;
+}
+
 void
 intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			 struct drm_connector_state *conn_state)
@@ -249,7 +278,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	bool is_edp = intel_dp_is_edp(intel_dp);
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-	const struct drm_display_info *info = &connector->base.display_info;
 	int vmin, vmax;
 
 	/*
@@ -270,13 +298,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
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

