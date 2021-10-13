Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0790542B0E8
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 02:19:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9D126E043;
	Wed, 13 Oct 2021 00:18:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0C376E043
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 00:18:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="290798519"
X-IronPort-AV: E=Sophos;i="5.85,369,1624345200"; d="scan'208";a="290798519"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 17:18:56 -0700
X-IronPort-AV: E=Sophos;i="5.85,369,1624345200"; d="scan'208";a="524419302"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 17:18:56 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Yakui Zhao <yakui.zhao@intel.com>, Matt Roper <matthew.d.roper@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 12 Oct 2021 17:24:55 -0700
Message-Id: <20211013002455.77860-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Remove memory frequency calculation
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

This memory frequency calculated is only used to check if it is zero,
what is not useful as it will never actually be zero.

Also the calculation is wrong, we should be checking other bit to
select the appropriate frequency multiplier while this code is stuck
with a fixed multiplier.

So here dropping it as whole.
Cc: Yakui Zhao <yakui.zhao@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Fixes: f8112cb9574b ("drm/i915/gen11+: Only load DRAM information from pcode")
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h   |  2 --
 drivers/gpu/drm/i915/intel_dram.c | 12 ------------
 2 files changed, 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a897f4abea0c3..03b6c505249dc 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -11145,9 +11145,7 @@ enum skl_power_gate {
 #define  BXT_DRAM_TYPE_LPDDR4			(0x2 << 22)
 #define  BXT_DRAM_TYPE_DDR4			(0x4 << 22)
 
-#define SKL_MEMORY_FREQ_MULTIPLIER_HZ		266666666
 #define SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5E04)
-#define  SKL_REQ_DATA_MASK			(0xF << 0)
 #define  DG1_GEAR_TYPE				REG_BIT(16)
 
 #define SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MCMAIN _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5000)
diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
index 30a0cab5eff46..31933b1e7277b 100644
--- a/drivers/gpu/drm/i915/intel_dram.c
+++ b/drivers/gpu/drm/i915/intel_dram.c
@@ -244,7 +244,6 @@ static int
 skl_get_dram_info(struct drm_i915_private *i915)
 {
 	struct dram_info *dram_info = &i915->dram_info;
-	u32 mem_freq_khz, val;
 	int ret;
 
 	dram_info->type = skl_get_dram_type(i915);
@@ -255,17 +254,6 @@ skl_get_dram_info(struct drm_i915_private *i915)
 	if (ret)
 		return ret;
 
-	val = intel_uncore_read(&i915->uncore,
-				SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU);
-	mem_freq_khz = DIV_ROUND_UP((val & SKL_REQ_DATA_MASK) *
-				    SKL_MEMORY_FREQ_MULTIPLIER_HZ, 1000);
-
-	if (dram_info->num_channels * mem_freq_khz == 0) {
-		drm_info(&i915->drm,
-			 "Couldn't get system memory bandwidth\n");
-		return -EINVAL;
-	}
-
 	return 0;
 }
 
-- 
2.33.0

