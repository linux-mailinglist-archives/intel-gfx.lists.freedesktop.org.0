Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8F84B7963
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 22:46:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BC0D10E546;
	Tue, 15 Feb 2022 21:46:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F07210E546
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 21:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644961575; x=1676497575;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MWScXxHT16Pnv9MTpR7ovfiabvsDQrskFmb22d4LlVs=;
 b=ZK7FyNT/iTjLW++GLJJDDWNqFE9Q45MsDeEq1cyCeMkR1w2z2j9dVf1o
 PMxH+I8SmrVSHo10WWuWGVZKJNZ7zn2KSZWbZw50i9Rca7I49ZWb3g/QV
 R6tRJthQj3HKsIb/ZsKiN1n2yDq2QFmK0jVE6Jnf9SBx/UoqCdCtJ/hKq
 pQd37JtsOz4pHEmVy9ijPQEs623HlThM6HFw5FXVOMVr8sHIMT/+OMM/r
 HJW2vye7kMZGTcK9Ar2qI1DB6r+lepqC5PNq+wATnXK3mV3I0rhOXxXLt
 nazmkzRk9PETD0M3R85rJmg411gfOuwB8r6cw5XSkF+BxMoQm7Gn46IxP g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="250201109"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="250201109"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 13:46:14 -0800
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="633032206"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 13:46:14 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 13:45:44 -0800
Message-Id: <20220215214544.2197483-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH topic/for-CI] drm/i915: Add DG2 PCI IDs
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DG2 hardware will start showing up in CI shortly; let's make sure it's
recognized by the driver.

Bspec: 44477
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c          |  2 +-
 drivers/gpu/drm/i915/intel_device_info.c | 21 ++++++++++++++++++
 include/drm/i915_pciids.h                | 27 ++++++++++++++++++++++++
 3 files changed, 49 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 8246cbe9b01d..91677a9f330c 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1038,7 +1038,6 @@ static const struct intel_device_info xehpsdv_info = {
 	.require_force_probe = 1,
 };
 
-__maybe_unused
 static const struct intel_device_info dg2_info = {
 	XE_HP_FEATURES,
 	XE_HPM_FEATURES,
@@ -1137,6 +1136,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_ADLN_IDS(&adl_p_info),
 	INTEL_DG1_IDS(&dg1_info),
 	INTEL_RPLS_IDS(&adl_s_info),
+	INTEL_DG2_IDS(&dg2_info),
 	{0, 0, 0}
 };
 MODULE_DEVICE_TABLE(pci, pciidlist);
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 94da5aa37391..ae13bc3c7970 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -178,6 +178,18 @@ static const u16 subplatform_rpls_ids[] = {
 	INTEL_RPLS_IDS(0),
 };
 
+static const u16 subplatform_g10_ids[] = {
+	INTEL_DG2_G10_IDS(0),
+};
+
+static const u16 subplatform_g11_ids[] = {
+	INTEL_DG2_G11_IDS(0),
+};
+
+static const u16 subplatform_g12_ids[] = {
+	INTEL_DG2_G12_IDS(0),
+};
+
 static bool find_devid(u16 id, const u16 *p, unsigned int num)
 {
 	for (; num; num--, p++) {
@@ -220,6 +232,15 @@ void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 	} else if (find_devid(devid, subplatform_rpls_ids,
 			      ARRAY_SIZE(subplatform_rpls_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_RPL_S);
+	} else if (find_devid(devid, subplatform_g10_ids,
+			      ARRAY_SIZE(subplatform_g10_ids))) {
+		mask = BIT(INTEL_SUBPLATFORM_G10);
+	} else if (find_devid(devid, subplatform_g11_ids,
+			      ARRAY_SIZE(subplatform_g11_ids))) {
+		mask = BIT(INTEL_SUBPLATFORM_G11);
+	} else if (find_devid(devid, subplatform_g12_ids,
+			      ARRAY_SIZE(subplatform_g12_ids))) {
+		mask = BIT(INTEL_SUBPLATFORM_G12);
 	}
 
 	if (IS_TIGERLAKE(i915)) {
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 533890dc9da1..3609f3254f24 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -681,4 +681,31 @@
 	INTEL_VGA_DEVICE(0xA788, info), \
 	INTEL_VGA_DEVICE(0xA789, info)
 
+/* DG2 */
+#define INTEL_DG2_G10_IDS(info) \
+	INTEL_VGA_DEVICE(0x5690, info), \
+	INTEL_VGA_DEVICE(0x5691, info), \
+	INTEL_VGA_DEVICE(0x5692, info), \
+	INTEL_VGA_DEVICE(0x56A0, info), \
+	INTEL_VGA_DEVICE(0x56A1, info), \
+	INTEL_VGA_DEVICE(0x56A2, info)
+
+#define INTEL_DG2_G11_IDS(info) \
+	INTEL_VGA_DEVICE(0x5693, info), \
+	INTEL_VGA_DEVICE(0x5694, info), \
+	INTEL_VGA_DEVICE(0x5695, info), \
+	INTEL_VGA_DEVICE(0x56A5, info), \
+	INTEL_VGA_DEVICE(0x56A6, info), \
+	INTEL_VGA_DEVICE(0x56B0, info), \
+	INTEL_VGA_DEVICE(0x56B1, info)
+
+#define INTEL_DG2_G12_IDS(info) \
+	INTEL_VGA_DEVICE(0x56A3, info), \
+	INTEL_VGA_DEVICE(0x56A4, info)
+
+#define INTEL_DG2_IDS(info) \
+	INTEL_DG2_G10_IDS(info), \
+	INTEL_DG2_G11_IDS(info), \
+	INTEL_DG2_G12_IDS(info)
+
 #endif /* _I915_PCIIDS_H */
-- 
2.34.1

