Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBE07D5774
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 18:09:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C31210E3F7;
	Tue, 24 Oct 2023 16:09:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 466E110E3F7;
 Tue, 24 Oct 2023 16:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698163752; x=1729699752;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2pV0njvceG1yP8TEVnAggZ39CaiG94yX2lM8ClTppZQ=;
 b=I44SO8wBH08cefKF6MbSxStTDWXF/0KJ7uNgUv2+whN3d/l0VtABUYGx
 +I6PnXKtpUBscfJJuqtUYmBt6YZKtGJO3dhIwHhxvOLbQTm0qwK48vaE9
 KKu4NjG+l1c4btDhyqJVpxCJZJEV3dzPZW49pgb6U1unCSE5oXJCkfccP
 kppAEZBGg0PRmzV2vWboDcT8xm8Z24Z8ks4VHwtwb48OP7vIaZI/a88jz
 H196jEtzzNqUppxPbc/1C6mCh1ekothXXkhznSEk5sV/e+aaT0blJ00Y1
 vLJlQZLBCTSF3K0KZFa3eSOenlcIrBxfDkUire+ItogpCSLCuuAussM4s Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="473328738"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="473328738"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 08:57:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="708354975"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="708354975"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga003.jf.intel.com with ESMTP; 24 Oct 2023 08:57:47 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 57C4DBD4; Tue, 24 Oct 2023 18:57:42 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Date: Tue, 24 Oct 2023 18:57:37 +0300
Message-Id: <20231024155739.3861342-6-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.40.0.1.gaa8946217a0b
In-Reply-To: <20231024155739.3861342-1-andriy.shevchenko@linux.intel.com>
References: <20231024155739.3861342-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/7] drm/i915/dsi: Replace poking of VLV
 GPIOs behind the driver's back
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

It's a dirty hack in the driver that pokes GPIO registers behind
the driver's back. Moreoever it might be problematic as simultaneous
I/O may hang the system, see the commit 40ecab551232 ("pinctrl:
baytrail: Really serialize all register accesses") for the details.
Taking all this into consideration replace the hack with proper
GPIO APIs being used.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 98 ++++++--------------
 1 file changed, 28 insertions(+), 70 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 3fb85b6d320e..8fc82aceae14 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -55,43 +55,6 @@
 #define MIPI_VIRTUAL_CHANNEL_SHIFT	1
 #define MIPI_PORT_SHIFT			3
 
-/* base offsets for gpio pads */
-#define VLV_GPIO_NC_0_HV_DDI0_HPD	0x4130
-#define VLV_GPIO_NC_1_HV_DDI0_DDC_SDA	0x4120
-#define VLV_GPIO_NC_2_HV_DDI0_DDC_SCL	0x4110
-#define VLV_GPIO_NC_3_PANEL0_VDDEN	0x4140
-#define VLV_GPIO_NC_4_PANEL0_BKLTEN	0x4150
-#define VLV_GPIO_NC_5_PANEL0_BKLTCTL	0x4160
-#define VLV_GPIO_NC_6_HV_DDI1_HPD	0x4180
-#define VLV_GPIO_NC_7_HV_DDI1_DDC_SDA	0x4190
-#define VLV_GPIO_NC_8_HV_DDI1_DDC_SCL	0x4170
-#define VLV_GPIO_NC_9_PANEL1_VDDEN	0x4100
-#define VLV_GPIO_NC_10_PANEL1_BKLTEN	0x40E0
-#define VLV_GPIO_NC_11_PANEL1_BKLTCTL	0x40F0
-
-#define VLV_GPIO_PCONF0(base_offset)	(base_offset)
-#define VLV_GPIO_PAD_VAL(base_offset)	((base_offset) + 8)
-
-struct gpio_map {
-	u16 base_offset;
-	bool init;
-};
-
-static struct gpio_map vlv_gpio_table[] = {
-	{ VLV_GPIO_NC_0_HV_DDI0_HPD },
-	{ VLV_GPIO_NC_1_HV_DDI0_DDC_SDA },
-	{ VLV_GPIO_NC_2_HV_DDI0_DDC_SCL },
-	{ VLV_GPIO_NC_3_PANEL0_VDDEN },
-	{ VLV_GPIO_NC_4_PANEL0_BKLTEN },
-	{ VLV_GPIO_NC_5_PANEL0_BKLTCTL },
-	{ VLV_GPIO_NC_6_HV_DDI1_HPD },
-	{ VLV_GPIO_NC_7_HV_DDI1_DDC_SDA },
-	{ VLV_GPIO_NC_8_HV_DDI1_DDC_SCL },
-	{ VLV_GPIO_NC_9_PANEL1_VDDEN },
-	{ VLV_GPIO_NC_10_PANEL1_BKLTEN },
-	{ VLV_GPIO_NC_11_PANEL1_BKLTCTL },
-};
-
 struct i2c_adapter_lookup {
 	u16 slave_addr;
 	struct intel_dsi *intel_dsi;
@@ -269,52 +232,47 @@ static void soc_exec_gpio(struct intel_connector *connector, const char *con_id,
 	}
 }
 
+static void soc_exec_opaque_gpio(struct intel_connector *connector,
+				 const char *chip, const char *con_id,
+				 u8 gpio_index, bool value)
+{
+	struct gpiod_lookup_table *lookup;
+
+	lookup = kzalloc(struct_size(lookup, table, 2), GFP_KERNEL);
+	if (!lookup)
+		return;
+
+	lookup->dev_id = "0000:00:02.0";
+	lookup->table[0] =
+		GPIO_LOOKUP_IDX(chip, gpio_index, con_id, gpio_index, GPIO_ACTIVE_HIGH);
+
+	gpiod_add_lookup_table(lookup);
+
+	soc_exec_gpio(connector, con_id, gpio_index, value);
+
+	gpiod_remove_lookup_table(lookup);
+	kfree(lookup);
+}
+
 static void vlv_exec_gpio(struct intel_connector *connector,
 			  u8 gpio_source, u8 gpio_index, bool value)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct gpio_map *map;
-	u16 pconf0, padval;
-	u32 tmp;
-	u8 port;
 
-	if (gpio_index >= ARRAY_SIZE(vlv_gpio_table)) {
-		drm_dbg_kms(&dev_priv->drm, "unknown gpio index %u\n",
-			    gpio_index);
-		return;
-	}
-
-	map = &vlv_gpio_table[gpio_index];
-
-	if (connector->panel.vbt.dsi.seq_version >= 3) {
-		/* XXX: this assumes vlv_gpio_table only has NC GPIOs. */
-		port = IOSF_PORT_GPIO_NC;
-	} else {
-		if (gpio_source == 0) {
-			port = IOSF_PORT_GPIO_NC;
-		} else if (gpio_source == 1) {
+	/* XXX: this assumes vlv_gpio_table only has NC GPIOs. */
+	if (connector->panel.vbt.dsi.seq_version < 3) {
+		if (gpio_source == 1) {
 			drm_dbg_kms(&dev_priv->drm, "SC gpio not supported\n");
 			return;
-		} else {
+		}
+		if (gpio_source > 1) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "unknown gpio source %u\n", gpio_source);
 			return;
 		}
 	}
 
-	pconf0 = VLV_GPIO_PCONF0(map->base_offset);
-	padval = VLV_GPIO_PAD_VAL(map->base_offset);
-
-	vlv_iosf_sb_get(dev_priv, BIT(VLV_IOSF_SB_GPIO));
-	if (!map->init) {
-		/* FIXME: remove constant below */
-		vlv_iosf_sb_write(dev_priv, port, pconf0, 0x2000CC00);
-		map->init = true;
-	}
-
-	tmp = 0x4 | value;
-	vlv_iosf_sb_write(dev_priv, port, padval, tmp);
-	vlv_iosf_sb_put(dev_priv, BIT(VLV_IOSF_SB_GPIO));
+	soc_exec_opaque_gpio(connector, "INT33FC:01", "Panel N", gpio_index, value);
 }
 
 static void chv_exec_gpio(struct intel_connector *connector,
-- 
2.40.0.1.gaa8946217a0b

