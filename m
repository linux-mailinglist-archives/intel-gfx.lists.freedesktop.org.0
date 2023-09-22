Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E7E7AAD59
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 11:04:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83B7F10E11C;
	Fri, 22 Sep 2023 09:04:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B96D910E11C
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Sep 2023 09:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695373444; x=1726909444;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SW6Sxn/+eIl6+m4MHhrLOZixWhM9PVaWfU/L3xQdO6w=;
 b=BkcwKQ+H99WQwN407hSCDTglueyDkLPS+IYAABA9PERDXeCkzL7R0BvY
 E37vvJKQJTWupKID1fQyqktnc5D3ME6k2FlRKMgyovyF7kJIMONiGcklv
 ROYJh5Dbmko2vAVscpGri5dPVA0u7m8tveHj/88Iim0as8aJnf6QEneY8
 OTDBLwS45Ogj3t1do0zG3Sxgc8Ydybk/NMOSPYSKMqBa59ufz8PC9xKUP
 QNPFaO2qXLZD+TPDHI2vY0rNtebzJByj2Rj5hfWn2xzdL85OeystJBBVB
 CL0scsdqS5Yb5aSn08q7bYHH2bU+1Fauxi1EPVt0xrYb4b+e69xMi2Xxm w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="361033228"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="361033228"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 02:04:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="776778051"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="776778051"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by orsmga008.jf.intel.com with ESMTP; 22 Sep 2023 02:03:58 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Sep 2023 14:41:02 +0530
Message-ID: <20230922091102.1030418-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Add a wrapper function for
 vga decode setup
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

Some of the VGA functionality is not needed by the proposed
Intel Xe driver. Adding a wrapper function for VGA decode setup.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vga.c |  3 ---
 drivers/gpu/drm/i915/soc/intel_gmch.c    | 14 ++++++++++++++
 drivers/gpu/drm/i915/soc/intel_gmch.h    |  2 ++
 3 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index 286a0bdd28c6..bf84d01339b9 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -3,11 +3,8 @@
  * Copyright © 2019 Intel Corporation
  */
 
-#include <linux/pci.h>
 #include <linux/vgaarb.h>
-
 #include <video/vga.h>
-
 #include "soc/intel_gmch.h"
 
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.c b/drivers/gpu/drm/i915/soc/intel_gmch.c
index 49c7fb16e934..818f0b7f62a2 100644
--- a/drivers/gpu/drm/i915/soc/intel_gmch.c
+++ b/drivers/gpu/drm/i915/soc/intel_gmch.c
@@ -12,6 +12,7 @@
 #include "i915_drv.h"
 #include "intel_gmch.h"
 #include "intel_pci_config.h"
+#include <linux/vgaarb.h>
 
 static void intel_gmch_bridge_release(struct drm_device *dev, void *bridge)
 {
@@ -167,3 +168,16 @@ int intel_gmch_vga_set_state(struct drm_i915_private *i915, bool enable_decode)
 
 	return 0;
 }
+
+unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_decode)
+{
+	struct drm_i915_private *i915 = pdev_to_i915(pdev);
+
+	intel_gmch_vga_set_state(i915, enable_decode);
+
+	if (enable_decode)
+		return VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM |
+		       VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
+	else
+		return VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
+}
diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.h b/drivers/gpu/drm/i915/soc/intel_gmch.h
index d0133eedc720..5ab2552ceb1a 100644
--- a/drivers/gpu/drm/i915/soc/intel_gmch.h
+++ b/drivers/gpu/drm/i915/soc/intel_gmch.h
@@ -7,6 +7,7 @@
 #define __INTEL_GMCH_H__
 
 #include <linux/types.h>
+#include <linux/pci.h>
 
 struct drm_i915_private;
 
@@ -14,5 +15,6 @@ int intel_gmch_bridge_setup(struct drm_i915_private *i915);
 void intel_gmch_bar_setup(struct drm_i915_private *i915);
 void intel_gmch_bar_teardown(struct drm_i915_private *i915);
 int intel_gmch_vga_set_state(struct drm_i915_private *i915, bool enable_decode);
+unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_decode);
 
 #endif /* __INTEL_GMCH_H__ */
-- 
2.42.0

