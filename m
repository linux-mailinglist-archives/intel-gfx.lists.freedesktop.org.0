Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F87D7E0A10
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 21:18:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E05B110EA8C;
	Fri,  3 Nov 2023 20:18:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9F9710EA84;
 Fri,  3 Nov 2023 20:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699042720; x=1730578720;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+d2Ama+P0okGNCcoxtJKk+xZsdc9UC+/3+lzRqHrSJs=;
 b=fi4PZSrAfCf/oQcUsCdyJI+SFDR0NLAafMEhzl7AYuYDKWq/vRxvaIDE
 S30BcUI7tlbxtkAzr3gibnPn5o/mk3iOGyA8At3sGHx/WC6vHHNO442bp
 tZftF64b4mWWGAfi2Yz3xp1w4qPKa495geJmPSz928BDpaYXbeZt/sMOn
 avWIj8it3NUoqHTpxeVdaRhwmgv4tZUXY5gSdhmX7VH+/5WUCyw5paDnw
 qs6ONgW6WrD0qTB4BVb1ivq/6p6A05mxlarjPjG3CtRcBgyPUTSSw0eBe
 Kc9uGR8uwGzvmqPe3OrpgSuGq2HJLDnOQZE5V4M9l84KOsx8MTxhdOSVg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="1896049"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; 
   d="scan'208";a="1896049"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 13:18:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="832131116"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="832131116"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga004.fm.intel.com with ESMTP; 03 Nov 2023 13:18:34 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id C7D28618; Fri,  3 Nov 2023 22:18:33 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Date: Fri,  3 Nov 2023 22:18:19 +0200
Message-Id: <20231103201831.1037416-5-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.40.0.1.gaa8946217a0b
In-Reply-To: <20231103201831.1037416-1-andriy.shevchenko@linux.intel.com>
References: <20231103201831.1037416-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 04/16] drm/i915/dsi: rename platform specific
 *_exec_gpio() to *_gpio_set_value()
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
Cc: Hans de Goede <hdegoede@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Jani Nikula <jani.nikula@intel.com>

The lowest level functions are about setting GPIO values, not about
executing any sequences anymore.

Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Hans de Goede <hdegoede@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 11073efe26c0..f977d63a0ad4 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -243,8 +243,8 @@ static const u8 *mipi_exec_delay(struct intel_dsi *intel_dsi, const u8 *data)
 	return data;
 }
 
-static void vlv_exec_gpio(struct intel_connector *connector,
-			  u8 gpio_source, u8 gpio_index, bool value)
+static void vlv_gpio_set_value(struct intel_connector *connector,
+			       u8 gpio_source, u8 gpio_index, bool value)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct gpio_map *map;
@@ -291,8 +291,8 @@ static void vlv_exec_gpio(struct intel_connector *connector,
 	vlv_iosf_sb_put(dev_priv, BIT(VLV_IOSF_SB_GPIO));
 }
 
-static void chv_exec_gpio(struct intel_connector *connector,
-			  u8 gpio_source, u8 gpio_index, bool value)
+static void chv_gpio_set_value(struct intel_connector *connector,
+			       u8 gpio_source, u8 gpio_index, bool value)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	u16 cfg0, cfg1;
@@ -345,8 +345,8 @@ static void chv_exec_gpio(struct intel_connector *connector,
 	vlv_iosf_sb_put(dev_priv, BIT(VLV_IOSF_SB_GPIO));
 }
 
-static void bxt_exec_gpio(struct intel_connector *connector,
-			  u8 gpio_source, u8 gpio_index, bool value)
+static void bxt_gpio_set_value(struct intel_connector *connector,
+			       u8 gpio_source, u8 gpio_index, bool value)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	/* XXX: this table is a quick ugly hack. */
@@ -486,13 +486,13 @@ static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
 	if (native)
 		icl_native_gpio_set_value(i915, gpio_number, value);
 	else if (DISPLAY_VER(i915) >= 11)
-		bxt_exec_gpio(connector, gpio_source, gpio_index, value);
+		bxt_gpio_set_value(connector, gpio_source, gpio_index, value);
 	else if (IS_VALLEYVIEW(i915))
-		vlv_exec_gpio(connector, gpio_source, gpio_number, value);
+		vlv_gpio_set_value(connector, gpio_source, gpio_number, value);
 	else if (IS_CHERRYVIEW(i915))
-		chv_exec_gpio(connector, gpio_source, gpio_number, value);
+		chv_gpio_set_value(connector, gpio_source, gpio_number, value);
 	else
-		bxt_exec_gpio(connector, gpio_source, gpio_index, value);
+		bxt_gpio_set_value(connector, gpio_source, gpio_index, value);
 
 	return data + size;
 }
-- 
2.40.0.1.gaa8946217a0b

