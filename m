Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B94977C147
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 22:06:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6F2010E22F;
	Mon, 14 Aug 2023 20:06:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25FD410E0DE
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 20:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692043602; x=1723579602;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rYIQHXr92P+buQCQLJXbo97hN3CoVqCsKTCyE3+dz7k=;
 b=M1whFNJ4qR0IIfmNbAilo7pfF+4yuJ/Z1lTe56n66zRZHvxJEPJFefV2
 LC37CXWMFFgLJ36oq+HuwoCj5D75IqhOY33iYT/+lr1oNKsLOXnIR7C0+
 RbRzBbRfzx3QEU9GvzEcQdhr0giOPHt+Pyw5bX+PhpHHRB6ffjQhbcZUU
 yDYbCwhngPZD7dxrFmIDqSoZ/TuFrh2w8n9ENzNBCe3xktKpDikNrGNxT
 0aPqmo7sDGx8oYlYQvWrp9fspR+o/1Dpxii3goFweueJsrn4coOPdJTsj
 o9ArzNmBws6JBG8IQ6342M3pPu5A5JxD/F3fx0Tx6/vjYc4khrFMW2x+H Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="369602877"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="369602877"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 13:06:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="683420498"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="683420498"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 13:06:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Aug 2023 13:06:40 -0700
Message-ID: <20230814200632.56105-18-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230814200632.56105-11-matthew.d.roper@intel.com>
References: <20230814200632.56105-11-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 7/9] drm/i915/mtl: Eliminate subplatforms
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that we properly match the Xe_LPG IP versions associated with
various workarounds, there's no longer any need to define separate MTL
subplatform in the driver.  Nothing in the code is conditional on MTL-M
or MTL-P base platforms.  Furthermore, I'm not sure the "M" and "P"
designations are even an accurate representation of which specific
platforms would have which IP versions; those were mostly just
placeholders from a long time ago.  The reality is that the IP version
present on a platform gets read from a fuse register at driver init; we
shouldn't be trying to guess which IP is present based on PCI ID
anymore.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          |  4 ----
 drivers/gpu/drm/i915/intel_device_info.c | 14 --------------
 drivers/gpu/drm/i915/intel_device_info.h |  4 ----
 include/drm/i915_pciids.h                | 11 +++--------
 4 files changed, 3 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b11810308e8a..6d91b3f78b5b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -575,10 +575,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_PONTEVECCHIO(i915) IS_PLATFORM(i915, INTEL_PONTEVECCHIO)
 #define IS_METEORLAKE(i915) IS_PLATFORM(i915, INTEL_METEORLAKE)
 
-#define IS_METEORLAKE_M(i915) \
-	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_M)
-#define IS_METEORLAKE_P(i915) \
-	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_P)
 #define IS_DG2_G10(i915) \
 	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G10)
 #define IS_DG2_G11(i915) \
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index ea0ec6174ce5..9dfa680a4c62 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -206,14 +206,6 @@ static const u16 subplatform_g12_ids[] = {
 	INTEL_DG2_G12_IDS(0),
 };
 
-static const u16 subplatform_m_ids[] = {
-	INTEL_MTL_M_IDS(0),
-};
-
-static const u16 subplatform_p_ids[] = {
-	INTEL_MTL_P_IDS(0),
-};
-
 static bool find_devid(u16 id, const u16 *p, unsigned int num)
 {
 	for (; num; num--, p++) {
@@ -275,12 +267,6 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 	} else if (find_devid(devid, subplatform_g12_ids,
 			      ARRAY_SIZE(subplatform_g12_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_G12);
-	} else if (find_devid(devid, subplatform_m_ids,
-			      ARRAY_SIZE(subplatform_m_ids))) {
-		mask = BIT(INTEL_SUBPLATFORM_M);
-	} else if (find_devid(devid, subplatform_p_ids,
-			      ARRAY_SIZE(subplatform_p_ids))) {
-		mask = BIT(INTEL_SUBPLATFORM_P);
 	}
 
 	GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_MASK);
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index dbfe6443457b..2ca54417d19b 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -129,10 +129,6 @@ enum intel_platform {
 #define INTEL_SUBPLATFORM_N    1
 #define INTEL_SUBPLATFORM_RPLU  2
 
-/* MTL */
-#define INTEL_SUBPLATFORM_M	0
-#define INTEL_SUBPLATFORM_P	1
-
 enum intel_ppgtt_type {
 	INTEL_PPGTT_NONE = I915_GEM_PPGTT_NONE,
 	INTEL_PPGTT_ALIASING = I915_GEM_PPGTT_ALIASING,
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index e1e10dfbb661..38dae757d1a8 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -738,18 +738,13 @@
 #define INTEL_ATS_M_IDS(info) \
 	INTEL_ATS_M150_IDS(info), \
 	INTEL_ATS_M75_IDS(info)
+
 /* MTL */
-#define INTEL_MTL_M_IDS(info) \
+#define INTEL_MTL_IDS(info) \
 	INTEL_VGA_DEVICE(0x7D40, info), \
-	INTEL_VGA_DEVICE(0x7D60, info)
-
-#define INTEL_MTL_P_IDS(info) \
 	INTEL_VGA_DEVICE(0x7D45, info), \
 	INTEL_VGA_DEVICE(0x7D55, info), \
+	INTEL_VGA_DEVICE(0x7D60, info), \
 	INTEL_VGA_DEVICE(0x7DD5, info)
 
-#define INTEL_MTL_IDS(info) \
-	INTEL_MTL_M_IDS(info), \
-	INTEL_MTL_P_IDS(info)
-
 #endif /* _I915_PCIIDS_H */
-- 
2.41.0

