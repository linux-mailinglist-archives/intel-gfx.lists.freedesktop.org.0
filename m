Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 587B1A41557
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 07:30:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB9F310E151;
	Mon, 24 Feb 2025 06:30:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MIUItSTa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EC1410E14D;
 Mon, 24 Feb 2025 06:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740378602; x=1771914602;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t8Do6t8HwG1kXcNYpV8b29EEl7wCv9NwbqfU21MgrFM=;
 b=MIUItSTaz+/+mLeQm0vnx+nSkBoG4ZS1xr4L98Xwo4ZfvjCdbnSfNKNY
 Jb5e32NxmwbGLG7YqZLIONWsrt5UnNhbPzCLDtYb24B73tfDKuNvPlGhr
 XZVcSLE/B1wmhSXNMCPfvHdK4ydcREmTYR8vjavf1TilzvJBDGqTDl0Lx
 zLW6AoQrmar6seHhYD/FakunVArSPu11LZ6Wy1hM8ke2y6ax4cWcqYyfF
 EAZy6X6vZIH1pPfn8a/AJu8DHocHrgt+HJPCTTiYbk07Xp5/RoIfVXR8R
 eKBbAgwGZlM/M3xb4qC8g+lo4FlNBACKKxJurNVIfH/bFP+BkkiYMS2x4 g==;
X-CSE-ConnectionGUID: SuHv1M0KRSSBE1cOmOWA0g==
X-CSE-MsgGUID: HC4wUxWnQtStmH2wYRqBjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="28719691"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="28719691"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:30:02 -0800
X-CSE-ConnectionGUID: dSkGl/TCSsSw7EHkCcRG7A==
X-CSE-MsgGUID: 6lSaYwc3SpWBUcu1P6Pqqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120076584"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:30:00 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 14/20] drm/i915/vrr: Refactor condition for computing vmax and
 LRR
Date: Mon, 24 Feb 2025 11:47:11 +0530
Message-ID: <20250224061717.1095226-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
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

LRR and Vmax can be computed only if VRR is supported and vrr.in_range
is set. Currently we proceed with vrr timings only for VRR supporting
panels and return otherwise. For using VRR TG with fix timings, need to
continue even for panels that do not support VRR.

To achieve this, refactor the condition for computing vmax and
update_lrr so that we can continue for fixed timings for panels that do
not support VRR.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 30fcd1e66a12..024c3014670a 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -343,21 +343,21 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	bool is_edp = intel_dp_is_edp(intel_dp);
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-	int vmin, vmax;
+	int vmin = 0, vmax = 0;
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
 		return;
 
 	crtc_state->vrr.in_range =
 		intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode));
-	if (!crtc_state->vrr.in_range)
-		return;
 
-	if (HAS_LRR(display))
-		crtc_state->update_lrr = true;
+	if (crtc_state->vrr.in_range) {
+		if (HAS_LRR(display))
+			crtc_state->update_lrr = true;
+		vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
+	}
 
 	vmin = intel_vrr_compute_vmin(crtc_state);
-	vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
 
 	if (vmin >= vmax)
 		return;
-- 
2.45.2

