Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6417603A6
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 02:13:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9C7510E0DB;
	Tue, 25 Jul 2023 00:13:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC2EA10E3A2
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 00:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690244007; x=1721780007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SlFpQxxyAIDBgb2Ttn0i7oxb12xaJAdUfBr6iqUBzck=;
 b=UB2K96p72uAyjTK9hSQhOc0o1o+GfajKEQ9vD2rmjGvY19zmuhGvwS7/
 DiOgFIwP5dkEA9ufgVBLxkmY1S6PE/OWWBbc/JkMtvAzOJcbnFKvfOaHl
 9R/Yv9odH+rebFKV+M1xar9UOgMpd5msRdvDt2pnFJWJJfD33Cj+S9YYK
 ns2vmy9fxidt+2uM2n6blz5m7OxdYT1FgpVsNxnkBrD9rNMZeHCWM4Jq1
 mS7HwLsqYn2ev63OHMF5QdlfFC6/2cQvDC8kk8d34alZZckcuhpA7aHeq
 oXl0IAyOfj4DMxBjH9YRdZpfnw+oRyYd6Z5vJJTibjQSg3wTlFijsc+Cn g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="365042918"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="365042918"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 17:13:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="791157016"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="791157016"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 17:13:26 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jul 2023 17:13:20 -0700
Message-ID: <20230725001312.1907319-18-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725001312.1907319-11-matthew.d.roper@intel.com>
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 7/9] drm/i915/mtl: Eliminate subplatforms
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
Cc: Nemesa Garg <nemesa.garg@intel.com>, matthew.d.roper@intel.com
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
index 459a013f0a99..88082fb938a2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -625,10 +625,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
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

