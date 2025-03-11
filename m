Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 565BBA5D014
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 20:56:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E37A410E685;
	Tue, 11 Mar 2025 19:56:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eviU4Yx1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C818910E68A
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Mar 2025 19:56:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741723005; x=1773259005;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=c4+uLCSLc4uQGMCvSJcOIGDNIl72PD2sr6Io9Q9nt1U=;
 b=eviU4Yx1117cLqTdBX14GNCw8Cw/oG9dzZHTNwZqHG+CxeFvM4BkE0Nr
 NNWl5cXlwrf5YCsQ9l6SubERQ38g5HIaSJUcUgwTFN9h9SIdrje9pHmYL
 qCzppFu9Hv4TUVCpf7RutG0nJWCKKQxVKgHUoHlms5hWX7X1j01He3jkV
 09s6r0IyQVpQK0vxlV1+6lwk+ZUxeLgsroCMEHCeEigKH2E0n8KBbp8FJ
 aQlQ5b31+YNdn1ZKd2Ce+tcA9nQikA7/ko/JLl0WMYWP5OY3DGKOKUwil
 VgFqilLm3DJk6LISeStUbv4ljnm1eNPgX2Mjrv/DC0llDU6Lx+UPjSoCf w==;
X-CSE-ConnectionGUID: mISIaLs2SR2Wxq0c7qSxTg==
X-CSE-MsgGUID: KlEzTmpJRRKzP80dB32iLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="60183863"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="60183863"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 12:56:45 -0700
X-CSE-ConnectionGUID: tsRvBLvlQWehXQ0o6AUjmA==
X-CSE-MsgGUID: jXJuk7/TQVWuMbUmXauR1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="125617238"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 11 Mar 2025 12:56:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Mar 2025 21:56:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 6/6] drm/i915/pm: Drop redundant pci stuff from
 suspend/resume paths
Date: Tue, 11 Mar 2025 21:56:24 +0200
Message-ID: <20250311195624.22420-7-ville.syrjala@linux.intel.com>
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

I don't think there should be any need for us to call any of
pci_enable_device(), pci_disable_device() or pci_set_master()
from the suspend/resume paths. The config space save/restore should
take care of all of this.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 31 ------------------------------
 1 file changed, 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 503f1b6b694f..d3d1b2d082dd 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1092,7 +1092,6 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_display *display = &dev_priv->display;
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	struct intel_gt *gt;
 	int ret, i;
@@ -1113,21 +1112,10 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
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
 
@@ -1278,7 +1266,6 @@ static int i915_drm_resume_early(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_display *display = &dev_priv->display;
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	struct intel_gt *gt;
 	int ret, i;
 
@@ -1292,24 +1279,6 @@ static int i915_drm_resume_early(struct drm_device *dev)
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
2.45.3

