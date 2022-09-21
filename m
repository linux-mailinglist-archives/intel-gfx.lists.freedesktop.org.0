Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA1E5C056B
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 19:43:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40BCE10E1CA;
	Wed, 21 Sep 2022 17:43:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93D8010E364
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 17:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663782198; x=1695318198;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bAcz2IxWNeTSEn4OYqfDJwBxxByUN4ILEORtNvdgOSQ=;
 b=cS6DMfgRbNCQBI9MQpt3Kt6tlv1q77j60AG5TcNIRqx/j/mf7M9iyM8M
 j1JMhHZh9xjFjnvnOU96MYjUh8vtbQKNVZPe5JZ1iZFwQd3uAwUgct8gP
 H5qpSKfCS3xPRwoJnX2jZVBbkuAE7EhawgGoewUqCIYCi4gWL/TqkRKJt
 ZKRnkY1yi3bK2sgjEXEAKKgO1lo8CVpxiFD2vm8TA0GFSjusHbjy2P2qi
 ZJfFeyAiLmS7gYRfVxwbAtJoegVxJRVdcU/xXaSoomhNqEU+wYTq938x0
 fy2PZAd68VbFCYRlBL40gJrrARbHUPbwHSAfdfFhI21epYZyRrqU1GnI2 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="326390245"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="326390245"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 10:39:17 -0700
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="794769608"
Received: from kkpalani-mobl1.amr.corp.intel.com (HELO rdvivi-mobl4.intel.com)
 ([10.255.32.108])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 10:39:16 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Sep 2022 13:39:14 -0400
Message-Id: <20220921173914.1606359-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Allow D3 when we are not actively
 managing a known PCI device.
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
Cc: Daniel J Blueman <daniel@quora.org>, stable@vger.kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The force_probe protection actively avoids the probe of i915 to
manage a device that is currently under development. It is a nice
protection for future users when getting a new platform but using
some older kernel.

However, when we avoid the probe we don't take back the registration
of the device. We cannot give up the registration anyway since we can
have multiple devices present. For instance an integrated and a discrete
one.

When this scenario occurs, the user will not be able to change any
of the runtime pm configuration of the unmanaged device. So, it will
be blocked in D0 state wasting power. This is specially bad in the
case where we have a discrete platform attached, but the user is
able to fully use the integrated one for everything else.

So, let's put the protected and unmanaged device in D3. So we can
save some power.

Reported-by: Daniel J Blueman <daniel@quora.org>
Cc: stable@vger.kernel.org
Cc: Daniel J Blueman <daniel@quora.org>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 77e7df21f539..fc3e7c69af2a 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -25,6 +25,7 @@
 #include <drm/drm_color_mgmt.h>
 #include <drm/drm_drv.h>
 #include <drm/i915_pciids.h>
+#include <linux/pm_runtime.h>
 
 #include "gt/intel_gt_regs.h"
 #include "gt/intel_sa_media.h"
@@ -1304,6 +1305,7 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 {
 	struct intel_device_info *intel_info =
 		(struct intel_device_info *) ent->driver_data;
+	struct device *kdev = &pdev->dev;
 	int err;
 
 	if (intel_info->require_force_probe &&
@@ -1314,6 +1316,12 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 			 "module parameter or CONFIG_DRM_I915_FORCE_PROBE=%04x configuration option,\n"
 			 "or (recommended) check for kernel updates.\n",
 			 pdev->device, pdev->device, pdev->device);
+
+		/* Let's not waste power if we are not managing the device */
+		pm_runtime_use_autosuspend(kdev);
+		pm_runtime_allow(kdev);
+		pm_runtime_put_autosuspend(kdev);
+
 		return -ENODEV;
 	}
 
-- 
2.37.2

