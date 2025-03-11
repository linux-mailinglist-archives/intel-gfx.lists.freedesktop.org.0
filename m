Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCA7A5C018
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 13:05:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BAC110E583;
	Tue, 11 Mar 2025 12:05:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W69KkivP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D0ED10E586;
 Tue, 11 Mar 2025 12:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741694757; x=1773230757;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k7SwNXP/tkif7E1hmmFy6IO7zOzJUWRV9gh10hMX0ic=;
 b=W69KkivPIWEee5dF07L4Y488HOZRidSD8FQcZsv+Zg7WY3iZoFto+pAj
 D9/1o/dhqve6cj4WtjsNOMs90KR7sRKS4mHNdHpfjOB2M/D0eltQfOZUD
 4YjSdnro7wCkaoTFWCgIxfKEa5ZRMSFN10WXPzgXGIXf2eV5ujX9FO0nt
 wfzz22B5E/Ya+KPmN5B51pWSAnHry9KmoYUWgz6dhzt/y5PozJ0Rp1VHy
 QFKNEq6lGTNj1TaJ8vw0q9659U8x3CU84/n983J7dI2w34gr+am+u2EQj
 hXwHgijdET7iqJjkSNeA8KytU7GJq0v7ow5w4EoRGXUQQyZLngzRTuT0W w==;
X-CSE-ConnectionGUID: krmSJB+AQ5OmOQ7+rwJRRg==
X-CSE-MsgGUID: qlz3x2ZKSGyFGdtHTd/Q2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="46510530"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="46510530"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 05:05:57 -0700
X-CSE-ConnectionGUID: YoBwp1+mQuuWHkotFyUo3Q==
X-CSE-MsgGUID: fBF55Qr/R+mX0Dc9XZzs8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="151108699"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 05:05:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH 2/6] drm/i915/display: conversions to with_intel_display_rpm()
Date: Tue, 11 Mar 2025 14:05:36 +0200
Message-Id: <5560a939f4baa6eb539687c44e72327de825d13d.1741694400.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741694400.git.jani.nikula@intel.com>
References: <cover.1741694400.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Convert all with_intel_runtime_pm() uses to with_intel_display_rpm().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_backlight.c | 5 ++---
 drivers/gpu/drm/i915/display/intel_bios.c      | 6 +++---
 drivers/gpu/drm/i915/display/intel_hdcp.c      | 5 ++---
 drivers/gpu/drm/i915/display/skl_watermark.c   | 9 +++++----
 4 files changed, 12 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 178dc6c8de80..4f3fa966c537 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -16,6 +16,7 @@
 #include "intel_backlight_regs.h"
 #include "intel_connector.h"
 #include "intel_de.h"
+#include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_dp_aux_backlight.h"
 #include "intel_dsi_dcs_backlight.h"
@@ -901,11 +902,9 @@ static int intel_backlight_device_get_brightness(struct backlight_device *bd)
 {
 	struct intel_connector *connector = bl_get_data(bd);
 	struct intel_display *display = to_intel_display(connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	intel_wakeref_t wakeref;
 	int ret = 0;
 
-	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
+	with_intel_display_rpm(display) {
 		u32 hw_level;
 
 		drm_modeset_lock(&display->drm->mode_config.connection_mutex, NULL);
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index a8d08d7d82b3..fabfcf2caa69 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -37,6 +37,7 @@
 
 #include "i915_drv.h"
 #include "intel_display.h"
+#include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_gmbus.h"
 
@@ -3115,7 +3116,6 @@ static const struct vbt_header *intel_bios_get_vbt(struct intel_display *display
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct vbt_header *vbt = NULL;
-	intel_wakeref_t wakeref;
 
 	vbt = firmware_get_vbt(display, sizep);
 
@@ -3127,11 +3127,11 @@ static const struct vbt_header *intel_bios_get_vbt(struct intel_display *display
 	 * through MMIO or PCI mapping
 	 */
 	if (!vbt && IS_DGFX(i915))
-		with_intel_runtime_pm(&i915->runtime_pm, wakeref)
+		with_intel_display_rpm(display)
 			vbt = oprom_get_vbt(display, intel_rom_spi(i915), sizep, "SPI flash");
 
 	if (!vbt)
-		with_intel_runtime_pm(&i915->runtime_pm, wakeref)
+		with_intel_display_rpm(display)
 			vbt = oprom_get_vbt(display, intel_rom_pci(i915), sizep, "PCI ROM");
 
 	return vbt;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 1bf424a822f3..72a43ef6e4d2 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -22,6 +22,7 @@
 #include "intel_de.h"
 #include "intel_display_power.h"
 #include "intel_display_power_well.h"
+#include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_hdcp.h"
 #include "intel_hdcp_gsc.h"
@@ -334,9 +335,7 @@ static int intel_hdcp_poll_ksv_fifo(struct intel_digital_port *dig_port,
 
 static bool hdcp_key_loadable(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	enum i915_power_well_id id;
-	intel_wakeref_t wakeref;
 	bool enabled = false;
 
 	/*
@@ -349,7 +348,7 @@ static bool hdcp_key_loadable(struct intel_display *display)
 		id = SKL_DISP_PW_1;
 
 	/* PG1 (power well #1) needs to be enabled */
-	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
+	with_intel_display_rpm(display)
 		enabled = intel_display_power_well_is_enabled(display, id);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 2d0de1c63308..2730396a775e 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -19,6 +19,7 @@
 #include "intel_de.h"
 #include "intel_display.h"
 #include "intel_display_power.h"
+#include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fixed.h"
@@ -4052,7 +4053,7 @@ static ssize_t skl_watermark_ipc_status_write(struct file *file,
 {
 	struct seq_file *m = file->private_data;
 	struct drm_i915_private *i915 = m->private;
-	intel_wakeref_t wakeref;
+	struct intel_display *display = &i915->display;
 	bool enable;
 	int ret;
 
@@ -4060,11 +4061,11 @@ static ssize_t skl_watermark_ipc_status_write(struct file *file,
 	if (ret < 0)
 		return ret;
 
-	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
+	with_intel_display_rpm(display) {
 		if (!skl_watermark_ipc_enabled(i915) && enable)
-			drm_info(&i915->drm,
+			drm_info(display->drm,
 				 "Enabling IPC: WM will be proper only after next commit\n");
-		i915->display.wm.ipc_enabled = enable;
+		display->wm.ipc_enabled = enable;
 		skl_watermark_ipc_update(i915);
 	}
 
-- 
2.39.5

