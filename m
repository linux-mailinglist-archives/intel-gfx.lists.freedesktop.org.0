Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3630A5BCB5
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 10:50:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A2DE10E556;
	Tue, 11 Mar 2025 09:50:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hGI6vjZq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25C7810E555;
 Tue, 11 Mar 2025 09:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741686602; x=1773222602;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=twWhrfRdE/T3G4gmXvszKBn+QmKwSaG2Wqh/nLwfsbE=;
 b=hGI6vjZqHsxo4w3R/MlqQhDtsddSvwOeI7NEhoDJMjbqMMUQD1RBxg+0
 CYum7N5fT1LXSHNkYVYq9BJLkrBLKI07HiYBVjCBYB9bdnu7fMwSZeD0K
 43zvR6WPioMa1SX6KGrBhfkuugM4KKXOIvvkq8thfp/NpiC2YxaFDSrSc
 uqaAH9f8RJTDn6qGfdtLcP1UPywHO6il9lXnFJTfrHIWEBCs3pnkO+6gL
 g0tsYVEtNFC4Tdv3fo1RzziwrlB94r3DQKCVswoP1v5vdXtPF7ld103uk
 oAjhp2yAje08WN6osK0RCvtFgJz9Dg3LBG2MZSYwTPJDU4m3kO8tdqI4I A==;
X-CSE-ConnectionGUID: 4tjXpp5XRNmnRsUx0g9c/Q==
X-CSE-MsgGUID: /Q28d0/tQaCK/NZ0MFhlbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="45499812"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="45499812"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 02:50:02 -0700
X-CSE-ConnectionGUID: o0JTq7aLT1CtyGFGUCfNew==
X-CSE-MsgGUID: qOhq0wusQIqsaytMUdzghA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="125319667"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 02:50:01 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [RESEND PATCH 6/8] drm/i915/vrr: Use crtc_vtotal for vmin
Date: Tue, 11 Mar 2025 15:07:49 +0530
Message-ID: <20250311093751.1329043-7-ankit.k.nautiyal@intel.com>
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

To have fixed refresh rate with VRR timing generator the
guardband/pipeline full can't be programmed on the fly. So we need to
ensure that the values satisfy both the fixed and variable refresh
rates.

Since we compute these value based on vmin, lets set the vmin to
crtc_vtotal for both fixed and variable timings instead of using the
current refresh rate based approach. This way the guardband remains
sufficient for both cases.

v2: Avoid using vblank delay while computing vtotal, as this comes into
the picture later. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 7320eb97991f..e0573e28014b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -247,17 +247,16 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
 }
 
 static
-int intel_vrr_compute_vmin(struct intel_connector *connector,
-			   const struct drm_display_mode *adjusted_mode)
+int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
 {
-	const struct drm_display_info *info = &connector->base.display_info;
-	int vmin;
-
-	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
-			    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
-	vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
-
-	return vmin;
+	/*
+	 * To make fixed rr and vrr work seamless the guardband/pipeline full
+	 * should be set such that it satisfies both the fixed and variable
+	 * timings.
+	 * For this set the vmin as crtc_vtotal. With this we never need to
+	 * change anything to do with the guardband.
+	 */
+	return crtc_state->hw.adjusted_mode.crtc_vtotal;
 }
 
 static
@@ -304,7 +303,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (HAS_LRR(display))
 		crtc_state->update_lrr = true;
 
-	vmin = intel_vrr_compute_vmin(connector, adjusted_mode);
+	vmin = intel_vrr_compute_vmin(crtc_state);
 	vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
 
 	if (vmin >= vmax)
-- 
2.45.2

