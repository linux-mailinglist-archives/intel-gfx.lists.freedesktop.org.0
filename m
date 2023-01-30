Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA07680A76
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 11:08:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0565310E1E0;
	Mon, 30 Jan 2023 10:08:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0670310E0D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 10:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675073317; x=1706609317;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+gYWpEbzf5F6HMWpqCvJuC/PB4E6Kcyw6FtOz9BQunQ=;
 b=QAIwN+QBhdv+AHpbZiZmW7wHf9amV+BGSyOzYDrwEQJZWwagEw3JaJEk
 VL+hz2aaKPGXMhMd0p1nrEvUdMPeOj5AfbEYcgtl6DjLO0DeEgDBxfbnh
 SrNXF0hyvQ25DAXkNAmf5c/TFFO7DPR3/JWMtnNOUA6M162zmERh/06Hs
 aDC2wGd+PX9CfvDRLC3BBsbQ6HZ1aZjh6rsbjrXXc0XY0FeNHZwHKS2Kw
 Q8a/dEST4UWCz92CwgQSvR1dQkZfNdqUtOBhfCOGPstYSNjr6gmoJp0XV
 qWwi9rL0f1pgX78amIjQGSe9MU5zKK78Fv0YHPcllZBil/iNJXPXpF+Nq g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="413741235"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="413741235"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 02:08:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="657400635"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="657400635"
Received: from chaitanya.iind.intel.com ([10.190.239.113])
 by orsmga007.jf.intel.com with ESMTP; 30 Jan 2023 02:08:27 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Jan 2023 15:38:05 +0530
Message-Id: <20230130100806.1373883-2-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230130100806.1373883-1-chaitanya.kumar.borah@intel.com>
References: <20230130100806.1373883-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC v4 1/2] drm/i915: Add RPL-U sub platform
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

Separate out RPLU device ids and add them to both RPL and
newly created RPL-U subplatforms.

v2: (Matt)
    - Sort PCI-IDs numerically
    - Name the sub-platform to accurately depict what it is for
    - Make RPL-U part of RPL subplatform

v3: revert to RPL-U subplatform (Jani)

v4: (Jani)
    - Add RPL-U ids to RPL-P platform
    - Remove redundant comment

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          |  2 ++
 drivers/gpu/drm/i915/intel_device_info.c |  7 +++++++
 drivers/gpu/drm/i915/intel_device_info.h |  1 +
 include/drm/i915_pciids.h                | 12 ++++++++----
 4 files changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 48fd82722f12..c88e514728a0 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -619,6 +619,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
 #define IS_ADLP_RPLP(dev_priv) \
 	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
+#define IS_ADLP_RPLU(dev_priv) \
+	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPLU)
 #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
 				    (INTEL_DEVID(dev_priv) & 0xFF00) == 0x0C00)
 #define IS_BDW_ULT(dev_priv) \
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 849baf6c3b3c..322e1ef94c47 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -201,6 +201,10 @@ static const u16 subplatform_rpl_ids[] = {
 	INTEL_RPLP_IDS(0),
 };
 
+static const u16 subplatform_rplu_ids[] = {
+	INTEL_RPLU_IDS(0),
+};
+
 static const u16 subplatform_g10_ids[] = {
 	INTEL_DG2_G10_IDS(0),
 	INTEL_ATS_M150_IDS(0),
@@ -268,6 +272,9 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 	} else if (find_devid(devid, subplatform_rpl_ids,
 			      ARRAY_SIZE(subplatform_rpl_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_RPL);
+		if (find_devid(devid, subplatform_rplu_ids,
+			       ARRAY_SIZE(subplatform_rplu_ids)))
+			mask |= BIT(INTEL_SUBPLATFORM_RPLU);
 	} else if (find_devid(devid, subplatform_g10_ids,
 			      ARRAY_SIZE(subplatform_g10_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_G10);
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index d588e5fd2eea..3e3ca5eb073f 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -127,6 +127,7 @@ enum intel_platform {
  * bit set
  */
 #define INTEL_SUBPLATFORM_N    1
+#define INTEL_SUBPLATFORM_RPLU  2
 
 /* MTL */
 #define INTEL_SUBPLATFORM_M	0
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 4a4c190f7698..5824e1d7d162 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -684,14 +684,18 @@
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
+	INTEL_RPLU_IDS(info), \
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

