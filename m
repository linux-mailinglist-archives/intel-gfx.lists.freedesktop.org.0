Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1BD5154EE
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 21:56:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C127B10EF69;
	Fri, 29 Apr 2022 19:56:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67DE510EF38
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Apr 2022 19:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651262198; x=1682798198;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=prbaKkjm3NNh1GNGW5dxsDyC7Ow2kVh9Lp6j58u89Gc=;
 b=VB7LwjQxJulykejxtlOhDFzs/u7f/SH8clHfVwHVGtTBqLaJ0WW8xvoA
 94E5vgqJ11Q37mKiO1kqu56wUIZqMBj4r/vvJbELOjvkkpfqSlAxiLJib
 BbE04j/GmNRVsrTUFGWebnFdiu1b5PI9Hvi4d8nWutfQs3ubfBC1Mp/P1
 XH53AtEaBx9osf/bMz3t7WGWvUjw7S6zcCoUGGWhwyu3WB05a48V4HOIN
 nkUU9jDo/sZfva6IFjhUPpKdUdYJZgIloyyo9WqlvWlT+oHhBKHwLEGdt
 n8flulhRU7KB02f7Ciz2liAYxJo+dEbFaetNe9vNED8UANPoG8WuDCepV g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10332"; a="246674401"
X-IronPort-AV: E=Sophos;i="5.91,186,1647327600"; d="scan'208";a="246674401"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 12:56:37 -0700
X-IronPort-AV: E=Sophos;i="5.91,186,1647327600"; d="scan'208";a="685282464"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 12:56:36 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Apr 2022 12:56:26 -0700
Message-Id: <cff41fcc5ee15c4cc0b295d314d0c1c83f54e1e8.1651261886.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1651261886.git.ashutosh.dixit@intel.com>
References: <cover.1651261886.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/8] drm/i915/gt: Add media RP0/RPn to per-gt
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
Cc: Dale B Stimson <dale.b.stimson@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
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

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 47 +++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h             |  8 ++++
 2 files changed, 55 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
index 2b1cd6a01724..ab91e9cf9deb 100644
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
index 5a4689171cc7..90a9922faffc 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6758,6 +6758,14 @@
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

