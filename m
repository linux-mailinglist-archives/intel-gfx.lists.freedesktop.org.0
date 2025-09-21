Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C00B8D516
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Sep 2025 06:49:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A41D10E343;
	Sun, 21 Sep 2025 04:49:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Oq97oGOR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEA2510E33E;
 Sun, 21 Sep 2025 04:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758430155; x=1789966155;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y/xNoTMuA1ZDjkz0UH+KYqltgn1cnTmKN4+JWaD8GGQ=;
 b=Oq97oGORZ6VPtrM3XHg09qO1xdBeRl1jyGadzXzfviUoIaW/MRq1ryWM
 dL1qXD/lBmpNK0ElozAxFpl7cBo3wQmcbjJOjXNLEh6uyWs8+Cj7L1Gg9
 6VY13SSy+uOaAJ8Sp76c0ux2kp8lcpPUeK4HUHq4qAOTIIQmhWVk9fMHm
 nsEbYIDLgKTmWEFJmhS7DY9cCELvGOGfhlQC9/U3il1LRJI/k8TbHw8Fn
 p1zfmvc+DNhZX1iLZ1f0CbUTXCiGUUePE8CwwN0yFuCxglM9MWEJxsJ+t
 i/ixvyR9tQ52I4LtF3DLDdYK2gxxB/v9aCXYZSUqYgcJiYq6zBDwLnwaT Q==;
X-CSE-ConnectionGUID: oJe+coSIR2WiesgqAV1k4w==
X-CSE-MsgGUID: amHfX39xSv6riNw5ziaW/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11559"; a="72154751"
X-IronPort-AV: E=Sophos;i="6.18,282,1751266800"; d="scan'208";a="72154751"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 21:49:15 -0700
X-CSE-ConnectionGUID: CANI2TlFQnyXG9STEs8pAA==
X-CSE-MsgGUID: WujFXiNAQBSAuSpIMdFbwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,282,1751266800"; d="scan'208";a="176097742"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 21:49:13 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 9/9] drm/i915/vrr: Clamp guardband as per hardware and timing
 constraints
Date: Sun, 21 Sep 2025 10:05:35 +0530
Message-ID: <20250921043535.2012978-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
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

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 36 ++++++++++++++++++++----
 1 file changed, 30 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5fa86356a791..9bed273f96df 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -409,6 +409,34 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	}
 }
 
+static int intel_vrr_max_hw_guardband(const struct intel_crtc_state *crtc_state)
+{
+#define VRR_GUARDBAND_MAX 65535   /* based on XELPD_VRR_CTL_VRR_GUARDBAND_MASK */
+#define VRR_PIPELINE_FULL_MAX 255 /* based on VRR_CTL_PIPELINE_FULL_MASK */
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (!HAS_VRR(display))
+		return 0;
+
+	if (DISPLAY_VER(display) >= 13)
+		return VRR_GUARDBAND_MAX;
+
+	return intel_vrr_pipeline_full_to_guardband(crtc_state, VRR_PIPELINE_FULL_MAX);
+}
+
+static int clamp_guardband(struct intel_crtc_state *crtc_state, int guardband)
+{
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int vblank_length = adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay;
+	int set_context_latency = crtc_state->set_context_latency;
+	int max_hw_guardband = intel_vrr_max_hw_guardband(crtc_state);
+	int max_guardband;
+
+	max_guardband = min(max_hw_guardband, vblank_length - set_context_latency);
+
+	return min(guardband, max_guardband);
+}
+
 void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -421,16 +449,12 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
 		crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
 		intel_vrr_extra_vblank_delay(display);
 
-	if (DISPLAY_VER(display) < 13) {
-		/* FIXME handle the limit in a proper way */
-		crtc_state->vrr.guardband =
-			min(crtc_state->vrr.guardband,
-			    intel_vrr_pipeline_full_to_guardband(crtc_state, 255));
+	crtc_state->vrr.guardband = clamp_guardband(crtc_state, crtc_state->vrr.guardband);
 
+	if (DISPLAY_VER(display) < 13)
 		crtc_state->vrr.pipeline_full =
 			intel_vrr_guardband_to_pipeline_full(crtc_state,
 							     crtc_state->vrr.guardband);
-	}
 }
 
 static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
-- 
2.45.2

