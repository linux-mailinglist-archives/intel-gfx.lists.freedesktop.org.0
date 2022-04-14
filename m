Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF1C500FE1
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 16:19:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CB2D10ECC9;
	Thu, 14 Apr 2022 14:19:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7DAC10ECC9
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 14:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649945939; x=1681481939;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rFxQumPywDUi6sZ1MzazXbsnwmxOnlORCk61qat2kBc=;
 b=UdBF0O1F82ElWQkh50VznkXl9IgbkPfjMEAmYXththeiWMw8m+FJ0IMn
 8jxhY1Ou2psVPAzvBSZfG5RhdezHRlGFO4IuSQZv7UMbiEJxVBty7peFd
 w+HsRt+8c0izErrZe+W8iMybH58xgFgeeyEVNPwAvWVAyPM27RyhyLGNJ
 ePGUJ8Axfk4/HVxpMB6J4ilX3O+DwHh71EXm6P6KB3o7gBGPOnzSSg7S5
 zHxb4YVx4zgxfl4O0Pj5hXblzId0++f5RfIksB4sSKs/RqCL9tegEUPkm
 UKB9RbVTUmwqxJdJ0D5DJ0GjJng7zlk6QJMtdeaYWhHvcgsemzJP65cd2 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="242871469"
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="242871469"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 07:18:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="526932175"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga002.jf.intel.com with ESMTP; 14 Apr 2022 07:18:57 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Apr 2022 19:36:26 +0530
Message-Id: <20220414140626.2810550-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/rpl-p: Add PCI IDs
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
Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matt Atwood <matthew.s.atwood@intel.com>

Adding initial PCI ids for RPL-P.
RPL-P behaves identically to ADL-P from i915's point of view.

Bspec: 55376
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 arch/x86/kernel/early-quirks.c           | 1 +
 drivers/gpu/drm/i915/i915_drv.h          | 4 +++-
 drivers/gpu/drm/i915/i915_pci.c          | 1 +
 drivers/gpu/drm/i915/intel_device_info.c | 9 +++++----
 drivers/gpu/drm/i915/intel_device_info.h | 4 ++--
 include/drm/i915_pciids.h                | 9 +++++++++
 6 files changed, 21 insertions(+), 7 deletions(-)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index 805596736e20..a6c1867fc7aa 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -558,6 +558,7 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
 	INTEL_ADLP_IDS(&gen11_early_ops),
 	INTEL_ADLN_IDS(&gen11_early_ops),
 	INTEL_RPLS_IDS(&gen11_early_ops),
+	INTEL_RPLP_IDS(&gen11_early_ops),
 };
 
 struct resource intel_graphics_stolen_res __ro_after_init = DEFINE_RES_MEM(0, 0);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9274417cd87a..edc1f45f4161 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1066,9 +1066,11 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_DG2_G12(dev_priv) \
 	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G12)
 #define IS_ADLS_RPLS(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL_S)
+	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL)
 #define IS_ADLP_N(dev_priv) \
 	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
+#define IS_ADLP_RPLP(dev_priv) \
+	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
 #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
 				    (INTEL_DEVID(dev_priv) & 0xFF00) == 0x0C00)
 #define IS_BDW_ULT(dev_priv) \
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 736e04078f56..e606a3288d9b 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1151,6 +1151,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_RPLS_IDS(&adl_s_info),
 	INTEL_DG2_IDS(&dg2_info),
 	INTEL_ATS_M_IDS(&ats_m_info),
+	INTEL_RPLP_IDS(&adl_p_info),
 	{0, 0, 0}
 };
 MODULE_DEVICE_TABLE(pci, pciidlist);
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 5258687648e6..63e05cd15a90 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -181,8 +181,9 @@ static const u16 subplatform_n_ids[] = {
 	INTEL_ADLN_IDS(0),
 };
 
-static const u16 subplatform_rpls_ids[] = {
+static const u16 subplatform_rpl_ids[] = {
 	INTEL_RPLS_IDS(0),
+	INTEL_RPLP_IDS(0),
 };
 
 static const u16 subplatform_g10_ids[] = {
@@ -241,9 +242,9 @@ void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 	} else if (find_devid(devid, subplatform_n_ids,
 				ARRAY_SIZE(subplatform_n_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_N);
-	} else if (find_devid(devid, subplatform_rpls_ids,
-			      ARRAY_SIZE(subplatform_rpls_ids))) {
-		mask = BIT(INTEL_SUBPLATFORM_RPL_S);
+	} else if (find_devid(devid, subplatform_rpl_ids,
+			      ARRAY_SIZE(subplatform_rpl_ids))) {
+		mask = BIT(INTEL_SUBPLATFORM_RPL);
 	} else if (find_devid(devid, subplatform_g10_ids,
 			      ARRAY_SIZE(subplatform_g10_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_G10);
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index f9b955810593..7704a9d2589c 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -114,8 +114,8 @@ enum intel_platform {
 #define INTEL_SUBPLATFORM_G11	1
 #define INTEL_SUBPLATFORM_G12	2
 
-/* ADL-S */
-#define INTEL_SUBPLATFORM_RPL_S	0
+/* ADL */
+#define INTEL_SUBPLATFORM_RPL	0
 
 /* ADL-P */
 #define INTEL_SUBPLATFORM_N    0
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index a2b81a5b324a..74ffa293d6e8 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -720,4 +720,13 @@
 	INTEL_ATS_M150_IDS(info), \
 	INTEL_ATS_M75_IDS(info)
 
+/*RPL-P */
+#define INTEL_RPLP_IDS(info) \
+	INTEL_VGA_DEVICE(0xA720, info), \
+	INTEL_VGA_DEVICE(0xA721, info), \
+	INTEL_VGA_DEVICE(0xA7A0, info), \
+	INTEL_VGA_DEVICE(0xA7A1, info), \
+	INTEL_VGA_DEVICE(0xA7A8, info), \
+	INTEL_VGA_DEVICE(0xA7A9, info)
+
 #endif /* _I915_PCIIDS_H */
-- 
2.34.1

