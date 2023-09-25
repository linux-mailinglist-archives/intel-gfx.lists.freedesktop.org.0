Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6497AD063
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Sep 2023 08:43:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01AB410E1FE;
	Mon, 25 Sep 2023 06:43:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B33C10E1FC
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Sep 2023 06:43:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695624193; x=1727160193;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DzO8A6XW7BM9n636KX90FZ6n/7Yyepl7xKA/ccC/ueQ=;
 b=D++8WPTpL9dcISFkM9IehsGt7O9HR1kD6jTWmN8K5sNMzoJqzGFCO7Be
 CTr4Pf9RtNMALDxk5TJmu9UqOqzzArssw5eJdtB5KmRwyUCOqDouD8DD9
 +/glq8mOBzCMZGqugPQIVXDQEh3N32zrD4QLJmV4WN2GyUSFccVGA773e
 cufFZ3VGgjEPllJLmtYpCWatsQA1pn81fgz5OGagJVgsjeyq8IQ/mXl/m
 i6CvwgEW7tSa4DFGxlriRSWK2UoVbwfUmTrJmHsbX794mqQc/bJxaO/rc
 aPsZ0WdgPRZoGJFHGqFvstSqifZbtYetFT7OHKIzAOZJgCTia6dtD/iMh g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="366236458"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="366236458"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2023 23:43:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="838482290"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="838482290"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Sep 2023 23:43:11 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Sep 2023 12:20:14 +0530
Message-ID: <20230925065014.1252784-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v2] drm/i915/display: Add a wrapper function for vga
 decode setup
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
Intel Xe driver, while this will be utilized by i915.
Adding a wrapper function for VGA decode setup.

v2: Addressed Jani Nikula's review comments.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vga.c |  2 --
 drivers/gpu/drm/i915/soc/intel_gmch.c    | 14 ++++++++++++++
 drivers/gpu/drm/i915/soc/intel_gmch.h    |  2 ++
 3 files changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index 286a0bdd28c6..0f65ce115035 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -3,11 +3,9 @@
  * Copyright © 2019 Intel Corporation
  */
 
-#include <linux/pci.h>
 #include <linux/vgaarb.h>
 
 #include <video/vga.h>
-
 #include "soc/intel_gmch.h"
 
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.c b/drivers/gpu/drm/i915/soc/intel_gmch.c
index 49c7fb16e934..f32e9f78770a 100644
--- a/drivers/gpu/drm/i915/soc/intel_gmch.c
+++ b/drivers/gpu/drm/i915/soc/intel_gmch.c
@@ -5,6 +5,7 @@
 
 #include <linux/pci.h>
 #include <linux/pnp.h>
+#include <linux/vgaarb.h>
 
 #include <drm/drm_managed.h>
 #include <drm/i915_drm.h>
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
index d0133eedc720..23be2d113afd 100644
--- a/drivers/gpu/drm/i915/soc/intel_gmch.h
+++ b/drivers/gpu/drm/i915/soc/intel_gmch.h
@@ -8,11 +8,13 @@
 
 #include <linux/types.h>
 
+struct pci_dev;
 struct drm_i915_private;
 
 int intel_gmch_bridge_setup(struct drm_i915_private *i915);
 void intel_gmch_bar_setup(struct drm_i915_private *i915);
 void intel_gmch_bar_teardown(struct drm_i915_private *i915);
 int intel_gmch_vga_set_state(struct drm_i915_private *i915, bool enable_decode);
+unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_decode);
 
 #endif /* __INTEL_GMCH_H__ */
-- 
2.42.0

