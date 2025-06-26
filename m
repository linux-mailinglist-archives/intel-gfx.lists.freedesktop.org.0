Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB90AE9AFD
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 12:16:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 757BA10E118;
	Thu, 26 Jun 2025 10:16:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FkyMLjgv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B87A10E118;
 Thu, 26 Jun 2025 10:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750933002; x=1782469002;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zeNHyuC9XyKnxW7zMmRKCyT7vbnIY9jQQVbkXdGg/WY=;
 b=FkyMLjgvgtYkQReKHQT5DGxe4J/tTWYLHCY++DCGpHRJuPiIzpbaFJwo
 d4f5YXP/Vq/0a40YmhK4Xu+skmgNSxCYHQ26MLgDJsKf2XPg39JLYZEEL
 JZsZbWAs3tY3JNESsXC89BLHETB8mkVO8Oi5e8jnE28Roj+f2IdEHpN5j
 Eq10pkkUzxu4N0DW+OkSe4AzYogZM5vgMVANpTpUM8ZE/uTGXJ49effDc
 +5UsjzEtbBxG/yCcRrGRi7XBrKjxfkFKHC8mYSP1Ft1/e8GJFyuzubkEC
 4GD7vCmUzoVNjk5fvAtJ+JEvSIxxoJu4btBFpOrVcgrBBKFeixBv80r7p Q==;
X-CSE-ConnectionGUID: 4lTCpT9CQ7KZxkj8T4H9og==
X-CSE-MsgGUID: 07V8FtTZQkuEfd0m9gJ4kg==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="52341843"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="52341843"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 03:16:42 -0700
X-CSE-ConnectionGUID: MFfg0jSnT4aLwKpEo+Ai5Q==
X-CSE-MsgGUID: BQ/2KMgoRBi7V2wyCB43Xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="156748701"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.120])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 03:16:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH] drm/i915/display: drop a number of dependencies on i915_drv.h
Date: Thu, 26 Jun 2025 13:16:36 +0300
Message-Id: <20250626101636.1896365-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

With the switch to an unordered workqueue dedicated to display, we've
stopped using struct drm_i915_private in a number of places, and can
drop the dependencies on i915_drv.h.

Cc: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c      | 5 ++++-
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   | 1 -
 drivers/gpu/drm/i915/display/intel_drrs.c     | 3 ++-
 drivers/gpu/drm/i915/display/intel_encoder.c  | 3 +--
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 4 +++-
 drivers/gpu/drm/i915/display/intel_opregion.c | 4 +++-
 drivers/gpu/drm/i915/display/intel_pps.c      | 4 +++-
 drivers/gpu/drm/i915/display/intel_psr.c      | 2 +-
 8 files changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 14625418a558..84e9e3005fed 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -25,8 +25,11 @@
 #include <linux/debugfs.h>
 #include <linux/firmware.h>
 
-#include "i915_drv.h"
+#include <drm/drm_file.h>
+#include <drm/drm_print.h>
+
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_power_well.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index d8a04a98dd7c..b3bb89ba34f9 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -7,7 +7,6 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_drv.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_dmc_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 3e775bb1b57a..0fdb32ef241c 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -5,7 +5,8 @@
 
 #include <linux/debugfs.h>
 
-#include "i915_drv.h"
+#include <drm/drm_print.h>
+
 #include "intel_atomic.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_encoder.c b/drivers/gpu/drm/i915/display/intel_encoder.c
index 283187905d0b..0b7bd26f4339 100644
--- a/drivers/gpu/drm/i915/display/intel_encoder.c
+++ b/drivers/gpu/drm/i915/display/intel_encoder.c
@@ -5,7 +5,6 @@
 
 #include <linux/workqueue.h>
 
-#include "i915_drv.h"
 #include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_encoder.h"
@@ -32,7 +31,7 @@ void intel_encoder_link_check_flush_work(struct intel_encoder *encoder)
 
 void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int delay_ms)
 {
-	struct intel_display *display = to_i915(encoder->base.dev)->display;
+	struct intel_display *display = to_intel_display(encoder);
 
 	mod_delayed_work(display->wq.unordered,
 			 &encoder->link_check_work, msecs_to_jiffies(delay_ms));
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 619ccfc33000..42202c8bb066 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -14,10 +14,11 @@
 #include <linux/random.h>
 
 #include <drm/display/drm_hdcp_helper.h>
+#include <drm/drm_print.h>
 #include <drm/intel/i915_component.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_connector.h"
 #include "intel_de.h"
 #include "intel_display_power.h"
@@ -32,6 +33,7 @@
 #include "intel_hdcp_regs.h"
 #include "intel_hdcp_shim.h"
 #include "intel_pcode.h"
+#include "intel_step.h"
 
 #define USE_HDCP_GSC(__display)		(DISPLAY_VER(__display) >= 14)
 
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 2b8538fcfd1d..81efdb17fc0c 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -31,8 +31,10 @@
 #include <acpi/video.h>
 
 #include <drm/drm_edid.h>
+#include <drm/drm_file.h>
+#include <drm/drm_print.h>
 
-#include "i915_drv.h"
+#include "i915_utils.h"
 #include "intel_acpi.h"
 #include "intel_backlight.h"
 #include "intel_display_core.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 6caafa66e7b4..b64d0b30f5b1 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -5,9 +5,11 @@
 
 #include <linux/debugfs.h>
 
+#include <drm/drm_print.h>
+
 #include "g4x_dp.h"
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_power_well.h"
 #include "intel_display_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f7837e17c59d..d81fe1a7d2ba 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -28,7 +28,6 @@
 #include <drm/drm_debugfs.h>
 #include <drm/drm_vblank.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_alpm.h"
 #include "intel_atomic.h"
@@ -48,6 +47,7 @@
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
 #include "intel_snps_phy.h"
+#include "intel_step.h"
 #include "intel_vblank.h"
 #include "intel_vrr.h"
 #include "skl_universal_plane.h"
-- 
2.39.5

