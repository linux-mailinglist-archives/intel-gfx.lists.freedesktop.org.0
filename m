Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C757631DA9
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 11:05:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D0DC10E013;
	Mon, 21 Nov 2022 10:05:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02A8B10E013
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 10:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669025119; x=1700561119;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=67FV2JN6YG3OBjeqzQLfTYPzjsseP6025MiGsvIdsiw=;
 b=OfOEr7+Ak0o7eaV/kfE7RJWCH4fv5lgxced1yB4q/7HR/GNJq3RFc4z/
 X4U3UY7LT/TjbT7FqfoblRVWVGMiiDQKq/jrzbp/gEmpoBp5/I57+fv8E
 hFeCD/UmKb+q4FJ8TdQwmxAq/Zx8Qjsp0Ygsxrgiq6h2vvOkvhdOzdMLd
 tgAAwAKIDm64vZc4avjE155bFhTn+kxrWq65BCmPSt35GIBe3eaWbF0gh
 mcpe6j3uuieafXgaz+DiTCCmcbnlphJgmr9kJ4pIMteRHuB5962WzX4tH
 +QYt0/QM+9sxilILF0LGH6MjZdPoI6OLNfrbsiWYlEAD2D2l/DANECuqf g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="377781704"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="377781704"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 02:05:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="886061311"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="886061311"
Received: from himal-nuc8i7beh.iind.intel.com ([10.145.169.160])
 by fmsmga006.fm.intel.com with ESMTP; 21 Nov 2022 02:05:17 -0800
From: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Nov 2022 15:31:34 +0530
Message-Id: <20221121100134.2523381-1-himal.prasad.ghimiray@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory bandwidth
 via sysfs
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

Export lmem maximum memory bandwidth to the userspace via sysfs

(v2)
Add TODO comment to have client parts specific condition (Anshuman)
Remove prelim prefix from the sysfs node name (Aravind)

Signed-off-by: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h   |  2 ++
 drivers/gpu/drm/i915/i915_sysfs.c | 28 ++++++++++++++++++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8e1892d147741..1d59b84b86ad2 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6606,6 +6606,8 @@
 #define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
 #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
 #define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)
+#define	  PCODE_MEMORY_CONFIG			0x70
+#define	    MEMORY_CONFIG_SUBCOMMAND_READ_MAX_BANDWIDTH 0x0
 #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
 #define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/* xehpsdv, pvc */
 /* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */
diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
index 595e8b5749907..69df2012bd10e 100644
--- a/drivers/gpu/drm/i915/i915_sysfs.c
+++ b/drivers/gpu/drm/i915/i915_sysfs.c
@@ -37,7 +37,10 @@
 
 #include "i915_drv.h"
 #include "i915_sysfs.h"
+#include "i915_reg.h"
 #include "intel_pm.h"
+#include "intel_pcode.h"
+
 
 struct drm_i915_private *kdev_minor_to_i915(struct device *kdev)
 {
@@ -231,11 +234,36 @@ static void i915_setup_error_capture(struct device *kdev) {}
 static void i915_teardown_error_capture(struct device *kdev) {}
 #endif
 
+static ssize_t
+lmem_max_bw_Mbps_show(struct device *dev, struct device_attribute *attr, char *buff)
+{
+	struct drm_i915_private *i915 = kdev_minor_to_i915(dev);
+	u32 val;
+	int err;
+
+	err = snb_pcode_read_p(&i915->uncore, PCODE_MEMORY_CONFIG,
+			       MEMORY_CONFIG_SUBCOMMAND_READ_MAX_BANDWIDTH,
+			       0x0, &val);
+	if (err)
+		return err;
+
+	return sysfs_emit(buff, "%u\n", val);
+}
+
+static DEVICE_ATTR_RO(lmem_max_bw_Mbps);
+
 void i915_setup_sysfs(struct drm_i915_private *dev_priv)
 {
 	struct device *kdev = dev_priv->drm.primary->kdev;
 	int ret;
 
+	/*TODO: Need to add client Parts condition check. */
+	if (IS_DG1(dev_priv) || IS_DG2(dev_priv)) {
+		ret = sysfs_create_file(&kdev->kobj, &dev_attr_lmem_max_bw_Mbps.attr);
+		if (ret)
+			drm_err(&dev_priv->drm, "Setting up sysfs to read max B/W failed\n");
+	}
+
 	if (HAS_L3_DPF(dev_priv)) {
 		ret = device_create_bin_file(kdev, &dpf_attrs);
 		if (ret)
-- 
2.25.1

