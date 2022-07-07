Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B785696EA
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 02:31:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 767A110E425;
	Thu,  7 Jul 2022 00:31:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E07110E354
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jul 2022 00:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657153902; x=1688689902;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ozscBTXcqaaQ4qvWEqkU8P7P/EBzGEQjjOP0zvngAqA=;
 b=Xs1AeTNXylKH84ggRlRQIA8rm/Xu8q4/R8wtB9ySM+FeQmGJwlFIOuq0
 YQGV+gOfKugp5hVOLbXmAPLHrcBE7IxvJHjI9knsGm7VIBaBhl9JB3oxG
 B2xuCj8uG2mYh5Am+WQTtXTc8rES0jL8LdTxw6bl0gFM8TvoNarh78l5/
 u4CP+dJm258RWia6dy90a6jUejtzuIF82m/84sNBwUeMKruGVNiMgmkFM
 LEPI/H/oX1f7nZzJrbhygFd6X39oqlxmUcLdththDRnXmNPBgTyyXyd6X
 qynE3ps13dfF2OdggdZX51oCCz9f6KVSed6a1//WU7Hz4fm3bfiJXH08+ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="370216168"
X-IronPort-AV: E=Sophos;i="5.92,251,1650956400"; d="scan'208";a="370216168"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 17:31:27 -0700
X-IronPort-AV: E=Sophos;i="5.92,251,1650956400"; d="scan'208";a="661174403"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 17:31:25 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Jul 2022 17:31:07 -0700
Message-Id: <20220707003107.2533184-3-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220707003107.2533184-1-radhakrishna.sripada@intel.com>
References: <20220707003107.2533184-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Add MeteorLake PCI IDs
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

Bspec: 55420

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          |  4 ++++
 drivers/gpu/drm/i915/i915_pci.c          |  1 +
 drivers/gpu/drm/i915/intel_device_info.c | 14 ++++++++++++++
 drivers/gpu/drm/i915/intel_device_info.h |  4 ++++
 include/drm/i915_pciids.h                | 19 +++++++++++++++++++
 5 files changed, 42 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 413a126a6dea..8bf3ea54f59c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1000,6 +1000,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
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
index 6559c770036f..a5a9fc11338f 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1175,6 +1175,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_RPLS_IDS(&adl_s_info),
 	INTEL_RPLP_IDS(&adl_p_info),
 	INTEL_DG2_IDS(&dg2_info),
+	INTEL_MTL_IDS(&mtl_info),
 	{0, 0, 0}
 };
 MODULE_DEVICE_TABLE(pci, pciidlist);
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index d6934d4f965d..0f412c1ab449 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -199,6 +199,14 @@ static const u16 subplatform_g12_ids[] = {
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
@@ -253,6 +261,12 @@ void intel_device_info_subplatform_init(struct drm_i915_private *i915)
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
index 2a86e8445fcf..8ab73923fc29 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -126,6 +126,10 @@ enum intel_platform {
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
index 283dadfbb4db..388c19c52c7d 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -714,4 +714,23 @@
 	INTEL_DG2_G11_IDS(info), \
 	INTEL_DG2_G12_IDS(info)
 
+/* MTL */
+#define INTEL_MTL_M_IDS(info) \
+	INTEL_VGA_DEVICE(0x7D40, info), \
+	INTEL_VGA_DEVICE(0x7D43, info), \
+	INTEL_VGA_DEVICE(0x7DC0, info)
+
+#define INTEL_MTL_P_IDS(info) \
+	INTEL_VGA_DEVICE(0x7D45, info), \
+	INTEL_VGA_DEVICE(0x7D47, info), \
+	INTEL_VGA_DEVICE(0x7D55, info), \
+	INTEL_VGA_DEVICE(0x7D60, info), \
+	INTEL_VGA_DEVICE(0x7DC5, info), \
+	INTEL_VGA_DEVICE(0x7DD5, info), \
+	INTEL_VGA_DEVICE(0x7DE0, info)
+
+#define INTEL_MTL_IDS(info) \
+	INTEL_MTL_M_IDS(info), \
+	INTEL_MTL_P_IDS(info)
+
 #endif /* _I915_PCIIDS_H */
-- 
2.25.1

