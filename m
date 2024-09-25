Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0D198614D
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 16:45:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD75410EA26;
	Wed, 25 Sep 2024 14:45:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L1H3pcis";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E90D10EA27
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 14:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727275545; x=1758811545;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jEjvL3bG+WnOurUUShamWB9PWN9TcXUeq54y9HM+qDM=;
 b=L1H3pcisJh1MySGUYKZxTJqABZ3AfQYjlHpWSGtYjQGjdUriiHYCyscP
 Tpmdo2hANIJMy2S2n1c31JPn1WPqmq6bRhC6QtZ3sm0RRm2TtlXFry6Cd
 TI9N7vRhmIYzp6PYpsRi4QBoS4mke4ed14kQXmI7yvheQqtr1BSOdZky+
 Sx4lGGuVlyHp+ga3/ZCEid3WGVIyue3XUjzol86B2X721GAhQxG+rrAjK
 NLrhImjFeGir3CXZjOgFN3FY7yTlQnE6Ej95/A4IgSuigeYntVHhQB1Kh
 KxprX4elIm8tf+QvsqFdCZoW2ig2jVQhodbpI7/cbhP6J7fNrSUDIl5Ws g==;
X-CSE-ConnectionGUID: eh+QBOzSTAmEsjxYTMVPSg==
X-CSE-MsgGUID: zBvIUAI/Q/Oy/LrHQP59oQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="26470622"
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="26470622"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 07:45:44 -0700
X-CSE-ConnectionGUID: KZ/Huq1ASVmV+GcjNjhr2w==
X-CSE-MsgGUID: H5kvvAstQF2EyZos594L1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="71941595"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 25 Sep 2024 07:45:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Sep 2024 17:45:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-pci@vger.kernel.org
Subject: [PATCH 4/6] drm/i915/pm: Move the hibernate+D3 quirk stuff into
 noirq() pm hooks
Date: Wed, 25 Sep 2024 17:45:24 +0300
Message-ID: <20240925144526.2482-5-ville.syrjala@linux.intel.com>
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

If the driver doesn't call pci_save_state() driver/pci will
normally save+power manage the device from the _noirq() pm
hooks.

We can't let that happen as some old BIOSes fail to hibernate
when the device is in D3. However, we can get a bit closer to
the standard behaviour by doing our explicit pci_save_state()
and pci_set_power_state() stuff from driver provided _noirq()
hooks as well.

This results in a change of behaviur where we no longer go
into D3 at the end of .freeze_late(), so when it comes time
to .thaw() we'll already be in D0, and thus we can drop the
explicit pci_set_power_state(D0) call.

Presumable swictcheroo suspend will want to go into D3 so
call the _noirq() stuff from the switcheroo suspend hook,
and since we dropped the pci_set_power_state(D0) from
.resume_early() we'll need to add one back into the
swtcheroo resume hook.

Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: linux-pci@vger.kernel.org
Cc: intel-gfx@lists.freedesktop.org
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 76 ++++++++++++++++++++----------
 1 file changed, 51 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 1e5abf72dfc4..fe7c34045794 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1097,6 +1097,21 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 
 	pci_disable_device(pdev);
 
+	return 0;
+
+fail:
+	enable_rpm_wakeref_asserts(rpm);
+	if (!dev_priv->uncore.user_forcewake_count)
+		intel_runtime_pm_driver_release(rpm);
+
+	return ret;
+}
+
+static int i915_drm_suspend_noirq(struct drm_device *dev, bool hibernation)
+{
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
+
 	/*
 	 * During hibernation on some platforms the BIOS may try to access
 	 * the device even though it's already in D3 and hang the machine. So
@@ -1117,13 +1132,6 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 		pci_set_power_state(pdev, PCI_D3hot);
 
 	return 0;
-
-fail:
-	enable_rpm_wakeref_asserts(rpm);
-	if (!dev_priv->uncore.user_forcewake_count)
-		intel_runtime_pm_driver_release(rpm);
-
-	return ret;
 }
 
 int i915_driver_suspend_switcheroo(struct drm_i915_private *i915,
@@ -1142,7 +1150,15 @@ int i915_driver_suspend_switcheroo(struct drm_i915_private *i915,
 	if (error)
 		return error;
 
-	return i915_drm_suspend_late(&i915->drm, false);
+	error = i915_drm_suspend_late(&i915->drm, false);
+	if (error)
+		return error;
+
+	error = i915_drm_suspend_noirq(&i915->drm, false);
+	if (error)
+		return error;
+
+	return 0;
 }
 
 static int i915_drm_resume(struct drm_device *dev)
@@ -1246,23 +1262,6 @@ static int i915_drm_resume_early(struct drm_device *dev)
 	 * similar so that power domains can be employed.
 	 */
 
-	/*
-	 * Note that we need to set the power state explicitly, since we
-	 * powered off the device during freeze and the PCI core won't power
-	 * it back up for us during thaw. Powering off the device during
-	 * freeze is not a hard requirement though, and during the
-	 * suspend/resume phases the PCI core makes sure we get here with the
-	 * device powered on. So in case we change our freeze logic and keep
-	 * the device powered we can also remove the following set power state
-	 * call.
-	 */
-	ret = pci_set_power_state(pdev, PCI_D0);
-	if (ret) {
-		drm_err(&dev_priv->drm,
-			"failed to set PCI D0 power state (%d)\n", ret);
-		return ret;
-	}
-
 	/*
 	 * Note that pci_enable_device() first enables any parent bridge
 	 * device and only then sets the power state for this device. The
@@ -1302,11 +1301,16 @@ static int i915_drm_resume_early(struct drm_device *dev)
 
 int i915_driver_resume_switcheroo(struct drm_i915_private *i915)
 {
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	int ret;
 
 	if (i915->drm.switch_power_state == DRM_SWITCH_POWER_OFF)
 		return 0;
 
+	ret = pci_set_power_state(pdev, PCI_D0);
+	if (ret)
+		return ret;
+
 	ret = i915_drm_resume_early(&i915->drm);
 	if (ret)
 		return ret;
@@ -1363,6 +1367,16 @@ static int i915_pm_suspend_late(struct device *kdev)
 	return i915_drm_suspend_late(&i915->drm, false);
 }
 
+static int i915_pm_suspend_noirq(struct device *kdev)
+{
+	struct drm_i915_private *i915 = kdev_to_i915(kdev);
+
+	if (i915->drm.switch_power_state == DRM_SWITCH_POWER_OFF)
+		return 0;
+
+	return i915_drm_suspend_noirq(&i915->drm, false);
+}
+
 static int i915_pm_poweroff_late(struct device *kdev)
 {
 	struct drm_i915_private *i915 = kdev_to_i915(kdev);
@@ -1373,6 +1387,16 @@ static int i915_pm_poweroff_late(struct device *kdev)
 	return i915_drm_suspend_late(&i915->drm, true);
 }
 
+static int i915_pm_poweroff_noirq(struct device *kdev)
+{
+	struct drm_i915_private *i915 = kdev_to_i915(kdev);
+
+	if (i915->drm.switch_power_state == DRM_SWITCH_POWER_OFF)
+		return 0;
+
+	return i915_drm_suspend_noirq(&i915->drm, true);
+}
+
 static int i915_pm_resume_early(struct device *kdev)
 {
 	struct drm_i915_private *i915 = kdev_to_i915(kdev);
@@ -1638,6 +1662,7 @@ const struct dev_pm_ops i915_pm_ops = {
 	.prepare = i915_pm_prepare,
 	.suspend = i915_pm_suspend,
 	.suspend_late = i915_pm_suspend_late,
+	.suspend_noirq = i915_pm_suspend_noirq,
 	.resume_early = i915_pm_resume_early,
 	.resume = i915_pm_resume,
 	.complete = i915_pm_complete,
@@ -1663,6 +1688,7 @@ const struct dev_pm_ops i915_pm_ops = {
 	.thaw = i915_pm_thaw,
 	.poweroff = i915_pm_suspend,
 	.poweroff_late = i915_pm_poweroff_late,
+	.poweroff_noirq = i915_pm_poweroff_noirq,
 	.restore_early = i915_pm_restore_early,
 	.restore = i915_pm_restore,
 
-- 
2.44.2

