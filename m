Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3B9B8AFBC
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 20:50:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7DE610EA6F;
	Fri, 19 Sep 2025 18:50:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PVClkPNw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F144210EA72
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Sep 2025 18:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758307833; x=1789843833;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MJWe2SWngtLKNyXii80D1ueatiaQntMirP2yNolprDI=;
 b=PVClkPNwrOx77PJWTt+iK6GHTb0S2wbiMV2Zljf638CU/XiKvgmu6s0s
 A2BxNJ5AzCvLwGIZAoQ6wj7j4HZULZm7dw0vpgPBK90DVYHq9y5uhxl5n
 NmDzlnhNG5TI9b5v/yLEFaZG7eAUW/J9VUEqzUhwvWePGhvkhRcRCOt8r
 kA4VPM5Rqy2lHovhi+zvYiQsoVsqrmyuA3u2HvRn/m1mAZg4wu/eMAFuC
 vqJpGi++7+Rx76/5fT5KUMaxEqy6RxzL8bJEwg6zajQJlocf6GKxFJoYP
 qx21JSXYWJSOO1IYNEyY9Gfjujyyih+sQgpAfQ7Uo9WFH7BduCxqy2IH0 Q==;
X-CSE-ConnectionGUID: Ae9uJZkOQjuIhdA/iROM+A==
X-CSE-MsgGUID: aRA3hsG6TX2Js3/STfUvAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="86097350"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="86097350"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 11:50:33 -0700
X-CSE-ConnectionGUID: AvRrsGGiRCGfB4/jNOwDqg==
X-CSE-MsgGUID: 8WcssribTBeuPEp6ZrACgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="175152940"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 11:50:32 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 3/6] drm/i915/pm: Move the hibernate+D3 quirk stuff into
 noirq() pm hooks
Date: Fri, 19 Sep 2025 21:50:12 +0300
Message-ID: <20250919185015.14561-4-ville.syrjala@linux.intel.com>
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
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 76 ++++++++++++++++++++----------
 1 file changed, 51 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 66f2acacd516..327e5fe7dfff 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1132,6 +1132,21 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 
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
@@ -1152,13 +1167,6 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
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
@@ -1177,7 +1185,15 @@ int i915_driver_suspend_switcheroo(struct drm_i915_private *i915,
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
@@ -1283,23 +1299,6 @@ static int i915_drm_resume_early(struct drm_device *dev)
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
@@ -1337,11 +1336,16 @@ static int i915_drm_resume_early(struct drm_device *dev)
 
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
@@ -1398,6 +1402,16 @@ static int i915_pm_suspend_late(struct device *kdev)
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
@@ -1408,6 +1422,16 @@ static int i915_pm_poweroff_late(struct device *kdev)
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
@@ -1673,6 +1697,7 @@ const struct dev_pm_ops i915_pm_ops = {
 	.prepare = i915_pm_prepare,
 	.suspend = i915_pm_suspend,
 	.suspend_late = i915_pm_suspend_late,
+	.suspend_noirq = i915_pm_suspend_noirq,
 	.resume_early = i915_pm_resume_early,
 	.resume = i915_pm_resume,
 	.complete = i915_pm_complete,
@@ -1698,6 +1723,7 @@ const struct dev_pm_ops i915_pm_ops = {
 	.thaw = i915_pm_thaw,
 	.poweroff = i915_pm_suspend,
 	.poweroff_late = i915_pm_poweroff_late,
+	.poweroff_noirq = i915_pm_poweroff_noirq,
 	.restore_early = i915_pm_restore_early,
 	.restore = i915_pm_restore,
 
-- 
2.49.1

