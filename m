Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E43C803225
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 13:06:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 033CF10E19C;
	Mon,  4 Dec 2023 12:05:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E679310E39E
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Dec 2023 12:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701691535; x=1733227535;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dkd/zH9eRHFG/9P8Hmm+FMopK8qGOhVUMm15lJrhHQ4=;
 b=UTAwi/Mwsa4jEkG/jTAv0nTiuB7rBkzx7ekrScdNFzP6i86C96eLa//3
 cHcrfEBPeHMC2B1jD9S2bEXnYGqgx3KpwaeKQCyq4Ch13pwtvNc55YhnD
 BtqWou8qWCI+g+TyRZoU9os3TrPETIH8oWQdjCxNTq2NKEt1iiDAeG4ld
 d2eClyZ9WaovWjidViEvkMDFvqqWFxW+ampTUFM8eHllO8CE+EgTRdTdm
 54D8vqZQbX4/AVMAA2W1wQIVcYCuaPGqj8kqCkcOUC9xQI1sdILnzYZGN
 arkXb8CjrCRCvCOqISpsFSBLRBz7L1li+K9DDimyGtDiUnVz08uNOp9Kc g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="460216923"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="460216923"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 04:05:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="836565381"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="836565381"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 04 Dec 2023 04:05:23 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Dec 2023 13:58:56 +0200
Message-Id: <20231204115856.176240-4-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231204115856.176240-1-mika.kahola@intel.com>
References: <20231204115856.176240-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/display: Print out debug messages
 for clock rates
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

Print out clock rate for C10 chip and clock rate and link bitrate
for C20 chip for debugging purposes.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 02efe2786c6a..647e00bac9c3 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1942,8 +1942,9 @@ void intel_c10pll_dump_hw_state(struct drm_i915_private *i915,
 	unsigned int multiplier, tx_clk_div;
 
 	fracen = hw_state->pll[0] & C10_PLL0_FRACEN;
-	drm_dbg_kms(&i915->drm, "c10pll_hw_state: fracen: %s, ",
-		    str_yes_no(fracen));
+	drm_dbg_kms(&i915->drm, "c10pll_hw_state:\n");
+	drm_dbg_kms(&i915->drm, "clock: %d\n", hw_state->clock);
+	drm_dbg_kms(&i915->drm, "fracen: %s, ", str_yes_no(fracen));
 
 	if (fracen) {
 		frac_quot = hw_state->pll[12] << 8 | hw_state->pll[11];
@@ -2131,6 +2132,8 @@ void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
 	int i;
 
 	drm_dbg_kms(&i915->drm, "c20pll_hw_state:\n");
+	drm_dbg_kms(&i915->drm, "link bitrate: %d\n", hw_state->link_bit_rate);
+	drm_dbg_kms(&i915->drm, "clock: %d\n", hw_state->clock);
 	drm_dbg_kms(&i915->drm, "tx[0] = 0x%.4x, tx[1] = 0x%.4x, tx[2] = 0x%.4x\n",
 		    hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]);
 	drm_dbg_kms(&i915->drm, "cmn[0] = 0x%.4x, cmn[1] = 0x%.4x, cmn[2] = 0x%.4x, cmn[3] = 0x%.4x\n",
-- 
2.34.1

