Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA9F98614B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 16:45:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5CC510EA1F;
	Wed, 25 Sep 2024 14:45:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jth3oiSY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D92F10EA25
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 14:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727275537; x=1758811537;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1DnMFU1e1/0MLz85xEqNSfIRbU8roszrXvNJtr1XYtg=;
 b=jth3oiSYVu9F3NAx9EUJHwnyGIteLPQWlirnK6j+olmWAsDex585sT/+
 TNVrCjMpc4mnjJ9XptuIBD849B0GWACzdiNBOCgj1YLFF6Tbvtijde0g8
 oV5IBh9oXGYVXuET1hvAhWiynEVMXj8gF0GgvMNznXTjwlXsr1+vQdBJU
 eg7O+90CGoEiWecWZNUhTi0fse2+u6F+oUYggwc7ePOfkJvtcSKRsUmmB
 KVA/+N/kkxPW5VAtes4bglRMx8MjyuPUbWwhivJmeFPORm/bZVCIEhruC
 u60d2kM+TZnxsgPqyRG+lxgdb0IepNFvUXLLF3SBgfkLXKZ27MnFruEKt A==;
X-CSE-ConnectionGUID: zgh4gYSCRJu6DrWOesmP4w==
X-CSE-MsgGUID: Swf+VwPtRr2AG1waHF4wjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="26470596"
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="26470596"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 07:45:37 -0700
X-CSE-ConnectionGUID: QXCbu4C2R+uW/mhhhAbaCA==
X-CSE-MsgGUID: dhzemH1wRPGMPHN23LGYZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="71941533"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 25 Sep 2024 07:45:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Sep 2024 17:45:33 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-pci@vger.kernel.org
Subject: [PATCH 2/6] drm/i915/pm: Hoist pci_save_state()+pci_set_power_state()
 to the end of pm _late() hook
Date: Wed, 25 Sep 2024 17:45:22 +0300
Message-ID: <20240925144526.2482-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240925144526.2482-1-ville.syrjala@linux.intel.com>
References: <20240925144526.2482-1-ville.syrjala@linux.intel.com>
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

driver/pci does the pci_save_state()+pci_set_power_state() from the
_noirq() pm hooks. Move our manual calls (needed for the hibernate+D3
workaround with buggy BIOSes) towards that same point. We currently
have no _noirq() hooks, so end of _late() hooks is the best we can
do right now.

Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: linux-pci@vger.kernel.org
Cc: intel-gfx@lists.freedesktop.org
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 6dc0104a3e36..9d557ff8adf5 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1015,7 +1015,6 @@ static int i915_drm_suspend(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_display *display = &dev_priv->display;
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	pci_power_t opregion_target_state;
 
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
@@ -1029,8 +1028,6 @@ static int i915_drm_suspend(struct drm_device *dev)
 		intel_display_driver_disable_user_access(dev_priv);
 	}
 
-	pci_save_state(pdev);
-
 	intel_display_driver_suspend(dev_priv);
 
 	intel_dp_mst_suspend(dev_priv);
@@ -1090,10 +1087,16 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 		drm_err(&dev_priv->drm, "Suspend complete failed: %d\n", ret);
 		intel_power_domains_resume(dev_priv);
 
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
@@ -1105,11 +1108,17 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 	 * Lenovo Thinkpad X301, X61s, X60, T60, X41
 	 * Fujitsu FSC S7110
 	 * Acer Aspire 1830T
+	 *
+	 * pci_save_state() is needed to prevent driver/pci from
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
2.44.2

