Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B72916F6919
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 12:35:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43BAF10E42B;
	Thu,  4 May 2023 10:35:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A8CB10E42B
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 10:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683196525; x=1714732525;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8OmaiD9fhbhHLTFfqEGlZ8KVFaMX7nvho9EDurc7ExM=;
 b=CwWE7U84UTqFE2m2Nla6S5PsHiUvT6qqOiIBM3vwJYaFmetVvkiO8eo4
 xTOpxO0YWBncSHwbRwB9DRGK/sE0vDiZm/kSLbGvV0lUau+uTpJirw1zZ
 0ZqiEpbptS3xD751E5nAaSg8azBdhM63kLp3Ita85DkivWU5yn4AmYhKx
 0j330NCLrEFnX0tfMbXjbRgdDgFXgDvtSSbMqWHXJF7dfUYyTBAblgbuy
 eCI4Eas2P5Nmxnksfb+6tjPZrscdjU/+Kk93/bsczkBwOyGlJzkgBef/P
 qZdFxdIMVeymu9A5laZnW0UbL0xfh4GdWF+SMEf/d6fq8AyND8RbBmynp g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="350990382"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="350990382"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 03:35:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="691066567"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="691066567"
Received: from tferlin-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.61.212])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 03:35:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 May 2023 13:35:08 +0300
Message-Id: <20230504103508.1818540-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: taint kernel when force probing
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
Cc: jani.nikula@intel.com, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Dave Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For development and testing purposes, the i915.force_probe module
parameter and DRM_I915_FORCE_PROBE kconfig option allow probing of
devices that aren't supported by the driver.

The i915.force_probe module parameter is "unsafe" and setting it taints
the kernel. However, using the kconfig option does not.

Always taint the kernel when force probing a device that is not
supported.

v2: Drop "depends on EXPERT" to avoid build breakage (kernel test robot)

Fixes: 7ef5ef5cdead ("drm/i915: add force_probe module parameter to replace alpha_support")
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Dave Airlie <airlied@gmail.com>
Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Kconfig    | 12 +++++++-----
 drivers/gpu/drm/i915/i915_pci.c |  6 ++++++
 2 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 06a0ca157e89..e4f4d2e3fdfe 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -62,10 +62,11 @@ config DRM_I915_FORCE_PROBE
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
@@ -75,7 +76,8 @@ config DRM_I915_FORCE_PROBE
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

