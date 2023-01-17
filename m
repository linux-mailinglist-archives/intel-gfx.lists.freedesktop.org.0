Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F4466DDAC
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 13:33:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34BBC10E53A;
	Tue, 17 Jan 2023 12:33:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0BA210E540
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jan 2023 12:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673958808; x=1705494808;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DJSFwu3TJGTv7Tk0NhsuLO6FqFYyWZnrURRUO0I88gI=;
 b=nZU7RmwtG3dZJ0i9M7Nckc/cRiL8CVIidX65NWCAIiwZAUefsy1MQSTt
 VGKXzJ/R1lSf1Cd2cInKfUCfXqxDft2NNS4eVP+an2YmoOs0RsKFdpk4T
 9wLy53kmRv91M2LAZBRbbRGcrvdHwuLz/u9774z/vvmX790klXVfNOca1
 2o+JXGcOa2pp+zwAR+UOYDJHnajRYno7fw9selotd1X5QgoQyvY+4JMaw
 7cu+Ea0ztBIz2QU227NH2zzywYrZCOfNkT4nnSqfzwrdvuey1lZcsyInl
 eY5jy/6KZzGQCx4nQoeZWHz5IzcB8wKWBAooxfdjXTlkz/D5rSPb4+9q0 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="351929001"
X-IronPort-AV: E=Sophos;i="5.97,222,1669104000"; d="scan'208";a="351929001"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 04:33:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="801726452"
X-IronPort-AV: E=Sophos;i="5.97,222,1669104000"; d="scan'208";a="801726452"
Received: from vishvend-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.14.88])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 04:33:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Jan 2023 14:33:09 +0200
Message-Id: <9bd50fe508246a547cf6e7abfe44ed686a4b3e3a.1673958757.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1673958757.git.jani.nikula@intel.com>
References: <cover.1673958757.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/gmch: move VGA set state to GMCH
 code
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

This is the only user for the GMCH bridge device in display. Move it to
GMCH code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vga.c | 32 +++---------------------
 drivers/gpu/drm/i915/soc/intel_gmch.c    | 27 ++++++++++++++++++++
 drivers/gpu/drm/i915/soc/intel_gmch.h    |  3 +++
 3 files changed, 33 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index 9cedeb8c2f4d..286a0bdd28c6 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -6,9 +6,10 @@
 #include <linux/pci.h>
 #include <linux/vgaarb.h>
 
-#include <drm/i915_drm.h>
 #include <video/vga.h>
 
+#include "soc/intel_gmch.h"
+
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_de.h"
@@ -98,39 +99,12 @@ void intel_vga_reset_io_mem(struct drm_i915_private *i915)
 	vga_put(pdev, VGA_RSRC_LEGACY_IO);
 }
 
-static int
-intel_vga_set_state(struct drm_i915_private *i915, bool enable_decode)
-{
-	unsigned int reg = DISPLAY_VER(i915) >= 6 ? SNB_GMCH_CTRL : INTEL_GMCH_CTRL;
-	u16 gmch_ctrl;
-
-	if (pci_read_config_word(i915->gmch.pdev, reg, &gmch_ctrl)) {
-		drm_err(&i915->drm, "failed to read control word\n");
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
-	if (pci_write_config_word(i915->gmch.pdev, reg, gmch_ctrl)) {
-		drm_err(&i915->drm, "failed to write control word\n");
-		return -EIO;
-	}
-
-	return 0;
-}
-
 static unsigned int
 intel_vga_set_decode(struct pci_dev *pdev, bool enable_decode)
 {
 	struct drm_i915_private *i915 = pdev_to_i915(pdev);
 
-	intel_vga_set_state(i915, enable_decode);
+	intel_gmch_vga_set_state(i915, enable_decode);
 
 	if (enable_decode)
 		return VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM |
diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.c b/drivers/gpu/drm/i915/soc/intel_gmch.c
index d5fbb7907725..6d0204942f7a 100644
--- a/drivers/gpu/drm/i915/soc/intel_gmch.c
+++ b/drivers/gpu/drm/i915/soc/intel_gmch.c
@@ -7,6 +7,7 @@
 #include <linux/pnp.h>
 
 #include <drm/drm_managed.h>
+#include <drm/i915_drm.h>
 
 #include "i915_drv.h"
 #include "intel_gmch.h"
@@ -142,3 +143,29 @@ void intel_gmch_bar_teardown(struct drm_i915_private *i915)
 	if (i915->gmch.mch_res.start)
 		release_resource(&i915->gmch.mch_res);
 }
+
+int intel_gmch_vga_set_state(struct drm_i915_private *i915, bool enable_decode)
+{
+	unsigned int reg = DISPLAY_VER(i915) >= 6 ? SNB_GMCH_CTRL : INTEL_GMCH_CTRL;
+	u16 gmch_ctrl;
+
+	if (pci_read_config_word(i915->gmch.pdev, reg, &gmch_ctrl)) {
+		drm_err(&i915->drm, "failed to read control word\n");
+		return -EIO;
+	}
+
+	if (!!(gmch_ctrl & INTEL_GMCH_VGA_DISABLE) == !enable_decode)
+		return 0;
+
+	if (enable_decode)
+		gmch_ctrl &= ~INTEL_GMCH_VGA_DISABLE;
+	else
+		gmch_ctrl |= INTEL_GMCH_VGA_DISABLE;
+
+	if (pci_write_config_word(i915->gmch.pdev, reg, gmch_ctrl)) {
+		drm_err(&i915->drm, "failed to write control word\n");
+		return -EIO;
+	}
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.h b/drivers/gpu/drm/i915/soc/intel_gmch.h
index bbc52dbab708..d0133eedc720 100644
--- a/drivers/gpu/drm/i915/soc/intel_gmch.h
+++ b/drivers/gpu/drm/i915/soc/intel_gmch.h
@@ -6,10 +6,13 @@
 #ifndef __INTEL_GMCH_H__
 #define __INTEL_GMCH_H__
 
+#include <linux/types.h>
+
 struct drm_i915_private;
 
 int intel_gmch_bridge_setup(struct drm_i915_private *i915);
 void intel_gmch_bar_setup(struct drm_i915_private *i915);
 void intel_gmch_bar_teardown(struct drm_i915_private *i915);
+int intel_gmch_vga_set_state(struct drm_i915_private *i915, bool enable_decode);
 
 #endif /* __INTEL_GMCH_H__ */
-- 
2.34.1

