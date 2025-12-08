Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C87C8CADFBB
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 19:26:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AFEF10E46F;
	Mon,  8 Dec 2025 18:26:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e47wL8tS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9344010E457;
 Mon,  8 Dec 2025 18:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765218411; x=1796754411;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8f7zfic+IJ0pXaiIrWYvHl7XPTa8eUCjcjgqINf7dbI=;
 b=e47wL8tSIVp8DF5gploJRk2H6Pib9YackRvNPmViWd3aNekUavBB9Xw2
 G7QRhT5XZmZCeP8+ju3yUCh3IKbYr5OG5yCyEf96VP/a6HgTKo46+8i+s
 TJhC+o3yg/I7cAqM5sxVSpWc0yMbS/QoN+1+R3+varLHzvhNDZtCxAGEs
 2yyaO9XMxDeyBaHG0Kz9Wyv8m7muQ52TFF8VHzMpkxkTLCUQL2+OOVY9H
 9JE0akY1BiduGrTgLu0k7YVFEX582bdIdcNPGZOt72xCFUr1FHOxj2mTv
 31Rl7WldTckjZF4is2d04mFW3Nad4TxELlZEl+1I4WiURQLOJEUgGkfVd Q==;
X-CSE-ConnectionGUID: tsDRbsJsR/KAF7z91TH6vg==
X-CSE-MsgGUID: w1Tjz2CzQQuNBHMbItd9CQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="66348080"
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="66348080"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:26:50 -0800
X-CSE-ConnectionGUID: jVmZbxUlSvK+c6Mgl0GHvA==
X-CSE-MsgGUID: 9n3qq1MzQdmsM4ELgZwKpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="200169478"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:26:49 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 02/19] drm/i915/vga: Get rid of intel_vga_reset_io_mem()
Date: Mon,  8 Dec 2025 20:26:20 +0200
Message-ID: <20251208182637.334-3-ville.syrjala@linux.intel.com>
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

Remove the MSR VGA register access from the power well hook, and
just do it once in intel_vga_disable().

Turns out that the hardware has two levels of MDA vs. CGA decode
logic: GPU level and display engine level. When we write the MSR
register MDA/CGA mode selection bit both decode logics are updated
accordingly, so that whichever register accessed the GPU claims
will also be claimed by the display engine on the RMbus. If the
two get out of sync the GPU will claim the register accesses but
the display engine will not, leading to RMbus NoClaim errors.

The way to get the two decode logics out of sync is by resetting
the power well housing the VGA stuff, while we are in CGA mode.
At that point only the display engine level decode logic will be
updated with the new MSR register reset value (which selects MDA
mode), and the GPU level decode logic will retain its previous
state (GGA mode). To avoid the mismatch we just have to switch
to MDA mode with an explicit MSR register write.

Currently this is being done in a somewhat dodgy manner whenever
the power well gets enabled. But doing if from the power well
hook is not actually necessary since the GPU level decode logic
will retain its state even when the power well is disabled. Ie.
doing it just the one time is sufficient, and that can be done
when we're anyway writing other VGA registers while disabling
the VGA plane.

See commit f9dcb0dfee98 ("drm/i915: touch VGA MSR after we
enable the power well") for the original details.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../i915/display/intel_display_power_well.c   |  3 --
 drivers/gpu/drm/i915/display/intel_vga.c      | 40 +++++++++----------
 2 files changed, 20 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index db185a859133..52b20118ace6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -204,9 +204,6 @@ int intel_power_well_refcount(struct i915_power_well *power_well)
 static void hsw_power_well_post_enable(struct intel_display *display,
 				       u8 irq_pipe_mask, bool has_vga)
 {
-	if (has_vga)
-		intel_vga_reset_io_mem(display);
-
 	if (irq_pipe_mask)
 		gen8_irq_power_well_post_enable(display, irq_pipe_mask);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index f13734cfd904..39c68aec647b 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -47,8 +47,8 @@ void intel_vga_disable(struct intel_display *display)
 	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	i915_reg_t vga_reg = intel_vga_cntrl_reg(display);
 	enum pipe pipe;
+	u8 msr, sr1;
 	u32 tmp;
-	u8 sr1;
 
 	tmp = intel_de_read(display, vga_reg);
 	if (tmp & VGA_DISP_DISABLE)
@@ -66,35 +66,35 @@ void intel_vga_disable(struct intel_display *display)
 
 	/* WaEnableVGAAccessThroughIOPort:ctg,elk,ilk,snb,ivb,vlv,hsw */
 	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
+
 	outb(0x01, VGA_SEQ_I);
 	sr1 = inb(VGA_SEQ_D);
 	outb(sr1 | VGA_SR01_SCREEN_OFF, VGA_SEQ_D);
+
+	msr = inb(VGA_MIS_R);
+	/*
+	 * VGA_MIS_COLOR controls both GPU level and display engine level
+	 * MDA vs. CGA decode logic. But when the register gets reset
+	 * (reset value has VGA_MIS_COLOR=0) by the power well, only the
+	 * display engine level decode logic gets notified.
+	 *
+	 * Switch to MDA mode to make sure the GPU level decode logic will
+	 * be in sync with the display engine level decode logic after the
+	 * power well has been reset. Otherwise the GPU will claim CGA
+	 * register accesses but the display engine will not, causing
+	 * RMbus NoClaim errors.
+	 */
+	msr &= ~VGA_MIS_COLOR;
+	outb(msr, VGA_MIS_W);
+
 	vga_put(pdev, VGA_RSRC_LEGACY_IO);
+
 	udelay(300);
 
 	intel_de_write(display, vga_reg, VGA_DISP_DISABLE);
 	intel_de_posting_read(display, vga_reg);
 }
 
-void intel_vga_reset_io_mem(struct intel_display *display)
-{
-	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
-
-	/*
-	 * After we re-enable the power well, if we touch VGA register 0x3d5
-	 * we'll get unclaimed register interrupts. This stops after we write
-	 * anything to the VGA MSR register. The vgacon module uses this
-	 * register all the time, so if we unbind our driver and, as a
-	 * consequence, bind vgacon, we'll get stuck in an infinite loop at
-	 * console_unlock(). So make here we touch the VGA MSR register, making
-	 * sure vgacon can keep working normally without triggering interrupts
-	 * and error messages.
-	 */
-	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
-	outb(inb(VGA_MIS_R), VGA_MIS_W);
-	vga_put(pdev, VGA_RSRC_LEGACY_IO);
-}
-
 static int intel_gmch_vga_set_state(struct intel_display *display, bool enable_decode)
 {
 	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
-- 
2.51.2

