Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DFF70E61C
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 21:56:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D79510E4C9;
	Tue, 23 May 2023 19:56:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A10710E4BF
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 19:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684871791; x=1716407791;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QxjoD9H/MN1fGbzKerCjWffdGjg+bhG9LH3f8fm/Y5M=;
 b=SjXWMvCEhrCIplQKN42IvvTANX1yiCX4BjZETwyP9HAL6lByU9W8lXf7
 z/VcgcsgEo01Z+VR1wB/bT/e+higCGHVTvz7PzPGFsK4U+wBxNh8Vn2Tv
 cVTF8Nj7WKgPopnbus3WbTMUyMyKfBZdE6MXjPOKvHCxPUfvWiRou6V6v
 L7PXp7N3IY88nxM0qnVOq2vdVt8LuBRW5FFZpxr6+du4ASrJEdsUSwKMk
 JtBvzQLK5a0Y4WkMD/7N/xvoFR1KLgSHSAxT3QkflAv9zonj5x/GKOyLx
 kNZ466xiV/bk/GsMpDYdS3WSe2vhNZSGPe0gUT2/iKs/MV/a9UbjswaJb Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="353372869"
X-IronPort-AV: E=Sophos;i="6.00,187,1681196400"; d="scan'208";a="353372869"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 12:56:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="681557159"
X-IronPort-AV: E=Sophos;i="6.00,187,1681196400"; d="scan'208";a="681557159"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 12:56:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 May 2023 12:56:07 -0700
Message-Id: <20230523195609.73627-5-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230523195609.73627-1-matthew.d.roper@intel.com>
References: <20230523195609.73627-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v3 4/6] drm/i915/display: Make display responsible
 for probing its own IP
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
Cc: Jani Nikula <jani.nikula@intel.com>, matthew.d.roper@intel.com,
 Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rather than selecting the display IP and feature flags at the same time
the general PCI probing happens, move this step into the display code
itself so that it can be more easily re-used outside of i915 (i.e., by
the Xe driver).

v2:
 - Make intel_display_device_probe() always return a non-NULL pointer
   and simplify copying of runtime_defaults.  (Andrzej)
v3:
 - Redefine INTEL_VGA_DEVICE/INTEL_QUANTA_DEVICE to eliminate a cast and
   an include of linux/mod_devicetable.h.  (Jani)
 - Keep explicit memcpy for runtime defaults.  (Jani)

Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   2 +
 .../drm/i915/display/intel_display_device.c   | 718 ++++++++++++++++++
 .../drm/i915/display/intel_display_device.h   |   3 +
 drivers/gpu/drm/i915/i915_pci.c               | 665 ----------------
 drivers/gpu/drm/i915/i915_reg.h               |  33 -
 drivers/gpu/drm/i915/intel_device_info.c      |  10 +-
 6 files changed, 729 insertions(+), 702 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_device.c

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index dd9ca69f4998..06374fc072d3 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -25,6 +25,7 @@ subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
 
 # Fine grained warnings disable
 CFLAGS_i915_pci.o = $(call cc-disable-warning, override-init)
+CFLAGS_display/intel_display_device.o = $(call cc-disable-warning, override-init)
 CFLAGS_display/intel_fbdev.o = $(call cc-disable-warning, override-init)
 
 subdir-ccflags-y += -I$(srctree)/$(src)
@@ -308,6 +309,7 @@ i915-y += \
 	display/intel_cx0_phy.o \
 	display/intel_ddi.o \
 	display/intel_ddi_buf_trans.o \
+	display/intel_display_device.o \
 	display/intel_display_trace.o \
 	display/intel_dkl_phy.o \
 	display/intel_dp.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
new file mode 100644
index 000000000000..3e2f4cd0b9f5
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -0,0 +1,718 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#include <drm/i915_pciids.h>
+#include <drm/drm_color_mgmt.h>
+
+#include "intel_display_device.h"
+#include "intel_display_power.h"
+#include "intel_display_reg_defs.h"
+#include "intel_fbc.h"
+
+static const struct intel_display_device_info no_display = {};
+
+#define PIPE_A_OFFSET		0x70000
+#define PIPE_B_OFFSET		0x71000
+#define PIPE_C_OFFSET		0x72000
+#define PIPE_D_OFFSET		0x73000
+#define CHV_PIPE_C_OFFSET	0x74000
+/*
+ * There's actually no pipe EDP. Some pipe registers have
+ * simply shifted from the pipe to the transcoder, while
+ * keeping their original offset. Thus we need PIPE_EDP_OFFSET
+ * to access such registers in transcoder EDP.
+ */
+#define PIPE_EDP_OFFSET	0x7f000
+
+/* ICL DSI 0 and 1 */
+#define PIPE_DSI0_OFFSET	0x7b000
+#define PIPE_DSI1_OFFSET	0x7b800
+
+#define TRANSCODER_A_OFFSET 0x60000
+#define TRANSCODER_B_OFFSET 0x61000
+#define TRANSCODER_C_OFFSET 0x62000
+#define CHV_TRANSCODER_C_OFFSET 0x63000
+#define TRANSCODER_D_OFFSET 0x63000
+#define TRANSCODER_EDP_OFFSET 0x6f000
+#define TRANSCODER_DSI0_OFFSET	0x6b000
+#define TRANSCODER_DSI1_OFFSET	0x6b800
+
+#define CURSOR_A_OFFSET 0x70080
+#define CURSOR_B_OFFSET 0x700c0
+#define CHV_CURSOR_C_OFFSET 0x700e0
+#define IVB_CURSOR_B_OFFSET 0x71080
+#define IVB_CURSOR_C_OFFSET 0x72080
+#define TGL_CURSOR_D_OFFSET 0x73080
+
+#define I845_PIPE_OFFSETS \
+	.pipe_offsets = { \
+		[TRANSCODER_A] = PIPE_A_OFFSET,	\
+	}, \
+	.trans_offsets = { \
+		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
+	}
+
+#define I9XX_PIPE_OFFSETS \
+	.pipe_offsets = { \
+		[TRANSCODER_A] = PIPE_A_OFFSET,	\
+		[TRANSCODER_B] = PIPE_B_OFFSET, \
+	}, \
+	.trans_offsets = { \
+		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
+		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
+	}
+
+#define IVB_PIPE_OFFSETS \
+	.pipe_offsets = { \
+		[TRANSCODER_A] = PIPE_A_OFFSET,	\
+		[TRANSCODER_B] = PIPE_B_OFFSET, \
+		[TRANSCODER_C] = PIPE_C_OFFSET, \
+	}, \
+	.trans_offsets = { \
+		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
+		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
+		[TRANSCODER_C] = TRANSCODER_C_OFFSET, \
+	}
+
+#define HSW_PIPE_OFFSETS \
+	.pipe_offsets = { \
+		[TRANSCODER_A] = PIPE_A_OFFSET,	\
+		[TRANSCODER_B] = PIPE_B_OFFSET, \
+		[TRANSCODER_C] = PIPE_C_OFFSET, \
+		[TRANSCODER_EDP] = PIPE_EDP_OFFSET, \
+	}, \
+	.trans_offsets = { \
+		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
+		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
+		[TRANSCODER_C] = TRANSCODER_C_OFFSET, \
+		[TRANSCODER_EDP] = TRANSCODER_EDP_OFFSET, \
+	}
+
+#define CHV_PIPE_OFFSETS \
+	.pipe_offsets = { \
+		[TRANSCODER_A] = PIPE_A_OFFSET, \
+		[TRANSCODER_B] = PIPE_B_OFFSET, \
+		[TRANSCODER_C] = CHV_PIPE_C_OFFSET, \
+	}, \
+	.trans_offsets = { \
+		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
+		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
+		[TRANSCODER_C] = CHV_TRANSCODER_C_OFFSET, \
+	}
+
+#define I845_CURSOR_OFFSETS \
+	.cursor_offsets = { \
+		[PIPE_A] = CURSOR_A_OFFSET, \
+	}
+
+#define I9XX_CURSOR_OFFSETS \
+	.cursor_offsets = { \
+		[PIPE_A] = CURSOR_A_OFFSET, \
+		[PIPE_B] = CURSOR_B_OFFSET, \
+	}
+
+#define CHV_CURSOR_OFFSETS \
+	.cursor_offsets = { \
+		[PIPE_A] = CURSOR_A_OFFSET, \
+		[PIPE_B] = CURSOR_B_OFFSET, \
+		[PIPE_C] = CHV_CURSOR_C_OFFSET, \
+	}
+
+#define IVB_CURSOR_OFFSETS \
+	.cursor_offsets = { \
+		[PIPE_A] = CURSOR_A_OFFSET, \
+		[PIPE_B] = IVB_CURSOR_B_OFFSET, \
+		[PIPE_C] = IVB_CURSOR_C_OFFSET, \
+	}
+
+#define TGL_CURSOR_OFFSETS \
+	.cursor_offsets = { \
+		[PIPE_A] = CURSOR_A_OFFSET, \
+		[PIPE_B] = IVB_CURSOR_B_OFFSET, \
+		[PIPE_C] = IVB_CURSOR_C_OFFSET, \
+		[PIPE_D] = TGL_CURSOR_D_OFFSET, \
+	}
+
+#define I845_COLORS \
+	.color = { .gamma_lut_size = 256 }
+#define I9XX_COLORS \
+	.color = { .gamma_lut_size = 129, \
+		   .gamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING, \
+	}
+#define ILK_COLORS \
+	.color = { .gamma_lut_size = 1024 }
+#define IVB_COLORS \
+	.color = { .degamma_lut_size = 1024, .gamma_lut_size = 1024 }
+#define CHV_COLORS \
+	.color = { \
+		.degamma_lut_size = 65, .gamma_lut_size = 257, \
+		.degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING, \
+		.gamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING, \
+	}
+#define GLK_COLORS \
+	.color = { \
+		.degamma_lut_size = 33, .gamma_lut_size = 1024, \
+		.degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING | \
+				     DRM_COLOR_LUT_EQUAL_CHANNELS, \
+	}
+#define ICL_COLORS \
+	.color = { \
+		.degamma_lut_size = 33, .gamma_lut_size = 262145, \
+		.degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING | \
+				     DRM_COLOR_LUT_EQUAL_CHANNELS, \
+		.gamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING, \
+	}
+
+#define I830_DISPLAY \
+	.has_overlay = 1, \
+	.cursor_needs_physical = 1, \
+	.overlay_needs_physical = 1, \
+	.has_gmch = 1, \
+	I9XX_PIPE_OFFSETS, \
+	I9XX_CURSOR_OFFSETS, \
+	I9XX_COLORS, \
+	\
+	.__runtime_defaults.ip.ver = 2, \
+	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
+	.__runtime_defaults.cpu_transcoder_mask = \
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B)
+
+static const struct intel_display_device_info i830_display = {
+	I830_DISPLAY,
+};
+
+#define I845_DISPLAY \
+	.has_overlay = 1, \
+	.overlay_needs_physical = 1, \
+	.has_gmch = 1, \
+	I845_PIPE_OFFSETS, \
+	I845_CURSOR_OFFSETS, \
+	I845_COLORS, \
+	\
+	.__runtime_defaults.ip.ver = 2, \
+	.__runtime_defaults.pipe_mask = BIT(PIPE_A), \
+	.__runtime_defaults.cpu_transcoder_mask = BIT(TRANSCODER_A)
+
+static const struct intel_display_device_info i845_display = {
+	I845_DISPLAY,
+};
+
+static const struct intel_display_device_info i85x_display = {
+	I830_DISPLAY,
+
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+};
+
+static const struct intel_display_device_info i865g_display = {
+	I845_DISPLAY,
+
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+};
+
+#define GEN3_DISPLAY \
+	.has_gmch = 1, \
+	.has_overlay = 1, \
+	I9XX_PIPE_OFFSETS, \
+	I9XX_CURSOR_OFFSETS, \
+	I9XX_COLORS, \
+	\
+	.__runtime_defaults.ip.ver = 3, \
+	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
+	.__runtime_defaults.cpu_transcoder_mask = \
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B)
+
+static const struct intel_display_device_info i915g_display = {
+	GEN3_DISPLAY,
+	.cursor_needs_physical = 1,
+	.overlay_needs_physical = 1,
+};
+
+static const struct intel_display_device_info i915gm_display = {
+	GEN3_DISPLAY,
+	.cursor_needs_physical = 1,
+	.overlay_needs_physical = 1,
+	.supports_tv = 1,
+
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+};
+
+static const struct intel_display_device_info i945g_display = {
+	GEN3_DISPLAY,
+	.has_hotplug = 1,
+	.cursor_needs_physical = 1,
+	.overlay_needs_physical = 1,
+};
+
+static const struct intel_display_device_info i945gm_display = {
+	GEN3_DISPLAY,
+	.has_hotplug = 1,
+	.cursor_needs_physical = 1,
+	.overlay_needs_physical = 1,
+	.supports_tv = 1,
+
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+};
+
+static const struct intel_display_device_info g33_display = {
+	GEN3_DISPLAY,
+	.has_hotplug = 1,
+};
+
+#define GEN4_DISPLAY \
+	.has_hotplug = 1, \
+	.has_gmch = 1, \
+	I9XX_PIPE_OFFSETS, \
+	I9XX_CURSOR_OFFSETS, \
+	I9XX_COLORS, \
+	\
+	.__runtime_defaults.ip.ver = 4, \
+	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
+	.__runtime_defaults.cpu_transcoder_mask = \
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B)
+
+static const struct intel_display_device_info i965g_display = {
+	GEN4_DISPLAY,
+	.has_overlay = 1,
+};
+
+static const struct intel_display_device_info i965gm_display = {
+	GEN4_DISPLAY,
+	.has_overlay = 1,
+	.supports_tv = 1,
+
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+};
+
+static const struct intel_display_device_info g45_display = {
+	GEN4_DISPLAY,
+};
+
+static const struct intel_display_device_info gm45_display = {
+	GEN4_DISPLAY,
+	.supports_tv = 1,
+
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+};
+
+#define ILK_DISPLAY \
+	.has_hotplug = 1, \
+	I9XX_PIPE_OFFSETS, \
+	I9XX_CURSOR_OFFSETS, \
+	ILK_COLORS, \
+	\
+	.__runtime_defaults.ip.ver = 5, \
+	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
+	.__runtime_defaults.cpu_transcoder_mask = \
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B)
+
+static const struct intel_display_device_info ilk_d_display = {
+	ILK_DISPLAY,
+};
+
+static const struct intel_display_device_info ilk_m_display = {
+	ILK_DISPLAY,
+
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+};
+
+static const struct intel_display_device_info snb_display = {
+	.has_hotplug = 1,
+	I9XX_PIPE_OFFSETS,
+	I9XX_CURSOR_OFFSETS,
+	ILK_COLORS,
+
+	.__runtime_defaults.ip.ver = 6,
+	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
+	.__runtime_defaults.cpu_transcoder_mask =
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+};
+
+static const struct intel_display_device_info ivb_display = {
+	.has_hotplug = 1,
+	IVB_PIPE_OFFSETS,
+	IVB_CURSOR_OFFSETS,
+	IVB_COLORS,
+
+	.__runtime_defaults.ip.ver = 7,
+	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+	.__runtime_defaults.cpu_transcoder_mask =
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+};
+
+static const struct intel_display_device_info vlv_display = {
+	.has_gmch = 1,
+	.has_hotplug = 1,
+	.mmio_offset = VLV_DISPLAY_BASE,
+	I9XX_PIPE_OFFSETS,
+	I9XX_CURSOR_OFFSETS,
+	I9XX_COLORS,
+
+	.__runtime_defaults.ip.ver = 7,
+	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
+	.__runtime_defaults.cpu_transcoder_mask =
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
+};
+
+static const struct intel_display_device_info hsw_display = {
+	.has_ddi = 1,
+	.has_dp_mst = 1,
+	.has_fpga_dbg = 1,
+	.has_hotplug = 1,
+	HSW_PIPE_OFFSETS,
+	IVB_CURSOR_OFFSETS,
+	IVB_COLORS,
+
+	.__runtime_defaults.ip.ver = 7,
+	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+	.__runtime_defaults.cpu_transcoder_mask =
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+};
+
+static const struct intel_display_device_info bdw_display = {
+	.has_ddi = 1,
+	.has_dp_mst = 1,
+	.has_fpga_dbg = 1,
+	.has_hotplug = 1,
+	HSW_PIPE_OFFSETS,
+	IVB_CURSOR_OFFSETS,
+	IVB_COLORS,
+
+	.__runtime_defaults.ip.ver = 8,
+	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+	.__runtime_defaults.cpu_transcoder_mask =
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+};
+
+static const struct intel_display_device_info chv_display = {
+	.has_hotplug = 1,
+	.has_gmch = 1,
+	.mmio_offset = VLV_DISPLAY_BASE,
+	CHV_PIPE_OFFSETS,
+	CHV_CURSOR_OFFSETS,
+	CHV_COLORS,
+
+	.__runtime_defaults.ip.ver = 8,
+	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+	.__runtime_defaults.cpu_transcoder_mask =
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
+};
+
+static const struct intel_display_device_info skl_display = {
+	.dbuf.size = 896 - 4, /* 4 blocks for bypass path allocation */
+	.dbuf.slice_mask = BIT(DBUF_S1),
+	.has_ddi = 1,
+	.has_dp_mst = 1,
+	.has_fpga_dbg = 1,
+	.has_hotplug = 1,
+	.has_ipc = 1,
+	.has_psr = 1,
+	.has_psr_hw_tracking = 1,
+	HSW_PIPE_OFFSETS,
+	IVB_CURSOR_OFFSETS,
+	IVB_COLORS,
+
+	.__runtime_defaults.ip.ver = 9,
+	.__runtime_defaults.has_dmc = 1,
+	.__runtime_defaults.has_hdcp = 1,
+	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+	.__runtime_defaults.cpu_transcoder_mask =
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+};
+
+#define GEN9_LP_DISPLAY \
+	.dbuf.slice_mask = BIT(DBUF_S1), \
+	.has_dp_mst = 1, \
+	.has_ddi = 1, \
+	.has_fpga_dbg = 1, \
+	.has_hotplug = 1, \
+	.has_ipc = 1, \
+	.has_psr = 1, \
+	.has_psr_hw_tracking = 1, \
+	HSW_PIPE_OFFSETS, \
+	IVB_CURSOR_OFFSETS, \
+	IVB_COLORS, \
+	\
+	.__runtime_defaults.has_dmc = 1, \
+	.__runtime_defaults.has_hdcp = 1, \
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A), \
+	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
+	.__runtime_defaults.cpu_transcoder_mask = \
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
+		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C)
+
+static const struct intel_display_device_info bxt_display = {
+	GEN9_LP_DISPLAY,
+	.dbuf.size = 512 - 4, /* 4 blocks for bypass path allocation */
+
+	.__runtime_defaults.ip.ver = 9,
+};
+
+static const struct intel_display_device_info glk_display = {
+	GEN9_LP_DISPLAY,
+	.dbuf.size = 1024 - 4, /* 4 blocks for bypass path allocation */
+	GLK_COLORS,
+
+	.__runtime_defaults.ip.ver = 10,
+};
+
+static const struct intel_display_device_info gen11_display = {
+	.abox_mask = BIT(0),
+	.dbuf.size = 2048,
+	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2),
+	.has_ddi = 1,
+	.has_dp_mst = 1,
+	.has_fpga_dbg = 1,
+	.has_hotplug = 1,
+	.has_ipc = 1,
+	.has_psr = 1,
+	.has_psr_hw_tracking = 1,
+	.pipe_offsets = {
+		[TRANSCODER_A] = PIPE_A_OFFSET,
+		[TRANSCODER_B] = PIPE_B_OFFSET,
+		[TRANSCODER_C] = PIPE_C_OFFSET,
+		[TRANSCODER_EDP] = PIPE_EDP_OFFSET,
+		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET,
+		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET,
+	},
+	.trans_offsets = {
+		[TRANSCODER_A] = TRANSCODER_A_OFFSET,
+		[TRANSCODER_B] = TRANSCODER_B_OFFSET,
+		[TRANSCODER_C] = TRANSCODER_C_OFFSET,
+		[TRANSCODER_EDP] = TRANSCODER_EDP_OFFSET,
+		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET,
+		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET,
+	},
+	IVB_CURSOR_OFFSETS,
+	ICL_COLORS,
+
+	.__runtime_defaults.ip.ver = 11,
+	.__runtime_defaults.has_dmc = 1,
+	.__runtime_defaults.has_dsc = 1,
+	.__runtime_defaults.has_hdcp = 1,
+	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+	.__runtime_defaults.cpu_transcoder_mask =
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) |
+		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+};
+
+#define XE_D_DISPLAY \
+	.abox_mask = GENMASK(2, 1), \
+	.dbuf.size = 2048, \
+	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2), \
+	.has_ddi = 1, \
+	.has_dp_mst = 1, \
+	.has_dsb = 1, \
+	.has_fpga_dbg = 1, \
+	.has_hotplug = 1, \
+	.has_ipc = 1, \
+	.has_psr = 1, \
+	.has_psr_hw_tracking = 1, \
+	.pipe_offsets = { \
+		[TRANSCODER_A] = PIPE_A_OFFSET, \
+		[TRANSCODER_B] = PIPE_B_OFFSET, \
+		[TRANSCODER_C] = PIPE_C_OFFSET, \
+		[TRANSCODER_D] = PIPE_D_OFFSET, \
+		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET, \
+		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET, \
+	}, \
+	.trans_offsets = { \
+		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
+		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
+		[TRANSCODER_C] = TRANSCODER_C_OFFSET, \
+		[TRANSCODER_D] = TRANSCODER_D_OFFSET, \
+		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET, \
+		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET, \
+	}, \
+	TGL_CURSOR_OFFSETS, \
+	ICL_COLORS, \
+	\
+	.__runtime_defaults.ip.ver = 12, \
+	.__runtime_defaults.has_dmc = 1, \
+	.__runtime_defaults.has_dsc = 1, \
+	.__runtime_defaults.has_hdcp = 1, \
+	.__runtime_defaults.pipe_mask = \
+		BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D), \
+	.__runtime_defaults.cpu_transcoder_mask = \
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) | \
+		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A)
+
+static const struct intel_display_device_info tgl_display = {
+	XE_D_DISPLAY,
+};
+
+static const struct intel_display_device_info rkl_display = {
+	XE_D_DISPLAY,
+	.abox_mask = BIT(0),
+	.has_hti = 1,
+	.has_psr_hw_tracking = 0,
+
+	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+	.__runtime_defaults.cpu_transcoder_mask =
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
+};
+
+static const struct intel_display_device_info adl_s_display = {
+	XE_D_DISPLAY,
+	.has_hti = 1,
+	.has_psr_hw_tracking = 0,
+};
+
+#define XE_LPD_FEATURES \
+	.abox_mask = GENMASK(1, 0),						\
+	.color = {								\
+		.degamma_lut_size = 129, .gamma_lut_size = 1024,		\
+		.degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING |		\
+		DRM_COLOR_LUT_EQUAL_CHANNELS,					\
+	},									\
+	.dbuf.size = 4096,							\
+	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
+		BIT(DBUF_S4),							\
+	.has_ddi = 1,								\
+	.has_dp_mst = 1,							\
+	.has_dsb = 1,								\
+	.has_fpga_dbg = 1,							\
+	.has_hotplug = 1,							\
+	.has_ipc = 1,								\
+	.has_psr = 1,								\
+	.pipe_offsets = {							\
+		[TRANSCODER_A] = PIPE_A_OFFSET,					\
+		[TRANSCODER_B] = PIPE_B_OFFSET,					\
+		[TRANSCODER_C] = PIPE_C_OFFSET,					\
+		[TRANSCODER_D] = PIPE_D_OFFSET,					\
+		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET,				\
+		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET,				\
+	},									\
+	.trans_offsets = {							\
+		[TRANSCODER_A] = TRANSCODER_A_OFFSET,				\
+		[TRANSCODER_B] = TRANSCODER_B_OFFSET,				\
+		[TRANSCODER_C] = TRANSCODER_C_OFFSET,				\
+		[TRANSCODER_D] = TRANSCODER_D_OFFSET,				\
+		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET,			\
+		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET,			\
+	},									\
+	TGL_CURSOR_OFFSETS,							\
+										\
+	.__runtime_defaults.ip.ver = 13,					\
+	.__runtime_defaults.has_dmc = 1,					\
+	.__runtime_defaults.has_dsc = 1,					\
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),			\
+	.__runtime_defaults.has_hdcp = 1,					\
+	.__runtime_defaults.pipe_mask =						\
+		BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D)
+
+static const struct intel_display_device_info xe_lpd_display = {
+	XE_LPD_FEATURES,
+	.has_cdclk_crawl = 1,
+	.has_psr_hw_tracking = 0,
+
+	.__runtime_defaults.cpu_transcoder_mask =
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |
+		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
+};
+
+static const struct intel_display_device_info xe_hpd_display = {
+	XE_LPD_FEATURES,
+	.has_cdclk_squash = 1,
+
+	.__runtime_defaults.cpu_transcoder_mask =
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
+};
+
+static const struct intel_display_device_info xe_lpdp_display = {
+	XE_LPD_FEATURES,
+	.has_cdclk_crawl = 1,
+	.has_cdclk_squash = 1,
+
+	.__runtime_defaults.ip.ver = 14,
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),
+	.__runtime_defaults.cpu_transcoder_mask =
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
+};
+
+#undef INTEL_VGA_DEVICE
+#undef INTEL_QUANTA_VGA_DEVICE
+#define INTEL_VGA_DEVICE(id, info) { id, info }
+#define INTEL_QUANTA_VGA_DEVICE(info) { 0x16a, info }
+
+static const struct {
+	u32 devid;
+	const struct intel_display_device_info *info;
+} intel_display_ids[] = {
+	INTEL_I830_IDS(&i830_display),
+	INTEL_I845G_IDS(&i845_display),
+	INTEL_I85X_IDS(&i85x_display),
+	INTEL_I865G_IDS(&i865g_display),
+	INTEL_I915G_IDS(&i915g_display),
+	INTEL_I915GM_IDS(&i915gm_display),
+	INTEL_I945G_IDS(&i945g_display),
+	INTEL_I945GM_IDS(&i945gm_display),
+	INTEL_I965G_IDS(&i965g_display),
+	INTEL_G33_IDS(&g33_display),
+	INTEL_I965GM_IDS(&i965gm_display),
+	INTEL_GM45_IDS(&gm45_display),
+	INTEL_G45_IDS(&g45_display),
+	INTEL_PINEVIEW_G_IDS(&g33_display),
+	INTEL_PINEVIEW_M_IDS(&g33_display),
+	INTEL_IRONLAKE_D_IDS(&ilk_d_display),
+	INTEL_IRONLAKE_M_IDS(&ilk_m_display),
+	INTEL_SNB_D_IDS(&snb_display),
+	INTEL_SNB_M_IDS(&snb_display),
+	INTEL_IVB_Q_IDS(NULL),		/* must be first IVB in list */
+	INTEL_IVB_M_IDS(&ivb_display),
+	INTEL_IVB_D_IDS(&ivb_display),
+	INTEL_HSW_IDS(&hsw_display),
+	INTEL_VLV_IDS(&vlv_display),
+	INTEL_BDW_IDS(&bdw_display),
+	INTEL_CHV_IDS(&chv_display),
+	INTEL_SKL_IDS(&skl_display),
+	INTEL_BXT_IDS(&bxt_display),
+	INTEL_GLK_IDS(&glk_display),
+	INTEL_KBL_IDS(&skl_display),
+	INTEL_CFL_IDS(&skl_display),
+	INTEL_ICL_11_IDS(&gen11_display),
+	INTEL_EHL_IDS(&gen11_display),
+	INTEL_JSL_IDS(&gen11_display),
+	INTEL_TGL_12_IDS(&tgl_display),
+	INTEL_DG1_IDS(&tgl_display),
+	INTEL_RKL_IDS(&rkl_display),
+	INTEL_ADLS_IDS(&adl_s_display),
+	INTEL_RPLS_IDS(&adl_s_display),
+	INTEL_ADLP_IDS(&xe_lpd_display),
+	INTEL_ADLN_IDS(&xe_lpd_display),
+	INTEL_RPLP_IDS(&xe_lpd_display),
+	INTEL_DG2_IDS(&xe_hpd_display),
+
+	/* FIXME: Replace this with a GMD_ID lookup */
+	INTEL_MTL_IDS(&xe_lpdp_display),
+};
+
+const struct intel_display_device_info *
+intel_display_device_probe(u16 pci_devid)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(intel_display_ids); i++) {
+		if (intel_display_ids[i].devid == pci_devid)
+			return intel_display_ids[i].info;
+	}
+
+	return &no_display;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 613607fad5af..1f7d08b3ad6b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -80,4 +80,7 @@ struct intel_display_device_info {
 	} color;
 };
 
+const struct intel_display_device_info *
+intel_display_device_probe(u16 pci_devid);
+
 #endif
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 62f114df0fb2..928975d5fe2f 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -43,127 +43,6 @@
 	.__runtime.graphics.ip.ver = (x), \
 	.__runtime.media.ip.ver = (x)
 
-static const struct intel_display_device_info no_display = {};
-
-#define I845_PIPE_OFFSETS \
-	.pipe_offsets = { \
-		[TRANSCODER_A] = PIPE_A_OFFSET,	\
-	}, \
-	.trans_offsets = { \
-		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
-	}
-
-#define I9XX_PIPE_OFFSETS \
-	.pipe_offsets = { \
-		[TRANSCODER_A] = PIPE_A_OFFSET,	\
-		[TRANSCODER_B] = PIPE_B_OFFSET, \
-	}, \
-	.trans_offsets = { \
-		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
-		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
-	}
-
-#define IVB_PIPE_OFFSETS \
-	.pipe_offsets = { \
-		[TRANSCODER_A] = PIPE_A_OFFSET,	\
-		[TRANSCODER_B] = PIPE_B_OFFSET, \
-		[TRANSCODER_C] = PIPE_C_OFFSET, \
-	}, \
-	.trans_offsets = { \
-		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
-		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
-		[TRANSCODER_C] = TRANSCODER_C_OFFSET, \
-	}
-
-#define HSW_PIPE_OFFSETS \
-	.pipe_offsets = { \
-		[TRANSCODER_A] = PIPE_A_OFFSET,	\
-		[TRANSCODER_B] = PIPE_B_OFFSET, \
-		[TRANSCODER_C] = PIPE_C_OFFSET, \
-		[TRANSCODER_EDP] = PIPE_EDP_OFFSET, \
-	}, \
-	.trans_offsets = { \
-		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
-		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
-		[TRANSCODER_C] = TRANSCODER_C_OFFSET, \
-		[TRANSCODER_EDP] = TRANSCODER_EDP_OFFSET, \
-	}
-
-#define CHV_PIPE_OFFSETS \
-	.pipe_offsets = { \
-		[TRANSCODER_A] = PIPE_A_OFFSET, \
-		[TRANSCODER_B] = PIPE_B_OFFSET, \
-		[TRANSCODER_C] = CHV_PIPE_C_OFFSET, \
-	}, \
-	.trans_offsets = { \
-		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
-		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
-		[TRANSCODER_C] = CHV_TRANSCODER_C_OFFSET, \
-	}
-
-#define I845_CURSOR_OFFSETS \
-	.cursor_offsets = { \
-		[PIPE_A] = CURSOR_A_OFFSET, \
-	}
-
-#define I9XX_CURSOR_OFFSETS \
-	.cursor_offsets = { \
-		[PIPE_A] = CURSOR_A_OFFSET, \
-		[PIPE_B] = CURSOR_B_OFFSET, \
-	}
-
-#define CHV_CURSOR_OFFSETS \
-	.cursor_offsets = { \
-		[PIPE_A] = CURSOR_A_OFFSET, \
-		[PIPE_B] = CURSOR_B_OFFSET, \
-		[PIPE_C] = CHV_CURSOR_C_OFFSET, \
-	}
-
-#define IVB_CURSOR_OFFSETS \
-	.cursor_offsets = { \
-		[PIPE_A] = CURSOR_A_OFFSET, \
-		[PIPE_B] = IVB_CURSOR_B_OFFSET, \
-		[PIPE_C] = IVB_CURSOR_C_OFFSET, \
-	}
-
-#define TGL_CURSOR_OFFSETS \
-	.cursor_offsets = { \
-		[PIPE_A] = CURSOR_A_OFFSET, \
-		[PIPE_B] = IVB_CURSOR_B_OFFSET, \
-		[PIPE_C] = IVB_CURSOR_C_OFFSET, \
-		[PIPE_D] = TGL_CURSOR_D_OFFSET, \
-	}
-
-#define I845_COLORS \
-	.color = { .gamma_lut_size = 256 }
-#define I9XX_COLORS \
-	.color = { .gamma_lut_size = 129, \
-		   .gamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING, \
-	}
-#define ILK_COLORS \
-	.color = { .gamma_lut_size = 1024 }
-#define IVB_COLORS \
-	.color = { .degamma_lut_size = 1024, .gamma_lut_size = 1024 }
-#define CHV_COLORS \
-	.color = { \
-		.degamma_lut_size = 65, .gamma_lut_size = 257, \
-		.degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING, \
-		.gamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING, \
-	}
-#define GLK_COLORS \
-	.color = { \
-		.degamma_lut_size = 33, .gamma_lut_size = 1024, \
-		.degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING | \
-				     DRM_COLOR_LUT_EQUAL_CHANNELS, \
-	}
-#define ICL_COLORS \
-	.color = { \
-		.degamma_lut_size = 33, .gamma_lut_size = 262145, \
-		.degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING | \
-				     DRM_COLOR_LUT_EQUAL_CHANNELS, \
-		.gamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING, \
-	}
-
 #define LEGACY_CACHELEVEL \
 	.cachelevel_to_pat = { \
 		[I915_CACHE_NONE]   = 0, \
@@ -204,24 +83,6 @@ static const struct intel_display_device_info no_display = {};
 #define GEN_DEFAULT_REGIONS \
 	.__runtime.memory_regions = REGION_SMEM | REGION_STOLEN_SMEM
 
-#define I830_DISPLAY \
-	.has_overlay = 1, \
-	.cursor_needs_physical = 1, \
-	.overlay_needs_physical = 1, \
-	.has_gmch = 1, \
-	I9XX_PIPE_OFFSETS, \
-	I9XX_CURSOR_OFFSETS, \
-	I9XX_COLORS, \
-	\
-	.__runtime_defaults.ip.ver = 2, \
-	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.__runtime_defaults.cpu_transcoder_mask = \
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B)
-
-static const struct intel_display_device_info i830_display = {
-	I830_DISPLAY,
-};
-
 #define I830_FEATURES \
 	GEN(2), \
 	.is_mobile = 1, \
@@ -238,22 +99,6 @@ static const struct intel_display_device_info i830_display = {
 	GEN_DEFAULT_REGIONS, \
 	LEGACY_CACHELEVEL
 
-#define I845_DISPLAY \
-	.has_overlay = 1, \
-	.overlay_needs_physical = 1, \
-	.has_gmch = 1, \
-	I845_PIPE_OFFSETS, \
-	I845_CURSOR_OFFSETS, \
-	I845_COLORS, \
-	\
-	.__runtime_defaults.ip.ver = 2, \
-	.__runtime_defaults.pipe_mask = BIT(PIPE_A), \
-	.__runtime_defaults.cpu_transcoder_mask = BIT(TRANSCODER_A)
-
-static const struct intel_display_device_info i845_display = {
-	I845_DISPLAY,
-};
-
 #define I845_FEATURES \
 	GEN(2), \
 	.has_3d_pipeline = 1, \
@@ -272,86 +117,21 @@ static const struct intel_display_device_info i845_display = {
 static const struct intel_device_info i830_info = {
 	I830_FEATURES,
 	PLATFORM(INTEL_I830),
-	.display = &i830_display,
 };
 
 static const struct intel_device_info i845g_info = {
 	I845_FEATURES,
 	PLATFORM(INTEL_I845G),
-	.display = &i845_display,
-};
-
-static const struct intel_display_device_info i85x_display = {
-	I830_DISPLAY,
-
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 static const struct intel_device_info i85x_info = {
 	I830_FEATURES,
 	PLATFORM(INTEL_I85X),
-	.display = &i85x_display,
-};
-
-static const struct intel_display_device_info i865g_display = {
-	I845_DISPLAY,
-
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 static const struct intel_device_info i865g_info = {
 	I845_FEATURES,
 	PLATFORM(INTEL_I865G),
-	.display = &i865g_display,
-};
-
-#define GEN3_DISPLAY \
-	.has_gmch = 1, \
-	.has_overlay = 1, \
-	I9XX_PIPE_OFFSETS, \
-	I9XX_CURSOR_OFFSETS, \
-	I9XX_COLORS, \
-	\
-	.__runtime_defaults.ip.ver = 3, \
-	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.__runtime_defaults.cpu_transcoder_mask = \
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B)
-
-static const struct intel_display_device_info i915g_display = {
-	GEN3_DISPLAY,
-	.cursor_needs_physical = 1,
-	.overlay_needs_physical = 1,
-};
-
-static const struct intel_display_device_info i915gm_display = {
-	GEN3_DISPLAY,
-	.cursor_needs_physical = 1,
-	.overlay_needs_physical = 1,
-	.supports_tv = 1,
-
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
-};
-
-static const struct intel_display_device_info i945g_display = {
-	GEN3_DISPLAY,
-	.has_hotplug = 1,
-	.cursor_needs_physical = 1,
-	.overlay_needs_physical = 1,
-};
-
-static const struct intel_display_device_info i945gm_display = {
-	GEN3_DISPLAY,
-	.has_hotplug = 1,
-	.cursor_needs_physical = 1,
-	.overlay_needs_physical = 1,
-	.supports_tv = 1,
-
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
-};
-
-static const struct intel_display_device_info g33_display = {
-	GEN3_DISPLAY,
-	.has_hotplug = 1,
 };
 
 #define GEN3_FEATURES \
@@ -370,7 +150,6 @@ static const struct intel_display_device_info g33_display = {
 static const struct intel_device_info i915g_info = {
 	GEN3_FEATURES,
 	PLATFORM(INTEL_I915G),
-	.display = &i915g_display,
 	.has_coherent_ggtt = false,
 	.hws_needs_physical = 1,
 	.unfenced_needs_alignment = 1,
@@ -379,7 +158,6 @@ static const struct intel_device_info i915g_info = {
 static const struct intel_device_info i915gm_info = {
 	GEN3_FEATURES,
 	PLATFORM(INTEL_I915GM),
-	.display = &i915gm_display,
 	.is_mobile = 1,
 	.hws_needs_physical = 1,
 	.unfenced_needs_alignment = 1,
@@ -388,7 +166,6 @@ static const struct intel_device_info i915gm_info = {
 static const struct intel_device_info i945g_info = {
 	GEN3_FEATURES,
 	PLATFORM(INTEL_I945G),
-	.display = &i945g_display,
 	.hws_needs_physical = 1,
 	.unfenced_needs_alignment = 1,
 };
@@ -396,7 +173,6 @@ static const struct intel_device_info i945g_info = {
 static const struct intel_device_info i945gm_info = {
 	GEN3_FEATURES,
 	PLATFORM(INTEL_I945GM),
-	.display = &i945gm_display,
 	.is_mobile = 1,
 	.hws_needs_physical = 1,
 	.unfenced_needs_alignment = 1,
@@ -405,14 +181,12 @@ static const struct intel_device_info i945gm_info = {
 static const struct intel_device_info g33_info = {
 	GEN3_FEATURES,
 	PLATFORM(INTEL_G33),
-	.display = &g33_display,
 	.dma_mask_size = 36,
 };
 
 static const struct intel_device_info pnv_g_info = {
 	GEN3_FEATURES,
 	PLATFORM(INTEL_PINEVIEW),
-	.display = &g33_display,
 	.dma_mask_size = 36,
 };
 
@@ -420,46 +194,9 @@ static const struct intel_device_info pnv_m_info = {
 	GEN3_FEATURES,
 	PLATFORM(INTEL_PINEVIEW),
 	.is_mobile = 1,
-	.display = &g33_display,
 	.dma_mask_size = 36,
 };
 
-#define GEN4_DISPLAY \
-	.has_hotplug = 1, \
-	.has_gmch = 1, \
-	I9XX_PIPE_OFFSETS, \
-	I9XX_CURSOR_OFFSETS, \
-	I9XX_COLORS, \
-	\
-	.__runtime_defaults.ip.ver = 4, \
-	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.__runtime_defaults.cpu_transcoder_mask = \
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B)
-
-static const struct intel_display_device_info i965g_display = {
-	GEN4_DISPLAY,
-	.has_overlay = 1,
-};
-
-static const struct intel_display_device_info i965gm_display = {
-	GEN4_DISPLAY,
-	.has_overlay = 1,
-	.supports_tv = 1,
-
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
-};
-
-static const struct intel_display_device_info g45_display = {
-	GEN4_DISPLAY,
-};
-
-static const struct intel_display_device_info gm45_display = {
-	GEN4_DISPLAY,
-	.supports_tv = 1,
-
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
-};
-
 #define GEN4_FEATURES \
 	GEN(4), \
 	.gpu_reset_clobbers_display = true, \
@@ -476,7 +213,6 @@ static const struct intel_display_device_info gm45_display = {
 static const struct intel_device_info i965g_info = {
 	GEN4_FEATURES,
 	PLATFORM(INTEL_I965G),
-	.display = &i965g_display,
 	.hws_needs_physical = 1,
 	.has_snoop = false,
 };
@@ -484,7 +220,6 @@ static const struct intel_device_info i965g_info = {
 static const struct intel_device_info i965gm_info = {
 	GEN4_FEATURES,
 	PLATFORM(INTEL_I965GM),
-	.display = &i965gm_display,
 	.is_mobile = 1,
 	.hws_needs_physical = 1,
 	.has_snoop = false,
@@ -494,7 +229,6 @@ static const struct intel_device_info g45_info = {
 	GEN4_FEATURES,
 	PLATFORM(INTEL_G45),
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
-	.display = &g45_display,
 	.gpu_reset_clobbers_display = false,
 };
 
@@ -503,7 +237,6 @@ static const struct intel_device_info gm45_info = {
 	PLATFORM(INTEL_GM45),
 	.is_mobile = 1,
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
-	.display = &gm45_display,
 	.gpu_reset_clobbers_display = false,
 };
 
@@ -521,37 +254,14 @@ static const struct intel_device_info gm45_info = {
 	GEN_DEFAULT_REGIONS, \
 	LEGACY_CACHELEVEL
 
-#define ILK_DISPLAY \
-	.has_hotplug = 1, \
-	I9XX_PIPE_OFFSETS, \
-	I9XX_CURSOR_OFFSETS, \
-	ILK_COLORS, \
-	\
-	.__runtime_defaults.ip.ver = 5, \
-	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.__runtime_defaults.cpu_transcoder_mask = \
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B)
-
-static const struct intel_display_device_info ilk_d_display = {
-	ILK_DISPLAY,
-};
-
 static const struct intel_device_info ilk_d_info = {
 	GEN5_FEATURES,
 	PLATFORM(INTEL_IRONLAKE),
-	.display = &ilk_d_display,
-};
-
-static const struct intel_display_device_info ilk_m_display = {
-	ILK_DISPLAY,
-
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 static const struct intel_device_info ilk_m_info = {
 	GEN5_FEATURES,
 	PLATFORM(INTEL_IRONLAKE),
-	.display = &ilk_m_display,
 	.is_mobile = 1,
 	.has_rps = true,
 };
@@ -574,32 +284,17 @@ static const struct intel_device_info ilk_m_info = {
 	GEN_DEFAULT_REGIONS, \
 	LEGACY_CACHELEVEL
 
-static const struct intel_display_device_info snb_display = {
-	.has_hotplug = 1,
-	I9XX_PIPE_OFFSETS,
-	I9XX_CURSOR_OFFSETS,
-	ILK_COLORS,
-
-	.__runtime_defaults.ip.ver = 6,
-	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
-	.__runtime_defaults.cpu_transcoder_mask =
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
-};
-
 #define SNB_D_PLATFORM \
 	GEN6_FEATURES, \
 	PLATFORM(INTEL_SANDYBRIDGE)
 
 static const struct intel_device_info snb_d_gt1_info = {
 	SNB_D_PLATFORM,
-	.display = &snb_display,
 	.gt = 1,
 };
 
 static const struct intel_device_info snb_d_gt2_info = {
 	SNB_D_PLATFORM,
-	.display = &snb_display,
 	.gt = 2,
 };
 
@@ -611,13 +306,11 @@ static const struct intel_device_info snb_d_gt2_info = {
 
 static const struct intel_device_info snb_m_gt1_info = {
 	SNB_M_PLATFORM,
-	.display = &snb_display,
 	.gt = 1,
 };
 
 static const struct intel_device_info snb_m_gt2_info = {
 	SNB_M_PLATFORM,
-	.display = &snb_display,
 	.gt = 2,
 };
 
@@ -644,28 +337,13 @@ static const struct intel_device_info snb_m_gt2_info = {
 	PLATFORM(INTEL_IVYBRIDGE), \
 	.has_l3_dpf = 1
 
-static const struct intel_display_device_info ivb_display = {
-	.has_hotplug = 1,
-	IVB_PIPE_OFFSETS,
-	IVB_CURSOR_OFFSETS,
-	IVB_COLORS,
-
-	.__runtime_defaults.ip.ver = 7,
-	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
-	.__runtime_defaults.cpu_transcoder_mask =
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
-};
-
 static const struct intel_device_info ivb_d_gt1_info = {
 	IVB_D_PLATFORM,
-	.display = &ivb_display,
 	.gt = 1,
 };
 
 static const struct intel_device_info ivb_d_gt2_info = {
 	IVB_D_PLATFORM,
-	.display = &ivb_display,
 	.gt = 2,
 };
 
@@ -677,43 +355,25 @@ static const struct intel_device_info ivb_d_gt2_info = {
 
 static const struct intel_device_info ivb_m_gt1_info = {
 	IVB_M_PLATFORM,
-	.display = &ivb_display,
 	.gt = 1,
 };
 
 static const struct intel_device_info ivb_m_gt2_info = {
 	IVB_M_PLATFORM,
-	.display = &ivb_display,
 	.gt = 2,
 };
 
 static const struct intel_device_info ivb_q_info = {
 	GEN7_FEATURES,
 	PLATFORM(INTEL_IVYBRIDGE),
-	.display = &no_display,
 	.gt = 2,
 	.has_l3_dpf = 1,
 };
 
-static const struct intel_display_device_info vlv_display = {
-	.has_gmch = 1,
-	.has_hotplug = 1,
-	.mmio_offset = VLV_DISPLAY_BASE,
-	I9XX_PIPE_OFFSETS,
-	I9XX_CURSOR_OFFSETS,
-	I9XX_COLORS,
-
-	.__runtime_defaults.ip.ver = 7,
-	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
-	.__runtime_defaults.cpu_transcoder_mask =
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
-};
-
 static const struct intel_device_info vlv_info = {
 	PLATFORM(INTEL_VALLEYVIEW),
 	GEN(7),
 	.is_lp = 1,
-	.display = &vlv_display,
 	.has_runtime_pm = 1,
 	.has_rc6 = 1,
 	.has_reset_engine = true,
@@ -741,38 +401,18 @@ static const struct intel_device_info vlv_info = {
 	PLATFORM(INTEL_HASWELL), \
 	.has_l3_dpf = 1
 
-static const struct intel_display_device_info hsw_display = {
-	.has_ddi = 1,
-	.has_dp_mst = 1,
-	.has_fpga_dbg = 1,
-	.has_hotplug = 1,
-	HSW_PIPE_OFFSETS,
-	IVB_CURSOR_OFFSETS,
-	IVB_COLORS,
-
-	.__runtime_defaults.ip.ver = 7,
-	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
-	.__runtime_defaults.cpu_transcoder_mask =
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
-		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
-};
-
 static const struct intel_device_info hsw_gt1_info = {
 	HSW_PLATFORM,
-	.display = &hsw_display,
 	.gt = 1,
 };
 
 static const struct intel_device_info hsw_gt2_info = {
 	HSW_PLATFORM,
-	.display = &hsw_display,
 	.gt = 2,
 };
 
 static const struct intel_device_info hsw_gt3_info = {
 	HSW_PLATFORM,
-	.display = &hsw_display,
 	.gt = 3,
 };
 
@@ -785,42 +425,22 @@ static const struct intel_device_info hsw_gt3_info = {
 	.__runtime.ppgtt_size = 48, \
 	.has_64bit_reloc = 1
 
-static const struct intel_display_device_info bdw_display = {
-	.has_ddi = 1,
-	.has_dp_mst = 1,
-	.has_fpga_dbg = 1,
-	.has_hotplug = 1,
-	HSW_PIPE_OFFSETS,
-	IVB_CURSOR_OFFSETS,
-	IVB_COLORS,
-
-	.__runtime_defaults.ip.ver = 8,
-	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
-	.__runtime_defaults.cpu_transcoder_mask =
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
-		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
-};
-
 #define BDW_PLATFORM \
 	GEN8_FEATURES, \
 	PLATFORM(INTEL_BROADWELL)
 
 static const struct intel_device_info bdw_gt1_info = {
 	BDW_PLATFORM,
-	.display = &bdw_display,
 	.gt = 1,
 };
 
 static const struct intel_device_info bdw_gt2_info = {
 	BDW_PLATFORM,
-	.display = &bdw_display,
 	.gt = 2,
 };
 
 static const struct intel_device_info bdw_rsvd_info = {
 	BDW_PLATFORM,
-	.display = &bdw_display,
 	.gt = 3,
 	/* According to the device ID those devices are GT3, they were
 	 * previously treated as not GT3, keep it like that.
@@ -829,30 +449,14 @@ static const struct intel_device_info bdw_rsvd_info = {
 
 static const struct intel_device_info bdw_gt3_info = {
 	BDW_PLATFORM,
-	.display = &bdw_display,
 	.gt = 3,
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1),
 };
 
-static const struct intel_display_device_info chv_display = {
-	.has_hotplug = 1,
-	.has_gmch = 1,
-	.mmio_offset = VLV_DISPLAY_BASE,
-	CHV_PIPE_OFFSETS,
-	CHV_CURSOR_OFFSETS,
-	CHV_COLORS,
-
-	.__runtime_defaults.ip.ver = 8,
-	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
-	.__runtime_defaults.cpu_transcoder_mask =
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
-};
-
 static const struct intel_device_info chv_info = {
 	PLATFORM(INTEL_CHERRYVIEW),
 	GEN(8),
-	.display = &chv_display,
 	.is_lp = 1,
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0),
 	.has_64bit_reloc = 1,
@@ -882,43 +486,17 @@ static const struct intel_device_info chv_info = {
 	GEN9_DEFAULT_PAGE_SIZES, \
 	.has_gt_uc = 1
 
-static const struct intel_display_device_info skl_display = {
-	.dbuf.size = 896 - 4, /* 4 blocks for bypass path allocation */
-	.dbuf.slice_mask = BIT(DBUF_S1),
-	.has_ddi = 1,
-	.has_dp_mst = 1,
-	.has_fpga_dbg = 1,
-	.has_hotplug = 1,
-	.has_ipc = 1,
-	.has_psr = 1,
-	.has_psr_hw_tracking = 1,
-	HSW_PIPE_OFFSETS,
-	IVB_CURSOR_OFFSETS,
-	IVB_COLORS,
-
-	.__runtime_defaults.ip.ver = 9,
-	.__runtime_defaults.has_dmc = 1,
-	.__runtime_defaults.has_hdcp = 1,
-	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
-	.__runtime_defaults.cpu_transcoder_mask =
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
-		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
-};
-
 #define SKL_PLATFORM \
 	GEN9_FEATURES, \
 	PLATFORM(INTEL_SKYLAKE)
 
 static const struct intel_device_info skl_gt1_info = {
 	SKL_PLATFORM,
-	.display = &skl_display,
 	.gt = 1,
 };
 
 static const struct intel_device_info skl_gt2_info = {
 	SKL_PLATFORM,
-	.display = &skl_display,
 	.gt = 2,
 };
 
@@ -930,13 +508,11 @@ static const struct intel_device_info skl_gt2_info = {
 
 static const struct intel_device_info skl_gt3_info = {
 	SKL_GT3_PLUS_PLATFORM,
-	.display = &skl_display,
 	.gt = 3,
 };
 
 static const struct intel_device_info skl_gt4_info = {
 	SKL_GT3_PLUS_PLATFORM,
-	.display = &skl_display,
 	.gt = 4,
 };
 
@@ -962,53 +538,14 @@ static const struct intel_device_info skl_gt4_info = {
 	GEN_DEFAULT_REGIONS, \
 	LEGACY_CACHELEVEL
 
-#define GEN9_LP_DISPLAY \
-	.dbuf.slice_mask = BIT(DBUF_S1), \
-	.has_dp_mst = 1, \
-	.has_ddi = 1, \
-	.has_fpga_dbg = 1, \
-	.has_hotplug = 1, \
-	.has_ipc = 1, \
-	.has_psr = 1, \
-	.has_psr_hw_tracking = 1, \
-	HSW_PIPE_OFFSETS, \
-	IVB_CURSOR_OFFSETS, \
-	IVB_COLORS, \
-	\
-	.__runtime_defaults.has_dmc = 1, \
-	.__runtime_defaults.has_hdcp = 1, \
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A), \
-	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
-	.__runtime_defaults.cpu_transcoder_mask = \
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
-		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
-		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C)
-
-static const struct intel_display_device_info bxt_display = {
-	GEN9_LP_DISPLAY,
-	.dbuf.size = 512 - 4, /* 4 blocks for bypass path allocation */
-
-	.__runtime_defaults.ip.ver = 9,
-};
-
 static const struct intel_device_info bxt_info = {
 	GEN9_LP_FEATURES,
 	PLATFORM(INTEL_BROXTON),
-	.display = &bxt_display,
-};
-
-static const struct intel_display_device_info glk_display = {
-	GEN9_LP_DISPLAY,
-	.dbuf.size = 1024 - 4, /* 4 blocks for bypass path allocation */
-	GLK_COLORS,
-
-	.__runtime_defaults.ip.ver = 10,
 };
 
 static const struct intel_device_info glk_info = {
 	GEN9_LP_FEATURES,
 	PLATFORM(INTEL_GEMINILAKE),
-	.display = &glk_display,
 };
 
 #define KBL_PLATFORM \
@@ -1017,19 +554,16 @@ static const struct intel_device_info glk_info = {
 
 static const struct intel_device_info kbl_gt1_info = {
 	KBL_PLATFORM,
-	.display = &skl_display,
 	.gt = 1,
 };
 
 static const struct intel_device_info kbl_gt2_info = {
 	KBL_PLATFORM,
-	.display = &skl_display,
 	.gt = 2,
 };
 
 static const struct intel_device_info kbl_gt3_info = {
 	KBL_PLATFORM,
-	.display = &skl_display,
 	.gt = 3,
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1),
@@ -1041,19 +575,16 @@ static const struct intel_device_info kbl_gt3_info = {
 
 static const struct intel_device_info cfl_gt1_info = {
 	CFL_PLATFORM,
-	.display = &skl_display,
 	.gt = 1,
 };
 
 static const struct intel_device_info cfl_gt2_info = {
 	CFL_PLATFORM,
-	.display = &skl_display,
 	.gt = 2,
 };
 
 static const struct intel_device_info cfl_gt3_info = {
 	CFL_PLATFORM,
-	.display = &skl_display,
 	.gt = 3,
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1),
@@ -1065,13 +596,11 @@ static const struct intel_device_info cfl_gt3_info = {
 
 static const struct intel_device_info cml_gt1_info = {
 	CML_PLATFORM,
-	.display = &skl_display,
 	.gt = 1,
 };
 
 static const struct intel_device_info cml_gt2_info = {
 	CML_PLATFORM,
-	.display = &skl_display,
 	.gt = 2,
 };
 
@@ -1087,54 +616,11 @@ static const struct intel_device_info cml_gt2_info = {
 	.has_coherent_ggtt = false, \
 	.has_logical_ring_elsq = 1
 
-static const struct intel_display_device_info gen11_display = {
-	.abox_mask = BIT(0),
-	.dbuf.size = 2048,
-	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2),
-	.has_ddi = 1,
-	.has_dp_mst = 1,
-	.has_fpga_dbg = 1,
-	.has_hotplug = 1,
-	.has_ipc = 1,
-	.has_psr = 1,
-	.has_psr_hw_tracking = 1,
-	.pipe_offsets = {
-		[TRANSCODER_A] = PIPE_A_OFFSET,
-		[TRANSCODER_B] = PIPE_B_OFFSET,
-		[TRANSCODER_C] = PIPE_C_OFFSET,
-		[TRANSCODER_EDP] = PIPE_EDP_OFFSET,
-		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET,
-		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET,
-	},
-	.trans_offsets = {
-		[TRANSCODER_A] = TRANSCODER_A_OFFSET,
-		[TRANSCODER_B] = TRANSCODER_B_OFFSET,
-		[TRANSCODER_C] = TRANSCODER_C_OFFSET,
-		[TRANSCODER_EDP] = TRANSCODER_EDP_OFFSET,
-		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET,
-		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET,
-	},
-	IVB_CURSOR_OFFSETS,
-	ICL_COLORS,
-
-	.__runtime_defaults.ip.ver = 11,
-	.__runtime_defaults.has_dmc = 1,
-	.__runtime_defaults.has_dsc = 1,
-	.__runtime_defaults.has_hdcp = 1,
-	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
-	.__runtime_defaults.cpu_transcoder_mask =
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
-		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) |
-		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
-};
-
 static const struct intel_device_info icl_info = {
 	GEN11_FEATURES,
 	PLATFORM(INTEL_ICELAKE),
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
-	.display = &gen11_display,
 };
 
 static const struct intel_device_info ehl_info = {
@@ -1142,7 +628,6 @@ static const struct intel_device_info ehl_info = {
 	PLATFORM(INTEL_ELKHARTLAKE),
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
 	.__runtime.ppgtt_size = 36,
-	.display = &gen11_display,
 };
 
 static const struct intel_device_info jsl_info = {
@@ -1150,7 +635,6 @@ static const struct intel_device_info jsl_info = {
 	PLATFORM(INTEL_JASPERLAKE),
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
 	.__runtime.ppgtt_size = 36,
-	.display = &gen11_display,
 };
 
 #define GEN12_FEATURES \
@@ -1161,70 +645,11 @@ static const struct intel_device_info jsl_info = {
 	.has_pxp = 1, \
 	.max_pat_index = 3
 
-#define XE_D_DISPLAY \
-	.abox_mask = GENMASK(2, 1), \
-	.dbuf.size = 2048, \
-	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2), \
-	.has_ddi = 1, \
-	.has_dp_mst = 1, \
-	.has_dsb = 1, \
-	.has_fpga_dbg = 1, \
-	.has_hotplug = 1, \
-	.has_ipc = 1, \
-	.has_psr = 1, \
-	.has_psr_hw_tracking = 1, \
-	.pipe_offsets = { \
-		[TRANSCODER_A] = PIPE_A_OFFSET, \
-		[TRANSCODER_B] = PIPE_B_OFFSET, \
-		[TRANSCODER_C] = PIPE_C_OFFSET, \
-		[TRANSCODER_D] = PIPE_D_OFFSET, \
-		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET, \
-		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET, \
-	}, \
-	.trans_offsets = { \
-		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
-		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
-		[TRANSCODER_C] = TRANSCODER_C_OFFSET, \
-		[TRANSCODER_D] = TRANSCODER_D_OFFSET, \
-		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET, \
-		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET, \
-	}, \
-	TGL_CURSOR_OFFSETS, \
-	ICL_COLORS, \
-	\
-	.__runtime_defaults.ip.ver = 12, \
-	.__runtime_defaults.has_dmc = 1, \
-	.__runtime_defaults.has_dsc = 1, \
-	.__runtime_defaults.has_hdcp = 1, \
-	.__runtime_defaults.pipe_mask = \
-		BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D), \
-	.__runtime_defaults.cpu_transcoder_mask = \
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
-		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) | \
-		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A)
-
-static const struct intel_display_device_info tgl_display = {
-	XE_D_DISPLAY,
-};
-
 static const struct intel_device_info tgl_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_TIGERLAKE),
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
-	.display = &tgl_display,
-};
-
-static const struct intel_display_device_info rkl_display = {
-	XE_D_DISPLAY,
-	.abox_mask = BIT(0),
-	.has_hti = 1,
-	.has_psr_hw_tracking = 0,
-
-	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
-	.__runtime_defaults.cpu_transcoder_mask =
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
 };
 
 static const struct intel_device_info rkl_info = {
@@ -1232,7 +657,6 @@ static const struct intel_device_info rkl_info = {
 	PLATFORM(INTEL_ROCKETLAKE),
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0),
-	.display = &rkl_display,
 };
 
 #define DGFX_FEATURES \
@@ -1254,13 +678,6 @@ static const struct intel_device_info dg1_info = {
 		BIT(VCS0) | BIT(VCS2),
 	/* Wa_16011227922 */
 	.__runtime.ppgtt_size = 47,
-	.display = &tgl_display,
-};
-
-static const struct intel_display_device_info adl_s_display = {
-	XE_D_DISPLAY,
-	.has_hti = 1,
-	.has_psr_hw_tracking = 0,
 };
 
 static const struct intel_device_info adl_s_info = {
@@ -1269,61 +686,6 @@ static const struct intel_device_info adl_s_info = {
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 	.dma_mask_size = 39,
-	.display = &adl_s_display,
-};
-
-#define XE_LPD_FEATURES \
-	.abox_mask = GENMASK(1, 0),						\
-	.color = {								\
-		.degamma_lut_size = 129, .gamma_lut_size = 1024,		\
-		.degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING |		\
-		DRM_COLOR_LUT_EQUAL_CHANNELS,					\
-	},									\
-	.dbuf.size = 4096,							\
-	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
-		BIT(DBUF_S4),							\
-	.has_ddi = 1,								\
-	.has_dp_mst = 1,							\
-	.has_dsb = 1,								\
-	.has_fpga_dbg = 1,							\
-	.has_hotplug = 1,							\
-	.has_ipc = 1,								\
-	.has_psr = 1,								\
-	.pipe_offsets = {							\
-		[TRANSCODER_A] = PIPE_A_OFFSET,					\
-		[TRANSCODER_B] = PIPE_B_OFFSET,					\
-		[TRANSCODER_C] = PIPE_C_OFFSET,					\
-		[TRANSCODER_D] = PIPE_D_OFFSET,					\
-		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET,				\
-		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET,				\
-	},									\
-	.trans_offsets = {						\
-		[TRANSCODER_A] = TRANSCODER_A_OFFSET,				\
-		[TRANSCODER_B] = TRANSCODER_B_OFFSET,				\
-		[TRANSCODER_C] = TRANSCODER_C_OFFSET,				\
-		[TRANSCODER_D] = TRANSCODER_D_OFFSET,				\
-		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET,			\
-		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET,			\
-	},									\
-	TGL_CURSOR_OFFSETS,							\
-										\
-	.__runtime_defaults.ip.ver = 13,					\
-	.__runtime_defaults.has_dmc = 1,					\
-	.__runtime_defaults.has_dsc = 1,					\
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),			\
-	.__runtime_defaults.has_hdcp = 1,					\
-	.__runtime_defaults.pipe_mask =						\
-		BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D)
-
-static const struct intel_display_device_info xe_lpd_display = {
-	XE_LPD_FEATURES,
-	.has_cdclk_crawl = 1,
-	.has_psr_hw_tracking = 0,
-
-	.__runtime_defaults.cpu_transcoder_mask =
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
-		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |
-		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
 };
 
 static const struct intel_device_info adl_p_info = {
@@ -1332,7 +694,6 @@ static const struct intel_device_info adl_p_info = {
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 	.__runtime.ppgtt_size = 48,
-	.display = &xe_lpd_display,
 	.dma_mask_size = 39,
 };
 
@@ -1380,7 +741,6 @@ static const struct intel_device_info xehpsdv_info = {
 	XE_HPM_FEATURES,
 	DGFX_FEATURES,
 	PLATFORM(INTEL_XEHPSDV),
-	.display = &no_display,
 	.has_64k_pages = 1,
 	.has_media_ratio_mode = 1,
 	.__runtime.platform_engine_mask =
@@ -1409,23 +769,12 @@ static const struct intel_device_info xehpsdv_info = {
 		BIT(VCS0) | BIT(VCS2) | \
 		BIT(CCS0) | BIT(CCS1) | BIT(CCS2) | BIT(CCS3)
 
-static const struct intel_display_device_info xe_hpd_display = {
-	XE_LPD_FEATURES,
-	.has_cdclk_squash = 1,
-
-	.__runtime_defaults.cpu_transcoder_mask =
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
-		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
-};
-
 static const struct intel_device_info dg2_info = {
 	DG2_FEATURES,
-	.display = &xe_hpd_display,
 };
 
 static const struct intel_device_info ats_m_info = {
 	DG2_FEATURES,
-	.display = &no_display,
 	.require_force_probe = 1,
 	.tuning_thread_rr_after_dep = 1,
 };
@@ -1447,7 +796,6 @@ static const struct intel_device_info pvc_info = {
 	.__runtime.graphics.ip.rel = 60,
 	.__runtime.media.ip.rel = 60,
 	PLATFORM(INTEL_PONTEVECCHIO),
-	.display = &no_display,
 	.has_flat_ccs = 0,
 	.max_pat_index = 7,
 	.__runtime.platform_engine_mask =
@@ -1468,18 +816,6 @@ static const struct intel_gt_definition xelpmp_extra_gt[] = {
 	{}
 };
 
-static const struct intel_display_device_info xe_lpdp_display = {
-	XE_LPD_FEATURES,
-	.has_cdclk_crawl = 1,
-	.has_cdclk_squash = 1,
-
-	.__runtime_defaults.ip.ver = 14,
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),
-	.__runtime_defaults.cpu_transcoder_mask =
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
-		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
-};
-
 static const struct intel_device_info mtl_info = {
 	XE_HP_FEATURES,
 	/*
@@ -1490,7 +826,6 @@ static const struct intel_device_info mtl_info = {
 	.__runtime.graphics.ip.rel = 70,
 	.__runtime.media.ip.ver = 13,
 	PLATFORM(INTEL_METEORLAKE),
-	.display = &xe_lpdp_display,
 	.extra_gt_list = xelpmp_extra_gt,
 	.has_flat_ccs = 0,
 	.has_gmd_id = 1,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2a9ab8de8421..f1ba1eae26ca 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1966,15 +1966,6 @@
 #define _TRANS_VSYNC_DSI1	0x6b814
 #define _TRANS_VSYNCSHIFT_DSI1	0x6b828
 
-#define TRANSCODER_A_OFFSET 0x60000
-#define TRANSCODER_B_OFFSET 0x61000
-#define TRANSCODER_C_OFFSET 0x62000
-#define CHV_TRANSCODER_C_OFFSET 0x63000
-#define TRANSCODER_D_OFFSET 0x63000
-#define TRANSCODER_EDP_OFFSET 0x6f000
-#define TRANSCODER_DSI0_OFFSET	0x6b000
-#define TRANSCODER_DSI1_OFFSET	0x6b800
-
 #define TRANS_HTOTAL(trans)	_MMIO_TRANS2((trans), _TRANS_HTOTAL_A)
 #define TRANS_HBLANK(trans)	_MMIO_TRANS2((trans), _TRANS_HBLANK_A)
 #define TRANS_HSYNC(trans)	_MMIO_TRANS2((trans), _TRANS_HSYNC_A)
@@ -2622,23 +2613,6 @@
 #define PIPESTAT_INT_ENABLE_MASK		0x7fff0000
 #define PIPESTAT_INT_STATUS_MASK		0x0000ffff
 
-#define PIPE_A_OFFSET		0x70000
-#define PIPE_B_OFFSET		0x71000
-#define PIPE_C_OFFSET		0x72000
-#define PIPE_D_OFFSET		0x73000
-#define CHV_PIPE_C_OFFSET	0x74000
-/*
- * There's actually no pipe EDP. Some pipe registers have
- * simply shifted from the pipe to the transcoder, while
- * keeping their original offset. Thus we need PIPE_EDP_OFFSET
- * to access such registers in transcoder EDP.
- */
-#define PIPE_EDP_OFFSET	0x7f000
-
-/* ICL DSI 0 and 1 */
-#define PIPE_DSI0_OFFSET	0x7b000
-#define PIPE_DSI1_OFFSET	0x7b800
-
 #define TRANSCONF(trans)	_MMIO_PIPE2((trans), _TRANSACONF)
 #define PIPEDSL(pipe)		_MMIO_PIPE2(pipe, _PIPEADSL)
 #define PIPEFRAME(pipe)		_MMIO_PIPE2(pipe, _PIPEAFRAMEHIGH)
@@ -3099,13 +3073,6 @@
 #define CUR_CHICKEN(pipe) _MMIO_CURSOR2(pipe, _CUR_CHICKEN_A)
 #define CURSURFLIVE(pipe) _MMIO_CURSOR2(pipe, _CURASURFLIVE)
 
-#define CURSOR_A_OFFSET 0x70080
-#define CURSOR_B_OFFSET 0x700c0
-#define CHV_CURSOR_C_OFFSET 0x700e0
-#define IVB_CURSOR_B_OFFSET 0x71080
-#define IVB_CURSOR_C_OFFSET 0x72080
-#define TGL_CURSOR_D_OFFSET 0x73080
-
 /* Display A control */
 #define _DSPAADDR_VLV				0x7017C /* vlv/chv */
 #define _DSPACNTR				0x70180
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 3a0d1cb2eaa9..79523e55ca9c 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -574,7 +574,6 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
 {
 	struct intel_device_info *info;
 	struct intel_runtime_info *runtime;
-	struct intel_display_runtime_info *display_runtime;
 
 	/* Setup the write-once "constant" device info */
 	info = mkwrite_device_info(i915);
@@ -583,9 +582,12 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
 	/* Initialize initial runtime info from static const data and pdev. */
 	runtime = RUNTIME_INFO(i915);
 	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
-	display_runtime = DISPLAY_RUNTIME_INFO(i915);
-	memcpy(display_runtime, &DISPLAY_INFO(i915)->__runtime_defaults,
-	       sizeof(*display_runtime));
+
+	/* Probe display support */
+	info->display = intel_display_device_probe(device_id);
+	memcpy(DISPLAY_RUNTIME_INFO(i915),
+	       &DISPLAY_INFO(i915)->__runtime_defaults,
+	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
 
 	runtime->device_id = device_id;
 }
-- 
2.40.1

