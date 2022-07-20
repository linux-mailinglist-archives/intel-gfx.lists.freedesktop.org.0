Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E2457B752
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jul 2022 15:22:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AB4F18A6B4;
	Wed, 20 Jul 2022 13:21:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A186A18A1C4
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jul 2022 13:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658323308; x=1689859308;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tuS+cE6CnAS/+IXFHcjXWjJ4n4Unc+YEAWyDkFUJXu4=;
 b=dOaNqRv4IYcAKwGXW7+ZyHSAZPCYVQEui+mz17sg4smEP2JyzbvbaU8T
 25MMHsZra59EC64+iHcFejHMJCeAYjZIJ6tZnihPkwCUPa6sA8vSN3QGI
 3zCxzKwM3VopN8/J2OCVAGssqUtDMgkFYF7ugskz9XP82EUdfzFDrB9Rz
 phzlwa1Klh/U3hLUhsRbZybcP9b9iTrCGaT0U6tq33VXo7OTiuQCatUyQ
 uEMbAW1mImj/cm8JY8x5NXr31Roq42l+eTVB3z/RrxGPx3uMUmwgkKuUr
 NwfRstdv8Y3QLTpg4wtl6uNIsns6QTNRizcQsKXV03Abxz0MfTUUnW3ao Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="350765645"
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="350765645"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 06:21:47 -0700
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="656269526"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 06:21:45 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Jul 2022 18:51:37 +0530
Message-Id: <20220720132137.18312-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg1: Disable D3 for gfx's VSP
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When DG1 gfx pci endpoint's parent upstream bridge (VSP) enters
to D3, any direct memory read from lmem returns with 0xff.
DG1 requires i915 driven runtime resume in order to read properly
from lmem, DG1 is unable to wakeup from local memory reads.
This may breaks using mmap() with lmem object on DG1 as it
relies on mercy of i915 driven runtime resume.

Let's not break using mmap() for lmem object on DG1.
Using pci_d3cold_disable(i915) accordingly to disable D3 for
upstream bridge.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6331
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/intel_runtime_pm.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index 6ed5786bcd29..671009fd351a 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -559,6 +559,7 @@ void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
 	struct drm_i915_private *i915 = container_of(rpm,
 						     struct drm_i915_private,
 						     runtime_pm);
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	struct device *kdev = rpm->kdev;
 
 	/*
@@ -574,6 +575,9 @@ void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
 	pm_runtime_set_autosuspend_delay(kdev, 10000); /* 10s */
 	pm_runtime_mark_last_busy(kdev);
 
+	if (IS_DG1(i915))
+		pci_d3cold_disable(pdev);
+
 	/*
 	 * Take a permanent reference to disable the RPM functionality and drop
 	 * it only when unloading the driver. Use the low level get/put helpers,
@@ -607,12 +611,16 @@ void intel_runtime_pm_disable(struct intel_runtime_pm *rpm)
 	struct drm_i915_private *i915 = container_of(rpm,
 						     struct drm_i915_private,
 						     runtime_pm);
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	struct device *kdev = rpm->kdev;
 
 	/* Transfer rpm ownership back to core */
 	drm_WARN(&i915->drm, pm_runtime_get_sync(kdev) < 0,
 		 "Failed to pass rpm ownership back to core\n");
 
+	if (IS_DG1(i915))
+		pci_d3cold_enable(pdev);
+
 	pm_runtime_dont_use_autosuspend(kdev);
 
 	if (!rpm->available)
-- 
2.26.2

