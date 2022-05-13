Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CE3525973
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 03:37:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7552910FAA9;
	Fri, 13 May 2022 01:37:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 605A310FA8A
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 May 2022 01:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652405826; x=1683941826;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=AO4MFHZr+N7NHYvPFvqgclaVJM4umyuahsI1kChF3Ac=;
 b=U0LhhnsiUOtytkLjE72XmL02sehgM1dGJ0ltZlf9vQFdjerK5aKymUIb
 KZizHB9XJhHMe+BGUXLATX4jlSDW8JOtp25FzRw9ipvdK1znYyhqn3vK2
 lvLyGEylDvb9WvKMYpw1BvJJMCTnTWQ3MopTC9Tc6/MFQbGsjyAtCZTt9
 myrHQvDrTaEo/9x+TQZDyxNXGaFbn4E1yOY5efD3ofrdWUrXydYntASd+
 fpP1KS1AwLUVG7gC/WV/IVzojOvMegNg5HML9b8Lg0S7aE0MXpgjVHAcC
 8kUE/c/G0/3ZFfsJeVGrx2JERpY/IaaYBY0shT5/vZqRqoPhRUDF0yp9X w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="257728761"
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="257728761"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 18:37:05 -0700
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="671111023"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 18:37:05 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 May 2022 18:36:58 -0700
Message-Id: <57fb14603376da5c9e16b492ffe9688490835539.1652405421.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1652405421.git.ashutosh.dixit@intel.com>
References: <cover.1652405421.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/gt: Add media RP0/RPn to per-gt
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
v3: Convert to new uncore interface for pcode functions
v4: Adapt to intel_pcode.* function rename
v5: #include "intel_pcode.h" in alphabetical order (Tvrtko)

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 47 +++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h             |  8 ++++
 2 files changed, 55 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
index e3f6a889aa2e..79a2fa86947a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
@@ -14,6 +14,7 @@
 #include "intel_gt_regs.h"
 #include "intel_gt_sysfs.h"
 #include "intel_gt_sysfs_pm.h"
+#include "intel_pcode.h"
 #include "intel_rc6.h"
 #include "intel_rps.h"
 
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
+	err = snb_pcode_read_p(gt->uncore, XEHPSDV_PCODE_FREQUENCY_CONFIG,
+			       PCODE_MBOX_FC_SC_READ_FUSED_P0,
+			       PCODE_MBOX_DOMAIN_MEDIAFF, &val);
+
+	if (err)
+		return err;
+
+	/* Fused media RP0 read from pcode is in units of 50 MHz */
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
+	err = snb_pcode_read_p(gt->uncore, XEHPSDV_PCODE_FREQUENCY_CONFIG,
+			       PCODE_MBOX_FC_SC_READ_FUSED_PN,
+			       PCODE_MBOX_DOMAIN_MEDIAFF, &val);
+
+	if (err)
+		return err;
+
+	/* Fused media RPn read from pcode is in units of 50 MHz */
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
index 0e04345248ea..48d41467ce24 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6767,6 +6767,14 @@
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
+#define     PCODE_MBOX_DOMAIN_MEDIAFF		0x3
 #define GEN6_PCODE_DATA				_MMIO(0x138128)
 #define   GEN6_PCODE_FREQ_IA_RATIO_SHIFT	8
 #define   GEN6_PCODE_FREQ_RING_RATIO_SHIFT	16
-- 
2.34.1

