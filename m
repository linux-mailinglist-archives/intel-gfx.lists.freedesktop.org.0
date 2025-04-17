Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A120CA91B2A
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 13:45:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EE4E10EAE0;
	Thu, 17 Apr 2025 11:45:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dwAEA8ra";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 767BC10EAE0
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Apr 2025 11:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744890316; x=1776426316;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=RFMGRPkru+s+aIMjsVNkkZ4JaQ3IO8NPR1WHenqOttw=;
 b=dwAEA8raM5A+qeTUNYqCsf2rM4gcwNaMnhimdpxhve3h60W59Zty1+Ym
 fJqz++9WMNjcTsn65uFrEgQIqeQ6fprmki5RHZh8XCh5vXRHxgGlSBk+H
 PuDMj40LVknYzvF68Rt2qGLoGg1kHvkjp4+xfi+UpnT2IK45Z5yZBZJJ+
 d6/5p5wJXLfkc3zSbDj0cKRp0/fbA7RLJcparRL0xVZo2OtEtWCvzQBI+
 YECMbu28OdjJaCKrNuEM92dyZ8+8HK/bOUAVbCKZDDZPSJgr+HfGdg4+F
 lYaK0/UWDPPn9yXVk4wum+lriBfiBAswHJ6aytIcbIAX8/dlsUCJ0DB3j g==;
X-CSE-ConnectionGUID: 6YNL/zYUQfepBW9gq7u/Fg==
X-CSE-MsgGUID: yEc7y6JRTguByje2oeuN9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="46638266"
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="46638266"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 04:45:15 -0700
X-CSE-ConnectionGUID: pxJvYqUmQXePG6Z2/sBaQg==
X-CSE-MsgGUID: zg0xsacVSsamtWhjHVG3ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="135943673"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 17 Apr 2025 04:45:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Apr 2025 14:45:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 6/6] drm/i915/vga: Consolidate intel_vga_disable() calls
Date: Thu, 17 Apr 2025 14:44:54 +0300
Message-ID: <20250417114454.12836-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250417114454.12836-1-ville.syrjala@linux.intel.com>
References: <20250417114454.12836-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Currently we disable the VGA plane from various places, sometimes
multiple times in the same init/resume sequence. Get rid of all this
mess and do it just once. The most correct place seems to be just
after intel_early_display_was() as that one applies various workarounds
that need to be in place before we touch any planes (including the
VGA plane).

Actually, we do still have a second caller in
vlv_display_power_well_init(). I think we still need that as the reset
value of VGACNTR is 0x0 and thus technically the VGA plane will be
(at least partially) enabled after the power well has been toggled.

In both cases we have the necessary power reference already held
(INIT power domain for load/resume case, and the display power well
itself being what we need for vlv_display_power_well_init()).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_driver.c   |  3 ---
 .../drm/i915/display/intel_modeset_setup.c    |  3 +++
 drivers/gpu/drm/i915/display/intel_vga.c      | 22 -------------------
 drivers/gpu/drm/i915/display/intel_vga.h      |  1 -
 drivers/gpu/drm/i915/i915_driver.c            |  3 ---
 5 files changed, 3 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index eb3ae05d1569..ac0f79476675 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -455,8 +455,6 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 
 	intel_hti_init(display);
 
-	/* Just disable it once at startup */
-	intel_vga_disable(display);
 	intel_setup_outputs(display);
 
 	ret = intel_dp_tunnel_mgr_init(display);
@@ -693,7 +691,6 @@ __intel_display_driver_resume(struct intel_display *display,
 	int ret, i;
 
 	intel_modeset_setup_hw_state(display, ctx);
-	intel_vga_redisable(display);
 
 	if (!state)
 		return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 5d5ade7fdd77..0325b0c9506d 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -31,6 +31,7 @@
 #include "intel_pmdemand.h"
 #include "intel_tc.h"
 #include "intel_vblank.h"
+#include "intel_vga.h"
 #include "intel_wm.h"
 #include "skl_watermark.h"
 
@@ -935,6 +936,8 @@ void intel_modeset_setup_hw_state(struct intel_display *display,
 	wakeref = intel_display_power_get(display, POWER_DOMAIN_INIT);
 
 	intel_early_display_was(display);
+	intel_vga_disable(display);
+
 	intel_modeset_readout_hw_state(display);
 
 	/* HW state is read out, now we need to sanitize this mess. */
diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index d01de61105c1..a0940a050994 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -74,28 +74,6 @@ void intel_vga_disable(struct intel_display *display)
 	intel_de_posting_read(display, vga_reg);
 }
 
-void intel_vga_redisable(struct intel_display *display)
-{
-	intel_wakeref_t wakeref;
-
-	/*
-	 * This function can be called both from intel_modeset_setup_hw_state or
-	 * at a very early point in our resume sequence, where the power well
-	 * structures are not yet restored. Since this function is at a very
-	 * paranoid "someone might have enabled VGA while we were not looking"
-	 * level, just check if the power well is enabled instead of trying to
-	 * follow the "don't touch the power well if we don't need it" policy
-	 * the rest of the driver uses.
-	 */
-	wakeref = intel_display_power_get_if_enabled(display, POWER_DOMAIN_VGA);
-	if (!wakeref)
-		return;
-
-	intel_vga_disable(display);
-
-	intel_display_power_put(display, POWER_DOMAIN_VGA, wakeref);
-}
-
 void intel_vga_reset_io_mem(struct intel_display *display)
 {
 	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
diff --git a/drivers/gpu/drm/i915/display/intel_vga.h b/drivers/gpu/drm/i915/display/intel_vga.h
index d0716782c1f9..16d699f3b641 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.h
+++ b/drivers/gpu/drm/i915/display/intel_vga.h
@@ -10,7 +10,6 @@ struct intel_display;
 
 void intel_vga_reset_io_mem(struct intel_display *display);
 void intel_vga_disable(struct intel_display *display);
-void intel_vga_redisable(struct intel_display *display);
 int intel_vga_register(struct intel_display *display);
 void intel_vga_unregister(struct intel_display *display);
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 97ff9855b5de..96a52f963475 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -62,7 +62,6 @@
 #include "display/intel_pch_refclk.h"
 #include "display/intel_pps.h"
 #include "display/intel_sprite_uapi.h"
-#include "display/intel_vga.h"
 #include "display/skl_watermark.h"
 
 #include "gem/i915_gem_context.h"
@@ -1202,8 +1201,6 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	i9xx_display_sr_restore(display);
 
-	intel_vga_redisable(display);
-
 	intel_gmbus_reset(display);
 
 	intel_pps_unlock_regs_wa(display);
-- 
2.49.0

