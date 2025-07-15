Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBC1B06123
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 16:32:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C56D210E5E9;
	Tue, 15 Jul 2025 14:32:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gpz4cmUT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4724310E5E3;
 Tue, 15 Jul 2025 14:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752589955; x=1784125955;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wF9BRGGkdBuCtJgC6xZlUf6XKOgDfjy3ErNJuqIjKtk=;
 b=Gpz4cmUT2J8agvhNqSdeuxcD9I6rz2mERzc6gWz8f/JbbOcB+LHPn2WI
 mTUX4MSodKJH8NIxMfXSv/x3Vb3rOecZrf3dmhNna5hw1W/KMP8CCQwPS
 yhLSJkwHnChHS81QBtTGbbu1fhW5xh2mK+paFIm9lNRaVHy+h+nSiIARB
 HnFD4hjOFArcMrNLkqE62A9QCXvdrC/awPsAEKFQ07j235NsNL/i+y9rQ
 aYo1+W6Hgjdyq5zbYZMPxSLc5zBoUDEJUg9eKnR78UmPmFJSq+3yxnfFG
 IAayzH4lbE/71llzStBrvLQtaF81U+yjSPWYRTHvz9S9urmNccEMEuHeW A==;
X-CSE-ConnectionGUID: IBWAUyrKQn+6pwzcKGwYZA==
X-CSE-MsgGUID: Jpw1wEftTM63EOpwNHOZSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="80256963"
X-IronPort-AV: E=Sophos;i="6.16,313,1744095600"; d="scan'208";a="80256963"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 07:32:35 -0700
X-CSE-ConnectionGUID: 2uXgkEkHTfWhAA9qSPoWqQ==
X-CSE-MsgGUID: a43XGSfdS2Kh12zR8iB5OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,313,1744095600"; d="scan'208";a="156904326"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 07:32:33 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 gustavo.sousa@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/2] drm/i915/gmbus: Add Wa_16025573575 for PTL/WCL for
 bit-bashing
Date: Tue, 15 Jul 2025 19:52:11 +0530
Message-ID: <20250715142211.3145299-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250711041901.1607823-3-ankit.k.nautiyal@intel.com>
References: <20250711041901.1607823-3-ankit.k.nautiyal@intel.com>
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

As per Wa_16025573575 for PTL/WCL, set the GPIO masks bit before starting
bit-bashing and maintain value through the bit-bashing sequence. After the
bit-bashing sequence is done, clear the GPIO masks bits.

v2:
-Use new helper for display workarounds. (Jani)
-Use a separate if-block for the workaround. (Gustavo)

v3:
-Document the workaround details in intel_display_wa.c
-Extend the workaround to WCL too. (Gustavo)

v4:
-Fix the platform check. (Gustavo)
-Avoid read when preserve bits are 0. (Gustavo)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../gpu/drm/i915/display/intel_display_wa.c   | 12 ++++++
 .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
 drivers/gpu/drm/i915/display/intel_gmbus.c    | 39 ++++++++++++++++---
 3 files changed, 47 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index 32719e2c6025..399c08902413 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -42,11 +42,23 @@ void intel_display_wa_apply(struct intel_display *display)
 		gen11_display_wa_apply(display);
 }
 
+/*
+ * Wa_16025573575:
+ * Fixes: Issue with bitbashing on Xe3 based platforms.
+ * Workaround: Set masks bits in GPIO CTL and preserve it during bitbashing sequence.
+ */
+static bool intel_display_needs_wa_16025573575(struct intel_display *display)
+{
+	return DISPLAY_VERx100(display) == 3000 || DISPLAY_VERx100(display) == 3002;
+}
+
 bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name)
 {
 	switch (wa) {
 	case INTEL_DISPLAY_WA_16023588340:
 		return intel_display_needs_wa_16023588340(display);
+	case INTEL_DISPLAY_WA_16025573575:
+		return intel_display_needs_wa_16025573575(display);
 	default:
 		drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name);
 		break;
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index 8319e16eb460..aedea4cfa3ce 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -23,6 +23,7 @@ bool intel_display_needs_wa_16023588340(struct intel_display *display);
 
 enum intel_display_wa {
 	INTEL_DISPLAY_WA_16023588340,
+	INTEL_DISPLAY_WA_16025573575,
 };
 
 bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name);
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 0d73f32fe7f1..637f0f23f163 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -39,6 +39,7 @@
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_wa.h"
 #include "intel_gmbus.h"
 #include "intel_gmbus_regs.h"
 
@@ -240,14 +241,20 @@ static void bxt_gmbus_clock_gating(struct intel_display *display,
 static u32 get_reserved(struct intel_gmbus *bus)
 {
 	struct intel_display *display = bus->display;
-	u32 reserved = 0;
+	u32 preserve_bits = 0;
+
+	if (display->platform.i830 || display->platform.i845g)
+		return 0;
 
 	/* On most chips, these bits must be preserved in software. */
-	if (!display->platform.i830 && !display->platform.i845g)
-		reserved = intel_de_read_notrace(display, bus->gpio_reg) &
-			(GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_DISABLE);
+	preserve_bits |= GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_DISABLE;
+
+	/* Wa_16025573575: the masks bits need to be preserved through out */
+	if (intel_display_wa(display, 16025573575))
+		preserve_bits |= GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_VAL_MASK |
+				 GPIO_DATA_DIR_MASK | GPIO_DATA_VAL_MASK;
 
-	return reserved;
+	return intel_de_read_notrace(display, bus->gpio_reg) & preserve_bits;
 }
 
 static int get_clock(void *data)
@@ -308,6 +315,22 @@ static void set_data(void *data, int state_high)
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
@@ -319,6 +342,9 @@ intel_gpio_pre_xfer(struct i2c_adapter *adapter)
 	if (display->platform.pineview)
 		pnv_gmbus_clock_gating(display, false);
 
+	if (intel_display_wa(display, 16025573575))
+		ptl_handle_mask_bits(bus, true);
+
 	set_data(bus, 1);
 	set_clock(bus, 1);
 	udelay(I2C_RISEFALL_TIME);
@@ -336,6 +362,9 @@ intel_gpio_post_xfer(struct i2c_adapter *adapter)
 
 	if (display->platform.pineview)
 		pnv_gmbus_clock_gating(display, true);
+
+	if (intel_display_wa(display, 16025573575))
+		ptl_handle_mask_bits(bus, false);
 }
 
 static void
-- 
2.45.2

