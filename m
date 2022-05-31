Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E82D5396DE
	for <lists+intel-gfx@lfdr.de>; Tue, 31 May 2022 21:19:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BC4910E25B;
	Tue, 31 May 2022 19:19:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B7B010E25B
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 May 2022 19:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654024745; x=1685560745;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vyWmk8YfsWhnm20PBXqbnxvgnpmK3WEBPNjsZZo4tKI=;
 b=gc6GBWOZTm3pUyT+jpn4+qNMhKNvgPosqxVzhvg+4B7VcbdDZuDEuy4N
 Jl++fpcdjOEfuYqeJ0MVcJGWdlKpeeJsfmMlVsPZsGQwXjzA/mcbqvtEI
 vXgwYBnRZGVaP+BrPf9+zKqPeiEfZY5sNVc0mHVecjLal8OPm9zwKiI9v
 WDmpoyz0Jj4PoHmUiEMIc9Su9jUeHCc33On/cEupNFVEO/AwU5qqaofMJ
 PEWW1qZ3fwR2Sow0le9cBeQICX5NuF8ThTqlwBHGHHcoayW0jZgvjRJXG
 9bOFDG37QGM6Ta7KoeVStGag+nj217kA5cIGFhUmJdrR7uwpWaM6LFKIg g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="275444254"
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="275444254"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 12:18:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="679733249"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga002.fm.intel.com with SMTP; 31 May 2022 12:18:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 31 May 2022 22:18:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 May 2022 22:18:39 +0300
Message-Id: <20220531191844.11313-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220531191844.11313-1-ville.syrjala@linux.intel.com>
References: <20220531191844.11313-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/6] drm/i915: Parse VRR capability from VBT
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

VBT seems to have an extra flag for VRR vs. not. Let's consult
that for eDP panels.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
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

