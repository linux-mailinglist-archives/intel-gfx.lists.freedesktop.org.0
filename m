Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE934666E30
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 10:28:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B1BA10E8B5;
	Thu, 12 Jan 2023 09:28:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADF9E10E8B7
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 09:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673515710; x=1705051710;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RabiFW+uEEjmz4T12US/aka5zN4qRmclDjIPKP2Wg/c=;
 b=FAOjZq3mbTl/AkVf+vuRx79KHGBOtnv6EgWzvkaozxXUK5JnP6jg+Lf0
 67zSgU2jCgqxE3qkPhYqCNYkXY5MBQfC+xxLm/J7DtG3XV43iye+DLlC0
 0//O+yusrsp/hcSNXICtxq2G65Q+ZLnDt0TdLXCUG0osTvcuEqMGroJUZ
 PBNiyZSi0taViobLPjNhE+y8QbFV4oEzdi3yjpNxnUsnbF/fLtS2FsBMO
 iA2rALpD2fBZcbBw/NyS854Kz+LqtNfkQJB1Pjxv6eY27B2hcZhHp3n9/
 IZuRxioIEhNdZ9J4bLMFw+D1Wkbu3k72YGOuKkrCihGN/9qLyKGB0UIJM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="307178130"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="307178130"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 01:28:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="831627526"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="831627526"
Received: from chaitanya.iind.intel.com ([10.190.239.113])
 by orsmga005.jf.intel.com with ESMTP; 12 Jan 2023 01:28:11 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Jan 2023 14:57:57 +0530
Message-Id: <20230112092758.539070-2-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230112092758.539070-1-chaitanya.kumar.borah@intel.com>
References: <20230112092758.539070-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC v2 1/2] drm/i915: Add sub platform for 480MHz
 CDCLK step
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a new sub platform INTEL_SUBPLATFORM_480CDCLK to identify
device ids that need the 480MHz CDCLK step. Separate out RPLU
device ids and add them to both RPL and 480CDCLK subplatforms.

v2: (Matt)
  - Sort PCI-IDs numerically
  - Name the sub-platform to accurately depict what it is for
  - Make RPL-U part of RPL subplatform

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          |  2 ++
 drivers/gpu/drm/i915/i915_pci.c          |  1 +
 drivers/gpu/drm/i915/intel_device_info.c |  8 ++++++++
 drivers/gpu/drm/i915/intel_device_info.h |  2 ++
 include/drm/i915_pciids.h                | 11 +++++++----
 5 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 48fd82722f12..fc5518314598 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -619,6 +619,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
 #define IS_ADLP_RPLP(dev_priv) \
 	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
+#define IS_ADLP_WITH_480CDCLK(dev_priv) \
+	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_480CDCLK)
 #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
 				    (INTEL_DEVID(dev_priv) & 0xFF00) == 0x0C00)
 #define IS_BDW_ULT(dev_priv) \
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 6cc65079b18d..e9f3b99b3e00 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1234,6 +1234,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_DG1_IDS(&dg1_info),
 	INTEL_RPLS_IDS(&adl_s_info),
 	INTEL_RPLP_IDS(&adl_p_info),
+	INTEL_RPLU_IDS(&adl_p_info),
 	INTEL_DG2_IDS(&dg2_info),
 	INTEL_ATS_M_IDS(&ats_m_info),
 	INTEL_MTL_IDS(&mtl_info),
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 849baf6c3b3c..a1732ad519fb 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -199,6 +199,11 @@ static const u16 subplatform_n_ids[] = {
 static const u16 subplatform_rpl_ids[] = {
 	INTEL_RPLS_IDS(0),
 	INTEL_RPLP_IDS(0),
+	INTEL_RPLU_IDS(0)
+};
+
+static const u16 subplatform_480cdclk_ids[] = {
+	INTEL_RPLU_IDS(0),
 };
 
 static const u16 subplatform_g10_ids[] = {
@@ -268,6 +273,9 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 	} else if (find_devid(devid, subplatform_rpl_ids,
 			      ARRAY_SIZE(subplatform_rpl_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_RPL);
+		if (find_devid(devid, subplatform_480cdclk_ids,
+			       ARRAY_SIZE(subplatform_480cdclk_ids)))
+			mask |= BIT(INTEL_SUBPLATFORM_480CDCLK);
 	} else if (find_devid(devid, subplatform_g10_ids,
 			      ARRAY_SIZE(subplatform_g10_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_G10);
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index d588e5fd2eea..4f488c900273 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -127,6 +127,8 @@ enum intel_platform {
  * bit set
  */
 #define INTEL_SUBPLATFORM_N    1
+/* Sub Platform with 480MHz CDCLK step */
+#define INTEL_SUBPLATFORM_480CDCLK  2
 
 /* MTL */
 #define INTEL_SUBPLATFORM_M	0
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 4a4c190f7698..758be5fb09a2 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -684,14 +684,17 @@
 	INTEL_VGA_DEVICE(0xA78A, info), \
 	INTEL_VGA_DEVICE(0xA78B, info)
 
+/* RPL-U */
+#define INTEL_RPLU_IDS(info) \
+	INTEL_VGA_DEVICE(0xA721, info), \
+	INTEL_VGA_DEVICE(0xA7A1, info), \
+	INTEL_VGA_DEVICE(0xA7A9, info)
+
 /* RPL-P */
 #define INTEL_RPLP_IDS(info) \
 	INTEL_VGA_DEVICE(0xA720, info), \
-	INTEL_VGA_DEVICE(0xA721, info), \
 	INTEL_VGA_DEVICE(0xA7A0, info), \
-	INTEL_VGA_DEVICE(0xA7A1, info), \
-	INTEL_VGA_DEVICE(0xA7A8, info), \
-	INTEL_VGA_DEVICE(0xA7A9, info)
+	INTEL_VGA_DEVICE(0xA7A8, info)
 
 /* DG2 */
 #define INTEL_DG2_G10_IDS(info) \
-- 
2.25.1

