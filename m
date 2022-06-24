Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF86F559DE6
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 18:00:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCEEA10E14E;
	Fri, 24 Jun 2022 16:00:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA23A10E14E
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jun 2022 15:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656086400; x=1687622400;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Nlx+EAayxnhv9/HccveKs4YiVvkKi3SEuLDAioxC5aI=;
 b=hdIfuAq0HIAspJ0WaEgRqWeGUpjph5x8VtqQ+jaeuRSQF6J8rqdIYKL0
 I82c5ao1WODKF8MU8Ujmate3kdZnlGXJYTdesnV/UxWIJ9vXXpSPFhSD+
 /1hUaz2xy9Lu89bUcMaSDgWN0TwXps2uq2IWREgLc3+G5KFul3+vOvQWt
 EtZgdhbmNgfmYvHY6pLIj1pN0PULfR9hdTT/7sMyHdshndQwCtY5xQn2f
 /sNTGq1oGEXnv+dOeUsxiCzCiTVuiOgV+AGdMbHgejpy8V5tJv7/TCYVG
 tWL6jrEVqpIKitFS39mHy9Fn4eNqgPAs1VluxoU8pEjpVH9g6me6A1xY1 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10388"; a="281762304"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="281762304"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 08:59:49 -0700
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="835170162"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 08:59:47 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jun 2022 21:29:16 +0530
Message-Id: <20220624155922.7435-4-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220624155922.7435-1-anshuman.gupta@intel.com>
References: <20220624155922.7435-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/9] drm/i915/dg2: Add DG2_NB_MBD subplatform
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
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DG2 NB SKU need to distinguish between MBD and AIC to probe
the VRAM Self Refresh feature support. Adding those sub platform
accordingly.

v2:
- Adding only required MBD subplatform. [Jani, Matt]

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          |  2 ++
 drivers/gpu/drm/i915/intel_device_info.c | 14 ++++++++++++++
 drivers/gpu/drm/i915/intel_device_info.h |  3 ++-
 include/drm/i915_pciids.h                | 23 ++++++++++++++++-------
 4 files changed, 34 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index c22f29c3faa0..a68777948db9 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1012,6 +1012,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G11)
 #define IS_DG2_G12(dev_priv) \
 	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G12)
+#define IS_DG2_MBD(dev_priv) \
+	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_MBD)
 #define IS_ADLS_RPLS(dev_priv) \
 	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL)
 #define IS_ADLP_N(dev_priv) \
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index f0bf23726ed8..4490977a3322 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -189,16 +189,25 @@ static const u16 subplatform_rpl_ids[] = {
 
 static const u16 subplatform_g10_ids[] = {
 	INTEL_DG2_G10_IDS(0),
+	INTEL_DG2_G10_NB_MBD_IDS(0),
 	INTEL_ATS_M150_IDS(0),
 };
 
 static const u16 subplatform_g11_ids[] = {
 	INTEL_DG2_G11_IDS(0),
+	INTEL_DG2_G11_NB_MBD_IDS(0),
 	INTEL_ATS_M75_IDS(0),
 };
 
 static const u16 subplatform_g12_ids[] = {
 	INTEL_DG2_G12_IDS(0),
+	INTEL_DG2_G12_NB_MBD_IDS(0),
+};
+
+static const u16 subplatform_mbd_ids[] = {
+	INTEL_DG2_G10_NB_MBD_IDS(0),
+	INTEL_DG2_G11_NB_MBD_IDS(0),
+	INTEL_DG2_G12_NB_MBD_IDS(0),
 };
 
 static bool find_devid(u16 id, const u16 *p, unsigned int num)
@@ -257,6 +266,11 @@ void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 		mask = BIT(INTEL_SUBPLATFORM_G12);
 	}
 
+	if (find_devid(devid, subplatform_mbd_ids,
+		       ARRAY_SIZE(subplatform_mbd_ids))) {
+		mask |= BIT(INTEL_SUBPLATFORM_MBD);
+	}
+
 	GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_MASK);
 
 	RUNTIME_INFO(i915)->platform_mask[pi] |= mask;
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 08341174ee0a..6c9564429509 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -97,7 +97,7 @@ enum intel_platform {
  * it is fine for the same bit to be used on multiple parent platforms.
  */
 
-#define INTEL_SUBPLATFORM_BITS (3)
+#define INTEL_SUBPLATFORM_BITS (4)
 #define INTEL_SUBPLATFORM_MASK (BIT(INTEL_SUBPLATFORM_BITS) - 1)
 
 /* HSW/BDW/SKL/KBL/CFL */
@@ -114,6 +114,7 @@ enum intel_platform {
 #define INTEL_SUBPLATFORM_G10	0
 #define INTEL_SUBPLATFORM_G11	1
 #define INTEL_SUBPLATFORM_G12	2
+#define INTEL_SUBPLATFORM_MBD	3
 
 /* ADL */
 #define INTEL_SUBPLATFORM_RPL	0
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 4585fed4e41e..198be417bb2d 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -693,32 +693,41 @@
 	INTEL_VGA_DEVICE(0xA7A9, info)
 
 /* DG2 */
-#define INTEL_DG2_G10_IDS(info) \
+#define INTEL_DG2_G10_NB_MBD_IDS(info) \
 	INTEL_VGA_DEVICE(0x5690, info), \
 	INTEL_VGA_DEVICE(0x5691, info), \
-	INTEL_VGA_DEVICE(0x5692, info), \
+	INTEL_VGA_DEVICE(0x5692, info)
+
+#define INTEL_DG2_G11_NB_MBD_IDS(info) \
+	INTEL_VGA_DEVICE(0x5693, info), \
+	INTEL_VGA_DEVICE(0x5694, info), \
+	INTEL_VGA_DEVICE(0x5695, info)
+
+#define INTEL_DG2_G12_NB_MBD_IDS(info) \
+	INTEL_VGA_DEVICE(0x5696, info), \
+	INTEL_VGA_DEVICE(0x5697, info)
+
+#define INTEL_DG2_G10_IDS(info) \
 	INTEL_VGA_DEVICE(0x56A0, info), \
 	INTEL_VGA_DEVICE(0x56A1, info), \
 	INTEL_VGA_DEVICE(0x56A2, info)
 
 #define INTEL_DG2_G11_IDS(info) \
-	INTEL_VGA_DEVICE(0x5693, info), \
-	INTEL_VGA_DEVICE(0x5694, info), \
-	INTEL_VGA_DEVICE(0x5695, info), \
 	INTEL_VGA_DEVICE(0x56A5, info), \
 	INTEL_VGA_DEVICE(0x56A6, info), \
 	INTEL_VGA_DEVICE(0x56B0, info), \
 	INTEL_VGA_DEVICE(0x56B1, info)
 
 #define INTEL_DG2_G12_IDS(info) \
-	INTEL_VGA_DEVICE(0x5696, info), \
-	INTEL_VGA_DEVICE(0x5697, info), \
 	INTEL_VGA_DEVICE(0x56A3, info), \
 	INTEL_VGA_DEVICE(0x56A4, info), \
 	INTEL_VGA_DEVICE(0x56B2, info), \
 	INTEL_VGA_DEVICE(0x56B3, info)
 
 #define INTEL_DG2_IDS(info) \
+	INTEL_DG2_G10_NB_MBD_IDS(info), \
+	INTEL_DG2_G11_NB_MBD_IDS(info), \
+	INTEL_DG2_G12_NB_MBD_IDS(info), \
 	INTEL_DG2_G10_IDS(info), \
 	INTEL_DG2_G11_IDS(info), \
 	INTEL_DG2_G12_IDS(info)
-- 
2.26.2

