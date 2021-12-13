Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E0A472499
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 10:37:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D199710E725;
	Mon, 13 Dec 2021 09:37:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BD6810E710;
 Mon, 13 Dec 2021 09:36:56 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id F3A921F3BB;
 Mon, 13 Dec 2021 09:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1639388215; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=u4ifg31zT1syOwQyPrjdHKQcxxTTaZz4yCYACM7Xcms=;
 b=QbowWuDlyMqnTGe30X+/safjmQI2BUFCv8IbwtGKMNa1lpgDWQp6ETlvLRz1DPMUN3SoLr
 QyQRAVpINYPKZ4D8PSyNCSD/1X0T/yeZKp7Y4U+FGD2GJ1dvMcNRybR6NQYi4mvvaKu+83
 Ax+7Cr/r5HZ7lXp3coGzN9tWEYZo6TI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1639388215;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=u4ifg31zT1syOwQyPrjdHKQcxxTTaZz4yCYACM7Xcms=;
 b=ti8xYfK8JwHa5eycTYp+1vngDpHiOkOIcWwGbMrzxl10DBTh1wkXJkLX8xIznISFzUxq87
 5FFvFJiSMJ+RKcAA==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id AF13F13CD4;
 Mon, 13 Dec 2021 09:36:54 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id KGfJKTYUt2E+JwAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Mon, 13 Dec 2021 09:36:54 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: mripard@kernel.org, maarten.lankhorst@linux.intel.com, airlied@linux.ie,
 daniel@ffwll.ch
Date: Mon, 13 Dec 2021 10:36:50 +0100
Message-Id: <20211213093650.19598-4-tzimmermann@suse.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211213093650.19598-1-tzimmermann@suse.de>
References: <20211213093650.19598-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/dp: Move DisplayPort helpers into
 separate helper module
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
Cc: linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Thomas Zimmermann <tzimmermann@suse.de>, nouveau@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, freedreno@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move DisplayPort functions into a separate module to reduce the size
of the KMS helpers. Select DRM_DP_HELPER for all users of the code. To
avoid naming conflicts, rename drm_dp_helper.c to drm_dp.c

This change can help to reduce the size of the kernel binary. Some
numbers from a x86-64 test build:

Before:
	drm_kms_helper.ko:	447480 bytes

After:
	drm_dp_helper.ko:	216632 bytes
	drm_kms_helper.ko:	239424 bytes

For early-boot graphics, generic DRM drivers, such as simpledrm,
require DRM KMS helpers to be built into the kernel. Generic helper
functions for DisplayPort take up a significant portion of DRM KMS
helper library. These functions are not used by generic drivers and
can be loaded as a module.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/Kconfig                       |  8 +++++++
 drivers/gpu/drm/Makefile                      | 14 +++++++-----
 drivers/gpu/drm/bridge/Kconfig                |  4 ++++
 drivers/gpu/drm/bridge/analogix/Kconfig       |  2 ++
 drivers/gpu/drm/bridge/cadence/Kconfig        |  1 +
 drivers/gpu/drm/{drm_dp_helper.c => drm_dp.c} |  0
 drivers/gpu/drm/drm_dp_helper_mod.c           | 22 +++++++++++++++++++
 drivers/gpu/drm/drm_kms_helper_common.c       | 15 -------------
 drivers/gpu/drm/i915/Kconfig                  |  1 +
 drivers/gpu/drm/msm/Kconfig                   |  1 +
 drivers/gpu/drm/nouveau/Kconfig               |  1 +
 drivers/gpu/drm/rockchip/Kconfig              |  1 +
 drivers/gpu/drm/tegra/Kconfig                 |  1 +
 drivers/gpu/drm/xlnx/Kconfig                  |  1 +
 14 files changed, 51 insertions(+), 21 deletions(-)
 rename drivers/gpu/drm/{drm_dp_helper.c => drm_dp.c} (100%)
 create mode 100644 drivers/gpu/drm/drm_dp_helper_mod.c

diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index b1f22e457fd0..91f54aeb0b7c 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -80,6 +80,12 @@ config DRM_DEBUG_SELFTEST
 
 	  If in doubt, say "N".
 
+config DRM_DP_HELPER
+	tristate
+	depends on DRM
+	help
+	  DRM helpers for DisplayPort.
+
 config DRM_KMS_HELPER
 	tristate
 	depends on DRM
@@ -236,6 +242,7 @@ config DRM_RADEON
 	depends on DRM && PCI && MMU
 	depends on AGP || !AGP
 	select FW_LOADER
+	select DRM_DP_HELPER
         select DRM_KMS_HELPER
         select DRM_TTM
 	select DRM_TTM_HELPER
@@ -256,6 +263,7 @@ config DRM_AMDGPU
 	tristate "AMD GPU"
 	depends on DRM && PCI && MMU
 	select FW_LOADER
+	select DRM_DP_HELPER
 	select DRM_KMS_HELPER
 	select DRM_SCHED
 	select DRM_TTM
diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
index 301a44dc18e3..d17319c835b3 100644
--- a/drivers/gpu/drm/Makefile
+++ b/drivers/gpu/drm/Makefile
@@ -48,23 +48,25 @@ obj-$(CONFIG_DRM_VRAM_HELPER) += drm_vram_helper.o
 drm_ttm_helper-y := drm_gem_ttm_helper.o
 obj-$(CONFIG_DRM_TTM_HELPER) += drm_ttm_helper.o
 
-drm_kms_helper-y := drm_bridge_connector.o drm_crtc_helper.o drm_dp_helper.o \
+drm_kms_helper-y := drm_bridge_connector.o drm_crtc_helper.o \
 		drm_dsc.o drm_encoder_slave.o drm_flip_work.o drm_hdcp.o \
 		drm_probe_helper.o \
-		drm_plane_helper.o drm_dp_mst_topology.o drm_atomic_helper.o \
-		drm_kms_helper_common.o drm_dp_dual_mode_helper.o \
+		drm_plane_helper.o drm_atomic_helper.o \
+		drm_kms_helper_common.o \
 		drm_simple_kms_helper.o drm_modeset_helper.o \
 		drm_scdc_helper.o drm_gem_atomic_helper.o \
 		drm_gem_framebuffer_helper.o \
 		drm_atomic_state_helper.o drm_damage_helper.o \
 		drm_format_helper.o drm_self_refresh_helper.o drm_rect.o
-
 drm_kms_helper-$(CONFIG_DRM_PANEL_BRIDGE) += bridge/panel.o
 drm_kms_helper-$(CONFIG_DRM_FBDEV_EMULATION) += drm_fb_helper.o
-drm_kms_helper-$(CONFIG_DRM_DP_AUX_CHARDEV) += drm_dp_aux_dev.o
-drm_kms_helper-$(CONFIG_DRM_DP_CEC) += drm_dp_cec.o
+
+drm_dp_helper-y := drm_dp.o drm_dp_dual_mode_helper.o drm_dp_helper_mod.o drm_dp_mst_topology.o
+drm_dp_helper-$(CONFIG_DRM_DP_AUX_CHARDEV) += drm_dp_aux_dev.o
+drm_dp_helper-$(CONFIG_DRM_DP_CEC) += drm_dp_cec.o
 
 obj-$(CONFIG_DRM_KMS_HELPER) += drm_kms_helper.o
+obj-$(CONFIG_DRM_DP_HELPER) += drm_dp_helper.o
 obj-$(CONFIG_DRM_DEBUG_SELFTEST) += selftests/
 
 obj-$(CONFIG_DRM)	+= drm.o
diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
index 61db5a66b493..a27435a4c9c4 100644
--- a/drivers/gpu/drm/bridge/Kconfig
+++ b/drivers/gpu/drm/bridge/Kconfig
@@ -183,6 +183,7 @@ config DRM_PARADE_PS8640
 	tristate "Parade PS8640 MIPI DSI to eDP Converter"
 	depends on OF
 	select DRM_DP_AUX_BUS
+	select DRM_DP_HELPER
 	select DRM_KMS_HELPER
 	select DRM_MIPI_DSI
 	select DRM_PANEL
@@ -253,6 +254,7 @@ config DRM_TOSHIBA_TC358764
 config DRM_TOSHIBA_TC358767
 	tristate "Toshiba TC358767 eDP bridge"
 	depends on OF
+	select DRM_DP_HELPER
 	select DRM_KMS_HELPER
 	select REGMAP_I2C
 	select DRM_PANEL
@@ -272,6 +274,7 @@ config DRM_TOSHIBA_TC358768
 config DRM_TOSHIBA_TC358775
 	tristate "Toshiba TC358775 DSI/LVDS bridge"
 	depends on OF
+	select DRM_DP_HELPER
 	select DRM_KMS_HELPER
 	select REGMAP_I2C
 	select DRM_PANEL
@@ -299,6 +302,7 @@ config DRM_TI_SN65DSI83
 config DRM_TI_SN65DSI86
 	tristate "TI SN65DSI86 DSI to eDP bridge"
 	depends on OF
+	select DRM_DP_HELPER
 	select DRM_KMS_HELPER
 	select REGMAP_I2C
 	select DRM_PANEL
diff --git a/drivers/gpu/drm/bridge/analogix/Kconfig b/drivers/gpu/drm/bridge/analogix/Kconfig
index 2ef6eb2b786c..319ba0df57be 100644
--- a/drivers/gpu/drm/bridge/analogix/Kconfig
+++ b/drivers/gpu/drm/bridge/analogix/Kconfig
@@ -3,6 +3,7 @@ config DRM_ANALOGIX_ANX6345
 	tristate "Analogix ANX6345 bridge"
 	depends on OF
 	select DRM_ANALOGIX_DP
+	select DRM_DP_HELPER
 	select DRM_KMS_HELPER
 	select REGMAP_I2C
 	help
@@ -14,6 +15,7 @@ config DRM_ANALOGIX_ANX6345
 config DRM_ANALOGIX_ANX78XX
 	tristate "Analogix ANX78XX bridge"
 	select DRM_ANALOGIX_DP
+	select DRM_DP_HELPER
 	select DRM_KMS_HELPER
 	select REGMAP_I2C
 	help
diff --git a/drivers/gpu/drm/bridge/cadence/Kconfig b/drivers/gpu/drm/bridge/cadence/Kconfig
index ef8c230e0f62..de697bade05e 100644
--- a/drivers/gpu/drm/bridge/cadence/Kconfig
+++ b/drivers/gpu/drm/bridge/cadence/Kconfig
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config DRM_CDNS_MHDP8546
 	tristate "Cadence DPI/DP bridge"
+	select DRM_DP_HELPER
 	select DRM_KMS_HELPER
 	select DRM_PANEL_BRIDGE
 	depends on OF
diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp.c
similarity index 100%
rename from drivers/gpu/drm/drm_dp_helper.c
rename to drivers/gpu/drm/drm_dp.c
diff --git a/drivers/gpu/drm/drm_dp_helper_mod.c b/drivers/gpu/drm/drm_dp_helper_mod.c
new file mode 100644
index 000000000000..db753de24000
--- /dev/null
+++ b/drivers/gpu/drm/drm_dp_helper_mod.c
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: MIT
+
+#include <linux/module.h>
+
+#include "drm_dp_helper_internal.h"
+
+MODULE_DESCRIPTION("DRM DisplayPort helper");
+MODULE_LICENSE("GPL and additional rights");
+
+static int __init drm_dp_helper_module_init(void)
+{
+	return drm_dp_aux_dev_init();
+}
+
+static void __exit drm_dp_helper_module_exit(void)
+{
+	/* Call exit functions from specific dp helpers here */
+	drm_dp_aux_dev_exit();
+}
+
+module_init(drm_dp_helper_module_init);
+module_exit(drm_dp_helper_module_exit);
diff --git a/drivers/gpu/drm/drm_kms_helper_common.c b/drivers/gpu/drm/drm_kms_helper_common.c
index 88260d26409c..8be20080cd8d 100644
--- a/drivers/gpu/drm/drm_kms_helper_common.c
+++ b/drivers/gpu/drm/drm_kms_helper_common.c
@@ -29,7 +29,6 @@
 
 #include <drm/drm_print.h>
 
-#include "drm_dp_helper_internal.h"
 #include "drm_crtc_helper_internal.h"
 
 MODULE_AUTHOR("David Airlie, Jesse Barnes");
@@ -62,17 +61,3 @@ MODULE_PARM_DESC(edid_firmware,
 		 "DEPRECATED. Use drm.edid_firmware module parameter instead.");
 
 #endif
-
-static int __init drm_kms_helper_init(void)
-{
-	return drm_dp_aux_dev_init();
-}
-
-static void __exit drm_kms_helper_exit(void)
-{
-	/* Call exit functions from specific kms helpers here */
-	drm_dp_aux_dev_exit();
-}
-
-module_init(drm_kms_helper_init);
-module_exit(drm_kms_helper_exit);
diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index a4c94dc2e216..b68e8b551b83 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -9,6 +9,7 @@ config DRM_I915
 	# the shmem_readpage() which depends upon tmpfs
 	select SHMEM
 	select TMPFS
+	select DRM_DP_HELPER
 	select DRM_KMS_HELPER
 	select DRM_PANEL
 	select DRM_MIPI_DSI
diff --git a/drivers/gpu/drm/msm/Kconfig b/drivers/gpu/drm/msm/Kconfig
index 39197b4beea7..75015b0e165e 100644
--- a/drivers/gpu/drm/msm/Kconfig
+++ b/drivers/gpu/drm/msm/Kconfig
@@ -12,6 +12,7 @@ config DRM_MSM
 	select IOMMU_IO_PGTABLE
 	select QCOM_MDT_LOADER if ARCH_QCOM
 	select REGULATOR
+	select DRM_DP_HELPER
 	select DRM_KMS_HELPER
 	select DRM_PANEL
 	select DRM_BRIDGE
diff --git a/drivers/gpu/drm/nouveau/Kconfig b/drivers/gpu/drm/nouveau/Kconfig
index 9436310d0854..3ec690b6f0b4 100644
--- a/drivers/gpu/drm/nouveau/Kconfig
+++ b/drivers/gpu/drm/nouveau/Kconfig
@@ -4,6 +4,7 @@ config DRM_NOUVEAU
 	depends on DRM && PCI && MMU
 	select IOMMU_API
 	select FW_LOADER
+	select DRM_DP_HELPER
 	select DRM_KMS_HELPER
 	select DRM_TTM
 	select DRM_TTM_HELPER
diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 9f1ecefc3933..d59dca5efb52 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -2,6 +2,7 @@
 config DRM_ROCKCHIP
 	tristate "DRM Support for Rockchip"
 	depends on DRM && ROCKCHIP_IOMMU
+	select DRM_DP_HELPER
 	select DRM_GEM_CMA_HELPER
 	select DRM_KMS_HELPER
 	select DRM_PANEL
diff --git a/drivers/gpu/drm/tegra/Kconfig b/drivers/gpu/drm/tegra/Kconfig
index 1650a448eabd..dc88adc7ba40 100644
--- a/drivers/gpu/drm/tegra/Kconfig
+++ b/drivers/gpu/drm/tegra/Kconfig
@@ -5,6 +5,7 @@ config DRM_TEGRA
 	depends on COMMON_CLK
 	depends on DRM
 	depends on OF
+	select DRM_DP_HELPER
 	select DRM_KMS_HELPER
 	select DRM_MIPI_DSI
 	select DRM_PANEL
diff --git a/drivers/gpu/drm/xlnx/Kconfig b/drivers/gpu/drm/xlnx/Kconfig
index d8d38d86d5c6..06cf477dbcdd 100644
--- a/drivers/gpu/drm/xlnx/Kconfig
+++ b/drivers/gpu/drm/xlnx/Kconfig
@@ -6,6 +6,7 @@ config DRM_ZYNQMP_DPSUB
 	depends on PHY_XILINX_ZYNQMP
 	depends on XILINX_ZYNQMP_DPDMA
 	select DMA_ENGINE
+	select DRM_DP_HELPER
 	select DRM_GEM_CMA_HELPER
 	select DRM_KMS_HELPER
 	select GENERIC_PHY
-- 
2.34.1

