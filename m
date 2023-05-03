Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CC66F552C
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 11:48:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3096610E030;
	Wed,  3 May 2023 09:48:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C27510E030
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 09:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683107322; x=1714643322;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/2ddPtYIDYy2sFiKu0WTOjE65TYhzvTimEhltgzBhpI=;
 b=PnCUXBzU2Mdmm9hUIRMcqWUQ213qrG7jlGuaP40cFfja4Y8ufbO8Ftzp
 1e6aTfRP3hvOftSfQ0wQlklaVJ3geV0weGOTFqz/KxSYEeMScg46IvPSn
 9m4Z/9Dg1Lw/BmqXXteFjGbIaZswhlcKxwNymPWqVB9buOlci2dD+3WWI
 xu78EtE8spIp0yx22OMjzKBAUN1h/s9l0Hfc8Lr/Lg+/W8lvE8HiNMxuK
 yiZ219B+GjO2dJo+UAMcjB1tkJJ7pQp0RjdLYP9bJ8krsqSFCTvG9/n+v
 0oIfmQoU29MuqCYMucvgIwtvSePkBUDmBhkidE0F5hglTw+lIlGqDTRT2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="434925848"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="434925848"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 02:48:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="729283549"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="729283549"
Received: from ebrosekx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.204])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 02:48:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 May 2023 12:48:26 +0300
Message-Id: <20230503094826.1467208-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: taint kernel when force probing
 unsupported devices
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
Cc: jani.nikula@intel.com, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Dave Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For development and testing purposes, the i915.force_probe module
parameter and DRM_I915_FORCE_PROBE kconfig option allow probing of
devices that aren't supported by the driver.

The i915.force_probe module parameter is "unsafe" and setting it taints
the kernel. However, using the kconfig option does not.

Always taint the kernel when force probing a device that is not
supported.

Fixes: 7ef5ef5cdead ("drm/i915: add force_probe module parameter to replace alpha_support")
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Dave Airlie <airlied@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Kconfig    | 13 ++++++++-----
 drivers/gpu/drm/i915/i915_pci.c |  6 ++++++
 2 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 06a0ca157e89..12ba19da9bc3 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -58,14 +58,16 @@ config DRM_I915
 config DRM_I915_FORCE_PROBE
 	string "Force probe i915 for selected Intel hardware IDs"
 	depends on DRM_I915
+	depends on EXPERT
 	help
 	  This is the default value for the i915.force_probe module
 	  parameter. Using the module parameter overrides this option.
 
-	  Force probe the i915 for Intel graphics devices that are
-	  recognized but not properly supported by this kernel version. It is
-	  recommended to upgrade to a kernel version with proper support as soon
-	  as it is available.
+	  Force probe the i915 driver for Intel graphics devices that are
+	  recognized but not properly supported by this kernel version. Force
+	  probing an unsupported device taints the kernel. It is recommended to
+	  upgrade to a kernel version with proper support as soon as it is
+	  available.
 
 	  It can also be used to block the probe of recognized and fully
 	  supported devices.
@@ -75,7 +77,8 @@ config DRM_I915_FORCE_PROBE
 	  Use "<pci-id>[,<pci-id>,...]" to force probe the i915 for listed
 	  devices. For example, "4500" or "4500,4571".
 
-	  Use "*" to force probe the driver for all known devices.
+	  Use "*" to force probe the driver for all known devices. Not
+	  recommended.
 
 	  Use "!" right before the ID to block the probe of the device. For
 	  example, "4500,!4571" forces the probe of 4500 and blocks the probe of
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 5fcc9cfed671..c509ea4aa70f 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1346,6 +1346,12 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		return -ENODEV;
 	}
 
+	if (intel_info->require_force_probe) {
+		dev_info(&pdev->dev, "Force probing unsupported Device ID %04x, tainting kernel\n",
+			 pdev->device);
+		add_taint(TAINT_USER, LOCKDEP_STILL_OK);
+	}
+
 	/* Only bind to function 0 of the device. Early generations
 	 * used function 1 as a placeholder for multi-head. This causes
 	 * us confusion instead, especially on the systems where both
-- 
2.39.2

