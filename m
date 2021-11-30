Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCC84631DE
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 12:11:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 828736E270;
	Tue, 30 Nov 2021 11:11:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E38E6E270
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 11:11:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="233693819"
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="233693819"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 03:11:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="499728002"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga007.jf.intel.com with ESMTP; 30 Nov 2021 03:11:48 -0800
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Nov 2021 16:36:07 +0530
Message-Id: <20211130110607.3902085-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/adl-n: Enable ADL-N platform
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

Adding PCI device ids and enabling ADL-N platform.
ADL-N from i915 point of view is subplatform of ADL-P.

BSpec: 68397

Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 arch/x86/kernel/early-quirks.c           | 1 +
 drivers/gpu/drm/i915/i915_drv.h          | 2 ++
 drivers/gpu/drm/i915/i915_pci.c          | 1 +
 drivers/gpu/drm/i915/intel_device_info.c | 7 +++++++
 drivers/gpu/drm/i915/intel_device_info.h | 3 +++
 include/drm/i915_pciids.h                | 5 +++++
 6 files changed, 19 insertions(+)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index 391a4e2b8604..b9800d9f11b0 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -554,6 +554,7 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
 	INTEL_RKL_IDS(&gen11_early_ops),
 	INTEL_ADLS_IDS(&gen11_early_ops),
 	INTEL_ADLP_IDS(&gen11_early_ops),
+	INTEL_ADLN_IDS(&gen11_early_ops),
 };
 
 struct resource intel_graphics_stolen_res __ro_after_init = DEFINE_RES_MEM(0, 0);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1bfadd9127fc..e8fd98064692 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1463,6 +1463,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_DG1(dev_priv)        IS_PLATFORM(dev_priv, INTEL_DG1)
 #define IS_ALDERLAKE_S(dev_priv) IS_PLATFORM(dev_priv, INTEL_ALDERLAKE_S)
 #define IS_ALDERLAKE_P(dev_priv) IS_PLATFORM(dev_priv, INTEL_ALDERLAKE_P)
+#define IS_ALDERLAKE_N(dev_priv) \
+	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
 #define IS_XEHPSDV(dev_priv) IS_PLATFORM(dev_priv, INTEL_XEHPSDV)
 #define IS_DG2(dev_priv)	IS_PLATFORM(dev_priv, INTEL_DG2)
 #define IS_DG2_G10(dev_priv) \
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index f01cba4ec283..9b816eddbcaf 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1130,6 +1130,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_RKL_IDS(&rkl_info),
 	INTEL_ADLS_IDS(&adl_s_info),
 	INTEL_ADLP_IDS(&adl_p_info),
+	INTEL_ADLN_IDS(&adl_p_info),
 	INTEL_DG1_IDS(&dg1_info),
 	{0, 0, 0}
 };
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 6e6b317bc33c..5d04dea5bd01 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -182,6 +182,10 @@ static const u16 subplatform_portf_ids[] = {
 	INTEL_ICL_PORT_F_IDS(0),
 };
 
+static const u16 subplatform_n_ids[] = {
+	INTEL_ADLN_IDS(0),
+};
+
 static bool find_devid(u16 id, const u16 *p, unsigned int num)
 {
 	for (; num; num--, p++) {
@@ -218,6 +222,9 @@ void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 	} else if (find_devid(devid, subplatform_portf_ids,
 			      ARRAY_SIZE(subplatform_portf_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_PORTF);
+	} else if (find_devid(devid, subplatform_n_ids,
+			      ARRAY_SIZE(subplatform_n_ids))) {
+		mask = BIT(INTEL_SUBPLATFORM_N);
 	}
 
 	if (IS_TIGERLAKE(i915)) {
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 669f0d26c3c3..d4d2d230d04a 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -110,6 +110,9 @@ enum intel_platform {
 #define INTEL_SUBPLATFORM_G10	0
 #define INTEL_SUBPLATFORM_G11	1
 
+/* ADL */
+#define INTEL_SUBPLATFORM_N	0
+
 enum intel_ppgtt_type {
 	INTEL_PPGTT_NONE = I915_GEM_PPGTT_NONE,
 	INTEL_PPGTT_ALIASING = I915_GEM_PPGTT_ALIASING,
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index c00ac54692d7..5de540db8269 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -666,4 +666,9 @@
 	INTEL_VGA_DEVICE(0x46C2, info), \
 	INTEL_VGA_DEVICE(0x46C3, info)
 
+/* ADL-N */
+#define INTEL_ADLN_IDS(info) \
+	INTEL_VGA_DEVICE(0x46D0, info), \
+	INTEL_VGA_DEVICE(0x46D1, info), \
+	INTEL_VGA_DEVICE(0x46D2, info)
 #endif /* _I915_PCIIDS_H */
-- 
2.31.1

