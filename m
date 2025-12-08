Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C915CCADFD9
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 19:27:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 547FF10E4C3;
	Mon,  8 Dec 2025 18:27:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D9qAAztC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2D5310E4B8;
 Mon,  8 Dec 2025 18:27:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765218450; x=1796754450;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3pZQLNeqXLPrkt/FWODdkFkGB3+eLgkOeyls4gV0DVc=;
 b=D9qAAztCsVdPd7LK/2mhArwKE95bMgEwBGJDZoqVvBKiteFGFuv02Jdq
 4ciB7TnzVV+pmiUDKSrVZDIelMmkiPg71OZ7xwRwRmx9dUmhDe8teIfhP
 nW5fJQSe7eHhOC1A57+3VKdlvyFYRm9g0ZCtxdvcj8BFFCNzszU+WOKEp
 rCXDGDcJnmsUa0sTysCrUTAF/x0BEVDdStiK82KHc3HUvgJbG/sXkP3yT
 4djgcJC6x/sULMfeNi/swZGLuIRG+5SrFzzhL+1SmYzmG9KP8wkoID0Nc
 eNwmccoNtzFCdB5uH9UW3FYL9YIeU9OT4yC0Zo3JiXki98Oi5dguD2tB8 g==;
X-CSE-ConnectionGUID: QufbW9NPSvK69QEuZYfyFA==
X-CSE-MsgGUID: ztmsMfL+QW6p0ZPfirqSqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="67129553"
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="67129553"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:29 -0800
X-CSE-ConnectionGUID: 2lpOmncaTKufLqp84y9aqw==
X-CSE-MsgGUID: wEy9eJEFTkipN8LnqS0tHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="196014488"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:28 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 12/19] drm/i915/vga: Introduce intel_vga_{read,write}()
Date: Mon,  8 Dec 2025 20:26:30 +0200
Message-ID: <20251208182637.334-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251208182637.334-1-ville.syrjala@linux.intel.com>
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

VGA register are rather special since they either get accessed
via the global IO addresses, or possibly through MMIO on
pre-g4x platforms. Wrap all VGA register accesses in
intel_vga_{read,write}() to make it obvious where they get
accessed.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c      |  6 +++--
 drivers/gpu/drm/i915/display/intel_crt_regs.h |  2 --
 drivers/gpu/drm/i915/display/intel_vga.c      | 27 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_vga.h      |  3 +++
 4 files changed, 29 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 5f9a03877ea9..dedc26f6a2b2 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -33,6 +33,7 @@
 #include <drm/drm_edid.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
+#include <video/vga.h>
 
 #include "intel_connector.h"
 #include "intel_crt.h"
@@ -55,6 +56,7 @@
 #include "intel_pch_display.h"
 #include "intel_pch_refclk.h"
 #include "intel_pfit.h"
+#include "intel_vga.h"
 
 /* Here's the desired hotplug mode */
 #define ADPA_HOTPLUG_BITS (ADPA_CRT_HOTPLUG_ENABLE |			\
@@ -736,7 +738,7 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 		 * border color for Color info.
 		 */
 		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(display, pipe));
-		st00 = intel_de_read8(display, _VGA_MSR_WRITE);
+		st00 = intel_vga_read(display, VGA_MIS_W, true);
 		status = ((st00 & (1 << 4)) != 0) ?
 			connector_status_connected :
 			connector_status_disconnected;
@@ -784,7 +786,7 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 		do {
 			count++;
 			/* Read the ST00 VGA status register */
-			st00 = intel_de_read8(display, _VGA_MSR_WRITE);
+			st00 = intel_vga_read(display, VGA_MIS_W, true);
 			if (st00 & (1 << 4))
 				detect++;
 		} while ((intel_de_read(display, PIPEDSL(display, pipe)) == dsl));
diff --git a/drivers/gpu/drm/i915/display/intel_crt_regs.h b/drivers/gpu/drm/i915/display/intel_crt_regs.h
index 571a67ae9afa..9a93020b9a7e 100644
--- a/drivers/gpu/drm/i915/display/intel_crt_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_crt_regs.h
@@ -45,6 +45,4 @@
 #define   ADPA_VSYNC_ACTIVE_HIGH		REG_BIT(4)
 #define   ADPA_HSYNC_ACTIVE_HIGH		REG_BIT(3)
 
-#define _VGA_MSR_WRITE _MMIO(0x3c2)
-
 #endif /* __INTEL_CRT_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index e51451966f72..c1942520c765 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -140,6 +140,22 @@ static void intel_vga_put(struct intel_display *display, bool io_decode)
 		vga_put(pdev, VGA_RSRC_LEGACY_IO);
 }
 
+u8 intel_vga_read(struct intel_display *display, u16 reg, bool mmio)
+{
+	if (mmio)
+		return intel_de_read8(display, _MMIO(reg));
+	else
+		return inb(reg);
+}
+
+static void intel_vga_write(struct intel_display *display, u16 reg, u8 val, bool mmio)
+{
+	if (mmio)
+		intel_de_write8(display, _MMIO(reg), val);
+	else
+		outb(val, reg);
+}
+
 /* Disable the VGA plane that we never use */
 void intel_vga_disable(struct intel_display *display)
 {
@@ -193,11 +209,12 @@ void intel_vga_disable(struct intel_display *display)
 
 	drm_WARN_ON(display->drm, !intel_pci_has_vga_io_decode(pdev));
 
-	outb(0x01, VGA_SEQ_I);
-	sr1 = inb(VGA_SEQ_D);
-	outb(sr1 | VGA_SR01_SCREEN_OFF, VGA_SEQ_D);
+	intel_vga_write(display, VGA_SEQ_I, 0x01, false);
+	sr1 = intel_vga_read(display, VGA_SEQ_D, false);
+	sr1 |= VGA_SR01_SCREEN_OFF;
+	intel_vga_write(display, VGA_SEQ_D, sr1, false);
 
-	msr = inb(VGA_MIS_R);
+	msr = intel_vga_read(display, VGA_MIS_R, false);
 	/*
 	 * Always disable VGA memory decode for iGPU so that
 	 * intel_vga_set_decode() doesn't need to access VGA registers.
@@ -217,7 +234,7 @@ void intel_vga_disable(struct intel_display *display)
 	 * RMbus NoClaim errors.
 	 */
 	msr &= ~VGA_MIS_COLOR;
-	outb(msr, VGA_MIS_W);
+	intel_vga_write(display, VGA_MIS_W, msr, false);
 
 	intel_vga_put(display, io_decode);
 
diff --git a/drivers/gpu/drm/i915/display/intel_vga.h b/drivers/gpu/drm/i915/display/intel_vga.h
index 80084265c6cd..72131cb536cd 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.h
+++ b/drivers/gpu/drm/i915/display/intel_vga.h
@@ -6,8 +6,11 @@
 #ifndef __INTEL_VGA_H__
 #define __INTEL_VGA_H__
 
+#include <linux/types.h>
+
 struct intel_display;
 
+u8 intel_vga_read(struct intel_display *display, u16 reg, bool mmio);
 void intel_vga_reset_io_mem(struct intel_display *display);
 void intel_vga_disable(struct intel_display *display);
 void intel_vga_register(struct intel_display *display);
-- 
2.51.2

