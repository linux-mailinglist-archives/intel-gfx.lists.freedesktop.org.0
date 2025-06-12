Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BA6AD69E1
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 10:04:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B41F10E78E;
	Thu, 12 Jun 2025 08:04:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dp/KgHOw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81A6A10E78C;
 Thu, 12 Jun 2025 08:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749715459; x=1781251459;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jZW/MoMJMN7orQ3ONHgq2+wpyPSh8jYI9s7gtHxmjyY=;
 b=dp/KgHOwhK5VjQXHpLAquV72ydMxu1HvYEZh9uu2rPhvpzcJzcP4ZcHO
 gCcr5wL4Nhzm83N7aVvQDkPxnqJRugF0bQo4EkNXfvdKEv/hI/OpOfwo5
 f7zjCquk82sDQPLcIamOHt2QvjVARB4DUYnUnDy75k+Y4faCpoVMFEMjN
 RemHQlt1+Ms6ovPNF0VQaeKjpT5kZyWNl9N4UUngMF8IZx7iKaDsygLn6
 oAPfXTX/oLEgx1bqqGVGCABedYC6y9VwcrnzzpDTHrWhPmBbOD318jsxt
 MXuijTI8jLAzA5g7PddvH/MIKnCgKj0n2At69UwUzU5JMn+wbRD4aM2Ok A==;
X-CSE-ConnectionGUID: kEkLU1sUTdicEnVpc2GIVQ==
X-CSE-MsgGUID: tYMaUD9rRLmevy8mE9cWEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51595651"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="51595651"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 01:04:17 -0700
X-CSE-ConnectionGUID: pfbEMDk/Se+W8R1Si2pcTw==
X-CSE-MsgGUID: EKnI0i8oSk+fi+2NlG1x+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="152344134"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 01:04:16 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH] drm/i915/gmbus: Add Wa_16025573575 for PTL for bit-bashing
Date: Thu, 12 Jun 2025 13:23:30 +0530
Message-ID: <20250612075330.837179-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
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

As per Wa_16025573575 for PTL, set the GPIO masks bit before starting
bit-bashing and maintain value through the bit-bashing sequence.
After bit-bashing sequence is done, clear the GPIO masks bits.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c | 38 +++++++++++++++++++---
 1 file changed, 34 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 0d73f32fe7f1..c96167c70228 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -242,10 +242,17 @@ static u32 get_reserved(struct intel_gmbus *bus)
 	struct intel_display *display = bus->display;
 	u32 reserved = 0;
 
-	/* On most chips, these bits must be preserved in software. */
-	if (!display->platform.i830 && !display->platform.i845g)
-		reserved = intel_de_read_notrace(display, bus->gpio_reg) &
-			(GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_DISABLE);
+	if (!display->platform.i830 && !display->platform.i845g) {
+		/* On most chips, these bits must be preserved in software. */
+		u32 preserve_bits = GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_DISABLE;
+
+		/* PTL: Wa_16025573575: the masks bits need to be preserved through out */
+		if (DISPLAY_VER(display) == 30)
+			preserve_bits |= GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_VAL_MASK |
+					 GPIO_DATA_DIR_MASK | GPIO_DATA_VAL_MASK;
+
+		reserved = intel_de_read_notrace(display, bus->gpio_reg) & preserve_bits;
+	}
 
 	return reserved;
 }
@@ -308,6 +315,23 @@ static void set_data(void *data, int state_high)
 	intel_de_posting_read(display, bus->gpio_reg);
 }
 
+/* PTL: Wa_16025573575 */
+static void
+ptl_handle_mask_bits(struct intel_gmbus *bus, bool set)
+{
+	struct intel_display *display = bus->display;
+	u32 reg_val = intel_de_read_notrace(display, bus->gpio_reg);
+	u32 mask_bits = GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_VAL_MASK |
+			GPIO_DATA_DIR_MASK | GPIO_DATA_VAL_MASK;
+	if (set)
+		reg_val |= mask_bits;
+	else
+		reg_val &= ~mask_bits;
+
+	intel_de_write_notrace(display, bus->gpio_reg, reg_val);
+	intel_de_posting_read(display, bus->gpio_reg);
+}
+
 static int
 intel_gpio_pre_xfer(struct i2c_adapter *adapter)
 {
@@ -319,6 +343,9 @@ intel_gpio_pre_xfer(struct i2c_adapter *adapter)
 	if (display->platform.pineview)
 		pnv_gmbus_clock_gating(display, false);
 
+	if (DISPLAY_VER(display) == 30)
+		ptl_handle_mask_bits(bus, true);
+
 	set_data(bus, 1);
 	set_clock(bus, 1);
 	udelay(I2C_RISEFALL_TIME);
@@ -336,6 +363,9 @@ intel_gpio_post_xfer(struct i2c_adapter *adapter)
 
 	if (display->platform.pineview)
 		pnv_gmbus_clock_gating(display, true);
+
+	if (DISPLAY_VER(display) == 30)
+		ptl_handle_mask_bits(bus, false);
 }
 
 static void
-- 
2.45.2

