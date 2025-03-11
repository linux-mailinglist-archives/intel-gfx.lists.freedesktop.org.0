Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9DCA5D011
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 20:56:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76B5710E674;
	Tue, 11 Mar 2025 19:56:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JnqDQdVl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E517410E674
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Mar 2025 19:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741722997; x=1773258997;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LFYV2y/FsXxKCK5k99PiIl+3Wk5WTBGIw27Fqd8QZW0=;
 b=JnqDQdVlE0tdSy0NWeMy0zW+I2KBxiXPo2SuAam++L74UTT7o/oMdt8V
 yseo3EBiw2cNl6nER5W7fBNKRlAdlVhhzC8hY3rXBthjj7XQFzqQ8XWV6
 106NNXWvmVMcObl8KRrZJePvyLuDIInKBJRcErJx3zZ0MoxMFJQeu7tSf
 7bVpT64CcSiarZyRXuiLfoG18beh7G/bhBYICHuChMQ0Yoq1BkIts8bPq
 bXFdbMUkqkfM7RFvwjHUgEQ7xycOaCwcbmSmux2FhDercrBux323a4eDS
 MV489A5cFZ1OqM2LVxv3Xo3cfGkxcEACYITLiam5z1xwHVeZaVPgD4prN g==;
X-CSE-ConnectionGUID: LpwbNWsQRoWWrTkO/2We9w==
X-CSE-MsgGUID: /GxLJu9tSgOOwuDuq2uo8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="60183857"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="60183857"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 12:56:36 -0700
X-CSE-ConnectionGUID: W3qg50nERwaMMF6OMdpmsQ==
X-CSE-MsgGUID: JuYqYSj3S+qyCa7YYzsCQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="125617223"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 11 Mar 2025 12:56:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Mar 2025 21:56:33 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH v2 3/6] drm/i915/pm: Move the hibernate+D3 quirk stuff into
 noirq() pm hooks
Date: Tue, 11 Mar 2025 21:56:21 +0200
Message-ID: <20250311195624.22420-4-ville.syrjala@linux.intel.com>
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

If the driver doesn't call pci_save_state() drivers/pci will
normally save+power manage the device from the _noirq() pm hooks.

We can't let that happen as some old BIOSes fail to hibernate
when the device is in D3. However, we can get very close to
the standard behaviour by doing our explicit pci_save_state()
and pci_set_power_state() stuff from driver provided _noirq()
hooks.

This results in a change of behaviour where we no longer go
into D3 at the end of freeze_late, so when it comes time
to thaw() we'll already be in D0, and thus we can drop the
explicit pci_set_power_state(D0) call.

Presumably switcheroo suspend will want to go into D3 so
call the _noirq() stuff from the switcheroo suspend hook,
and since we dropped the pci_set_power_state(D0) from
resume_early() we'll need to add one back into the
switcheroo resume hook.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 76 ++++++++++++++++++++----------
 1 file changed, 51 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index e06f2956382c..995205e24ebf 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1124,6 +1124,21 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 
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
@@ -1144,13 +1159,6 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
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
@@ -1169,7 +1177,15 @@ int i915_driver_suspend_switcheroo(struct drm_i915_private *i915,
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
@@ -1277,23 +1293,6 @@ static int i915_drm_resume_early(struct drm_device *dev)
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
@@ -1331,11 +1330,16 @@ static int i915_drm_resume_early(struct drm_device *dev)
 
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
@@ -1392,6 +1396,16 @@ static int i915_pm_suspend_late(struct device *kdev)
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
@@ -1402,6 +1416,16 @@ static int i915_pm_poweroff_late(struct device *kdev)
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
@@ -1667,6 +1691,7 @@ const struct dev_pm_ops i915_pm_ops = {
 	.prepare = i915_pm_prepare,
 	.suspend = i915_pm_suspend,
 	.suspend_late = i915_pm_suspend_late,
+	.suspend_noirq = i915_pm_suspend_noirq,
 	.resume_early = i915_pm_resume_early,
 	.resume = i915_pm_resume,
 	.complete = i915_pm_complete,
@@ -1692,6 +1717,7 @@ const struct dev_pm_ops i915_pm_ops = {
 	.thaw = i915_pm_thaw,
 	.poweroff = i915_pm_suspend,
 	.poweroff_late = i915_pm_poweroff_late,
+	.poweroff_noirq = i915_pm_poweroff_noirq,
 	.restore_early = i915_pm_restore_early,
 	.restore = i915_pm_restore,
 
-- 
2.45.3

