Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50012B99892
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 13:05:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7EB510E710;
	Wed, 24 Sep 2025 11:05:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R2HrEfWe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88AF310E6EF;
 Wed, 24 Sep 2025 11:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758711936; x=1790247936;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AkJrDWw0hdZwVD5D4M6Eg9321wgtuFNNoqhQACz2Nzw=;
 b=R2HrEfWe5UzXS7GZhJ/0BXy8XNYf1Rb4xTsq+Ny8IsBWKJ1SG2wLQNc6
 eoc4WnsLEJ0cCfa16EayVdqV9q9MTc0PQOe/Z/5v3aKI+jokfx9QDgsqX
 I6hrAgvQPVJACd0z2goRE5SQ/IiI/V1VUf1k8ypwTYx+YpktT4m6AXkxn
 Tlf67pPiLHQ8oXzZYrVeXeqN5uEQ/4V/YaU4R0iP4Yhc6ou8GcvPvdkWS
 1VQA+auaI5wsn7jMYGgyYMAPtoqRNIw98uFqrLKlaqHvmYjQP0AQ66ymY
 gC7UmZtQTqPx3gHPyXBifTpkK+ueTo//RDoI7MmAJYLgAzlQapEurmh3G Q==;
X-CSE-ConnectionGUID: FsC7MBebQXGMM1xGp+/5CQ==
X-CSE-MsgGUID: 4g+e19TcQpCZT9P/XB6vPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="71247840"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="71247840"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 04:05:04 -0700
X-CSE-ConnectionGUID: mNCLHdl9Q+yKkRPZbCO2jQ==
X-CSE-MsgGUID: vkk2SKa1SYmHTp3zNMA+pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="176944148"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 04:05:03 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 8/9] drm/i915/vrr: Clamp guardband as per hardware and timing
 constraints
Date: Wed, 24 Sep 2025 16:21:28 +0530
Message-ID: <20250924105129.2771196-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250924105129.2771196-1-ankit.k.nautiyal@intel.com>
References: <20250924105129.2771196-1-ankit.k.nautiyal@intel.com>
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

The maximum guardband value is constrained by two factors:
- The actual vblank length minus set context latency (SCL)
- The hardware register field width:
  - 8 bits for ICL/TGL (VRR_CTL_PIPELINE_FULL_MASK -> max 255)
  - 16 bits for ADL+ (XELPD_VRR_CTL_VRR_GUARDBAND_MASK -> max 65535)

Remove the #FIXME and clamp the guardband to the maximum allowed value.

v2:
- Use REG_FIELD_MAX(). (Ville)
- Separate out functions for intel_vrr_max_guardband(),
  intel_vrr_max_vblank_guardband(). (Ville)

v3:
- Fix Typo: Add the missing adjusted_mode->crtc_vdisplay in guardband
  computation. (Ville)
- Refactor intel_vrr_max_hw_guardband() and use else for consistency.
  (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 49 ++++++++++++++++++------
 1 file changed, 37 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 26c5c32a9a58..e29b4050a9df 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -409,6 +409,40 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	}
 }
 
+static int
+intel_vrr_max_hw_guardband(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	int max_pipeline_full = REG_FIELD_MAX(VRR_CTL_PIPELINE_FULL_MASK);
+	int max_guardband;
+
+	if (DISPLAY_VER(display) >= 13)
+		max_guardband = REG_FIELD_MAX(XELPD_VRR_CTL_VRR_GUARDBAND_MASK);
+	else
+		max_guardband = intel_vrr_pipeline_full_to_guardband(crtc_state,
+								     max_pipeline_full);
+	return max_guardband;
+}
+
+static int
+intel_vrr_max_vblank_guardband(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	return crtc_state->vrr.vmin -
+	       adjusted_mode->crtc_vdisplay -
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
@@ -417,22 +451,13 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
 	if (!intel_vrr_possible(crtc_state))
 		return;
 
-	crtc_state->vrr.guardband =
-		crtc_state->vrr.vmin -
-		adjusted_mode->crtc_vdisplay -
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

