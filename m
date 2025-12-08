Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26076CADFDC
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 19:27:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7B0010E4C6;
	Mon,  8 Dec 2025 18:27:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nUZ317JV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 287BF10E4C9;
 Mon,  8 Dec 2025 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765218454; x=1796754454;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Azme6DYDEpMfQM2O8HFZOmglIMwWN6WDz/ax9Q9nDiQ=;
 b=nUZ317JVu90aU26QaL/o9kn3X0VcJl18vrwxkukKZImHg4u2afKvnfat
 AyNDM98ENQzFUd6c4Qpy+/BahTFIZPqyJFkI9wPGtC6TEeK4vnzLLET9u
 PwmZ66tNk5tplSC42TvtN1AZ6c1x5dViE+GSBd56dXpNLSzfzKEfiWSy9
 1GO35m8UdIHbGZ0h0BBZ5fl6iXGolGwrhw6uPa4HNxWi4udzgamr3W+zi
 hRlW33xHoPVLrAdc3roQ3C/Qvyrqv1MrUBrgGHNOLslh62tQfcLlhvHNn
 YA6XOYEM4tGefKO7G1kw7Oo2b57VxtHb3DpZ4w6WVa79jsh3gEaCcDr50 w==;
X-CSE-ConnectionGUID: suSYFDD+Q3CT4QEzmGXwLg==
X-CSE-MsgGUID: Qw+xlI8bS5u0gfjD93+ENQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="67129555"
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="67129555"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:33 -0800
X-CSE-ConnectionGUID: 4WUNR80hQomZFN8uK7wQIg==
X-CSE-MsgGUID: m0TaENMBT1ONFfJASFQ8WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="196014495"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:32 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 13/19] drm/i915/vga: Use MMIO for VGA registers on pre-g4x
Date: Mon,  8 Dec 2025 20:26:31 +0200
Message-ID: <20251208182637.334-14-ville.syrjala@linux.intel.com>
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

On pre-g4x VGA registers are accessible via MMIO. Make use of
it so that we can avoid dealing with the VGA arbiter.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vga.c | 33 ++++++++++++++++--------
 1 file changed, 22 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index c1942520c765..9e1f3ab632d5 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -58,6 +58,12 @@ static bool has_vga_pipe_sel(struct intel_display *display)
 	return DISPLAY_VER(display) < 7;
 }
 
+static bool has_vga_mmio_access(struct intel_display *display)
+{
+	/* WaEnableVGAAccessThroughIOPort:ctg+ */
+	return DISPLAY_VER(display) < 5 && !display->platform.g4x;
+}
+
 static bool intel_pci_has_vga_io_decode(struct pci_dev *pdev)
 {
 	u16 cmd = 0;
@@ -106,11 +112,12 @@ static bool intel_pci_bridge_set_vga(struct pci_dev *pdev, bool enable)
 	return old & PCI_BRIDGE_CTL_VGA;
 }
 
-static bool intel_vga_get(struct intel_display *display)
+static bool intel_vga_get(struct intel_display *display, bool mmio)
 {
 	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 
-	/* WaEnableVGAAccessThroughIOPort:ctg+ */
+	if (mmio)
+		return false;
 
 	/*
 	 * Bypass the VGA arbiter on the iGPU and just enable
@@ -129,10 +136,13 @@ static bool intel_vga_get(struct intel_display *display)
 	return intel_pci_set_io_decode(pdev, true);
 }
 
-static void intel_vga_put(struct intel_display *display, bool io_decode)
+static void intel_vga_put(struct intel_display *display, bool io_decode, bool mmio)
 {
 	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 
+	if (mmio)
+		return;
+
 	/* see intel_vga_get() */
 	intel_pci_set_io_decode(pdev, io_decode);
 
@@ -161,6 +171,7 @@ void intel_vga_disable(struct intel_display *display)
 {
 	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	i915_reg_t vga_reg = intel_vga_cntrl_reg(display);
+	bool mmio = has_vga_mmio_access(display);
 	bool io_decode;
 	u8 msr, sr1;
 	u32 tmp;
@@ -205,16 +216,16 @@ void intel_vga_disable(struct intel_display *display)
 			goto reset_vgacntr;
 	}
 
-	io_decode = intel_vga_get(display);
+	io_decode = intel_vga_get(display, mmio);
 
-	drm_WARN_ON(display->drm, !intel_pci_has_vga_io_decode(pdev));
+	drm_WARN_ON(display->drm, !mmio && !intel_pci_has_vga_io_decode(pdev));
 
-	intel_vga_write(display, VGA_SEQ_I, 0x01, false);
-	sr1 = intel_vga_read(display, VGA_SEQ_D, false);
+	intel_vga_write(display, VGA_SEQ_I, 0x01, mmio);
+	sr1 = intel_vga_read(display, VGA_SEQ_D, mmio);
 	sr1 |= VGA_SR01_SCREEN_OFF;
-	intel_vga_write(display, VGA_SEQ_D, sr1, false);
+	intel_vga_write(display, VGA_SEQ_D, sr1, mmio);
 
-	msr = intel_vga_read(display, VGA_MIS_R, false);
+	msr = intel_vga_read(display, VGA_MIS_R, mmio);
 	/*
 	 * Always disable VGA memory decode for iGPU so that
 	 * intel_vga_set_decode() doesn't need to access VGA registers.
@@ -234,9 +245,9 @@ void intel_vga_disable(struct intel_display *display)
 	 * RMbus NoClaim errors.
 	 */
 	msr &= ~VGA_MIS_COLOR;
-	intel_vga_write(display, VGA_MIS_W, msr, false);
+	intel_vga_write(display, VGA_MIS_W, msr, mmio);
 
-	intel_vga_put(display, io_decode);
+	intel_vga_put(display, io_decode, mmio);
 
 	/*
 	 * Inform the arbiter about VGA memory decode being disabled so
-- 
2.51.2

