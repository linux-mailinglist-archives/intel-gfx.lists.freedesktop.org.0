Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4154B158C6
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jul 2025 08:13:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5595B10E378;
	Wed, 30 Jul 2025 06:13:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j/4bHZP8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE6F510E378;
 Wed, 30 Jul 2025 06:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753855993; x=1785391993;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kXYDGgBpunzGrvGY3ZHAxVMbprzMwrs7a12giF2uTik=;
 b=j/4bHZP8Vc9Q8LW3Mzkwz5N0oJSx/iWOHnfFhG9X1PBduomwwZJvYAsr
 XQmNpDAGyIOtd4S4zrQCJH0t0NUeAnu8JjRZLyg/6iN80L/aodB0Ao7hR
 iqud8HRhacL+dFy8GTUuE/dm/8IPQFzaOkwDSbD58NIdf/TGWepAqo06w
 Bm6kIuK7PYGDQIsyesb5SUHvk30KuG3eigQ/5buYVwlgGkFRIBxznKE02
 fSqNB+dhm07ckbM+93FD9agdcpmalhHdN3BEgSVPlOJtf9zgvGfKcDC/N
 QNB8Q5AGHgm5fxk48mATZnE/Oxi+tbqWDw+Ofe8OC5iG8W9ILmG9HDLU+ w==;
X-CSE-ConnectionGUID: lx+bNY7ZTnWP3+ojP372mQ==
X-CSE-MsgGUID: FT6ECnW8Qbux8f2Ve84Cwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="56233856"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="56233856"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 23:13:13 -0700
X-CSE-ConnectionGUID: p08OfFNjSOeqBRexwcYerg==
X-CSE-MsgGUID: GM6Mj1VeTG6dKZ2B1Gabzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="193890483"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa002.jf.intel.com with ESMTP; 29 Jul 2025 23:13:11 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com
Subject: [PATCH 1/2] drm/i915/dp: Refactor intel_dp_in_hdr_mode() for broader
 reuse
Date: Wed, 30 Jul 2025 11:25:22 +0530
Message-Id: <20250730055523.2214966-2-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250730055523.2214966-1-chaitanya.kumar.borah@intel.com>
References: <20250730055523.2214966-1-chaitanya.kumar.borah@intel.com>
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

The intel_dp_in_hdr_mode() helper was previously defined in
intel_dp_aux_backlight.c but is generally useful beyond that
context. Move the function to intel_dp.c and declare it in
intel_dp.h to make it accessible to other DP-related code
paths that need to check HDR metadata state.

This is a pure refactor with no functional change and
prepares for a follow-up patch that uses this helper.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c             | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h             |  1 +
 .../gpu/drm/i915/display/intel_dp_aux_backlight.c   | 13 -------------
 3 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 54d88f24b689..59d814abd3a9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2917,6 +2917,19 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 	}
 }
 
+bool
+intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state)
+{
+	struct hdr_output_metadata *hdr_metadata;
+
+	if (!conn_state->hdr_output_metadata)
+		return false;
+
+	hdr_metadata = conn_state->hdr_output_metadata->data;
+
+	return hdr_metadata->hdmi_metadata_type1.eotf == HDMI_EOTF_SMPTE_ST2084;
+}
+
 static void
 intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
 					    struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 0657f5681196..5def589e3c0e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -214,5 +214,6 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 
 int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
 void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external);
+bool intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 41228478b21c..12084a542fc5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -225,19 +225,6 @@ intel_dp_aux_hdr_set_aux_backlight(const struct drm_connector_state *conn_state,
 			connector->base.base.id, connector->base.name);
 }
 
-static bool
-intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state)
-{
-	struct hdr_output_metadata *hdr_metadata;
-
-	if (!conn_state->hdr_output_metadata)
-		return false;
-
-	hdr_metadata = conn_state->hdr_output_metadata->data;
-
-	return hdr_metadata->hdmi_metadata_type1.eotf == HDMI_EOTF_SMPTE_ST2084;
-}
-
 static void
 intel_dp_aux_hdr_set_backlight(const struct drm_connector_state *conn_state, u32 level)
 {
-- 
2.25.1

