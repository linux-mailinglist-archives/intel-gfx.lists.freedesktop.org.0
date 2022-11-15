Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF352629303
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 09:12:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9D9A10E379;
	Tue, 15 Nov 2022 08:12:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 823FB10E379
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Nov 2022 08:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668499947; x=1700035947;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nxO4/U1x64Vwu1SqFKNuAWsGo4tsr2rbPqqJlhzGFrg=;
 b=eqcsuqB8LaAKfC1/ctRrKFYW2hIrVk4wqwm+NaKeXRTW6bjTyl+Is9qU
 qZ/CvSIsj5TyNOWX68+YP1GJV6A9A+vssd8t/RyarRPwzsXoMnt6GpWlm
 pqju5AuFLFJmS0GiHG8GFJxaoVZvlVfITMommWcEbyhH5Q48WfRUM2kN6
 UwSJxqG4wNpO5aDurIImn7hOLCeOGujMpmDy/SO2F4YThGznmJHwJN3Tu
 hyJKUaC6tD5vtstZVo86JjDiwbM05UNnGre73YceMFuObCDgR36BNaYXE
 1zrlx/sbmjs+Or7MvsETr4pd1zTwklQS2kPqHnRaSZJzu3SOTKS3MZTno Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="310902110"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="310902110"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 00:12:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="702347081"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="702347081"
Received: from himal-nuc8i7beh.iind.intel.com ([10.145.169.160])
 by fmsmga008.fm.intel.com with ESMTP; 15 Nov 2022 00:12:22 -0800
From: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Nov 2022 13:38:45 +0530
Message-Id: <20221115080845.1793650-1-himal.prasad.ghimiray@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory bandwidth
 via sysfs.
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

Export lmem maximum memory bandwidth to the userspace via sysfs.

Signed-off-by: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h   |  2 ++
 drivers/gpu/drm/i915/i915_sysfs.c | 27 +++++++++++++++++++++++++++
 2 files changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c4921c9a60770..3ba1efa995ca9 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6603,6 +6603,8 @@
 #define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
 #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
 #define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)
+#define	  PCODE_MEMORY_CONFIG			0x70
+#define	    MEMORY_CONFIG_SUBCOMMAND_READ_MAX_BANDWIDTH 0x0
 #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
 #define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/* xehpsdv, pvc */
 /* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */
diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
index 595e8b5749907..0a6efc300998b 100644
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
@@ -231,11 +234,35 @@ static void i915_setup_error_capture(struct device *kdev) {}
 static void i915_teardown_error_capture(struct device *kdev) {}
 #endif
 
+static ssize_t
+prelim_lmem_max_bw_Mbps_show(struct device *dev, struct device_attribute *attr, char *buff)
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
+static DEVICE_ATTR_RO(prelim_lmem_max_bw_Mbps);
+
 void i915_setup_sysfs(struct drm_i915_private *dev_priv)
 {
 	struct device *kdev = dev_priv->drm.primary->kdev;
 	int ret;
 
+	if (IS_DG1(dev_priv) || IS_DG2(dev_priv)) {
+		ret = sysfs_create_file(&kdev->kobj, &dev_attr_prelim_lmem_max_bw_Mbps.attr);
+		if (ret)
+			drm_err(&dev_priv->drm, "Setting up sysfs to read max B/W failed\n");
+	}
+
 	if (HAS_L3_DPF(dev_priv)) {
 		ret = device_create_bin_file(kdev, &dpf_attrs);
 		if (ret)
-- 
2.25.1

