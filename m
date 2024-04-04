Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C39897DFD
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 05:32:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 371D21131A4;
	Thu,  4 Apr 2024 03:32:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UBv4HsMe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E565E1131A4
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 03:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712201521; x=1743737521;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QaHoVdAdWbAXvi6GkHPyF1Fwc3CEWAneYlRHSQC0/H8=;
 b=UBv4HsMeMRk5cuounfwmBSMzx+O2E2XXXjpUXshTfHXHOL7b0MSdEIcx
 mwvyT1IQHGYI23xO8W12uGVit2s8OC/fGasE/DWbtvzW8H4cN8vqU2R1O
 X3wteaSjQYEpJXVBUxhxnBT4APnUuH38jWJjeDpXQcJa8O6c+ip+J2dZ5
 75YRQ7oCKynzrhwmzrd2Rl0vseT05vmRu1OGxjEEqEfdSZDPghKr2cA4W
 uDxQQ7M1+kuwzjB/AiihxPfH/9qZWNoMPpU0PbiJwsES+rX0J4xSeVs5B
 sSPnbejhPDYsfqh9LtHWAsZ3S4TMQQd3HOYrvpuLEkPXyDEpuXzT46Grg A==;
X-CSE-ConnectionGUID: EgY29nVcTB+3qeK2v2LBXw==
X-CSE-MsgGUID: nIRdymc5SeKLQ3DVolR1IA==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="11282620"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="11282620"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 20:32:01 -0700
X-CSE-ConnectionGUID: WmyCHc5JTE+/+jEybsowxw==
X-CSE-MsgGUID: M8C/QMs3S5e7LwVBue3wGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="18747716"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa007.fm.intel.com with ESMTP; 03 Apr 2024 20:31:58 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 ville.syrjala@intel.com, naveen1.kumar@intel.com,
 sebastian.wick@redhat.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/7] drm/i915/dp: Make has_gamut_metadata_dip() non static
Date: Thu,  4 Apr 2024 08:59:25 +0530
Message-ID: <20240404032931.380887-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240404032931.380887-2-suraj.kandpal@intel.com>
References: <20240404032931.380887-2-suraj.kandpal@intel.com>
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

Make has_gamut_metadata_dip() non static so it can also be used to
at other places eg in intel_dp_aux_backlight.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_dp.h | 1 +
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a11bc4fd3d65..26ccd4cc0d48 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6226,8 +6226,8 @@ bool intel_dp_is_port_edp(struct drm_i915_private *i915, enum port port)
 	return _intel_dp_is_port_edp(i915, devdata, port);
 }
 
-static bool
-has_gamut_metadata_dip(struct intel_encoder *encoder)
+bool
+intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
@@ -6274,7 +6274,7 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
 		intel_attach_dp_colorspace_property(connector);
 	}
 
-	if (has_gamut_metadata_dip(&dp_to_dig_port(intel_dp)->base))
+	if (intel_dp_has_gamut_metadata_dip(&dp_to_dig_port(intel_dp)->base))
 		drm_connector_attach_hdr_output_metadata_property(connector);
 
 	if (HAS_VRR(dev_priv))
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index c540d3a73fe7..bbd61cbedc4f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -193,5 +193,6 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 					struct link_config_limits *limits);
 
 void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector);
+bool intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder);
 
 #endif /* __INTEL_DP_H__ */
-- 
2.43.2

