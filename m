Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACBFB44B9D9
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Nov 2021 02:02:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 161776E8A5;
	Wed, 10 Nov 2021 01:02:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7267A6E8A5
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Nov 2021 01:02:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10163"; a="213301157"
X-IronPort-AV: E=Sophos;i="5.87,221,1631602800"; d="scan'208";a="213301157"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 17:02:22 -0800
X-IronPort-AV: E=Sophos;i="5.87,221,1631602800"; d="scan'208";a="500964821"
Received: from tsengwil-desk1.itwn.intel.com (HELO gar) ([10.5.253.7])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 17:02:21 -0800
From: William Tseng <william.tseng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Nov 2021 09:02:17 +0800
Message-Id: <20211110010217.26759-1-william.tseng@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211109082458.13740-1-william.tseng@intel.com>
References: <20211109082458.13740-1-william.tseng@intel.com>
Subject: [Intel-gfx] [PATCH v3] drm/i915/dsi: transmit brightness command in
 HS state
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
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 William Tseng <william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In Video Mode, if DSI transcoder is set to transmit packets
in LP Escape mode, screen flickering would be obseved when
brightness commands are continuously and quickly transmitted
to a panel.

The problem may be resolved by changing the mode to transmit
packets from Low Power to HS.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Signed-off-by: William Tseng <william.tseng@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
index f61ed82e8867..7d234429e71e 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
@@ -71,6 +71,7 @@ static void dcs_set_backlight(const struct drm_connector_state *conn_state, u32
 	u8 data[2] = {};
 	enum port port;
 	size_t len = panel->backlight.max > U8_MAX ? 2 : 1;
+	unsigned long mode_flags;
 
 	if (len == 1) {
 		data[0] = level;
@@ -81,8 +82,11 @@ static void dcs_set_backlight(const struct drm_connector_state *conn_state, u32
 
 	for_each_dsi_port(port, intel_dsi->dcs_backlight_ports) {
 		dsi_device = intel_dsi->dsi_hosts[port]->device;
+		mode_flags = dsi_device->mode_flags;
+		dsi_device->mode_flags &= ~MIPI_DSI_MODE_LPM;
 		mipi_dsi_dcs_write(dsi_device, MIPI_DCS_SET_DISPLAY_BRIGHTNESS,
 				   &data, len);
+		dsi_device->mode_flags = mode_flags;
 	}
 }
 
-- 
2.17.1

