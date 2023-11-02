Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5066E7DF603
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 16:13:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16EDC10E073;
	Thu,  2 Nov 2023 15:12:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D361C10E911;
 Thu,  2 Nov 2023 15:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698937960; x=1730473960;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tPOo2JFZjmGlcEg5hgEz5myL83a6tVD72rxMxo2uXXU=;
 b=fw4YroIFhhvXuY0YjhsHArmxyMaqaRP92tF2wBBxd3BB3j6lcbIYb6np
 cysjt/Y0WgjVwDfighkLd29C5R0QrQDlMSGu/pn1UXWCIlbr26VPpEXcY
 g0bUuWzue1ebQpmif9T4wH4AyeeUUH7DI4+tlRiiLV8+vMbk1KsS0YxmE
 jLJodjysiavw1xyh7208+zbONSq7RVzTWJQVtVTXnN3NwgKsOFSv4DQFr
 89Lf70P0iRrw0yyE+XXjaIWMDrllgIYaHCacf6nsCj/26F3dBQzKAaKpp
 JBUGuEBHfrP6DppcrjDeys4LGIZLbQrmnWBtkIqunXhxmvLH6heF+O6e/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="373773486"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="373773486"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:12:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="711174078"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="711174078"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga003.jf.intel.com with ESMTP; 02 Nov 2023 08:12:36 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 32AC672F; Thu,  2 Nov 2023 17:12:31 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Date: Thu,  2 Nov 2023 17:12:26 +0200
Message-Id: <20231102151228.668842-14-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.40.0.1.gaa8946217a0b
In-Reply-To: <20231102151228.668842-1-andriy.shevchenko@linux.intel.com>
References: <20231102151228.668842-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 13/15] drm/i915/dsi: Prepare
 soc_gpio_set_value() to distinguish GPIO communities
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

Currently soc_gpio_set_value() supports only a single indexing for GPIO pin.
For CHV case, for example, we will need to distinguish community based index
from the one that VBT is using. Introduce an additional parameter to
soc_gpio_set_value() and its callers.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 552bc6564d79..b1736c1301ea 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -206,8 +206,8 @@ static const u8 *mipi_exec_delay(struct intel_dsi *intel_dsi, const u8 *data)
 	return data;
 }
 
-static void soc_gpio_set_value(struct intel_connector *connector, const char *con_id,
-			       u8 gpio_index, bool value)
+static void soc_gpio_set_value(struct intel_connector *connector, u8 gpio_index,
+			       const char *con_id, u8 idx, bool value)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	/* XXX: this table is a quick ugly hack. */
@@ -217,8 +217,7 @@ static void soc_gpio_set_value(struct intel_connector *connector, const char *co
 	if (gpio_desc) {
 		gpiod_set_value(gpio_desc, value);
 	} else {
-		gpio_desc = devm_gpiod_get_index(dev_priv->drm.dev,
-						 con_id, gpio_index,
+		gpio_desc = devm_gpiod_get_index(dev_priv->drm.dev, con_id, idx,
 						 value ? GPIOD_OUT_HIGH : GPIOD_OUT_LOW);
 		if (IS_ERR(gpio_desc)) {
 			drm_err(&dev_priv->drm,
@@ -232,8 +231,8 @@ static void soc_gpio_set_value(struct intel_connector *connector, const char *co
 }
 
 static void soc_opaque_gpio_set_value(struct intel_connector *connector,
-				      const char *chip, const char *con_id,
-				      u8 gpio_index, bool value)
+				      u8 gpio_index, const char *chip,
+				      const char *con_id, u8 idx, bool value)
 {
 	struct gpiod_lookup_table *lookup;
 
@@ -243,11 +242,11 @@ static void soc_opaque_gpio_set_value(struct intel_connector *connector,
 
 	lookup->dev_id = "0000:00:02.0";
 	lookup->table[0] =
-		GPIO_LOOKUP_IDX(chip, gpio_index, con_id, gpio_index, GPIO_ACTIVE_HIGH);
+		GPIO_LOOKUP_IDX(chip, idx, con_id, idx, GPIO_ACTIVE_HIGH);
 
 	gpiod_add_lookup_table(lookup);
 
-	soc_gpio_set_value(connector, con_id, gpio_index, value);
+	soc_gpio_set_value(connector, gpio_index, con_id, idx, value);
 
 	gpiod_remove_lookup_table(lookup);
 	kfree(lookup);
@@ -271,7 +270,8 @@ static void vlv_gpio_set_value(struct intel_connector *connector,
 		}
 	}
 
-	soc_opaque_gpio_set_value(connector, "INT33FC:01", "Panel N", gpio_index, value);
+	soc_opaque_gpio_set_value(connector, gpio_index,
+				  "INT33FC:01", "Panel N", gpio_index, value);
 }
 
 static void chv_gpio_set_value(struct intel_connector *connector,
@@ -331,7 +331,7 @@ static void chv_gpio_set_value(struct intel_connector *connector,
 static void bxt_gpio_set_value(struct intel_connector *connector,
 			       u8 gpio_index, bool value)
 {
-	soc_gpio_set_value(connector, NULL, gpio_index, value);
+	soc_gpio_set_value(connector, gpio_index, NULL, gpio_index, value);
 }
 
 enum {
-- 
2.40.0.1.gaa8946217a0b

