Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A1440DC4D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 16:04:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A87F6EDE1;
	Thu, 16 Sep 2021 14:04:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 820D66EDE1
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 14:04:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="209659771"
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="209659771"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 07:04:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="583672135"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by orsmga004.jf.intel.com with ESMTP; 16 Sep 2021 07:04:36 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Lee Shawn C <shawn.c.lee@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Vandita Kulkarni <vandita.kulkarni@intel.com>,
 Cooper Chiou <cooper.chiou@intel.com>,
 William Tseng <william.tseng@intel.com>
Date: Thu, 16 Sep 2021 22:08:49 +0800
Message-Id: <20210916140849.29642-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210916102118.17356-1-shawn.c.lee@intel.com>
References: <20210916102118.17356-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH] drm/i915/dsi: do not register gmbus if it was
 reserved for MIPI display
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

v2: gmbus driver should not add i2c adapter for DDC interface
    if LFP display was configured to support MIPI panel.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: William Tseng <william.tseng@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index ceb1bf8a8c3c..8d2dcc4a6a53 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -141,6 +141,22 @@ bool intel_gmbus_is_valid_pin(struct drm_i915_private *dev_priv,
 	return pin < size && get_gmbus_pin(dev_priv, pin)->name;
 }
 
+bool intel_gmbus_ddc_reserve_for_mipi(struct drm_i915_private *dev_priv,
+				      unsigned int pin)
+{
+	enum port port;
+
+	if (intel_bios_is_dsi_present(dev_priv, &port)) {
+		if (DISPLAY_VER(dev_priv) >= 11) {
+			if ((pin == GMBUS_PIN_2_BXT && dev_priv->vbt.dsi.config->dual_link) ||
+			     pin == GMBUS_PIN_1_BXT)
+				return true;
+		}
+	}
+
+	return false;
+}
+
 /* Intel GPIO access functions */
 
 #define I2C_RISEFALL_TIME 10
@@ -862,6 +878,9 @@ int intel_gmbus_setup(struct drm_i915_private *dev_priv)
 		if (!intel_gmbus_is_valid_pin(dev_priv, pin))
 			continue;
 
+		if (intel_gmbus_ddc_reserve_for_mipi(dev_priv, pin))
+			continue;
+
 		bus = &dev_priv->gmbus[pin];
 
 		bus->adapter.owner = THIS_MODULE;
-- 
2.17.1

