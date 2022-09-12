Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 053DA5B5929
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:19:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8805010E3CD;
	Mon, 12 Sep 2022 11:18:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A64D010E3BE
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662981523; x=1694517523;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=on6W24aqoXO1s3ZvRB7qJQFJDH0jYdAFO4/cRJgTWJo=;
 b=S8W6w46Bn5q8Z4mWIOWR5+4//bOn79mG8GlPnYzEm7o70IQ7R5+k82F3
 2bMBhLEPwdKea6JAFL44gXTn+4xE/Lt9MVDYRkS+4sS8Jarr4dUsQklB+
 M7pdz122c89LAfvIki44XiS1Q/u6f0xMT7zFyngqH0OXx3vKrIUWqUstA
 gazU+X9+kZiHDhN9FwQ+qZWra4ooDBEnOIyMOQTkpnX452LNYYdlXfF15
 6jXEjXTPCSlmKd1/oizrgPUhYecC5QIShtxrWnOZt2vsNaDZkG+rmn5D+
 YyfPKdHxU1oK2bDioHRwCdlmD+/TdRA0w1xH8mwlcudBbv4Kn+v1TCGJZ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="297841609"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="297841609"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:18:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="719722858"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 12 Sep 2022 04:18:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Sep 2022 14:18:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 14:18:08 +0300
Message-Id: <20220912111814.17466-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/15] drm/i915: Extract
 intel_lvds_add_properties()
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

Move the LVDS connector property setup to a dedicated
function to depollute intel_lvds_init() a bit.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_lvds.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 6fef829e855b..7cadb548ad6c 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -814,6 +814,19 @@ static bool compute_is_dual_link_lvds(struct intel_lvds_encoder *lvds_encoder)
 	return (val & LVDS_CLKB_POWER_MASK) == LVDS_CLKB_POWER_UP;
 }
 
+static void intel_lvds_add_properties(struct drm_connector *connector)
+{
+	u32 allowed_scalers;
+
+	allowed_scalers = BIT(DRM_MODE_SCALE_ASPECT) |
+		BIT(DRM_MODE_SCALE_FULLSCREEN) |
+		BIT(DRM_MODE_SCALE_CENTER);
+
+	drm_connector_attach_scaling_mode_property(connector, allowed_scalers);
+
+	connector->state->scaling_mode = DRM_MODE_SCALE_ASPECT;
+}
+
 /**
  * intel_lvds_init - setup LVDS connectors on this device
  * @dev_priv: i915 device
@@ -833,7 +846,6 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	i915_reg_t lvds_reg;
 	u32 lvds;
 	u8 pin;
-	u32 allowed_scalers;
 
 	/* Skip init on machines we know falsely report LVDS */
 	if (dmi_check_system(intel_no_lvds)) {
@@ -925,12 +937,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 
 	lvds_encoder->reg = lvds_reg;
 
-	/* create the scaling mode property */
-	allowed_scalers = BIT(DRM_MODE_SCALE_ASPECT);
-	allowed_scalers |= BIT(DRM_MODE_SCALE_FULLSCREEN);
-	allowed_scalers |= BIT(DRM_MODE_SCALE_CENTER);
-	drm_connector_attach_scaling_mode_property(connector, allowed_scalers);
-	connector->state->scaling_mode = DRM_MODE_SCALE_ASPECT;
+	intel_lvds_add_properties(connector);
 
 	intel_lvds_pps_get_hw_state(dev_priv, &lvds_encoder->init_pps);
 	lvds_encoder->init_lvds_val = lvds;
-- 
2.35.1

