Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D146A259DD
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:50:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EACD10E4BA;
	Mon,  3 Feb 2025 12:50:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O7IKCk/K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7FF610E4B7;
 Mon,  3 Feb 2025 12:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738587015; x=1770123015;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4dpfTtnzCSQzKVpymneY3zttUJHuo7gcQmusyCKvBEM=;
 b=O7IKCk/KBjscoMbWaTbmYFF+1kFGJgxzdu258v7N6AzsOV/B/P7HcV9j
 O7hfdV53kddVH4P6/5JDFQJ19t84G70JOj6X0+jbzlbCG3gWut4WY5aLF
 bw0FCyGdyFcbn6dSmC45GxArqUauVmPWe3r96sNzophdhPNytr4EGy1Dh
 NSoQI8cMQVU1jTL7BZ/LfRmLpBRAncGfljT4qeS7Hwv1Mg+fw4gXzHrbJ
 TElM9WWuPiPxlK5mD37yfUnCeiILMSnFOMCkPTWW662qwpVyuup5Rozdo
 8ILoF8i3q7JCQHLyL18JB8D8ayPC9PscXq+eGLU+bPmJdtguCBQu3Wsla w==;
X-CSE-ConnectionGUID: Fbyh+L+1Q/+IlEZou9kUNA==
X-CSE-MsgGUID: cA0lfhf0SB26nPcMBxGoZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548064"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548064"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:15 -0800
X-CSE-ConnectionGUID: 73NtNOTpRRWfTpy6ObQJ1w==
X-CSE-MsgGUID: I0YB5XZEQhSEUJsX+jG4Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133528967"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:12 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 12/28] drm/i915/vrr: Use crtc_vtotal for vmin
Date: Mon,  3 Feb 2025 18:08:24 +0530
Message-ID: <20250203123840.3855874-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
References: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
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

To have fixed refresh rate with VRR timing generator the
guardband/pipeline full can't be programmed on the fly. So we need to
ensure that the values satisfy both the fixed and variable refresh
rates.

Since we compute these value based on vmin, lets set the vmin to
crtc_vtotal for both fixed and variable timings instead of using the
current refresh rate based approach. This way the guardband remains
sufficient for both cases.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 34 +++++++++++++++++-------
 1 file changed, 25 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 48cfcc3ba7b4..77e069d3f393 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -246,18 +246,34 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
 
+/*
+ * For fixed refresh rate mode Vmin, Vmax and Flipline all are set to
+ * Vtotal value.
+ */
 static
-int intel_vrr_compute_vmin(struct intel_connector *connector,
-			   struct drm_display_mode *adjusted_mode)
+int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state)
 {
-	int vmin;
-	const struct drm_display_info *info = &connector->base.display_info;
+	struct intel_display *display = to_intel_display(crtc_state);
+	int crtc_vtotal = crtc_state->hw.adjusted_mode.crtc_vtotal;
 
-	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
-			    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
-	vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
+	if (DISPLAY_VER(display) >= 13)
+		return crtc_vtotal;
+	else
+		return crtc_vtotal -
+			intel_vrr_real_vblank_delay(crtc_state);
+}
 
-	return vmin;
+static
+int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
+{
+	/*
+	 * To make fixed rr and vrr work seamless the guardband/pipeline full
+	 * should be set such that it satisfies both the fixed and variable
+	 * timings.
+	 * For this set the vmin as crtc_vtotal. With this we never need to
+	 * change anything to do with the guardband.
+	 */
+	return intel_vrr_fixed_rr_vtotal(crtc_state);
 }
 
 static
@@ -315,7 +331,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (HAS_LRR(display))
 		crtc_state->update_lrr = true;
 
-	vmin = intel_vrr_compute_vmin(connector, adjusted_mode);
+	vmin = intel_vrr_compute_vmin(crtc_state);
 	vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
 
 	if (vmin >= vmax)
-- 
2.45.2

