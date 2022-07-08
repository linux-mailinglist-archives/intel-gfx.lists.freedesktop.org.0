Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B0056AF3A
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 02:05:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFBD7112179;
	Fri,  8 Jul 2022 00:03:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9362310F52D
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 00:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657238630; x=1688774630;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tc5X3z1Gn6gSOjB/hlJWS3dFcK4zkVvzMmova0DXjCQ=;
 b=OaK6DszjKJ4RU4Ti5xFPU1Xh1E7oLcPtL4Oigp3VJaeOc3Apy2h/4iYy
 Dfp0WmN9qfh9F3C20xwo2QkCynS6HdcTofJkv1jvegobgTsNKnajdyWqc
 mT7Gl7Gbliu+yfwyIFlF6pFQsj1FNTwLw3MubAHvce2HKuUizH+TK4IJO
 BbOXVjeuIarzJuwud63liPvmS+F45UIvG4Ar6gQjzMsGUMm3A/LcqcnVh
 KRzTx/TIHktpn6WgjTPLc19XkidziMR4AIp6+Q+midAQng7kXbtdjGmV0
 z4FrMug58eZ6pEPB3/kgMfm4g8nAGHLqEKG+nZY9ZAX1H8mqqWnw5ojI3 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="345836747"
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="345836747"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 17:03:50 -0700
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="598196589"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 17:03:49 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Jul 2022 17:03:35 -0700
Message-Id: <20220708000335.2869311-3-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220708000335.2869311-1-radhakrishna.sripada@intel.com>
References: <20220708000335.2869311-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/mtl: Add MeteorLake PCI IDs
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add Meteorlake PCI IDs. Split into M, and P subplatforms.

v2: Update PCI id's
v3: Move id 7d60 under MTL_M(MattR)

Bspec: 55420

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          |  4 ++++
 drivers/gpu/drm/i915/i915_pci.c          |  1 +
 drivers/gpu/drm/i915/intel_device_info.c | 14 ++++++++++++++
 drivers/gpu/drm/i915/intel_device_info.h |  4 ++++
 include/drm/i915_pciids.h                | 13 +++++++++++++
 5 files changed, 36 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 00998a78a2ba..1744036bab10 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1019,6 +1019,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_ADLP_RPLP(dev_priv) \
 	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
 #define IS_METEORLAKE(dev_priv) IS_PLATFORM(dev_priv, INTEL_METEORLAKE)
+#define IS_METEORLAKE_M(dev_priv) \
+	IS_SUBPLATFORM(dev_priv, INTEL_METEORLAKE, INTEL_SUBPLATFORM_M)
+#define IS_METEORLAKE_P(dev_priv) \
+	IS_SUBPLATFORM(dev_priv, INTEL_METEORLAKE, INTEL_SUBPLATFORM_P)
 #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
 				    (INTEL_DEVID(dev_priv) & 0xFF00) == 0x0C00)
 #define IS_BDW_ULT(dev_priv) \
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 859d43c7d0a3..aacc10f2e73f 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1214,6 +1214,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_RPLP_IDS(&adl_p_info),
 	INTEL_DG2_IDS(&dg2_info),
 	INTEL_ATS_M_IDS(&ats_m_info),
+	INTEL_MTL_IDS(&mtl_info),
 	{0, 0, 0}
 };
 MODULE_DEVICE_TABLE(pci, pciidlist);
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 27c343316afa..d98fbbd589aa 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -202,6 +202,14 @@ static const u16 subplatform_g12_ids[] = {
 	INTEL_DG2_G12_IDS(0),
 };
 
+static const u16 subplatform_m_ids[] = {
+	INTEL_MTL_M_IDS(0),
+};
+
+static const u16 subplatform_p_ids[] = {
+	INTEL_MTL_P_IDS(0),
+};
+
 static bool find_devid(u16 id, const u16 *p, unsigned int num)
 {
 	for (; num; num--, p++) {
@@ -256,6 +264,12 @@ void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 	} else if (find_devid(devid, subplatform_g12_ids,
 			      ARRAY_SIZE(subplatform_g12_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_G12);
+	} else if (find_devid(devid, subplatform_m_ids,
+			      ARRAY_SIZE(subplatform_m_ids))) {
+		mask = BIT(INTEL_SUBPLATFORM_M);
+	} else if (find_devid(devid, subplatform_p_ids,
+			      ARRAY_SIZE(subplatform_p_ids))) {
+		mask = BIT(INTEL_SUBPLATFORM_P);
 	}
 
 	GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_MASK);
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 7ba9663213f4..23bf230aa104 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -127,6 +127,10 @@ enum intel_platform {
  */
 #define INTEL_SUBPLATFORM_N    1
 
+/* MTL */
+#define INTEL_SUBPLATFORM_M	0
+#define INTEL_SUBPLATFORM_P	1
+
 enum intel_ppgtt_type {
 	INTEL_PPGTT_NONE = I915_GEM_PPGTT_NONE,
 	INTEL_PPGTT_ALIASING = I915_GEM_PPGTT_ALIASING,
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 1bd0420a213d..278031aa2e84 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -733,5 +733,18 @@
 #define INTEL_ATS_M_IDS(info) \
 	INTEL_ATS_M150_IDS(info), \
 	INTEL_ATS_M75_IDS(info)
+/* MTL */
+#define INTEL_MTL_M_IDS(info) \
+	INTEL_VGA_DEVICE(0x7D40, info), \
+	INTEL_VGA_DEVICE(0x7D60, info)
+
+#define INTEL_MTL_P_IDS(info) \
+	INTEL_VGA_DEVICE(0x7D45, info), \
+	INTEL_VGA_DEVICE(0x7D55, info), \
+	INTEL_VGA_DEVICE(0x7DD5, info)
+
+#define INTEL_MTL_IDS(info) \
+	INTEL_MTL_M_IDS(info), \
+	INTEL_MTL_P_IDS(info)
 
 #endif /* _I915_PCIIDS_H */
-- 
2.25.1

