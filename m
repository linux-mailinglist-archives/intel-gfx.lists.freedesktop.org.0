Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB13A5D010
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 20:56:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 937D710E658;
	Tue, 11 Mar 2025 19:56:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xyf8NN/F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE33810E658
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Mar 2025 19:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741722993; x=1773258993;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WVxReDaIh2Ofs7OIhU0ypvXOBMDjIR8LI0is+TMiaCI=;
 b=Xyf8NN/FiP7MszqBantvYNkT3r5yiwqXZDQbl4gzPIRifTkkPU1WFqXX
 2wIexZP7CxWHrEcLUOIoiLBltNAOuJRcBIis1EguCh68WAOlPQ47LsKfK
 Zu4HmBHljKusbQKaB2TdS15kPaj9wmHnaWPfdOfAWUGkpbqqMpPJs8cgT
 /7R8RyFQfnAnSAf4+7PfllRo2YkeoUoJcANzuI1PFAnkSgeSTpwjPIRL7
 D1Vl9FEpjpdlaQ13m4lyH0PxMaGyApNYJKBY2m62BzfzteW2lbYySwE0j
 Ec+MI3Oe05RZzN4t+Em3nGIl9vOuO5Rcvd8cF5nU0Iyj76LMgnpi3A2c/ A==;
X-CSE-ConnectionGUID: XHj6wG0jT4CpH7osCP9zNw==
X-CSE-MsgGUID: x7pq1warS4amkHMtFPXMRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="60183855"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="60183855"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 12:56:33 -0700
X-CSE-ConnectionGUID: YEwnLSCTSY2DwGfYs6Dugw==
X-CSE-MsgGUID: gHC4L+YvTzSA4IHq6q9JkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="125617210"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 11 Mar 2025 12:56:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Mar 2025 21:56:30 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH v2 2/6] drm/i915/pm: Hoist
 pci_save_state()+pci_set_power_state() to the end of pm _late() hook
Date: Tue, 11 Mar 2025 21:56:20 +0200
Message-ID: <20250311195624.22420-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
References: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index be232caef9df..e06f2956382c 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1045,7 +1045,6 @@ static int i915_drm_suspend(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_display *display = &dev_priv->display;
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	pci_power_t opregion_target_state;
 
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
@@ -1059,8 +1058,6 @@ static int i915_drm_suspend(struct drm_device *dev)
 		intel_display_driver_disable_user_access(display);
 	}
 
-	pci_save_state(pdev);
-
 	intel_display_driver_suspend(display);
 
 	intel_irq_suspend(dev_priv);
@@ -1117,10 +1114,16 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
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
@@ -1132,11 +1135,17 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
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
2.45.3

