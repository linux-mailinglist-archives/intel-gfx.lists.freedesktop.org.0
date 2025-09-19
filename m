Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 367CDB8AFD2
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 20:50:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B43EE10EA72;
	Fri, 19 Sep 2025 18:50:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H59vKcnL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F65410EA72
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Sep 2025 18:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758307847; x=1789843847;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=obMrj9MEN30/K2CXFQSDm5yhVNpjFW/hQO594OgzXYQ=;
 b=H59vKcnLS1OgPkM7uhBcoxDCjUAbef5jmv0Q6UETo01sDNEIJQ02GT28
 IU/0GXouEijy6nlxN+8qMDTTjg615S4r5iD27Gv52Eqcqd4ew94vRU5BN
 0eMGuP09XkgLf46aJ9oOcxb9JyA+cx7r3SfObFngzqhWdsvyGcvygV2jp
 iubbQpBW5lgW4wM5E17GMdulzZeEehGPRx79/mV9mQgSi6F9bIWSrFZUh
 Wp0bbeAs9uuyETy1zu2VAyqzFGWSJkCpsWOJKUaWqCgycDo3+vVSkBRzU
 Q/+RAmLf1SiB5axQDwOUxVrlejo5bVHdNy57M4DBahSlZ7niUlee6UlBV g==;
X-CSE-ConnectionGUID: kmvVpgoqQsuRDfmAmdj5lw==
X-CSE-MsgGUID: jvdPS3tLSnKXxf1I7pUOrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="60551409"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="60551409"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 11:50:47 -0700
X-CSE-ConnectionGUID: jvxAJu4/R+Kbl9BBcT2JMQ==
X-CSE-MsgGUID: 8SLzOClzS2GTVvKONKlnzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="180310340"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 11:50:44 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Karthik Poosa <karthik.poosa@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 6/6] drm/i915/pm: Drop redundant pci stuff from
 suspend/resume paths
Date: Fri, 19 Sep 2025 21:50:15 +0300
Message-ID: <20250919185015.14561-7-ville.syrjala@linux.intel.com>
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

I don't think there should be any need for us to call any of
pci_enable_device(), pci_disable_device() or pci_set_master()
from the suspend/resume paths. The config space save/restore should
take care of all of this.

Cc: Karthik Poosa <karthik.poosa@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 31 ------------------------------
 1 file changed, 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 0cb874e64971..95165e45de74 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1100,7 +1100,6 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_display *display = dev_priv->display;
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	struct intel_gt *gt;
 	int ret, i;
@@ -1121,21 +1120,10 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 	if (ret) {
 		drm_err(&dev_priv->drm, "Suspend complete failed: %d\n", ret);
 		intel_display_power_resume_early(display);
-
-		goto fail;
 	}
 
 	enable_rpm_wakeref_asserts(rpm);
 
-	if (!dev_priv->uncore.user_forcewake_count)
-		intel_runtime_pm_driver_release(rpm);
-
-	pci_disable_device(pdev);
-
-	return 0;
-
-fail:
-	enable_rpm_wakeref_asserts(rpm);
 	if (!dev_priv->uncore.user_forcewake_count)
 		intel_runtime_pm_driver_release(rpm);
 
@@ -1284,7 +1272,6 @@ static int i915_drm_resume_early(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_display *display = dev_priv->display;
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	struct intel_gt *gt;
 	int ret, i;
 
@@ -1298,24 +1285,6 @@ static int i915_drm_resume_early(struct drm_device *dev)
 	 * similar so that power domains can be employed.
 	 */
 
-	/*
-	 * Note that pci_enable_device() first enables any parent bridge
-	 * device and only then sets the power state for this device. The
-	 * bridge enabling is a nop though, since bridge devices are resumed
-	 * first. The order of enabling power and enabling the device is
-	 * imposed by the PCI core as described above, so here we preserve the
-	 * same order for the freeze/thaw phases.
-	 *
-	 * TODO: eventually we should remove pci_disable_device() /
-	 * pci_enable_enable_device() from suspend/resume. Due to how they
-	 * depend on the device enable refcount we can't anyway depend on them
-	 * disabling/enabling the device.
-	 */
-	if (pci_enable_device(pdev))
-		return -EIO;
-
-	pci_set_master(pdev);
-
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	ret = vlv_resume_prepare(dev_priv, false);
-- 
2.49.1

