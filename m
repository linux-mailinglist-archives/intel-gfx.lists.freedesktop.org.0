Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C442AB8AFB6
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 20:50:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CD4610E255;
	Fri, 19 Sep 2025 18:50:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fUF/2QED";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7743210E255
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Sep 2025 18:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758307829; x=1789843829;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r7Ke7+lQanVt9cczkBi2fEtgWBao1+m2S6PlF7TgnjM=;
 b=fUF/2QEDohwdu2VEE22ZI+4eYMrpezDUebUVt6xSPVZ5FP3vxNjZ56rT
 Ecri3UCgZMKDT36BNwexStqZQ8qtFVGhEW4zZVnLybP2hQrbvzusAU73I
 2S9w2/bo2o3Kvq2fUlFalcra1fB58b8KPiwjv2N2LbDek2W70NcL6qDnN
 p+eGd3JpQNZQ7QZ8esIspGPXYqdc+gbXN9ePmCUb3gmuFpIr788RRUHYD
 A/3+4wSyawXba11HYuTWCsNQrh1VX5w4pNdPZSHh9HVNPbNeSqLcFFZZ3
 /Cp9aKSQfoIDRIMAoegGyYUIhzfbuZ0uJC5eTNQNCcVobjrrgU91/rLiW A==;
X-CSE-ConnectionGUID: 4JLnCNl/RVuQEGWQ8yhCTQ==
X-CSE-MsgGUID: INLEnwb6QQ+yZ0Q4CJKO7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="86097343"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="86097343"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 11:50:28 -0700
X-CSE-ConnectionGUID: xr5xxtKVRMarafAyR40n3g==
X-CSE-MsgGUID: 7ajPxHMpQHG5CU1fi2CBtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="175152928"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 11:50:27 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 2/6] drm/i915/pm: Hoist
 pci_save_state()+pci_set_power_state() to the end of pm _late() hook
Date: Fri, 19 Sep 2025 21:50:11 +0300
Message-ID: <20250919185015.14561-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250919185015.14561-1-ville.syrjala@linux.intel.com>
References: <20250919185015.14561-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

drivers/pci does the pci_save_state()+pci_set_power_state() from
the _noirq() pm hooks. Move our manual calls (needed for the
hibernate vs. D3 workaround with buggy BIOSes) towards that same
point. We currently have no _noirq() hooks, so end of _late()
hooks is the best we can do right now.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 76bda4376fe0..66f2acacd516 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1053,7 +1053,6 @@ static int i915_drm_suspend(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_display *display = dev_priv->display;
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	pci_power_t opregion_target_state;
 
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
@@ -1067,8 +1066,6 @@ static int i915_drm_suspend(struct drm_device *dev)
 		intel_display_driver_disable_user_access(display);
 	}
 
-	pci_save_state(pdev);
-
 	intel_display_driver_suspend(display);
 
 	intel_irq_suspend(dev_priv);
@@ -1125,10 +1122,16 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 		drm_err(&dev_priv->drm, "Suspend complete failed: %d\n", ret);
 		intel_display_power_resume_early(display);
 
-		goto out;
+		goto fail;
 	}
 
+	enable_rpm_wakeref_asserts(rpm);
+
+	if (!dev_priv->uncore.user_forcewake_count)
+		intel_runtime_pm_driver_release(rpm);
+
 	pci_disable_device(pdev);
+
 	/*
 	 * During hibernation on some platforms the BIOS may try to access
 	 * the device even though it's already in D3 and hang the machine. So
@@ -1140,11 +1143,17 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 	 * Lenovo Thinkpad X301, X61s, X60, T60, X41
 	 * Fujitsu FSC S7110
 	 * Acer Aspire 1830T
+	 *
+	 * pci_save_state() prevents drivers/pci from
+	 * automagically putting the device into D3.
 	 */
+	pci_save_state(pdev);
 	if (!(hibernation && GRAPHICS_VER(dev_priv) < 6))
 		pci_set_power_state(pdev, PCI_D3hot);
 
-out:
+	return 0;
+
+fail:
 	enable_rpm_wakeref_asserts(rpm);
 	if (!dev_priv->uncore.user_forcewake_count)
 		intel_runtime_pm_driver_release(rpm);
-- 
2.49.1

