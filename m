Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A0E508115
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 08:25:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6952B10F193;
	Wed, 20 Apr 2022 06:25:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F376F10F18E
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 06:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650435917; x=1681971917;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qs5zX6ELz/ut2x66R5MbI6zccVVxivDYXVYm1c0oBT8=;
 b=CUyeJzLmJ6T/eT6xyKSdxGtUbTFfEOdRgM1jRW9tLM+bPi3cN0tKE2+A
 mSsDbLFRdVwfsAt0WxXswKECVzwdQM7Gbn7KMJzjwQaPlR7tD3yYr8rrl
 QjTR2QNMOz9KM+Hs5hRS7Er/I8CqgmWhL4pr9VdDAfX0sdRCe+8hPrnd6
 CgZMNQ4FZRFvL2UsfgCROiUt9FqlEWYbtbu/xKNUXANOIUMzbr9OFmKKB
 WWi1lHS0ZJrJfhGgRBMsmBja4PXj7hEKOyBLNqREvlCgbNZthoMHPaqRS
 FL9Hl2Dc55vgAafbC7nHZYWdoDIVCYGbPJv6KlPYfAXAH1yvzp0Q5ym0J w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="263414501"
X-IronPort-AV: E=Sophos;i="5.90,274,1643702400"; d="scan'208";a="263414501"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 23:25:16 -0700
X-IronPort-AV: E=Sophos;i="5.90,274,1643702400"; d="scan'208";a="529618341"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 23:25:14 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Apr 2022 23:25:06 -0700
Message-Id: <d12bb581d568ddab386d2cbf1769d78353510674.1650435571.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1650435571.git.ashutosh.dixit@intel.com>
References: <cover.1650435571.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/9] drm/i915/gt: Add media RP0/RPn to per-gt
 sysfs
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

From: Dale B Stimson <dale.b.stimson@intel.com>

Retrieve RP0 and RPn freq for media IP from PCODE and display in per-gt
sysfs. This patch adds the following files to gt/gtN sysfs:
* media_RP0_freq_mhz
* media_RPn_freq_mhz

v2: Fixed commit author (Rodrigo)

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 47 +++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h             | 15 +++++++
 2 files changed, 62 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
index 2b1cd6a01724..2a3398003933 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
@@ -12,6 +12,7 @@
 #include "i915_sysfs.h"
 #include "intel_gt.h"
 #include "intel_gt_regs.h"
+#include "intel_pcode.h"
 #include "intel_gt_sysfs.h"
 #include "intel_gt_sysfs_pm.h"
 #include "intel_rc6.h"
@@ -669,13 +670,59 @@ static ssize_t media_freq_factor_store(struct device *dev,
 	return err ?: count;
 }
 
+static ssize_t media_RP0_freq_mhz_show(struct device *dev,
+				       struct device_attribute *attr,
+				       char *buff)
+{
+	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
+	u32 val;
+	int err;
+
+	err = __intel_gt_pcode_read(gt, XEHPSDV_PCODE_FREQUENCY_CONFIG,
+				    PCODE_MBOX_FC_SC_READ_FUSED_P0,
+				    PCODE_MBOX_DOMAIN_MEDIAFF, &val);
+
+	if (err)
+		return err;
+
+	/* data_out - Fused P0 for domain ID in units of 50 MHz */
+	val *= GT_FREQUENCY_MULTIPLIER;
+
+	return sysfs_emit(buff, "%u\n", val);
+}
+
+static ssize_t media_RPn_freq_mhz_show(struct device *dev,
+				       struct device_attribute *attr,
+				       char *buff)
+{
+	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
+	u32 val;
+	int err;
+
+	err = __intel_gt_pcode_read(gt, XEHPSDV_PCODE_FREQUENCY_CONFIG,
+				    PCODE_MBOX_FC_SC_READ_FUSED_PN,
+				    PCODE_MBOX_DOMAIN_MEDIAFF, &val);
+
+	if (err)
+		return err;
+
+	/* data_out - Fused P0 for domain ID in units of 50 MHz */
+	val *= GT_FREQUENCY_MULTIPLIER;
+
+	return sysfs_emit(buff, "%u\n", val);
+}
+
 static DEVICE_ATTR_RW(media_freq_factor);
 static struct device_attribute dev_attr_media_freq_factor_scale =
 	__ATTR(media_freq_factor.scale, 0444, freq_factor_scale_show, NULL);
+static DEVICE_ATTR_RO(media_RP0_freq_mhz);
+static DEVICE_ATTR_RO(media_RPn_freq_mhz);
 
 static const struct attribute *media_perf_power_attrs[] = {
 	&dev_attr_media_freq_factor.attr,
 	&dev_attr_media_freq_factor_scale.attr,
+	&dev_attr_media_RP0_freq_mhz.attr,
+	&dev_attr_media_RPn_freq_mhz.attr,
 	NULL
 };
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0d5a4ecd374a..a45a776b2dae 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6753,6 +6753,21 @@
 #define     DG1_UNCORE_GET_INIT_STATUS		0x0
 #define     DG1_UNCORE_INIT_STATUS_COMPLETE	0x1
 #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
+#define   XEHPSDV_PCODE_FREQUENCY_CONFIG		0x6e	/* xehpsdv, pvc */
+/* XEHPSDV_PCODE_FREQUENCY_CONFIG sub-commands (param1) */
+#define     PCODE_MBOX_FC_SC_READ_FUSED_P0	0x0
+#define     PCODE_MBOX_FC_SC_READ_FUSED_PN	0x1
+/* PCODE_MBOX_DOMAIN_* - mailbox domain IDs */
+/*   XEHPSDV_PCODE_FREQUENCY_CONFIG param2 */
+#define     PCODE_MBOX_DOMAIN_NONE		0x0
+#define     PCODE_MBOX_DOMAIN_GT		0x1
+#define     PCODE_MBOX_DOMAIN_HBM		0x2
+#define     PCODE_MBOX_DOMAIN_MEDIAFF		0x3
+#define     PCODE_MBOX_DOMAIN_MEDIA_SAMPLER	0x4
+#define     PCODE_MBOX_DOMAIN_SYSTOLIC_ARRAY	0x5
+#define     PCODE_MBOX_DOMAIN_CHIPLET		0x6
+#define     PCODE_MBOX_DOMAIN_BASE_CHIPLET_LINK	0x7
+#define     PCODE_MBOX_DOMAIN_BASE		0x8
 #define GEN6_PCODE_DATA				_MMIO(0x138128)
 #define   GEN6_PCODE_FREQ_IA_RATIO_SHIFT	8
 #define   GEN6_PCODE_FREQ_RING_RATIO_SHIFT	16
-- 
2.34.1

