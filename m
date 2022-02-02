Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9A74A6FE3
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 12:25:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C4EF10E354;
	Wed,  2 Feb 2022 11:25:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8364510E3A9
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Feb 2022 11:25:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643801121; x=1675337121;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DV2v/FVdgWKeVUHYLdtHFNHGNqC9dfi3oizVTweXr+g=;
 b=fbxJ/cf1XswDrz/NiaDZbkw9rZ5P89Of+dVWJjkNfu/v2YzpwgB9y8lw
 BNA7HpmpPvwkEyxTMJeubLtjrRUwKYD4VFnSUdLYVPzpb+QAZ+/HvrBra
 uTpV2PjjffEybG1wwixGC7QgyTdx49yE2hmbEZw1B1J9SL6Mw3/bMTKmQ
 YoaPga+y7m5xolB8ZwFSfhfQn4glB00sSZYQbXiYtUJKaBF3jTcwbXIh+
 6kXuAUZzS7Duch0sdHCxerfYWzUERqqjdDDMs0uLJqdiiWUHNznYcUspl
 1tW0sfKBP/eSnPK4Lz+ScJrO5Qsy5VjylJBOvG4qbUWfGWcGZEtvYwfai g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="272379511"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="272379511"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 03:25:21 -0800
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="482794406"
Received: from markeyp-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.6.210])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 03:25:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Feb 2022 13:25:08 +0200
Message-Id: <20220202112509.1886660-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/vga: switch to use VGA
 definitions from video/vga.h
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The video/vga.h has macros for the VGA registers. Switch to use them.

v2: Use direct 0x01 instead of the confusing VGA_SEQ_CLOCK_MODE (Ville)

Suggested-by: Matt Roper <matthew.d.roper@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vga.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index fa779f7ea415..b5d058404c14 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -7,6 +7,7 @@
 #include <linux/vgaarb.h>
 
 #include <drm/i915_drm.h>
+#include <video/vga.h>
 
 #include "i915_drv.h"
 #include "intel_de.h"
@@ -34,9 +35,9 @@ void intel_vga_disable(struct drm_i915_private *dev_priv)
 
 	/* WaEnableVGAAccessThroughIOPort:ctg,elk,ilk,snb,ivb,vlv,hsw */
 	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
-	outb(SR01, VGA_SR_INDEX);
-	sr1 = inb(VGA_SR_DATA);
-	outb(sr1 | 1 << 5, VGA_SR_DATA);
+	outb(0x01, VGA_SEQ_I);
+	sr1 = inb(VGA_SEQ_D);
+	outb(sr1 | VGA_SR01_SCREEN_OFF, VGA_SEQ_D);
 	vga_put(pdev, VGA_RSRC_LEGACY_IO);
 	udelay(300);
 
@@ -92,7 +93,7 @@ void intel_vga_reset_io_mem(struct drm_i915_private *i915)
 	 * and error messages.
 	 */
 	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
-	outb(inb(VGA_MSR_READ), VGA_MSR_WRITE);
+	outb(inb(VGA_MIS_R), VGA_MIS_W);
 	vga_put(pdev, VGA_RSRC_LEGACY_IO);
 }
 
-- 
2.30.2

