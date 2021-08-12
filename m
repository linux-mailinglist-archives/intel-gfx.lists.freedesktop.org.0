Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBBE3EA7BB
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 17:41:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5F7A6E432;
	Thu, 12 Aug 2021 15:41:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F98B6E42F
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 15:41:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="202542207"
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="202542207"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 08:41:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="469795945"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by orsmga008.jf.intel.com with ESMTP; 12 Aug 2021 08:41:11 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 vandita.kulkarni@intel.com, cooper.chiou@intel.com,
 william.tseng@intel.com, Lee Shawn C <shawn.c.lee@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Date: Thu, 12 Aug 2021 23:42:37 +0800
Message-Id: <20210812154237.13911-8-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210812154237.13911-1-shawn.c.lee@intel.com>
References: <20210812154237.13911-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [v4 7/7] drm/i915/dsi: Send proper brightness value via
 MIPI DCS command
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

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: William Tseng <william.tseng@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
index cd85520d36e2..47c1cd704915 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
@@ -66,10 +66,9 @@ static void dcs_set_backlight(const struct drm_connector_state *conn_state, u32
 {
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(to_intel_encoder(conn_state->best_encoder));
 	struct mipi_dsi_device *dsi_device;
-	u8 data = level;
+	u16 data = cpu_to_be16(level);
 	enum port port;
 
-	/* FIXME: Need to take care of 16 bit brightness level */
 	for_each_dsi_port(port, intel_dsi->dcs_backlight_ports) {
 		dsi_device = intel_dsi->dsi_hosts[port]->device;
 		mipi_dsi_dcs_write(dsi_device, MIPI_DCS_SET_DISPLAY_BRIGHTNESS,
-- 
2.17.1

