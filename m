Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B9758949D
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 01:04:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDF372BFB1;
	Wed,  3 Aug 2022 23:03:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E21392BA19
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Aug 2022 23:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659567806; x=1691103806;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YTRZDzL/OTyoKldOwu2AcV4LAiGrt6uFNVb2Gju6ijQ=;
 b=glBxE5CRC3wPGjCKgBIpgqNH8RgwS5Rs2gDOMa0DKm9fsXv8Yu75qFVv
 ECz2NUbAiPLcPL1gp/2YK2TexN4N8XhfDOMkWKRY04KYahf2eU2N0Dk4v
 W0mHkVbGylSss5+oSGw5ELGKoPlOceIr/gQQPJHRHA8M1vU/QEuu7DhJ3
 o/H99sfNKCugAWeLnIGxAV2ef6VL1m12zkf2rHZaK6YHoZF08p+iYem7L
 EUry8o38nLKajh49Y+2cp9y/LHY8vq59ednYfqBroR/IF1kDNLMZy1QwO
 7iBGbnC/R+eAXbnPwYX6zBKBlslfHR3X2Hi6OHo1yKOWJ/aMabcZj20bW A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="376095917"
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="376095917"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 16:03:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="603001769"
Received: from dut022-tglu.fm.intel.com ([10.105.19.23])
 by orsmga002.jf.intel.com with ESMTP; 03 Aug 2022 16:03:25 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: 
Date: Wed,  3 Aug 2022 23:03:24 +0000
Message-Id: <20220803230325.137593-1-stuart.summers@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Fix NPD in PMU during driver
 teardown
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In the driver teardown, we are unregistering the gt prior
to unregistering the PMU. This means there is a small window
of time in which the application can request metrics from the
PMU, some of which are calling into the uapi engines list,
while the engines are not available. In this case we can
see null pointer dereferences.

Fix this ordering in both the driver load and unload sequences.

v1: Actually address the driver load/unload ordering issue
v2: Remove the NULL checks since they shouldn't be necessary
    now with the proper ordering

Fixes: 42014f69bb235 ("drm/i915: Hook up GT power management")
Signed-off-by: Stuart Summers <stuart.summers@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index deb8a8b76965a..ee4dcb85d2060 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -717,7 +717,6 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 	struct drm_device *dev = &dev_priv->drm;
 
 	i915_gem_driver_register(dev_priv);
-	i915_pmu_register(dev_priv);
 
 	intel_vgpu_register(dev_priv);
 
@@ -731,11 +730,12 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 	i915_debugfs_register(dev_priv);
 	i915_setup_sysfs(dev_priv);
 
+	intel_gt_driver_register(to_gt(dev_priv));
+
 	/* Depends on sysfs having been initialized */
+	i915_pmu_register(dev_priv);
 	i915_perf_register(dev_priv);
 
-	intel_gt_driver_register(to_gt(dev_priv));
-
 	intel_display_driver_register(dev_priv);
 
 	intel_power_domains_enable(dev_priv);
@@ -762,11 +762,12 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 
 	intel_display_driver_unregister(dev_priv);
 
-	intel_gt_driver_unregister(to_gt(dev_priv));
-
 	i915_perf_unregister(dev_priv);
+	/* GT should be available until PMU is gone */
 	i915_pmu_unregister(dev_priv);
 
+	intel_gt_driver_unregister(to_gt(dev_priv));
+
 	i915_teardown_sysfs(dev_priv);
 	drm_dev_unplug(&dev_priv->drm);
 
-- 
2.25.1

