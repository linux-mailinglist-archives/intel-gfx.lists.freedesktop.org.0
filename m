Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FCB41556E
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 04:28:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA9956ECA1;
	Thu, 23 Sep 2021 02:28:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E34E06ECA1
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 02:28:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="203903490"
X-IronPort-AV: E=Sophos;i="5.85,315,1624345200"; d="scan'208";a="203903490"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 19:28:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,315,1624345200"; d="scan'208";a="474922097"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by fmsmga007.fm.intel.com with ESMTP; 22 Sep 2021 19:28:35 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Lee Shawn C <shawn.c.lee@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Vandita Kulkarni <vandita.kulkarni@intel.com>,
 Cooper Chiou <cooper.chiou@intel.com>,
 William Tseng <william.tseng@intel.com>
Date: Thu, 23 Sep 2021 10:33:16 +0800
Message-Id: <20210923023316.17905-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210916102118.17356-1-shawn.c.lee@intel.com>
References: <20210916102118.17356-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [v4] drm/i915/dsi: do not register gmbus if it was
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
v3: fix sparse warning
v4: before gmbus driver add/delete/access i2c adapter would
    call intel_gmbus_is_valid_pin() to know target adapter
    is available or not. Avoid to access unexisting adapter.
    Driver should check DSI status and pin's availability in
    intel_gmbus_is_valid_pin().

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: William Tseng <william.tseng@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index ceb1bf8a8c3c..852e499e2e8c 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -118,11 +118,29 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *dev_priv,
 		return &gmbus_pins[pin];
 }
 
+static bool intel_gmbus_ddc_reserve_for_mipi_dsi(struct drm_i915_private *dev_priv,
+					     unsigned int pin)
+{
+	if (intel_bios_is_dsi_present(dev_priv, NULL)) {
+		if (DISPLAY_VER(dev_priv) >= 11) {
+			if ((pin == GMBUS_PIN_2_BXT && dev_priv->vbt.dsi.config->dual_link) ||
+			     pin == GMBUS_PIN_1_BXT) {
+				return true;
+			}
+		}
+	}
+
+	return false;
+}
+
 bool intel_gmbus_is_valid_pin(struct drm_i915_private *dev_priv,
 			      unsigned int pin)
 {
 	unsigned int size;
 
+	if (intel_gmbus_ddc_reserve_for_mipi_dsi(dev_priv, pin))
+		return false;
+
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
 		size = ARRAY_SIZE(gmbus_pins_dg1);
 	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
-- 
2.17.1

