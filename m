Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E0BA82E70
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 20:18:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 727AD10E6F4;
	Wed,  9 Apr 2025 18:18:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rq4Ujkdg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AF4D10E6F4;
 Wed,  9 Apr 2025 18:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744222738; x=1775758738;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0+bKUDiuOtkDyoI67oXS1VUpPVaplgsOd1ys7DFyLwg=;
 b=Rq4Ujkdgof64CEu2ujUlgEhgeLw7HfyC6ElkSF2V/rp9cbYfj6NWD/NM
 I8qH3oy3C3sb2Da25RdW7qTCVvPe6K9WQ9XgbZAjhrnqJyg+cinyzO1TL
 9G3M3FYJk6AiuCPGfBAPjJVKrIcoFzlDW+NtBUhYTYYwNSW6Q4pc2TWm1
 Ldy9Ll0WpmocUaWShXd1MNX8UUjbsYgdJEBTXv3i9D4qQUCBfXJ9LzP7T
 /e59sXKDr4umNZR8qmVntw4r/MPXhE33QwRz1BtIWfewsP2YdRDaeqQq+
 RA4oLni9E7GODLuuimFizwUiqnxdDl7gYXIDsuQJyXbobX4Bs1aaTEZtM A==;
X-CSE-ConnectionGUID: x2lEAohvQGysJ6d1tSqWsA==
X-CSE-MsgGUID: /XnBMpkXRd+CC6KyIWjoXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="45729989"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="45729989"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:18:57 -0700
X-CSE-ConnectionGUID: 7mHIi/O1QW+wiu2C15qE1A==
X-CSE-MsgGUID: tWRQucAIRgmqRZi29TiEjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="165879060"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:18:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 10/14] drm/i915/gmbus: switch to display->platform based
 platform detection
Date: Wed,  9 Apr 2025 21:17:51 +0300
Message-Id: <7a69d2ffa15306da899b98e0d6af09b4df1b7ec3.1744222449.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744222449.git.jani.nikula@intel.com>
References: <cover.1744222449.git.jani.nikula@intel.com>
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

Prefer display->platform based platform detection over the old IS_*()
macros.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c | 22 +++++++++-------------
 1 file changed, 9 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index abf457e68ee9..2a530bf35ebb 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -171,13 +171,13 @@ static const struct gmbus_pin *get_gmbus_pin(struct intel_display *display,
 	} else if (HAS_PCH_CNP(i915)) {
 		pins = gmbus_pins_cnp;
 		size = ARRAY_SIZE(gmbus_pins_cnp);
-	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
+	} else if (display->platform.geminilake || display->platform.broxton) {
 		pins = gmbus_pins_bxt;
 		size = ARRAY_SIZE(gmbus_pins_bxt);
 	} else if (DISPLAY_VER(display) == 9) {
 		pins = gmbus_pins_skl;
 		size = ARRAY_SIZE(gmbus_pins_skl);
-	} else if (IS_BROADWELL(i915)) {
+	} else if (display->platform.broadwell) {
 		pins = gmbus_pins_bdw;
 		size = ARRAY_SIZE(gmbus_pins_bdw);
 	} else {
@@ -240,11 +240,10 @@ static void bxt_gmbus_clock_gating(struct intel_display *display,
 static u32 get_reserved(struct intel_gmbus *bus)
 {
 	struct intel_display *display = bus->display;
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	u32 reserved = 0;
 
 	/* On most chips, these bits must be preserved in software. */
-	if (!IS_I830(i915) && !IS_I845G(i915))
+	if (!display->platform.i830 && !display->platform.i845g)
 		reserved = intel_de_read_notrace(display, bus->gpio_reg) &
 			(GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_DISABLE);
 
@@ -314,11 +313,10 @@ intel_gpio_pre_xfer(struct i2c_adapter *adapter)
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
 	struct intel_display *display = bus->display;
-	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	intel_gmbus_reset(display);
 
-	if (IS_PINEVIEW(i915))
+	if (display->platform.pineview)
 		pnv_gmbus_clock_gating(display, false);
 
 	set_data(bus, 1);
@@ -332,12 +330,11 @@ intel_gpio_post_xfer(struct i2c_adapter *adapter)
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
 	struct intel_display *display = bus->display;
-	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	set_data(bus, 1);
 	set_clock(bus, 1);
 
-	if (IS_PINEVIEW(i915))
+	if (display->platform.pineview)
 		pnv_gmbus_clock_gating(display, true);
 }
 
@@ -635,7 +632,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 	int ret = 0;
 
 	/* Display WA #0868: skl,bxt,kbl,cfl,glk */
-	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
+	if (display->platform.geminilake || display->platform.broxton)
 		bxt_gmbus_clock_gating(display, false);
 	else if (HAS_PCH_SPT(i915) || HAS_PCH_CNP(i915))
 		pch_gmbus_clock_gating(display, false);
@@ -748,7 +745,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 
 out:
 	/* Display WA #0868: skl,bxt,kbl,cfl,glk */
-	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
+	if (display->platform.geminilake || display->platform.broxton)
 		bxt_gmbus_clock_gating(display, true);
 	else if (HAS_PCH_SPT(i915) || HAS_PCH_CNP(i915))
 		pch_gmbus_clock_gating(display, true);
@@ -873,12 +870,11 @@ static const struct i2c_lock_operations gmbus_lock_ops = {
  */
 int intel_gmbus_setup(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	unsigned int pin;
 	int ret;
 
-	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+	if (display->platform.valleyview || display->platform.cherryview)
 		display->gmbus.mmio_base = VLV_DISPLAY_BASE;
 	else if (!HAS_GMCH(display))
 		/*
@@ -925,7 +921,7 @@ int intel_gmbus_setup(struct intel_display *display)
 		bus->reg0 = pin | GMBUS_RATE_100KHZ;
 
 		/* gmbus seems to be broken on i830 */
-		if (IS_I830(i915))
+		if (display->platform.i830)
 			bus->force_bit = 1;
 
 		intel_gpio_setup(bus, GPIO(display, gmbus_pin->gpio));
-- 
2.39.5

