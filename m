Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57EDC5A5241
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 18:53:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E041D10E26C;
	Mon, 29 Aug 2022 16:53:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E0F310E26C
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Aug 2022 16:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661791993; x=1693327993;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fdHIpDtoPMeDYlhTpYFIH3ZoY4yvTrTm21obbjrs+Ig=;
 b=U8BW49+EQNlQXxrZonu4UpRtbKY81ZCMVrZmkVTK8bS8G+UB5UaVx+RX
 JPd3VfdPKYQIoNpADqjqPAsX+NOafOQVm4XFvGgVyY0BLYaobIMKRvBGE
 rYLVMeczlUYSnhfvKM+Ua5BlrGdYQiee+G8Bmc4dqMPFn2j4vVjQdRiar
 bHBNA0CEwTf5nkry1ZadlGhX3vf6EpRIWI07w4Go1GaSelNAQNSLEOtjD
 tOB3os3YD3BzzkuT9fAdv/HiLFzUj+ZUbAtNfHduRtQAJiDfxinh7tvUj
 YViSV3mfJFaSbEsyEFYiAyefQUkCBG01pahHIJyQGTrXnATZ2FBq+x43b g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="381225354"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="381225354"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 08:32:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="787114334"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orsmga005.jf.intel.com with ESMTP; 29 Aug 2022 08:32:44 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Aug 2022 14:01:24 +0530
Message-Id: <20220829083124.368196-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Fix warning callstack for
 imbalance wakeref
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

While executing i915_selftest, wakeref imbalance warning is seen
with i915_selftest failure.

Currently when Driver is suspended, while doing unregister
it is taking wakeref without resuming the device.
This patch is resuming the device, if driver is already suspended
and doing unregister process. It will check the suspend state and
if driver is not resumed before taking wakeref then resume before
it.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 1332c70370a6..281bf6cd5e4c 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -953,7 +953,11 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 void i915_driver_remove(struct drm_i915_private *i915)
 {
-	disable_rpm_wakeref_asserts(&i915->runtime_pm);
+	intel_wakeref_t wakeref = 0;
+	/*
+	 * Resuming Device if already suspended to complete driver unregistration
+	 */
+	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
 	i915_driver_unregister(i915);
 
@@ -977,18 +981,20 @@ void i915_driver_remove(struct drm_i915_private *i915)
 
 	i915_driver_hw_remove(i915);
 
-	enable_rpm_wakeref_asserts(&i915->runtime_pm);
+	if (wakeref)
+		intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 }
 
 static void i915_driver_release(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
+	intel_wakeref_t wakeref = 0;
 
 	if (!dev_priv->do_release)
 		return;
 
-	disable_rpm_wakeref_asserts(rpm);
+	wakeref = intel_runtime_pm_get(rpm);
 
 	i915_gem_driver_release(dev_priv);
 
@@ -999,7 +1005,9 @@ static void i915_driver_release(struct drm_device *dev)
 
 	i915_driver_mmio_release(dev_priv);
 
-	enable_rpm_wakeref_asserts(rpm);
+	if (wakeref)
+		intel_runtime_pm_put(rpm, wakeref);
+
 	intel_runtime_pm_driver_release(rpm);
 
 	i915_driver_late_release(dev_priv);
-- 
2.25.1

