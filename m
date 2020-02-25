Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F063F16BF68
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 12:15:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43A076EA90;
	Tue, 25 Feb 2020 11:15:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 355E16EA90
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 11:15:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 03:15:22 -0800
X-IronPort-AV: E=Sophos;i="5.70,483,1574150400"; d="scan'208";a="241295262"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 03:15:20 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2020 13:15:08 +0200
Message-Id: <20200225111509.21879-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200225111509.21879-1-jani.nikula@intel.com>
References: <20200225111509.21879-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/dram: use intel_uncore_*()
 functions for register access
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The implicit "dev_priv" local variable use has been a long-standing pain
point in the register access macros I915_READ(), I915_WRITE(),
POSTING_READ(), I915_READ_FW(), and I915_WRITE_FW().

Replace them with the corresponding uncore register accessors
intel_uncore_read(), intel_uncore_write(), intel_uncore_posting_read(),
intel_uncore_read_fw(), and intel_uncore_write_fw().

Rename dev_priv to i915 while at it.

No functional changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_dram.c | 57 ++++++++++++++++---------------
 1 file changed, 30 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
index cabe7b5de4e0..9bb9dd724d3f 100644
--- a/drivers/gpu/drm/i915/intel_dram.c
+++ b/drivers/gpu/drm/i915/intel_dram.c
@@ -166,25 +166,27 @@ intel_is_dram_symmetric(const struct dram_channel_info *ch0,
 }
 
 static int
-skl_dram_get_channels_info(struct drm_i915_private *dev_priv)
+skl_dram_get_channels_info(struct drm_i915_private *i915)
 {
-	struct dram_info *dram_info = &dev_priv->dram_info;
+	struct dram_info *dram_info = &i915->dram_info;
 	struct dram_channel_info ch0 = {}, ch1 = {};
 	u32 val;
 	int ret;
 
-	val = I915_READ(SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN);
-	ret = skl_dram_get_channel_info(dev_priv, &ch0, 0, val);
+	val = intel_uncore_read(&i915->uncore,
+				SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN);
+	ret = skl_dram_get_channel_info(i915, &ch0, 0, val);
 	if (ret == 0)
 		dram_info->num_channels++;
 
-	val = I915_READ(SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN);
-	ret = skl_dram_get_channel_info(dev_priv, &ch1, 1, val);
+	val = intel_uncore_read(&i915->uncore,
+				SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN);
+	ret = skl_dram_get_channel_info(i915, &ch1, 1, val);
 	if (ret == 0)
 		dram_info->num_channels++;
 
 	if (dram_info->num_channels == 0) {
-		drm_info(&dev_priv->drm, "Number of memory channels is zero\n");
+		drm_info(&i915->drm, "Number of memory channels is zero\n");
 		return -EINVAL;
 	}
 
@@ -199,8 +201,7 @@ skl_dram_get_channels_info(struct drm_i915_private *dev_priv)
 		dram_info->ranks = max(ch0.ranks, ch1.ranks);
 
 	if (dram_info->ranks == 0) {
-		drm_info(&dev_priv->drm,
-			 "couldn't get memory rank information\n");
+		drm_info(&i915->drm, "couldn't get memory rank information\n");
 		return -EINVAL;
 	}
 
@@ -208,18 +209,19 @@ skl_dram_get_channels_info(struct drm_i915_private *dev_priv)
 
 	dram_info->symmetric_memory = intel_is_dram_symmetric(&ch0, &ch1);
 
-	drm_dbg_kms(&dev_priv->drm, "Memory configuration is symmetric? %s\n",
+	drm_dbg_kms(&i915->drm, "Memory configuration is symmetric? %s\n",
 		    yesno(dram_info->symmetric_memory));
 
 	return 0;
 }
 
 static enum intel_dram_type
-skl_get_dram_type(struct drm_i915_private *dev_priv)
+skl_get_dram_type(struct drm_i915_private *i915)
 {
 	u32 val;
 
-	val = I915_READ(SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MCMAIN);
+	val = intel_uncore_read(&i915->uncore,
+				SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MCMAIN);
 
 	switch (val & SKL_DRAM_DDR_TYPE_MASK) {
 	case SKL_DRAM_DDR_TYPE_DDR3:
@@ -237,21 +239,22 @@ skl_get_dram_type(struct drm_i915_private *dev_priv)
 }
 
 static int
-skl_get_dram_info(struct drm_i915_private *dev_priv)
+skl_get_dram_info(struct drm_i915_private *i915)
 {
-	struct dram_info *dram_info = &dev_priv->dram_info;
+	struct dram_info *dram_info = &i915->dram_info;
 	u32 mem_freq_khz, val;
 	int ret;
 
-	dram_info->type = skl_get_dram_type(dev_priv);
-	drm_dbg_kms(&dev_priv->drm, "DRAM type: %s\n",
+	dram_info->type = skl_get_dram_type(i915);
+	drm_dbg_kms(&i915->drm, "DRAM type: %s\n",
 		    intel_dram_type_str(dram_info->type));
 
-	ret = skl_dram_get_channels_info(dev_priv);
+	ret = skl_dram_get_channels_info(i915);
 	if (ret)
 		return ret;
 
-	val = I915_READ(SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU);
+	val = intel_uncore_read(&i915->uncore,
+				SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU);
 	mem_freq_khz = DIV_ROUND_UP((val & SKL_REQ_DATA_MASK) *
 				    SKL_MEMORY_FREQ_MULTIPLIER_HZ, 1000);
 
@@ -259,7 +262,7 @@ skl_get_dram_info(struct drm_i915_private *dev_priv)
 		mem_freq_khz * 8;
 
 	if (dram_info->bandwidth_kbps == 0) {
-		drm_info(&dev_priv->drm,
+		drm_info(&i915->drm,
 			 "Couldn't get system memory bandwidth\n");
 		return -EINVAL;
 	}
@@ -346,15 +349,15 @@ static void bxt_get_dimm_info(struct dram_dimm_info *dimm, u32 val)
 	dimm->size = bxt_get_dimm_size(val) * intel_dimm_num_devices(dimm) / 8;
 }
 
-static int bxt_get_dram_info(struct drm_i915_private *dev_priv)
+static int bxt_get_dram_info(struct drm_i915_private *i915)
 {
-	struct dram_info *dram_info = &dev_priv->dram_info;
+	struct dram_info *dram_info = &i915->dram_info;
 	u32 dram_channels;
 	u32 mem_freq_khz, val;
 	u8 num_active_channels;
 	int i;
 
-	val = I915_READ(BXT_P_CR_MC_BIOS_REQ_0_0_0);
+	val = intel_uncore_read(&i915->uncore, BXT_P_CR_MC_BIOS_REQ_0_0_0);
 	mem_freq_khz = DIV_ROUND_UP((val & BXT_REQ_DATA_MASK) *
 				    BXT_MEMORY_FREQ_MULTIPLIER_HZ, 1000);
 
@@ -365,7 +368,7 @@ static int bxt_get_dram_info(struct drm_i915_private *dev_priv)
 	dram_info->bandwidth_kbps = (mem_freq_khz * num_active_channels * 4);
 
 	if (dram_info->bandwidth_kbps == 0) {
-		drm_info(&dev_priv->drm,
+		drm_info(&i915->drm,
 			 "Couldn't get system memory bandwidth\n");
 		return -EINVAL;
 	}
@@ -377,7 +380,7 @@ static int bxt_get_dram_info(struct drm_i915_private *dev_priv)
 		struct dram_dimm_info dimm;
 		enum intel_dram_type type;
 
-		val = I915_READ(BXT_D_CR_DRP0_DUNIT(i));
+		val = intel_uncore_read(&i915->uncore, BXT_D_CR_DRP0_DUNIT(i));
 		if (val == 0xFFFFFFFF)
 			continue;
 
@@ -386,11 +389,11 @@ static int bxt_get_dram_info(struct drm_i915_private *dev_priv)
 		bxt_get_dimm_info(&dimm, val);
 		type = bxt_get_dimm_type(val);
 
-		drm_WARN_ON(&dev_priv->drm, type != INTEL_DRAM_UNKNOWN &&
+		drm_WARN_ON(&i915->drm, type != INTEL_DRAM_UNKNOWN &&
 			    dram_info->type != INTEL_DRAM_UNKNOWN &&
 			    dram_info->type != type);
 
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "CH%u DIMM size: %u GB, width: X%u, ranks: %u, type: %s\n",
 			    i - BXT_D_CR_DRP0_DUNIT_START,
 			    dimm.size, dimm.width, dimm.ranks,
@@ -411,7 +414,7 @@ static int bxt_get_dram_info(struct drm_i915_private *dev_priv)
 	}
 
 	if (dram_info->type == INTEL_DRAM_UNKNOWN || dram_info->ranks == 0) {
-		drm_info(&dev_priv->drm, "couldn't get memory information\n");
+		drm_info(&i915->drm, "couldn't get memory information\n");
 		return -EINVAL;
 	}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
