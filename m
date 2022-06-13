Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85320549E4A
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jun 2022 22:03:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A64B010F79A;
	Mon, 13 Jun 2022 20:03:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 263E610F796;
 Mon, 13 Jun 2022 20:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655150604; x=1686686604;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V7fZHA8gQa3RpVQhJOCcKVFoPEETbt07sB2IXwKdmbo=;
 b=HZR7XX6GnaXR13bldnLswkdvAjCYS5HwwwmpFKpRPz1GwZxnRCbShbwF
 i+2+UvuTe+xYXqlHbfz/j0dXeiF/MpUD5AGwqWViMfiZmMaRqP8wCR1k1
 ckFpzojOW2NhEiZMf76gwTIZ+Vk4LuEqcipYGzBQpb7O/Mq7z/LD4XkaL
 tt029GPztXwj+icuk67gSphm2GdKg+wiCVRdopssR68bVVJe/t0vRbEhw
 dHqQOY0dhGclh7mBRC6ivfYCpJ0fF/uIH4Uyh8lHBk4rDLc+HBjgtOLmC
 hP7qdhzUGfZSJlNqNeWEqruSo7DD6PcMI24ozXol2DJKkU0RYbojoBWBB g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="279119095"
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="279119095"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 13:03:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="639913271"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga008.fm.intel.com with SMTP; 13 Jun 2022 13:03:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Jun 2022 23:03:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 13 Jun 2022 23:03:10 +0300
Message-Id: <20220613200317.11305-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220613200317.11305-1-ville.syrjala@linux.intel.com>
References: <20220613200317.11305-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/8] drm: Drop drm_edid.h from drm_crtc.h
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

drm_crtc.h has no need for drm_edid.h, so don't include it.
Avoids useless rebuilds of the entire universe when
touching drm_edid.h.

Quite a few placs do currently depend on drm_edid.h without
actually including it directly. All of those need to be fixed
up.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/arm/malidp_mw.c                     | 1 +
 drivers/gpu/drm/aspeed/aspeed_gfx_out.c             | 1 +
 drivers/gpu/drm/ast/ast_mode.c                      | 1 +
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c  | 1 +
 drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c | 1 +
 drivers/gpu/drm/bridge/lontium-lt8912b.c            | 1 +
 drivers/gpu/drm/bridge/parade-ps8640.c              | 1 +
 drivers/gpu/drm/bridge/simple-bridge.c              | 1 +
 drivers/gpu/drm/bridge/ti-tfp410.c                  | 1 +
 drivers/gpu/drm/display/drm_dp_helper.c             | 1 +
 drivers/gpu/drm/display/drm_dp_mst_topology.c       | 1 +
 drivers/gpu/drm/drm_client_modeset.c                | 1 +
 drivers/gpu/drm/drm_kms_helper_common.c             | 1 +
 drivers/gpu/drm/drm_modes.c                         | 1 +
 drivers/gpu/drm/exynos/exynos_mixer.c               | 1 +
 drivers/gpu/drm/gma500/cdv_intel_dp.c               | 1 +
 drivers/gpu/drm/gma500/oaktrail_hdmi.c              | 1 +
 drivers/gpu/drm/gma500/oaktrail_lvds.c              | 1 +
 drivers/gpu/drm/gma500/psb_intel_modes.c            | 2 ++
 drivers/gpu/drm/gud/gud_connector.c                 | 1 +
 drivers/gpu/drm/i915/display/intel_dp.c             | 1 +
 drivers/gpu/drm/i915/display/intel_lspcon.c         | 1 +
 drivers/gpu/drm/i915/display/intel_opregion.c       | 2 ++
 drivers/gpu/drm/imx/imx-ldb.c                       | 1 +
 drivers/gpu/drm/imx/imx-tve.c                       | 1 +
 drivers/gpu/drm/imx/parallel-display.c              | 1 +
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c              | 1 +
 drivers/gpu/drm/omapdrm/dss/hdmi4.c                 | 1 +
 drivers/gpu/drm/omapdrm/dss/hdmi5.c                 | 1 +
 drivers/gpu/drm/panel/panel-edp.c                   | 1 +
 drivers/gpu/drm/panel/panel-simple.c                | 1 +
 drivers/gpu/drm/qxl/qxl_display.c                   | 1 +
 drivers/gpu/drm/rcar-du/rcar_du_writeback.c         | 1 +
 drivers/gpu/drm/rockchip/rk3066_hdmi.c              | 1 +
 drivers/gpu/drm/solomon/ssd130x.c                   | 1 +
 drivers/gpu/drm/stm/ltdc.c                          | 1 +
 drivers/gpu/drm/tiny/arcpgu.c                       | 1 +
 drivers/gpu/drm/tiny/bochs.c                        | 1 +
 drivers/gpu/drm/tiny/cirrus.c                       | 1 +
 drivers/gpu/drm/tiny/gm12u320.c                     | 1 +
 drivers/gpu/drm/udl/udl_connector.c                 | 1 +
 drivers/gpu/drm/vboxvideo/vbox_mode.c               | 1 +
 drivers/gpu/drm/virtio/virtgpu_display.c            | 1 +
 drivers/gpu/drm/virtio/virtgpu_vq.c                 | 2 ++
 drivers/gpu/drm/vkms/vkms_output.c                  | 1 +
 drivers/gpu/drm/vkms/vkms_writeback.c               | 1 +
 include/drm/drm_crtc.h                              | 1 -
 47 files changed, 49 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/arm/malidp_mw.c b/drivers/gpu/drm/arm/malidp_mw.c
index 204c869d9fe2..43de2ac8f27e 100644
--- a/drivers/gpu/drm/arm/malidp_mw.c
+++ b/drivers/gpu/drm/arm/malidp_mw.c
@@ -10,6 +10,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_fb_cma_helper.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_gem_cma_helper.h>
 #include <drm/drm_probe_helper.h>
diff --git a/drivers/gpu/drm/aspeed/aspeed_gfx_out.c b/drivers/gpu/drm/aspeed/aspeed_gfx_out.c
index 6759cb88415a..4f2187025a21 100644
--- a/drivers/gpu/drm/aspeed/aspeed_gfx_out.c
+++ b/drivers/gpu/drm/aspeed/aspeed_gfx_out.c
@@ -4,6 +4,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_connector.h>
 #include <drm/drm_crtc_helper.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_probe_helper.h>
 
 #include "aspeed_gfx.h"
diff --git a/drivers/gpu/drm/ast/ast_mode.c b/drivers/gpu/drm/ast/ast_mode.c
index db2010a55674..3eb9afecd9d4 100644
--- a/drivers/gpu/drm/ast/ast_mode.c
+++ b/drivers/gpu/drm/ast/ast_mode.c
@@ -36,6 +36,7 @@
 #include <drm/drm_atomic_state_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_crtc_helper.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_gem_atomic_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 01c8b80e34ec..8aadcc0aa90b 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -24,6 +24,7 @@
 #include <drm/drm_bridge.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_device.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_panel.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
diff --git a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c
index 67f0f444b4e8..ba5f695703dc 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c
@@ -43,6 +43,7 @@
 #include <drm/drm_bridge.h>
 #include <drm/drm_connector.h>
 #include <drm/drm_crtc_helper.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_modeset_helper_vtables.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
diff --git a/drivers/gpu/drm/bridge/lontium-lt8912b.c b/drivers/gpu/drm/bridge/lontium-lt8912b.c
index c92515834ff2..6a7a6983e796 100644
--- a/drivers/gpu/drm/bridge/lontium-lt8912b.c
+++ b/drivers/gpu/drm/bridge/lontium-lt8912b.c
@@ -11,6 +11,7 @@
 
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_of.h>
 
diff --git a/drivers/gpu/drm/bridge/parade-ps8640.c b/drivers/gpu/drm/bridge/parade-ps8640.c
index ff4227f6d800..45b235a74a12 100644
--- a/drivers/gpu/drm/bridge/parade-ps8640.c
+++ b/drivers/gpu/drm/bridge/parade-ps8640.c
@@ -16,6 +16,7 @@
 #include <drm/display/drm_dp_aux_bus.h>
 #include <drm/display/drm_dp_helper.h>
 #include <drm/drm_bridge.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
diff --git a/drivers/gpu/drm/bridge/simple-bridge.c b/drivers/gpu/drm/bridge/simple-bridge.c
index d974282c12b2..2c5c5211bdab 100644
--- a/drivers/gpu/drm/bridge/simple-bridge.c
+++ b/drivers/gpu/drm/bridge/simple-bridge.c
@@ -15,6 +15,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
 #include <drm/drm_crtc.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
diff --git a/drivers/gpu/drm/bridge/ti-tfp410.c b/drivers/gpu/drm/bridge/ti-tfp410.c
index 756b3e6e776b..4541126a45ea 100644
--- a/drivers/gpu/drm/bridge/ti-tfp410.c
+++ b/drivers/gpu/drm/bridge/ti-tfp410.c
@@ -14,6 +14,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
 #include <drm/drm_crtc.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
index e7c22c2ca90c..8eb3172b4b36 100644
--- a/drivers/gpu/drm/display/drm_dp_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_helper.c
@@ -32,6 +32,7 @@
 
 #include <drm/display/drm_dp_helper.h>
 #include <drm/display/drm_dp_mst_helper.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_print.h>
 #include <drm/drm_vblank.h>
 #include <drm/drm_panel.h>
diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
index 67b3b9697da7..4dd35e0b13fa 100644
--- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
@@ -42,6 +42,7 @@
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_drv.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
diff --git a/drivers/gpu/drm/drm_client_modeset.c b/drivers/gpu/drm/drm_client_modeset.c
index 48e6ce16439f..bbc535cc50dd 100644
--- a/drivers/gpu/drm/drm_client_modeset.c
+++ b/drivers/gpu/drm/drm_client_modeset.c
@@ -19,6 +19,7 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_device.h>
 #include <drm/drm_drv.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_encoder.h>
 #include <drm/drm_print.h>
 
diff --git a/drivers/gpu/drm/drm_kms_helper_common.c b/drivers/gpu/drm/drm_kms_helper_common.c
index 8be20080cd8d..0bf0fc1abf54 100644
--- a/drivers/gpu/drm/drm_kms_helper_common.c
+++ b/drivers/gpu/drm/drm_kms_helper_common.c
@@ -27,6 +27,7 @@
 
 #include <linux/module.h>
 
+#include <drm/drm_edid.h>
 #include <drm/drm_print.h>
 
 #include "drm_crtc_helper_internal.h"
diff --git a/drivers/gpu/drm/drm_modes.c b/drivers/gpu/drm/drm_modes.c
index 40b7b245e98c..a2542254233e 100644
--- a/drivers/gpu/drm/drm_modes.c
+++ b/drivers/gpu/drm/drm_modes.c
@@ -41,6 +41,7 @@
 
 #include <drm/drm_crtc.h>
 #include <drm/drm_device.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_modes.h>
 #include <drm/drm_print.h>
 
diff --git a/drivers/gpu/drm/exynos/exynos_mixer.c b/drivers/gpu/drm/exynos/exynos_mixer.c
index e5204be86093..de06ac647284 100644
--- a/drivers/gpu/drm/exynos/exynos_mixer.c
+++ b/drivers/gpu/drm/exynos/exynos_mixer.c
@@ -25,6 +25,7 @@
 #include <linux/spinlock.h>
 #include <linux/wait.h>
 
+#include <drm/drm_edid.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_vblank.h>
 #include <drm/exynos_drm.h>
diff --git a/drivers/gpu/drm/gma500/cdv_intel_dp.c b/drivers/gpu/drm/gma500/cdv_intel_dp.c
index 9ee99a7d4fbe..bb2e9d64018a 100644
--- a/drivers/gpu/drm/gma500/cdv_intel_dp.c
+++ b/drivers/gpu/drm/gma500/cdv_intel_dp.c
@@ -32,6 +32,7 @@
 #include <drm/display/drm_dp_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_crtc_helper.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_simple_kms_helper.h>
 
 #include "gma_display.h"
diff --git a/drivers/gpu/drm/gma500/oaktrail_hdmi.c b/drivers/gpu/drm/gma500/oaktrail_hdmi.c
index b5946a1cdcd5..95b7cb099e63 100644
--- a/drivers/gpu/drm/gma500/oaktrail_hdmi.c
+++ b/drivers/gpu/drm/gma500/oaktrail_hdmi.c
@@ -27,6 +27,7 @@
 #include <linux/delay.h>
 
 #include <drm/drm.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_simple_kms_helper.h>
 
 #include "psb_drv.h"
diff --git a/drivers/gpu/drm/gma500/oaktrail_lvds.c b/drivers/gpu/drm/gma500/oaktrail_lvds.c
index 9c9ebf8e29c4..4d98df189e10 100644
--- a/drivers/gpu/drm/gma500/oaktrail_lvds.c
+++ b/drivers/gpu/drm/gma500/oaktrail_lvds.c
@@ -13,6 +13,7 @@
 
 #include <asm/intel-mid.h>
 
+#include <drm/drm_edid.h>
 #include <drm/drm_simple_kms_helper.h>
 
 #include "intel_bios.h"
diff --git a/drivers/gpu/drm/gma500/psb_intel_modes.c b/drivers/gpu/drm/gma500/psb_intel_modes.c
index 60306780e16c..8be0ec340de5 100644
--- a/drivers/gpu/drm/gma500/psb_intel_modes.c
+++ b/drivers/gpu/drm/gma500/psb_intel_modes.c
@@ -7,6 +7,8 @@
 
 #include <linux/i2c.h>
 
+#include <drm/drm_edid.h>
+
 #include "psb_intel_drv.h"
 
 /**
diff --git a/drivers/gpu/drm/gud/gud_connector.c b/drivers/gpu/drm/gud/gud_connector.c
index ae051133e050..d0addd478815 100644
--- a/drivers/gpu/drm/gud/gud_connector.c
+++ b/drivers/gpu/drm/gud/gud_connector.c
@@ -10,6 +10,7 @@
 #include <drm/drm_atomic_state_helper.h>
 #include <drm/drm_connector.h>
 #include <drm/drm_drv.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_encoder.h>
 #include <drm/drm_file.h>
 #include <drm/drm_modeset_helper_vtables.h>
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2fac76bcf06d..7555983c96fd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -40,6 +40,7 @@
 #include <drm/display/drm_hdmi_helper.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_probe_helper.h>
 
 #include "g4x_dp.h"
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 7fbc8031a5aa..15d59de8810e 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -26,6 +26,7 @@
 #include <drm/display/drm_dp_dual_mode_helper.h>
 #include <drm/display/drm_hdmi_helper.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_edid.h>
 
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index f31e8c3f8ce0..3aea4e42d55e 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -30,6 +30,8 @@
 #include <linux/firmware.h>
 #include <acpi/video.h>
 
+#include <drm/drm_edid.h>
+
 #include "i915_drv.h"
 #include "intel_acpi.h"
 #include "intel_backlight.h"
diff --git a/drivers/gpu/drm/imx/imx-ldb.c b/drivers/gpu/drm/imx/imx-ldb.c
index 14a058a42854..4f2fd69c4a4e 100644
--- a/drivers/gpu/drm/imx/imx-ldb.c
+++ b/drivers/gpu/drm/imx/imx-ldb.c
@@ -22,6 +22,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
 #include <drm/drm_fb_helper.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_managed.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
diff --git a/drivers/gpu/drm/imx/imx-tve.c b/drivers/gpu/drm/imx/imx-tve.c
index 2b1fdf2cbbce..9a2fa352a433 100644
--- a/drivers/gpu/drm/imx/imx-tve.c
+++ b/drivers/gpu/drm/imx/imx-tve.c
@@ -19,6 +19,7 @@
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_fb_helper.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_managed.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_simple_kms_helper.h>
diff --git a/drivers/gpu/drm/imx/parallel-display.c b/drivers/gpu/drm/imx/parallel-display.c
index 63ba2ad84679..5a91a5c82057 100644
--- a/drivers/gpu/drm/imx/parallel-display.c
+++ b/drivers/gpu/drm/imx/parallel-display.c
@@ -15,6 +15,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
 #include <drm/drm_fb_helper.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_managed.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
index 97c24010c4d1..2e4c2d5f8460 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
@@ -6,6 +6,7 @@
 
 #include <linux/delay.h>
 #include <drm/drm_bridge_connector.h>
+#include <drm/drm_edid.h>
 
 #include "msm_kms.h"
 #include "hdmi.h"
diff --git a/drivers/gpu/drm/omapdrm/dss/hdmi4.c b/drivers/gpu/drm/omapdrm/dss/hdmi4.c
index 35b750cebaeb..a8a75dc24751 100644
--- a/drivers/gpu/drm/omapdrm/dss/hdmi4.c
+++ b/drivers/gpu/drm/omapdrm/dss/hdmi4.c
@@ -29,6 +29,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_state_helper.h>
+#include <drm/drm_edid.h>
 
 #include "omapdss.h"
 #include "hdmi4_core.h"
diff --git a/drivers/gpu/drm/omapdrm/dss/hdmi5.c b/drivers/gpu/drm/omapdrm/dss/hdmi5.c
index 65085d886da5..868712cd8a3a 100644
--- a/drivers/gpu/drm/omapdrm/dss/hdmi5.c
+++ b/drivers/gpu/drm/omapdrm/dss/hdmi5.c
@@ -32,6 +32,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_state_helper.h>
+#include <drm/drm_edid.h>
 
 #include "omapdss.h"
 #include "hdmi5_core.h"
diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/panel-edp.c
index c96014464355..11e4ff5d7460 100644
--- a/drivers/gpu/drm/panel/panel-edp.c
+++ b/drivers/gpu/drm/panel/panel-edp.c
@@ -39,6 +39,7 @@
 #include <drm/display/drm_dp_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_device.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_panel.h>
 
 /**
diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 4a2e580a2f7b..e24e463a0220 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -35,6 +35,7 @@
 
 #include <drm/drm_crtc.h>
 #include <drm/drm_device.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_panel.h>
 
diff --git a/drivers/gpu/drm/qxl/qxl_display.c b/drivers/gpu/drm/qxl/qxl_display.c
index 9a64fa4c7530..43f89bfc4b72 100644
--- a/drivers/gpu/drm/qxl/qxl_display.c
+++ b/drivers/gpu/drm/qxl/qxl_display.c
@@ -30,6 +30,7 @@
 #include <drm/drm_drv.h>
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_probe_helper.h>
diff --git a/drivers/gpu/drm/rcar-du/rcar_du_writeback.c b/drivers/gpu/drm/rcar-du/rcar_du_writeback.c
index 505a905e3ad1..db5b54b45fd3 100644
--- a/drivers/gpu/drm/rcar-du/rcar_du_writeback.c
+++ b/drivers/gpu/drm/rcar-du/rcar_du_writeback.c
@@ -7,6 +7,7 @@
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_device.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_writeback.h>
diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
index c8c3612a4fe2..cf2cf51091a3 100644
--- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
+++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
@@ -4,6 +4,7 @@
  *    Zheng Yang <zhengyang@rock-chips.com>
  */
 
+#include <drm/drm_edid.h>
 #include <drm/drm_of.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_simple_kms_helper.h>
diff --git a/drivers/gpu/drm/solomon/ssd130x.c b/drivers/gpu/drm/solomon/ssd130x.c
index 08394444dd6e..d2f314d32325 100644
--- a/drivers/gpu/drm/solomon/ssd130x.c
+++ b/drivers/gpu/drm/solomon/ssd130x.c
@@ -20,6 +20,7 @@
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_damage_helper.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_format_helper.h>
diff --git a/drivers/gpu/drm/stm/ltdc.c b/drivers/gpu/drm/stm/ltdc.c
index 6bd45df8f5a7..82fc454d3edf 100644
--- a/drivers/gpu/drm/stm/ltdc.c
+++ b/drivers/gpu/drm/stm/ltdc.c
@@ -25,6 +25,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
 #include <drm/drm_device.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_gem_atomic_helper.h>
diff --git a/drivers/gpu/drm/tiny/arcpgu.c b/drivers/gpu/drm/tiny/arcpgu.c
index f0fa3b15c341..9f434adfa487 100644
--- a/drivers/gpu/drm/tiny/arcpgu.c
+++ b/drivers/gpu/drm/tiny/arcpgu.c
@@ -10,6 +10,7 @@
 #include <drm/drm_debugfs.h>
 #include <drm/drm_device.h>
 #include <drm/drm_drv.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_fourcc.h>
diff --git a/drivers/gpu/drm/tiny/bochs.c b/drivers/gpu/drm/tiny/bochs.c
index 4f8bf86633df..21cc7258af1d 100644
--- a/drivers/gpu/drm/tiny/bochs.c
+++ b/drivers/gpu/drm/tiny/bochs.c
@@ -6,6 +6,7 @@
 #include <drm/drm_aperture.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_drv.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_gem_framebuffer_helper.h>
diff --git a/drivers/gpu/drm/tiny/cirrus.c b/drivers/gpu/drm/tiny/cirrus.c
index c8e791840862..152ea21468df 100644
--- a/drivers/gpu/drm/tiny/cirrus.c
+++ b/drivers/gpu/drm/tiny/cirrus.c
@@ -29,6 +29,7 @@
 #include <drm/drm_connector.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_drv.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_file.h>
 #include <drm/drm_format_helper.h>
diff --git a/drivers/gpu/drm/tiny/gm12u320.c b/drivers/gpu/drm/tiny/gm12u320.c
index 648e585d40a8..e305efb1d6b9 100644
--- a/drivers/gpu/drm/tiny/gm12u320.c
+++ b/drivers/gpu/drm/tiny/gm12u320.c
@@ -11,6 +11,7 @@
 #include <drm/drm_connector.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_drv.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_file.h>
 #include <drm/drm_format_helper.h>
diff --git a/drivers/gpu/drm/udl/udl_connector.c b/drivers/gpu/drm/udl/udl_connector.c
index 318fdb38b47a..fade4c7adbf7 100644
--- a/drivers/gpu/drm/udl/udl_connector.c
+++ b/drivers/gpu/drm/udl/udl_connector.c
@@ -8,6 +8,7 @@
  */
 
 #include <drm/drm_atomic_state_helper.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_crtc_helper.h>
 #include <drm/drm_probe_helper.h>
 
diff --git a/drivers/gpu/drm/vboxvideo/vbox_mode.c b/drivers/gpu/drm/vboxvideo/vbox_mode.c
index 4017b0a621fc..52eaa10712ec 100644
--- a/drivers/gpu/drm/vboxvideo/vbox_mode.c
+++ b/drivers/gpu/drm/vboxvideo/vbox_mode.c
@@ -16,6 +16,7 @@
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_fb_helper.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_gem_atomic_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
diff --git a/drivers/gpu/drm/virtio/virtgpu_display.c b/drivers/gpu/drm/virtio/virtgpu_display.c
index f73352e7b832..5c7f198c0712 100644
--- a/drivers/gpu/drm/virtio/virtgpu_display.c
+++ b/drivers/gpu/drm/virtio/virtgpu_display.c
@@ -27,6 +27,7 @@
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_damage_helper.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_probe_helper.h>
diff --git a/drivers/gpu/drm/virtio/virtgpu_vq.c b/drivers/gpu/drm/virtio/virtgpu_vq.c
index 7c052efe8836..b7529b2b9883 100644
--- a/drivers/gpu/drm/virtio/virtgpu_vq.c
+++ b/drivers/gpu/drm/virtio/virtgpu_vq.c
@@ -31,6 +31,8 @@
 #include <linux/virtio_config.h>
 #include <linux/virtio_ring.h>
 
+#include <drm/drm_edid.h>
+
 #include "virtgpu_drv.h"
 #include "virtgpu_trace.h"
 
diff --git a/drivers/gpu/drm/vkms/vkms_output.c b/drivers/gpu/drm/vkms/vkms_output.c
index ba0e82ae549a..991857125bb4 100644
--- a/drivers/gpu/drm/vkms/vkms_output.c
+++ b/drivers/gpu/drm/vkms/vkms_output.c
@@ -2,6 +2,7 @@
 
 #include "vkms_drv.h"
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_simple_kms_helper.h>
 
diff --git a/drivers/gpu/drm/vkms/vkms_writeback.c b/drivers/gpu/drm/vkms/vkms_writeback.c
index 0a315221d1f5..3b3c1e757ab4 100644
--- a/drivers/gpu/drm/vkms/vkms_writeback.c
+++ b/drivers/gpu/drm/vkms/vkms_writeback.c
@@ -3,6 +3,7 @@
 #include <linux/iosys-map.h>
 
 #include <drm/drm_atomic.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_writeback.h>
 #include <drm/drm_probe_helper.h>
diff --git a/include/drm/drm_crtc.h b/include/drm/drm_crtc.h
index a70baea0636c..3e6e12bfc96d 100644
--- a/include/drm/drm_crtc.h
+++ b/include/drm/drm_crtc.h
@@ -41,7 +41,6 @@
 #include <drm/drm_connector.h>
 #include <drm/drm_device.h>
 #include <drm/drm_property.h>
-#include <drm/drm_edid.h>
 #include <drm/drm_plane.h>
 #include <drm/drm_blend.h>
 #include <drm/drm_color_mgmt.h>
-- 
2.35.1

