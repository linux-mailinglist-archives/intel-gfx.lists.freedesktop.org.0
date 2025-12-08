Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D9DCADFCD
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 19:27:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80E4310E477;
	Mon,  8 Dec 2025 18:27:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GluhX6GY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 107B210E477;
 Mon,  8 Dec 2025 18:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765218433; x=1796754433;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xzWfu9RA39QjKNptCjYgan8sSX90azoFH0qIMd5TAYA=;
 b=GluhX6GY6abTdSxJU+mM8gXBa9/lyV00PpHqP9wSg5mTp515ZHA99bDO
 +ZzCa8LuUlQ3DnAtfeDFLZ42K4gnhxGTL1HULYe1db8G6vhu6SPDAqLT5
 MAY7KeiFerP7aNikzoVO2Nk4sX/pczU+fEU0H78bDhQ4DK49JrsuHJWbk
 9hbuI7ZlGF3BSlO7VZsJjvNkpBgki/auqJ4So6Gc4xCGXr+DVLojRSCIB
 pBJw8NTx1UnBG0DEOh8fE5A6wQ2YBwjgliXh6zsdM8bcCCCj/adadmPUx
 xAXFnmO4k4NAQO2xNYJ7kMSdUTlemBI1m0JDIH8S2j40d8mm2UIOXralM A==;
X-CSE-ConnectionGUID: almrGvnsRz6eWIMWO1KNDA==
X-CSE-MsgGUID: LgtUl3r1RwyBkfxu3N2Log==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="67051276"
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="67051276"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:13 -0800
X-CSE-ConnectionGUID: Y4qaGPiFTRKrRX/HNIFPEQ==
X-CSE-MsgGUID: WBzfHktZT1K9C2zAbl1xWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="196460474"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:11 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 08/19] drm/i915/vga: Stop trying to use GMCH_CTRL for VGA
 decode control
Date: Mon,  8 Dec 2025 20:26:26 +0200
Message-ID: <20251208182637.334-9-ville.syrjala@linux.intel.com>
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

intel_gmch_vga_set_state() is a complete lie on ILK+ because
the GMCH_CTRL register is locked and can't actually be written.
But we still need to remove the iGPU from the VGA arbitration
on iGPU+dGPU systems, or else Xorg performace will tank due
to the constant VGA arbiter accesess.

For VGA memory decode we can't turn off the PCI_COMMAND
memory deocde as that would disable even normal MMIO.
Instead we can disable just the VGA memory decode via
the VGA MSR register. And we can do that just once
when disablign the VGA plane. That way we don't have
to touch VGA registers anywhere else.

We can also inform the arbiter that we're no longer decding
VGA memory. This will stop the arbitter from disabling all
memory decode for the iGPU via PCI_COMMAND (and thus breaking
everything) whenever some other GPU wants to own the VGA memory
accesses.

For IO we can disable all IO decode via the PCI_COMMAND
register, except around the few VGA register accesses that
we need to do in intel_vga_disable(). Unfortunately we can't
disable IO decode permanently as it makes some laptops (eg.
Dell Latitude E5400) hang during reboot/shutdown. One option
would be to re-enable IO decode from the poweroff hooks, but
that won't help the sysrq emergency reboot/shutdown since it
won't call said hooks. So let's try to keep IO decode in its
original setting unless we really need to disable it to
exclude the GPU from VGA arbitration.

I suppose we could keep frobbing GMCH_CTRL on pre-ILK, but
it seems better to not do it since it has other side effects
such as changing the class code of the PCI device.

For discrete GPUs we'll rely on the bridge control instead.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vga.c | 93 +++++++++++++++---------
 1 file changed, 57 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index a2a1c33d053e..f2f7d396c556 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -71,6 +71,19 @@ static bool intel_pci_set_io_decode(struct pci_dev *pdev, bool enable)
 	return old & PCI_COMMAND_IO;
 }
 
+static bool intel_pci_bridge_set_vga(struct pci_dev *pdev, bool enable)
+{
+	u16 old = 0, ctl;
+
+	pci_read_config_word(pdev->bus->self, PCI_BRIDGE_CONTROL, &old);
+	ctl = old & ~PCI_BRIDGE_CTL_VGA;
+	if (enable)
+		ctl |= PCI_BRIDGE_CTL_VGA;
+	pci_write_config_word(pdev->bus->self, PCI_BRIDGE_CONTROL, ctl);
+
+	return old & PCI_BRIDGE_CTL_VGA;
+}
+
 static bool intel_vga_get(struct intel_display *display)
 {
 	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
@@ -108,6 +121,7 @@ static void intel_vga_put(struct intel_display *display, bool io_decode)
 /* Disable the VGA plane that we never use */
 void intel_vga_disable(struct intel_display *display)
 {
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	i915_reg_t vga_reg = intel_vga_cntrl_reg(display);
 	bool io_decode;
 	u8 msr, sr1;
@@ -160,6 +174,12 @@ void intel_vga_disable(struct intel_display *display)
 	outb(sr1 | VGA_SR01_SCREEN_OFF, VGA_SEQ_D);
 
 	msr = inb(VGA_MIS_R);
+	/*
+	 * Always disable VGA memory decode for iGPU so that
+	 * intel_vga_set_decode() doesn't need to access VGA registers.
+	 * VGA_MIS_ENB_MEM_ACCESS=0 is also the reset value.
+	 */
+	msr &= ~VGA_MIS_ENB_MEM_ACCESS;
 	/*
 	 * VGA_MIS_COLOR controls both GPU level and display engine level
 	 * MDA vs. CGA decode logic. But when the register gets reset
@@ -177,6 +197,14 @@ void intel_vga_disable(struct intel_display *display)
 
 	intel_vga_put(display, io_decode);
 
+	/*
+	 * Inform the arbiter about VGA memory decode being disabled so
+	 * that it doesn't disable all memory decode for the iGPU when
+	 * targeting another GPU.
+	 */
+	if (!display->platform.dgfx)
+		vga_set_legacy_decoding(pdev, VGA_RSRC_LEGACY_IO);
+
 	udelay(300);
 
 reset_vgacntr:
@@ -184,45 +212,38 @@ void intel_vga_disable(struct intel_display *display)
 	intel_de_posting_read(display, vga_reg);
 }
 
-static int intel_gmch_vga_set_state(struct intel_display *display, bool enable_decode)
-{
-	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
-	u16 gmch_ctrl;
-
-	if (pci_bus_read_config_word(pdev->bus, PCI_DEVFN(0, 0),
-				     intel_gmch_ctrl_reg(display), &gmch_ctrl)) {
-		drm_err(display->drm, "failed to read control word\n");
-		return -EIO;
-	}
-
-	if (!!(gmch_ctrl & INTEL_GMCH_VGA_DISABLE) == !enable_decode)
-		return 0;
-
-	if (enable_decode)
-		gmch_ctrl &= ~INTEL_GMCH_VGA_DISABLE;
-	else
-		gmch_ctrl |= INTEL_GMCH_VGA_DISABLE;
-
-	if (pci_bus_write_config_word(pdev->bus, PCI_DEVFN(0, 0),
-				      intel_gmch_ctrl_reg(display), gmch_ctrl)) {
-		drm_err(display->drm, "failed to write control word\n");
-		return -EIO;
-	}
-
-	return 0;
-}
-
-static unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_decode)
+static unsigned int intel_vga_set_decode(struct pci_dev *pdev, bool enable_decode)
 {
 	struct intel_display *display = to_intel_display(pdev);
+	unsigned int decodes = VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
 
-	intel_gmch_vga_set_state(display, enable_decode);
+	drm_dbg_kms(display->drm, "%s VGA decode due to VGA arbitration\n",
+		    str_enable_disable(enable_decode));
 
-	if (enable_decode)
-		return VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM |
-		       VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
-	else
-		return VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
+	/*
+	 * Can't use GMCH_CTRL INTEL_GMCH_VGA_DISABLE to disable VGA
+	 * decode on ILK+ since the register is locked. Instead
+	 * intel_disable_vga() will disable VGA memory decode for the
+	 * iGPU, and here we just need to take care of the IO decode.
+	 * For discrete GPUs we rely on the bridge VGA control.
+	 *
+	 * We can't disable IO decode already in intel_vga_disable()
+	 * because at least some laptops (eg. CTG Dell Latitude E5400)
+	 * will hang during reboot/shutfown with IO decode disabled.
+	 */
+	if (display->platform.dgfx) {
+		if (!enable_decode)
+			intel_pci_bridge_set_vga(pdev, false);
+		else
+			decodes |= VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM;
+	} else {
+		if (!enable_decode)
+			intel_pci_set_io_decode(pdev, false);
+		else
+			decodes |= VGA_RSRC_LEGACY_IO;
+	}
+
+	return decodes;
 }
 
 void intel_vga_register(struct intel_display *display)
@@ -239,7 +260,7 @@ void intel_vga_register(struct intel_display *display)
 	 * then we do not take part in VGA arbitration and the
 	 * vga_client_register() fails with -ENODEV.
 	 */
-	ret = vga_client_register(pdev, intel_gmch_vga_set_decode);
+	ret = vga_client_register(pdev, intel_vga_set_decode);
 	drm_WARN_ON(display->drm, ret && ret != -ENODEV);
 }
 
-- 
2.51.2

