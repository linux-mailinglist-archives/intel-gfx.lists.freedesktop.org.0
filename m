Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2753D7032
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 09:19:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB5696EB22;
	Tue, 27 Jul 2021 07:19:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D18246EB22
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 07:19:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="191982352"
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="191982352"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 00:19:04 -0700
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="505378938"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 00:19:04 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Jul 2021 00:18:39 -0700
Message-Id: <20210727071845.841554-22-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210727071845.841554-1-lucas.demarchi@intel.com>
References: <20210727071845.841554-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 22/28] drm/i915: rename CNL references in
 intel_dram.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With the removal of CNL, let's consider ICL as the first platform using
those constants.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h   | 24 +++++++++++------------
 drivers/gpu/drm/i915/intel_dram.c | 32 +++++++++++++++----------------
 2 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 36bde25426bd..e2a373784d5b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -11109,18 +11109,18 @@ enum skl_power_gate {
 #define  SKL_DRAM_RANK_1			(0x0 << 10)
 #define  SKL_DRAM_RANK_2			(0x1 << 10)
 #define  SKL_DRAM_RANK_MASK			(0x1 << 10)
-#define  CNL_DRAM_SIZE_MASK			0x7F
-#define  CNL_DRAM_WIDTH_MASK			(0x3 << 7)
-#define  CNL_DRAM_WIDTH_SHIFT			7
-#define  CNL_DRAM_WIDTH_X8			(0x0 << 7)
-#define  CNL_DRAM_WIDTH_X16			(0x1 << 7)
-#define  CNL_DRAM_WIDTH_X32			(0x2 << 7)
-#define  CNL_DRAM_RANK_MASK			(0x3 << 9)
-#define  CNL_DRAM_RANK_SHIFT			9
-#define  CNL_DRAM_RANK_1			(0x0 << 9)
-#define  CNL_DRAM_RANK_2			(0x1 << 9)
-#define  CNL_DRAM_RANK_3			(0x2 << 9)
-#define  CNL_DRAM_RANK_4			(0x3 << 9)
+#define  ICL_DRAM_SIZE_MASK			0x7F
+#define  ICL_DRAM_WIDTH_MASK			(0x3 << 7)
+#define  ICL_DRAM_WIDTH_SHIFT			7
+#define  ICL_DRAM_WIDTH_X8			(0x0 << 7)
+#define  ICL_DRAM_WIDTH_X16			(0x1 << 7)
+#define  ICL_DRAM_WIDTH_X32			(0x2 << 7)
+#define  ICL_DRAM_RANK_MASK			(0x3 << 9)
+#define  ICL_DRAM_RANK_SHIFT			9
+#define  ICL_DRAM_RANK_1			(0x0 << 9)
+#define  ICL_DRAM_RANK_2			(0x1 << 9)
+#define  ICL_DRAM_RANK_3			(0x2 << 9)
+#define  ICL_DRAM_RANK_4			(0x3 << 9)
 
 #define SA_PERF_STATUS_0_0_0_MCHBAR_PC		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5918)
 #define  DG1_QCLK_RATIO_MASK			REG_GENMASK(9, 2)
diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
index 9675bb94b70b..34d6cf440352 100644
--- a/drivers/gpu/drm/i915/intel_dram.c
+++ b/drivers/gpu/drm/i915/intel_dram.c
@@ -77,21 +77,21 @@ static int skl_get_dimm_ranks(u16 val)
 }
 
 /* Returns total Gb for the whole DIMM */
-static int cnl_get_dimm_size(u16 val)
+static int icl_get_dimm_size(u16 val)
 {
-	return (val & CNL_DRAM_SIZE_MASK) * 8 / 2;
+	return (val & ICL_DRAM_SIZE_MASK) * 8 / 2;
 }
 
-static int cnl_get_dimm_width(u16 val)
+static int icl_get_dimm_width(u16 val)
 {
-	if (cnl_get_dimm_size(val) == 0)
+	if (icl_get_dimm_size(val) == 0)
 		return 0;
 
-	switch (val & CNL_DRAM_WIDTH_MASK) {
-	case CNL_DRAM_WIDTH_X8:
-	case CNL_DRAM_WIDTH_X16:
-	case CNL_DRAM_WIDTH_X32:
-		val = (val & CNL_DRAM_WIDTH_MASK) >> CNL_DRAM_WIDTH_SHIFT;
+	switch (val & ICL_DRAM_WIDTH_MASK) {
+	case ICL_DRAM_WIDTH_X8:
+	case ICL_DRAM_WIDTH_X16:
+	case ICL_DRAM_WIDTH_X32:
+		val = (val & ICL_DRAM_WIDTH_MASK) >> ICL_DRAM_WIDTH_SHIFT;
 		return 8 << val;
 	default:
 		MISSING_CASE(val);
@@ -99,12 +99,12 @@ static int cnl_get_dimm_width(u16 val)
 	}
 }
 
-static int cnl_get_dimm_ranks(u16 val)
+static int icl_get_dimm_ranks(u16 val)
 {
-	if (cnl_get_dimm_size(val) == 0)
+	if (icl_get_dimm_size(val) == 0)
 		return 0;
 
-	val = (val & CNL_DRAM_RANK_MASK) >> CNL_DRAM_RANK_SHIFT;
+	val = (val & ICL_DRAM_RANK_MASK) >> ICL_DRAM_RANK_SHIFT;
 
 	return val + 1;
 }
@@ -121,10 +121,10 @@ skl_dram_get_dimm_info(struct drm_i915_private *i915,
 		       struct dram_dimm_info *dimm,
 		       int channel, char dimm_name, u16 val)
 {
-	if (GRAPHICS_VER(i915) >= 10) {
-		dimm->size = cnl_get_dimm_size(val);
-		dimm->width = cnl_get_dimm_width(val);
-		dimm->ranks = cnl_get_dimm_ranks(val);
+	if (GRAPHICS_VER(i915) >= 11) {
+		dimm->size = icl_get_dimm_size(val);
+		dimm->width = icl_get_dimm_width(val);
+		dimm->ranks = icl_get_dimm_ranks(val);
 	} else {
 		dimm->size = skl_get_dimm_size(val);
 		dimm->width = skl_get_dimm_width(val);
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
