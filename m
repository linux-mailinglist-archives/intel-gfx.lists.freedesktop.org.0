Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 105DD59D6A8
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 11:37:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C684B2625;
	Tue, 23 Aug 2022 09:37:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED611B2611
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 09:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661247444; x=1692783444;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MBhIWQhwITBuS20mmbOYA+eI5cqzVO1TT6ebBg/NuKY=;
 b=TlD5FKIrOQv5TbiJqUdlx/6JywVK96kayzBVI4K+8/PHSllBVM1NPPvX
 GKStCRPZOlEGlleu8tnjXyKVUpl1QRtv5f9zDqHTTQP47ea6UEAKu+cP6
 gaIm6yBNbtloMv+lDAGPT3Af+vaOIPWkd7A+ZwNG41qgNcHa5P2UXkaCz
 TpXMT/Hx1NSvhvpad/JpMYz2PgBWD4NCMJyC8TEMzunHnlLyLnNRYVyIG
 0QOf8Gz3R52Gn2Bv+ScgKYDmxn58+7Ghw4p9u5kmo9uqu/kQm0FyCzmMA
 SHsYDPEloEd+AkaW2/zQPe3lCrplZ3DG8j7H5qb+depjZ5mEfElvbUEfD w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="379931473"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="379931473"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 02:37:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="638584071"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orsmga008.jf.intel.com with ESMTP; 23 Aug 2022 02:37:14 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Aug 2022 08:05:46 +0530
Message-Id: <20220823023546.2150989-1-mitulkumar.ajitkumar.golani@intel.com>
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
index deb8a8b76965..b3741bd49e2c 100644
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
+		ret = pm_runtime_get_sync(rpm->kdev);
+		drm_WARN_ONCE(&i915->drm, ret < 0, "pm_runtime_get_sync() failed: %d\n", ret);
+	}
+
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
 
 	i915_driver_unregister(i915);
-- 
2.25.1

