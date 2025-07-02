Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF42CAF0E8D
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jul 2025 10:57:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FE8510E389;
	Wed,  2 Jul 2025 08:57:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X3T12zYH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 207C710E353;
 Wed,  2 Jul 2025 08:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751446619; x=1782982619;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jiuPSUUdLLxlOIg7XFv56HYUz3oVvcLHPIgr6QZUmS8=;
 b=X3T12zYHcnmBVenWju+1zFlJ2vwV5bRVRwH0Uy5WseVzSCeme6sllT5E
 BHFgVLGp2ryCLnFmmysMd4oew4pfpZx5bBKSeiLvua1B067MAW1Rm0vKh
 QxI0XDrnzKliJukcl/DNdyg8G5DcwRv1u6CD1D90u+bMDNlLm6mzJvq+m
 ivy91VnGRVr8j3zKTQA2IxG7b7qjrnKzYwri1X97NAKJ0gfE7wYo6spHY
 tTbMuA9YhXDJpGp8zdwIxazhkz6faO0ZfZNsTtxlueax3so6e+D5eIVps
 zkcp83ox5VWlAQ7WG06o+WTQk8A5idQxEcEURs6ed1ZSvyedMNbYCba8E g==;
X-CSE-ConnectionGUID: cerIcNuLQbKEhvETVdCR6Q==
X-CSE-MsgGUID: ukRs4DuHTCKdU8ReCnDClw==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="53448059"
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="53448059"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 01:56:59 -0700
X-CSE-ConnectionGUID: i2G4P+AXTc+b1Lz7PTQDQw==
X-CSE-MsgGUID: JKjA1HazTBW/bk0ZxXAhow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="191187796"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 01:56:57 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 gustavo.sousa@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/2] drm/i915/gmbus: Add Wa_16025573575 for PTL for bit-bashing
Date: Wed,  2 Jul 2025 14:16:19 +0530
Message-ID: <20250702084620.3837426-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250702084620.3837426-1-ankit.k.nautiyal@intel.com>
References: <20250702084620.3837426-1-ankit.k.nautiyal@intel.com>
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

v2:
-Use new helper for display workarounds. (Jani)
-Use a separate if-block for the workaround. (Gustavo)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../gpu/drm/i915/display/intel_display_wa.c   |  7 ++++
 .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
 drivers/gpu/drm/i915/display/intel_gmbus.c    | 34 +++++++++++++++++--
 3 files changed, 40 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index f5e8d58d9a68..12d1df5981f7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -42,11 +42,18 @@ void intel_display_wa_apply(struct intel_display *display)
 		gen11_display_wa_apply(display);
 }
 
+static bool intel_display_needs_wa_16025573575(struct intel_display *display)
+{
+	return DISPLAY_VER(display) == 30;
+}
+
 bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa)
 {
 	switch (wa) {
 	case INTEL_DISPLAY_WA_16023588340:
 		return intel_display_needs_wa_16023588340(display);
+	case INTEL_DISPLAY_WA_16025573575:
+		return intel_display_needs_wa_16025573575(display);
 	default:
 		drm_WARN(display->drm, 1, "Missing Wa number: %d\n", wa);
 		break;
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index 146ee70d66f7..d3d241992e55 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -23,6 +23,7 @@ bool intel_display_needs_wa_16023588340(struct intel_display *display);
 
 enum intel_display_wa {
 	INTEL_DISPLAY_WA_16023588340,
+	INTEL_DISPLAY_WA_16025573575,
 };
 
 bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa);
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 0d73f32fe7f1..95cab11c9cde 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -39,6 +39,7 @@
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_wa.h"
 #include "intel_gmbus.h"
 #include "intel_gmbus_regs.h"
 
@@ -241,11 +242,18 @@ static u32 get_reserved(struct intel_gmbus *bus)
 {
 	struct intel_display *display = bus->display;
 	u32 reserved = 0;
+	u32 preserve_bits = 0;
 
 	/* On most chips, these bits must be preserved in software. */
 	if (!display->platform.i830 && !display->platform.i845g)
-		reserved = intel_de_read_notrace(display, bus->gpio_reg) &
-			(GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_DISABLE);
+		preserve_bits |= GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_DISABLE;
+
+	/* PTL: Wa_16025573575: the masks bits need to be preserved through out */
+	if (intel_display_wa(display, 16025573575))
+		preserve_bits |= GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_VAL_MASK |
+				 GPIO_DATA_DIR_MASK | GPIO_DATA_VAL_MASK;
+
+	reserved = intel_de_read_notrace(display, bus->gpio_reg) & preserve_bits;
 
 	return reserved;
 }
@@ -308,6 +316,22 @@ static void set_data(void *data, int state_high)
 	intel_de_posting_read(display, bus->gpio_reg);
 }
 
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
 
+	if (intel_display_wa(display, 16025573575))
+		ptl_handle_mask_bits(bus, true);
+
 	set_data(bus, 1);
 	set_clock(bus, 1);
 	udelay(I2C_RISEFALL_TIME);
@@ -336,6 +363,9 @@ intel_gpio_post_xfer(struct i2c_adapter *adapter)
 
 	if (display->platform.pineview)
 		pnv_gmbus_clock_gating(display, true);
+
+	if (intel_display_wa(display, 16025573575))
+		ptl_handle_mask_bits(bus, false);
 }
 
 static void
-- 
2.45.2

