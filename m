Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6140056ACAB
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 22:26:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88FE114A5E8;
	Thu,  7 Jul 2022 20:26:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18FD714A5DE
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jul 2022 20:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657225579; x=1688761579;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IEUdIqXVbNviBYRy67ixsEHnkkZs45OkVPDmqbnDvFY=;
 b=QaYGSD+bziEh54X6Ey3+vbpFWt1nEVT9+7i3wI0Z9bEWi6n+OXxB7NPl
 RoZn0+b0tZk1vLjdKEj4aY5q/idwNLHOhARn3EnUJM/v/sS6eWgn+dpVM
 KzEUYm3OUDnCJACeBsqD7FqfQDTWFkv3F/rwWkkfTyz+K0JxPS04Ch01E
 wK36WnJBHBZZimJqFzS1T9oL7YvVd66yD2AE4AG3+TW4ulYOL5DSYm8Gy
 nVLx2nueX8+Diz25ZabEMyZ3rFFShd9+DGxXPgYAPshAgYEv83SEYiBrV
 iboKdrdcUy1IESLt5m64jh9uaOJndOjvokgutWSngB+OiPDz0mG2aFfrp g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="281664104"
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="281664104"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 13:26:18 -0700
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="651278486"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 13:26:18 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Jul 2022 13:26:10 -0700
Message-Id: <20220707202610.2795136-3-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220707202610.2795136-1-radhakrishna.sripada@intel.com>
References: <20220707003107.2533184-1-radhakrishna.sripada@intel.com>
 <20220707202610.2795136-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/mtl: Add MeteorLake PCI IDs
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
index 82895ecb25ba..afe88d979cdc 100644
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
index 1bd0420a213d..6dfeb52f7c6f 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -733,5 +733,18 @@
 #define INTEL_ATS_M_IDS(info) \
 	INTEL_ATS_M150_IDS(info), \
 	INTEL_ATS_M75_IDS(info)
+/* MTL */
+#define INTEL_MTL_M_IDS(info) \
+	INTEL_VGA_DEVICE(0x7D40, info)
+
+#define INTEL_MTL_P_IDS(info) \
+	INTEL_VGA_DEVICE(0x7D45, info), \
+	INTEL_VGA_DEVICE(0x7D55, info), \
+	INTEL_VGA_DEVICE(0x7D60, info), \
+	INTEL_VGA_DEVICE(0x7DD5, info)
+
+#define INTEL_MTL_IDS(info) \
+	INTEL_MTL_M_IDS(info), \
+	INTEL_MTL_P_IDS(info)
 
 #endif /* _I915_PCIIDS_H */
-- 
2.25.1

