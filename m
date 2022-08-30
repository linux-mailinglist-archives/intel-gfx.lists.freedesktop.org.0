Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 363675A67BC
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 17:54:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E23F110E116;
	Tue, 30 Aug 2022 15:53:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C352610E173
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 15:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661874835; x=1693410835;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZFWoWZslc2XokpBPbePCF8gb6k/hy++uz8y4Ca+IFpE=;
 b=Vvad6Z24oWOZdKxxoDnz7ogQMtIUnGadYR+C+SBhSqdI3VVYyEDMmwzB
 cZVpIpMgS29WtmmUS0g+NtNn14Czk7fDagJ29NihFYr9mLO4J1T+QgQ33
 a+KLU02pWsgOBtrPd7QubQ2C9hkrZgY/M0ftm16/Urszj14P7eLWQNgx9
 fVfb3JtPxUmD2swU77rZshqOFmtz6L2FeqzovRdR2DCVLFTCcoK+wxVeP
 juJBNSECkzccRYHOCn8P99fQm5g4tA8QdkuFjzUAcwjLIOHDbgxZqZA36
 fg/U0NZ7eTl6khS2AL+YAuvLOAGuqD8jJucWnsWZXk9gdHa8eqtSzsDFk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="356928824"
X-IronPort-AV: E=Sophos;i="5.93,275,1654585200"; d="scan'208";a="356928824"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 08:53:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,275,1654585200"; d="scan'208";a="680083526"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga004.fm.intel.com with ESMTP; 30 Aug 2022 08:53:53 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Aug 2022 14:21:58 +0530
Message-Id: <20220830085158.577157-1-mitulkumar.ajitkumar.golani@intel.com>
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
and doing unregister process.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 1332c70370a6..be0d51c04cc5 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -953,7 +953,9 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 void i915_driver_remove(struct drm_i915_private *i915)
 {
-	disable_rpm_wakeref_asserts(&i915->runtime_pm);
+	intel_wakeref_t wakeref;
+
+	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
 	i915_driver_unregister(i915);
 
@@ -977,18 +979,19 @@ void i915_driver_remove(struct drm_i915_private *i915)
 
 	i915_driver_hw_remove(i915);
 
-	enable_rpm_wakeref_asserts(&i915->runtime_pm);
+	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 }
 
 static void i915_driver_release(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
+	intel_wakeref_t wakeref;
 
 	if (!dev_priv->do_release)
 		return;
 
-	disable_rpm_wakeref_asserts(rpm);
+	wakeref = intel_runtime_pm_get(rpm);
 
 	i915_gem_driver_release(dev_priv);
 
@@ -999,7 +1002,8 @@ static void i915_driver_release(struct drm_device *dev)
 
 	i915_driver_mmio_release(dev_priv);
 
-	enable_rpm_wakeref_asserts(rpm);
+	intel_runtime_pm_put(rpm, wakeref);
+
 	intel_runtime_pm_driver_release(rpm);
 
 	i915_driver_late_release(dev_priv);
-- 
2.25.1

