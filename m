Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2B740D743
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 12:17:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 678E86EB4E;
	Thu, 16 Sep 2021 10:17:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E24386EB4B
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 10:17:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="286218000"
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="286218000"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 03:17:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="610599760"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by fmsmga001.fm.intel.com with ESMTP; 16 Sep 2021 03:17:21 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Lee Shawn C <shawn.c.lee@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Vandita Kulkarni <vandita.kulkarni@intel.com>,
 Cooper Chiou <cooper.chiou@intel.com>,
 William Tseng <william.tseng@intel.com>
Date: Thu, 16 Sep 2021 18:21:18 +0800
Message-Id: <20210916102118.17356-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/dsi: unregister gmbus if LFP display
 was MIPI panel
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

Gmbus driver would setup all Intel i2c GMBuses. But DDC bus
may configured as gpio and reserved for MIPI driver to control
panel power on/off sequence.

Using i2c tool to communicate to peripherals via i2c interface
reversed for gmbus(DDC). There will be some high/low pulse
appear on DDC SCL and SDA (might be host sent out i2c slave
address). MIPI panel would be impacted due to unexpected signal
then caused abnormal display or shut down issue.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: William Tseng <william.tseng@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 060bc8fb0d30..d2504e291fcb 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1999,6 +1999,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	struct intel_connector *intel_connector;
 	struct drm_connector *connector;
 	struct drm_display_mode *fixed_mode;
+	struct intel_gmbus *bus;
 	enum port port;
 
 	if (!intel_bios_is_dsi_present(dev_priv, &port))
@@ -2092,6 +2093,19 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	icl_dphy_param_init(intel_dsi);
 
 	icl_dsi_add_properties(intel_connector);
+
+	/*
+	 * DDC bus may configured as gpio and reserved for MIPI driver
+	 * to control panel power on/off sequence. so, unregister gmbus
+	 * if MIPI was LFP display.
+	 */
+	bus = &dev_priv->gmbus[GMBUS_PIN_1_BXT];
+	i2c_del_adapter(&bus->adapter);
+
+	if (dev_priv->vbt.dsi.config->dual_link) {
+		bus = &dev_priv->gmbus[GMBUS_PIN_2_BXT];
+		i2c_del_adapter(&bus->adapter);
+	}
 	return;
 
 err:
-- 
2.31.1

