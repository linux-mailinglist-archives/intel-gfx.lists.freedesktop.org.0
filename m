Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E79A35D6E
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 13:22:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D13F310EC6C;
	Fri, 14 Feb 2025 12:22:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BvI20Uhb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7976910E2DD;
 Fri, 14 Feb 2025 12:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739535751; x=1771071751;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vRlK2gf+MKc71W+WrbPva6t+K2F2TiN0cUA7l4H08FQ=;
 b=BvI20Uhb3wYUzy9Kg+JuqGLsTw3NBRWpkGmAhugWuibNcelQiL5MpiwZ
 1seUzUgtU7D/Ket4T82L8wcHkW6fuhJiUiB1P/Mxf/RDv9AuUQ7JSgpPA
 yIxpVp8OgoYmEKNTGVRxjEUMxrdPdIkCTcYKKtrYvxZ97Lz9rfGrJvEEY
 rTNNg2q2Z8FSTCYqmTffbx5e77WvlqUcVjLohhARw0UDLGct/fRu+5RDI
 FyHCdbIm00MMETeaACoVH6yS6klaAI8Ya4O04EtWzIMB7vJwa2I47tsko
 PQZH9XH6fCDABmeoCjp6XyEFHCK1AN2xmQhW5jXspKlXtjE2EhC7I9B0j g==;
X-CSE-ConnectionGUID: n8DUpw7BQfCiL17GAXxiLA==
X-CSE-MsgGUID: 24heR/MaRNOTbJ1sd38gGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="51255989"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="51255989"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:22:30 -0800
X-CSE-ConnectionGUID: ZDvG83kuTOOwCaATBDgAOw==
X-CSE-MsgGUID: Vlvcm4I6SmS9SRGbqpuv7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="113309522"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:22:28 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 02/19] drm/i915:vrr: Separate out functions to compute vmin
 and vmax
Date: Fri, 14 Feb 2025 17:41:12 +0530
Message-ID: <20250214121130.1808451-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
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
index 106bfaf6649b..a435b8d5b631 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -222,6 +222,35 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
 	return vtotal;
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
@@ -232,7 +261,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	bool is_edp = intel_dp_is_edp(intel_dp);
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-	const struct drm_display_info *info = &connector->base.display_info;
 	int vmin, vmax;
 
 	/*
@@ -253,13 +281,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
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

