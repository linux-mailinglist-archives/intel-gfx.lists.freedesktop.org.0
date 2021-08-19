Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D883F17C9
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Aug 2021 13:14:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D6F16E5C3;
	Thu, 19 Aug 2021 11:14:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93E016E5C3
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Aug 2021 11:14:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="216527958"
X-IronPort-AV: E=Sophos;i="5.84,334,1620716400"; d="scan'208";a="216527958"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 04:14:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,334,1620716400"; d="scan'208";a="463022313"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by orsmga007.jf.intel.com with ESMTP; 19 Aug 2021 04:14:52 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Lee Shawn C <shawn.c.lee@intel.com>,
 Ville Syrjala <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Vandita Kulkarni <vandita.kulkarni@intel.com>,
 Cooper Chiou <cooper.chiou@intel.com>,
 William Tseng <william.tseng@intel.com>
Date: Thu, 19 Aug 2021 19:16:57 +0800
Message-Id: <20210819111657.24059-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210813024649.7197-1-shawn.c.lee@intel.com>
References: <20210813024649.7197-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [v4] drm/i915/dsi: Read/write proper brightness value
 via MIPI DCS command
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

Driver has to swap the endian before send brightness level value
to tcon.

v2: Use __be16 instead of u16 to fix sparse warning.
v3: Send one or two bytes brightness value depend on the precision.

Reported-by: kernel test robot <lkp@intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: William Tseng <william.tseng@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 .../drm/i915/display/intel_dsi_dcs_backlight.c    | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
index cd85520d36e2..b8e14122a689 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
@@ -47,33 +47,36 @@ static u32 dcs_get_backlight(struct intel_connector *connector, enum pipe unused
 {
 	struct intel_encoder *encoder = intel_attached_encoder(connector);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
+	struct intel_panel *panel = &connector->panel;
 	struct mipi_dsi_device *dsi_device;
-	u8 data = 0;
+	u8 data[2] = {0, 0};
 	enum port port;
 
 	/* FIXME: Need to take care of 16 bit brightness level */
 	for_each_dsi_port(port, intel_dsi->dcs_backlight_ports) {
 		dsi_device = intel_dsi->dsi_hosts[port]->device;
 		mipi_dsi_dcs_read(dsi_device, MIPI_DCS_GET_DISPLAY_BRIGHTNESS,
-				  &data, sizeof(data));
+				  &data,
+				  (panel->backlight.max >> 8) ? sizeof(data) : 1);
 		break;
 	}
 
-	return data;
+	return ((data[1] << 8) | data[0]);
 }
 
 static void dcs_set_backlight(const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(to_intel_encoder(conn_state->best_encoder));
+	struct intel_panel *panel = &to_intel_connector(conn_state->connector)->panel;
 	struct mipi_dsi_device *dsi_device;
-	u8 data = level;
+	__be16 data = cpu_to_be16(level);
 	enum port port;
 
-	/* FIXME: Need to take care of 16 bit brightness level */
 	for_each_dsi_port(port, intel_dsi->dcs_backlight_ports) {
 		dsi_device = intel_dsi->dsi_hosts[port]->device;
 		mipi_dsi_dcs_write(dsi_device, MIPI_DCS_SET_DISPLAY_BRIGHTNESS,
-				   &data, sizeof(data));
+				   &data,
+				   (panel->backlight.max >> 8) ? sizeof(data) : 1);
 	}
 }
 
-- 
2.17.1

