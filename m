Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF084D69FE
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 23:55:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E420710E036;
	Fri, 11 Mar 2022 22:55:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D797F10E035
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 22:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647039306; x=1678575306;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QCItzmWHyyjsfLH3qG4lUPvbD6qiNoOxrIlAreLp550=;
 b=Gzuqc2qbhnowpwNgZzUpQQk8yfWN1ufFiuwZcNW53zYqqcRAKAyJ+Evx
 mKrATqJw/0rg34lKxFqkza1mlCxNv63iyniadEtj8Q4clR0p0OKKa8mNc
 h4zw4ag6oRuRXPXTXOWRM4fD3x42WQrkUl8ehGIDGip4eRy2TND+lxFPt
 JicMXdU7GWdAco/4L83gIWTcynRZnXWk+oqT9ildGHBLJZV6K/iq5d3vs
 dI2qL/KEImnk5I8lawHpwygmCMqsgS9bgSl+dLxmKGaQ6ooitqDWthfZX
 9rm2tP4NRGhBFVL0kL9vUS9521chb9Kwtx0wFLkcqsZITnnr9ZvGNumf4 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="342095747"
X-IronPort-AV: E=Sophos;i="5.90,175,1643702400"; d="scan'208";a="342095747"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 14:55:06 -0800
X-IronPort-AV: E=Sophos;i="5.90,175,1643702400"; d="scan'208";a="514662800"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 14:55:05 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 14:54:58 -0800
Message-Id: <20220311225459.385515-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/sseu: Don't overallocate
 subslice storage
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Xe_HP removed "slice" as a first-class unit in the hardware design.
Instead we now have a single pool of subslices (which are now referred
to as "DSS") that different hardware units have different ways of
grouping ("compute slices," "geometry slices," etc.).  For the purposes
of topology representation, we treat Xe_HP-based platforms as having a
single slice that contains all of the platform's DSS.  There's no need
to allocate storage space for (max legacy slices * max dss); let's
update some of our macros to minimize the storage requirement for sseu
topology.  We'll also document some of the constants to make it a little
bit more clear what they represent.

v2:
 - s/LEGACY/HSW/ in macro names.  (Lucas)
 - Rename MAX() to SSEU_MAX() to avoid any potential clashes with other
   definitions elsewhere.  Unfortunately max()/max_t() from
   linux/minmax.h cannot be used in this context.  (Lucas)

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  2 +-
 drivers/gpu/drm/i915/gt/intel_sseu.h         | 47 +++++++++++++++-----
 2 files changed, 36 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 85c00025a2ff..eac20112709c 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -646,7 +646,7 @@ intel_engine_has_relative_mmio(const struct intel_engine_cs * const engine)
 
 #define for_each_instdone_gslice_dss_xehp(dev_priv_, sseu_, iter_, gslice_, dss_) \
 	for ((iter_) = 0, (gslice_) = 0, (dss_) = 0; \
-	     (iter_) < GEN_MAX_SUBSLICES; \
+	     (iter_) < GEN_SS_MASK_SIZE; \
 	     (iter_)++, (gslice_) = (iter_) / GEN_DSS_PER_GSLICE, \
 	     (dss_) = (iter_) % GEN_DSS_PER_GSLICE) \
 		for_each_if(intel_sseu_has_subslice((sseu_), 0, (iter_)))
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.h b/drivers/gpu/drm/i915/gt/intel_sseu.h
index 8a79cd8eaab4..b763b4e3dae6 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.h
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.h
@@ -15,26 +15,49 @@ struct drm_i915_private;
 struct intel_gt;
 struct drm_printer;
 
-#define GEN_MAX_SLICES		(3) /* SKL upper bound */
-#define GEN_MAX_SUBSLICES	(32) /* XEHPSDV upper bound */
-#define GEN_SSEU_STRIDE(max_entries) DIV_ROUND_UP(max_entries, BITS_PER_BYTE)
-#define GEN_MAX_SUBSLICE_STRIDE GEN_SSEU_STRIDE(GEN_MAX_SUBSLICES)
-#define GEN_MAX_EUS		(16) /* TGL upper bound */
-#define GEN_MAX_EU_STRIDE GEN_SSEU_STRIDE(GEN_MAX_EUS)
+/*
+ * Maximum number of slices on older platforms.  Slices no longer exist
+ * starting on Xe_HP ("gslices," "cslices," etc. are a different concept and
+ * are not expressed through fusing).
+ */
+#define GEN_MAX_HSW_SLICES		3
+
+/*
+ * Maximum number of subslices that can exist within a HSW-style slice.  This
+ * is only relevant to pre-Xe_HP platforms (Xe_HP and beyond use the
+ * GEN_MAX_DSS value below).
+ */
+#define GEN_MAX_SS_PER_HSW_SLICE	6
+
+/* Maximum number of DSS on newer platforms (Xe_HP and beyond). */
+#define GEN_MAX_DSS			32
+
+/* Maximum number of EUs that can exist within a subslice or DSS. */
+#define GEN_MAX_EUS_PER_SS		16
+
+#define SSEU_MAX(a, b)			((a) > (b) ? (a) : (b))
+
+/* The maximum number of bits needed to express each subslice/DSS independently */
+#define GEN_SS_MASK_SIZE		SSEU_MAX(GEN_MAX_DSS, \
+						 GEN_MAX_HSW_SLICES * GEN_MAX_SS_PER_HSW_SLICE)
+
+#define GEN_SSEU_STRIDE(max_entries)	DIV_ROUND_UP(max_entries, BITS_PER_BYTE)
+#define GEN_MAX_SUBSLICE_STRIDE		GEN_SSEU_STRIDE(GEN_SS_MASK_SIZE)
+#define GEN_MAX_EU_STRIDE		GEN_SSEU_STRIDE(GEN_MAX_EUS_PER_SS)
 
 #define GEN_DSS_PER_GSLICE	4
 #define GEN_DSS_PER_CSLICE	8
 #define GEN_DSS_PER_MSLICE	8
 
-#define GEN_MAX_GSLICES		(GEN_MAX_SUBSLICES / GEN_DSS_PER_GSLICE)
-#define GEN_MAX_CSLICES		(GEN_MAX_SUBSLICES / GEN_DSS_PER_CSLICE)
+#define GEN_MAX_GSLICES		(GEN_MAX_DSS / GEN_DSS_PER_GSLICE)
+#define GEN_MAX_CSLICES		(GEN_MAX_DSS / GEN_DSS_PER_CSLICE)
 
 struct sseu_dev_info {
 	u8 slice_mask;
-	u8 subslice_mask[GEN_MAX_SLICES * GEN_MAX_SUBSLICE_STRIDE];
-	u8 geometry_subslice_mask[GEN_MAX_SLICES * GEN_MAX_SUBSLICE_STRIDE];
-	u8 compute_subslice_mask[GEN_MAX_SLICES * GEN_MAX_SUBSLICE_STRIDE];
-	u8 eu_mask[GEN_MAX_SLICES * GEN_MAX_SUBSLICES * GEN_MAX_EU_STRIDE];
+	u8 subslice_mask[GEN_SS_MASK_SIZE];
+	u8 geometry_subslice_mask[GEN_SS_MASK_SIZE];
+	u8 compute_subslice_mask[GEN_SS_MASK_SIZE];
+	u8 eu_mask[GEN_SS_MASK_SIZE * GEN_MAX_EU_STRIDE];
 	u16 eu_total;
 	u8 eu_per_subslice;
 	u8 min_eu_in_pool;
-- 
2.34.1

