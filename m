Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D1CAC4B72
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 11:26:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E52210E448;
	Tue, 27 May 2025 09:25:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EvXOy5jh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD53610E466;
 Tue, 27 May 2025 09:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748337948; x=1779873948;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dcmRpy+cFQdWZ/n5KYns5IqtbnIm1VjrRI55eNd1pl8=;
 b=EvXOy5jh37CQ6RpJZwG2S7rYcUT+2/B7JYgpbq4ppZqEw4qTgC0rDi9D
 PJbUTe8W+eyZWOvFcodKdlqYirc4sKtU9ipWTeRICk69lfjy/jRwPZFTe
 QmA8Nmdqf/DPIEQiggVIR/lkw2Vk3YhojC9v11937UqOlWm/iv/KHnwHm
 FzQ0RJKVW3DwLDLB/Ye3EtceVh+5/PrGEQEifO6drS/IwN5GB2cgX+lnj
 Pcns9xcpyW97ZHvj3fHFbruX0qdxNUtA8movb+vRPSSy5ey6IBE6PsT7s
 d6bHsQAKnDArejFFQe+3HycvViE5ee+OkFTvFK1jn3vn6DtRjGaXLLwyj A==;
X-CSE-ConnectionGUID: 4XhjFM3GQbGTtG1kQLlnrA==
X-CSE-MsgGUID: pPviiK1+RHeAVHG6XVAg2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="54114228"
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="54114228"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 02:25:48 -0700
X-CSE-ConnectionGUID: 1aS54sb6QtmI/KU2URDo6A==
X-CSE-MsgGUID: W6nX0IIHRA2dVPh1/b3iAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="179923007"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.119])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 02:25:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 4/6] drm/i915/dram: pass struct dram_info pointer around
Date: Tue, 27 May 2025 12:25:24 +0300
Message-Id: <8ac6b308b210cf4a429d5abfb9bf32737dcab51f.1748337870.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1748337870.git.jani.nikula@intel.com>
References: <cover.1748337870.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Figure out the struct dram_info pointer in one place, and pass that
around to be filled in, instead of all places poking at i915->dram_info
directly.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_dram.c | 40 ++++++++++++---------------
 1 file changed, 18 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 76c225fd6c70..f42dcdb74d40 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -383,9 +383,8 @@ intel_is_dram_symmetric(const struct dram_channel_info *ch0,
 }
 
 static int
-skl_dram_get_channels_info(struct drm_i915_private *i915)
+skl_dram_get_channels_info(struct drm_i915_private *i915, struct dram_info *dram_info)
 {
-	struct dram_info *dram_info = &i915->dram_info;
 	struct dram_channel_info ch0 = {}, ch1 = {};
 	u32 val;
 	int ret;
@@ -446,14 +445,13 @@ skl_get_dram_type(struct drm_i915_private *i915)
 }
 
 static int
-skl_get_dram_info(struct drm_i915_private *i915)
+skl_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
 {
-	struct dram_info *dram_info = &i915->dram_info;
 	int ret;
 
 	dram_info->type = skl_get_dram_type(i915);
 
-	ret = skl_dram_get_channels_info(i915);
+	ret = skl_dram_get_channels_info(i915, dram_info);
 	if (ret)
 		return ret;
 
@@ -538,9 +536,8 @@ static void bxt_get_dimm_info(struct dram_dimm_info *dimm, u32 val)
 	dimm->size = bxt_get_dimm_size(val) * intel_dimm_num_devices(dimm);
 }
 
-static int bxt_get_dram_info(struct drm_i915_private *i915)
+static int bxt_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
 {
-	struct dram_info *dram_info = &i915->dram_info;
 	u32 val;
 	u8 valid_ranks = 0;
 	int i;
@@ -585,9 +582,9 @@ static int bxt_get_dram_info(struct drm_i915_private *i915)
 	return 0;
 }
 
-static int icl_pcode_read_mem_global_info(struct drm_i915_private *dev_priv)
+static int icl_pcode_read_mem_global_info(struct drm_i915_private *dev_priv,
+					  struct dram_info *dram_info)
 {
-	struct dram_info *dram_info = &dev_priv->dram_info;
 	u32 val = 0;
 	int ret;
 
@@ -647,27 +644,26 @@ static int icl_pcode_read_mem_global_info(struct drm_i915_private *dev_priv)
 	return 0;
 }
 
-static int gen11_get_dram_info(struct drm_i915_private *i915)
+static int gen11_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
 {
-	int ret = skl_get_dram_info(i915);
+	int ret = skl_get_dram_info(i915, dram_info);
 
 	if (ret)
 		return ret;
 
-	return icl_pcode_read_mem_global_info(i915);
+	return icl_pcode_read_mem_global_info(i915, dram_info);
 }
 
-static int gen12_get_dram_info(struct drm_i915_private *i915)
+static int gen12_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
 {
-	i915->dram_info.wm_lv_0_adjust_needed = false;
+	dram_info->wm_lv_0_adjust_needed = false;
 
-	return icl_pcode_read_mem_global_info(i915);
+	return icl_pcode_read_mem_global_info(i915, dram_info);
 }
 
-static int xelpdp_get_dram_info(struct drm_i915_private *i915)
+static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
 {
 	u32 val = intel_uncore_read(&i915->uncore, MTL_MEM_SS_INFO_GLOBAL);
-	struct dram_info *dram_info = &i915->dram_info;
 
 	switch (REG_FIELD_GET(MTL_DDR_TYPE_MASK, val)) {
 	case 0:
@@ -726,15 +722,15 @@ void intel_dram_detect(struct drm_i915_private *i915)
 	dram_info->wm_lv_0_adjust_needed = !IS_BROXTON(i915) && !IS_GEMINILAKE(i915);
 
 	if (DISPLAY_VER(i915) >= 14)
-		ret = xelpdp_get_dram_info(i915);
+		ret = xelpdp_get_dram_info(i915, dram_info);
 	else if (GRAPHICS_VER(i915) >= 12)
-		ret = gen12_get_dram_info(i915);
+		ret = gen12_get_dram_info(i915, dram_info);
 	else if (GRAPHICS_VER(i915) >= 11)
-		ret = gen11_get_dram_info(i915);
+		ret = gen11_get_dram_info(i915, dram_info);
 	else if (IS_BROXTON(i915) || IS_GEMINILAKE(i915))
-		ret = bxt_get_dram_info(i915);
+		ret = bxt_get_dram_info(i915, dram_info);
 	else
-		ret = skl_get_dram_info(i915);
+		ret = skl_get_dram_info(i915, dram_info);
 
 	drm_dbg_kms(&i915->drm, "DRAM type: %s\n",
 		    intel_dram_type_str(dram_info->type));
-- 
2.39.5

