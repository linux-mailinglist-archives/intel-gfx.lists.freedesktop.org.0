Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F29B9600D
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 15:24:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 565C810E615;
	Tue, 23 Sep 2025 13:24:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mzs+2UHo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ACD710E616;
 Tue, 23 Sep 2025 13:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758633860; x=1790169860;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dlyW7LgDN1AdMJiRCewHKiXvMdS2rcP+3NkhD/4dCGg=;
 b=Mzs+2UHoTwmVtflbfI44DYtN1OjKjAv56jXPn601VNfrFO9+AGWXb+dh
 Ea22hcdcq3TNScZkc7J+tAxT1Ob2kEgwo+2AnhDgA6/YoZIo80Ok6aup6
 eVxAIjpL0lhYoa2lSxgGH9Dx/JjdEwOAOox/jAJJJPWKOLmpSCC8ZoOrI
 Ml4bt0k1DQmWoISvnhG6WP4Ps/oQ6cO2oNyKiPJElEr2mljzd5bTvxiE7
 B9FKSc1NAVecxE4vw8nPUqhicrGwGqHWiIucj0LrjwZ2U7ktoiPW7vT1J
 SFhNbq1lYCFpljGf5orxE4rQ0T4IgQATToccS+l62C8JhrgDzLor81Sca w==;
X-CSE-ConnectionGUID: jMGe6plOSRisduEESzoopA==
X-CSE-MsgGUID: HEZ8wKruSsSb3ideTPw50Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="48480582"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="48480582"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 06:24:20 -0700
X-CSE-ConnectionGUID: nEUFfsFZRzm5+QrFe5YZOA==
X-CSE-MsgGUID: i8WNh1ZxSCSlaum5ynyQaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="207689581"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 06:24:18 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 9/9] drm/i915/vrr: Clamp guardband as per hardware and timing
 constraints
Date: Tue, 23 Sep 2025 18:40:43 +0530
Message-ID: <20250923131043.2628282-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250923131043.2628282-1-ankit.k.nautiyal@intel.com>
References: <20250923131043.2628282-1-ankit.k.nautiyal@intel.com>
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

The maximum guardband value is constrained by two factors:
- The actual vblank length minus set context latency (SCL)
- The hardware register field width:
  - 8 bits for ICL/TGL (VRR_CTL_PIPELINE_FULL_MASK -> max 255)
  - 16 bits for ADL+ (XELPD_VRR_CTL_VRR_GUARDBAND_MASK -> max 65535)

Remove the #FIXME and clamp the guardband to the maximum allowed value.

v2: Address comments from Ville:
- Use REG_FIELD_MAX()
- Separate out functions for intel_vrr_max_guardband(),
intel_vrr_max_vblank_guardband().

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 44 +++++++++++++++++-------
 1 file changed, 32 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 8f851d3a3f44..f37076575bfe 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -409,6 +409,35 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	}
 }
 
+static int
+intel_vrr_max_hw_guardband(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (DISPLAY_VER(display) >= 13)
+		return REG_FIELD_MAX(XELPD_VRR_CTL_VRR_GUARDBAND_MASK);
+
+	return intel_vrr_pipeline_full_to_guardband(crtc_state,
+						    REG_FIELD_MAX(VRR_CTL_PIPELINE_FULL_MASK));
+}
+
+static int
+intel_vrr_max_vblank_guardband(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	return crtc_state->vrr.vmin -
+	       crtc_state->set_context_latency -
+	       intel_vrr_extra_vblank_delay(display);
+}
+
+static int
+intel_vrr_max_guardband(struct intel_crtc_state *crtc_state)
+{
+	return min(intel_vrr_max_hw_guardband(crtc_state),
+		   intel_vrr_max_vblank_guardband(crtc_state));
+}
+
 void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -417,22 +446,13 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
 	if (!intel_vrr_possible(crtc_state))
 		return;
 
-	crtc_state->vrr.guardband =
-		crtc_state->vrr.vmin -
-		adjusted_mode->vdisplay -
-		crtc_state->set_context_latency -
-		intel_vrr_extra_vblank_delay(display);
-
-	if (DISPLAY_VER(display) < 13) {
-		/* FIXME handle the limit in a proper way */
-		crtc_state->vrr.guardband =
-			min(crtc_state->vrr.guardband,
-			    intel_vrr_pipeline_full_to_guardband(crtc_state, 255));
+	crtc_state->vrr.guardband = min(crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay,
+					intel_vrr_max_guardband(crtc_state));
 
+	if (DISPLAY_VER(display) < 13)
 		crtc_state->vrr.pipeline_full =
 			intel_vrr_guardband_to_pipeline_full(crtc_state,
 							     crtc_state->vrr.guardband);
-	}
 }
 
 static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
-- 
2.45.2

