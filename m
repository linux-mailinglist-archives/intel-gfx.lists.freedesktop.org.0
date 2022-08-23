Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1584459DBF0
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 14:22:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67C1D10F076;
	Tue, 23 Aug 2022 12:22:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96F0E10F076
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 12:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661257337; x=1692793337;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KmirNLOP2u91VzCmITLcJrypkRnDxUluHR2e4h6ajIg=;
 b=UArLr89GFeSySRIyBa1PfVi5WkhKFAQph6Sh0cKrwoCeo0Pw7NmcLpMf
 1rwCEhgIq0fNmbK8iJtDro7eQIgn0s964iywcp8+Q6gTuZBdCqTtgxPwR
 Oe5a26z8MuC/z7UTeR1VfVRscJkT5VZEYEbzhowmi1okaxV/8rWA82CcO
 N3PtLl2MpihDB3djdj6h8M4HZTu8QalgvwbMKjmS3wFORhTehoYwbO4Y/
 i9ka0mdLRzhWKwC6aXLpwaM8FX6ihB74MEgrxoL1+Ok3qXE3hSir8nm0R
 MeotPWiYPiygHXCZdygIJVwIj4JpEHxsLunRW2vqR2CKKFw5ChJObmauc Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="357649974"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="357649974"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 05:22:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="609326736"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orsmga002.jf.intel.com with ESMTP; 23 Aug 2022 05:22:16 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Aug 2022 10:50:50 +0530
Message-Id: <20220823052050.2249138-1-mitulkumar.ajitkumar.golani@intel.com>
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
and doing unregister process. It will check the suspend state and
if driver is not resumed before taking wakeref then resume before
it.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index deb8a8b76965..99d6df02dc67 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -948,6 +948,15 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 void i915_driver_remove(struct drm_i915_private *i915)
 {
+	int ret;
+	/*
+	 * Resuming Device if already suspended to complete driver unregistration
+	 */
+	if (i915->runtime_pm.suspended && !atomic_read(&i915->runtime_pm.wakeref_count)) {
+		ret = pm_runtime_get_sync(i915->runtime_pm.kdev);
+		drm_WARN_ONCE(&i915->drm, ret < 0, "pm_runtime_get_sync() failed: %d\n", ret);
+	}
+
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
 
 	i915_driver_unregister(i915);
-- 
2.25.1

