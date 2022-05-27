Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA7E53683A
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 22:50:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B88A710F0E6;
	Fri, 27 May 2022 20:50:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 798BD10EA24
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 May 2022 20:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653684596; x=1685220596;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0JYkJjqQCAsQFtX8mr8lerD3mu+ibRaatWQhKgDCcOM=;
 b=PtwE/t8UG1k+nV7cTKJmK9zueIZ16LEOdtfvoZcKJ3KS3rdbi8ov4vy+
 y9YyokrcXz9v6cTPCRSa2c/dg3kDfHb5ZJ+/I9Kepu/R7nU/DU0UQ1RJZ
 hn7p4AMdtoEEfU3wQBTpsxTUokJSNPLWmVMXb/rZNR1RaAvlI47+7J3sZ
 k5ibci8Fx9NGQAW1FqLhon4bHtE+7c9ISKQQssXE3brr+FxXmsa5hTP00
 bY0StC2OmrMGQ+XzmP42NqRNscJxM/GweVt9temI6zIidtG3qFti9GakJ
 01PFS6T4Av1Vh9XZAtiQkYC2N9gCmcUGRxbAQcouWSB1twzapCr8uQBhb Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10360"; a="337621894"
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="337621894"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 13:49:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="575036405"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga007.jf.intel.com with SMTP; 27 May 2022 13:49:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 May 2022 23:49:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 May 2022 23:49:44 +0300
Message-Id: <20220527204949.2264-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220527204949.2264-1-ville.syrjala@linux.intel.com>
References: <20220527204949.2264-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Parse VRR capability from VBT
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

VBT seems to have an extra flag for VRR vs. not. Let's consult
that for eDP panels.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     |  5 +++++
 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_vrr.c      | 22 ++++++++++++++-----
 3 files changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 337277ae3dae..0774238e429b 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1293,6 +1293,8 @@ parse_power_conservation_features(struct drm_i915_private *i915,
 	const struct bdb_lfp_power *power;
 	u8 panel_type = panel->vbt.panel_type;
 
+	panel->vbt.vrr = true; /* matches Windows behaviour */
+
 	if (i915->vbt.version < 228)
 		return;
 
@@ -1313,6 +1315,9 @@ parse_power_conservation_features(struct drm_i915_private *i915,
 
 	if (i915->vbt.version >= 232)
 		panel->vbt.edp.hobl = power->hobl & BIT(panel_type);
+
+	if (i915->vbt.version >= 233)
+		panel->vbt.vrr = power->vrr_feature_enabled & BIT(panel_type);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index a27d66fd4383..7a76ba1a3b47 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -294,6 +294,8 @@ struct intel_vbt_panel_data {
 	unsigned int lvds_dither:1;
 	unsigned int bios_lvds_val; /* initial [PCH_]LVDS reg val in VBIOS */
 
+	bool vrr;
+
 	u8 seamless_drrs_min_refresh_rate;
 	enum drrs_type drrs_type;
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 081e52dd6c4e..04250a0fec3c 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -15,19 +15,29 @@ bool intel_vrr_is_capable(struct intel_connector *connector)
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_dp *intel_dp;
 
-	if (connector->base.connector_type != DRM_MODE_CONNECTOR_eDP &&
-	    connector->base.connector_type != DRM_MODE_CONNECTOR_DisplayPort)
-		return false;
-
-	intel_dp = intel_attached_dp(connector);
 	/*
 	 * DP Sink is capable of VRR video timings if
 	 * Ignore MSA bit is set in DPCD.
 	 * EDID monitor range also should be atleast 10 for reasonable
 	 * Adaptive Sync or Variable Refresh Rate end user experience.
 	 */
+	switch (connector->base.connector_type) {
+	case DRM_MODE_CONNECTOR_eDP:
+		if (!connector->panel.vbt.vrr)
+			return false;
+		fallthrough;
+	case DRM_MODE_CONNECTOR_DisplayPort:
+		intel_dp = intel_attached_dp(connector);
+
+		if (!drm_dp_sink_can_do_video_without_timing_msa(intel_dp->dpcd))
+			return false;
+
+		break;
+	default:
+		return false;
+	}
+
 	return HAS_VRR(i915) &&
-		drm_dp_sink_can_do_video_without_timing_msa(intel_dp->dpcd) &&
 		info->monitor_range.max_vfreq - info->monitor_range.min_vfreq > 10;
 }
 
-- 
2.35.1

