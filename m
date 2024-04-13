Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA288A390C
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Apr 2024 02:10:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E88C10F992;
	Sat, 13 Apr 2024 00:10:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cng+ZCd3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2EB510F992
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Apr 2024 00:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712967039; x=1744503039;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/XVR1cyycdWrwpz1/5ODkkkY2iGN03jrtii3lMbNI8A=;
 b=cng+ZCd30I7eNtpwm7OExyFfaDozwgeJnsK41D/JyTxUPvlRkFkj38OY
 /MDMJqizY05/TJEmVLVi0Eo0LAMZCdvK0HN4PinZfM302CID4VMHljWqT
 xo3Du7plT1GE5VYzimzNxrxIvJ1dIbAQy81YiQZZ9aUxOTm5G6lg1mQgb
 3IeSUo/6Zmi7cFepV+4F1DYLQjGJU/AxxphuxVhb00KjZTQhbAru39hlK
 w0hScB7CkujYKbXWxBohF/XUC2QmUI9/0dgQ3qNNT4Dv4kSDNGIvyQC8i
 ah9CC0SU0An7cm/Dn0OATs3ixbLUzFKjPCk0gebJ+TjaZQGxhW0vJVDQo A==;
X-CSE-ConnectionGUID: Uromby/aTJqG0a2tObC04w==
X-CSE-MsgGUID: fi6TBmLAScGFTu6udkoUXw==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="8308913"
X-IronPort-AV: E=Sophos;i="6.07,197,1708416000"; 
   d="scan'208";a="8308913"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 17:10:39 -0700
X-CSE-ConnectionGUID: 43LY9+AYT1G+N8UnCqwScQ==
X-CSE-MsgGUID: FInGVoASQjqBD7J4ByOedg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,197,1708416000"; d="scan'208";a="21356826"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 17:10:38 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Badal Nilawar <badal.nilawar@intel.com>, Andi Shyti <andi.shyti@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 linux-hwmon@vger.kernel.org
Subject: [PATCH] drm/i915/hwmon: Get rid of devm
Date: Fri, 12 Apr 2024 17:10:31 -0700
Message-ID: <20240413001031.481961-1-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
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

When both hwmon and hwmon drvdata (on which hwmon depends) are device
managed resources, the expectation, on device unbind, is that hwmon will be
released before the drvdata. However, it appears devres does not do this
consistently, so that we occasionally see drvdata being released before
hwmon itself. This results in a uaf if hwmon sysfs is accessed during
device unbind.

The only way out of this seems to be do get rid of devm_ and release/free
everything explicitly during device unbind.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10366
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_hwmon.c | 46 ++++++++++++++++++++++++-------
 1 file changed, 36 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 8c3f443c8347..5f6022b148d7 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -792,7 +792,7 @@ void i915_hwmon_register(struct drm_i915_private *i915)
 	if (!IS_DGFX(i915))
 		return;
 
-	hwmon = devm_kzalloc(dev, sizeof(*hwmon), GFP_KERNEL);
+	hwmon = kzalloc(sizeof(*hwmon), GFP_KERNEL);
 	if (!hwmon)
 		return;
 
@@ -818,10 +818,10 @@ void i915_hwmon_register(struct drm_i915_private *i915)
 	hwm_get_preregistration_info(i915);
 
 	/*  hwmon_dev points to device hwmon<i> */
-	hwmon_dev = devm_hwmon_device_register_with_info(dev, ddat->name,
-							 ddat,
-							 &hwm_chip_info,
-							 hwm_groups);
+	hwmon_dev = hwmon_device_register_with_info(dev, ddat->name,
+						    ddat,
+						    &hwm_chip_info,
+						    hwm_groups);
 	if (IS_ERR(hwmon_dev)) {
 		i915->hwmon = NULL;
 		return;
@@ -838,10 +838,10 @@ void i915_hwmon_register(struct drm_i915_private *i915)
 		if (!hwm_gt_is_visible(ddat_gt, hwmon_energy, hwmon_energy_input, 0))
 			continue;
 
-		hwmon_dev = devm_hwmon_device_register_with_info(dev, ddat_gt->name,
-								 ddat_gt,
-								 &hwm_gt_chip_info,
-								 NULL);
+		hwmon_dev = hwmon_device_register_with_info(dev, ddat_gt->name,
+							    ddat_gt,
+							    &hwm_gt_chip_info,
+							    NULL);
 		if (!IS_ERR(hwmon_dev))
 			ddat_gt->hwmon_dev = hwmon_dev;
 	}
@@ -849,5 +849,31 @@ void i915_hwmon_register(struct drm_i915_private *i915)
 
 void i915_hwmon_unregister(struct drm_i915_private *i915)
 {
-	fetch_and_zero(&i915->hwmon);
+	struct i915_hwmon *hwmon;
+	struct hwm_drvdata *ddat;
+	struct intel_gt *gt;
+	int i;
+
+	hwmon = fetch_and_zero(&i915->hwmon);
+	if (!hwmon)
+		return;
+
+	ddat = &hwmon->ddat;
+
+	for_each_gt(gt, i915, i) {
+		struct hwm_drvdata *ddat_gt;
+
+		ddat_gt = hwmon->ddat_gt + i;
+
+		if (ddat_gt->hwmon_dev) {
+			hwmon_device_unregister(ddat_gt->hwmon_dev);
+			ddat_gt->hwmon_dev = NULL;
+		}
+	}
+
+	if (ddat->hwmon_dev)
+		hwmon_device_unregister(ddat->hwmon_dev);
+
+	mutex_destroy(&hwmon->hwmon_lock);
+	kfree(hwmon);
 }
-- 
2.41.0

