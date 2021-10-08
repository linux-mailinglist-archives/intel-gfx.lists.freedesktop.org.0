Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4304272A1
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 22:53:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 525A66E107;
	Fri,  8 Oct 2021 20:53:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 553C36E107
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 20:53:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10131"; a="213730405"
X-IronPort-AV: E=Sophos;i="5.85,358,1624345200"; d="scan'208";a="213730405"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 13:53:01 -0700
X-IronPort-AV: E=Sophos;i="5.85,358,1624345200"; d="scan'208";a="485125572"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 13:53:01 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Fri,  8 Oct 2021 13:58:55 -0700
Message-Id: <20211008205855.36778-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/icl: Fix read of memory frequency
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

All display 9 and display 10 platforms has only 4 bits for the memory
frequency but display 11 platforms it changes to 8 bits.

Display 9 platforms has another register in bits 7:4 that prevents us
to have a single mask.
Also adding new mask with the current name in CRWebViewer, not
sure why current mask is named like this.

Fixes: f8112cb9574b ("drm/i915/gen11+: Only load DRAM information from pcode")
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h   | 1 +
 drivers/gpu/drm/i915/intel_dram.c | 7 +++++--
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a897f4abea0c3..041f7dc9e0d94 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -11148,6 +11148,7 @@ enum skl_power_gate {
 #define SKL_MEMORY_FREQ_MULTIPLIER_HZ		266666666
 #define SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5E04)
 #define  SKL_REQ_DATA_MASK			(0xF << 0)
+#define  ICL_FREQ_MASK				(0xFF << 0)
 #define  DG1_GEAR_TYPE				REG_BIT(16)
 
 #define SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MCMAIN _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5000)
diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
index 30a0cab5eff46..558589b1202d6 100644
--- a/drivers/gpu/drm/i915/intel_dram.c
+++ b/drivers/gpu/drm/i915/intel_dram.c
@@ -257,8 +257,11 @@ skl_get_dram_info(struct drm_i915_private *i915)
 
 	val = intel_uncore_read(&i915->uncore,
 				SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU);
-	mem_freq_khz = DIV_ROUND_UP((val & SKL_REQ_DATA_MASK) *
-				    SKL_MEMORY_FREQ_MULTIPLIER_HZ, 1000);
+	if (DISPLAY_VER(i915) == 11)
+		val &= ICL_FREQ_MASK;
+	else
+		val &= SKL_REQ_DATA_MASK;
+	mem_freq_khz = DIV_ROUND_UP(val * SKL_MEMORY_FREQ_MULTIPLIER_HZ, 1000);
 
 	if (dram_info->num_channels * mem_freq_khz == 0) {
 		drm_info(&i915->drm,
-- 
2.33.0

