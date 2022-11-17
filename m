Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7B262E52D
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 20:23:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5580010E1D0;
	Thu, 17 Nov 2022 19:22:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFE7910E1D0
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668712974; x=1700248974;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SEd3bLP1OB5ZKBc33PaQsM2Hpc2v/j87JHrqNrrrATM=;
 b=dHKN4QgS0/du4rFnbvnxIIOF9+AdtDGlwZ5+Jrr3GBu8w5MKZC6xqNqD
 livCpra9Wq81+r5ChwzuXlgRLcidkSgF0YNHr0j3fP5r4lFtq9uCdEXoq
 nrpgE6+0V1l7G9UN1zQU3jg5bjFsvDREfoytK7+8RNVQxMlNWnXRInJ0h
 fmnxUa7JJZx7pTI1SfBe3kQR766I9yRUand6phMVIqlmF8iUPZGWA4Eom
 k1RidLJMGQNUs436KrUXNTCBDhxdfvin75bqyjmerR7VHODwigjYofpjZ
 VUCHRb8g5Edk/uRp1m0eREoyHLCs4kkzMcANW5AQrm81G7fJOLqNnhzJo w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="375080301"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="375080301"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 11:22:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="884999816"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="884999816"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 11:22:52 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Nov 2022 11:22:04 -0800
Message-Id: <20221117192204.445428-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Skip doubling channel numbers for
 LPDDR4/LPDDDR5
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

MTL LPDDR5 reported 16b with 8 channels. Previous platforms
reported 32b with 4 channels and hence needed a mulitplication
by a factor of 2. Skip increasing the channels for MTL.

While at it fix the logic while reading dram info num channels.

Bspec: 64631
Fixes: 825477e77912 ("drm/i915/mtl: Obtain SAGV values from MMIO instead of GT pcode mailbox")
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 3 ++-
 drivers/gpu/drm/i915/intel_dram.c       | 3 +--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 4ace026b29bd..7601e1061bca 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -439,7 +439,8 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 		return ret;
 	}
 
-	if (dram_info->type == INTEL_DRAM_LPDDR4 || dram_info->type == INTEL_DRAM_LPDDR5)
+	if (!IS_METEORLAKE(dev_priv) &&
+	    (dram_info->type == INTEL_DRAM_LPDDR4 || dram_info->type == INTEL_DRAM_LPDDR5))
 		num_channels *= 2;
 
 	qi.deinterleave = qi.deinterleave ? : DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
index 2403ccd52c74..bba8cb6e8ae4 100644
--- a/drivers/gpu/drm/i915/intel_dram.c
+++ b/drivers/gpu/drm/i915/intel_dram.c
@@ -471,8 +471,7 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915)
 	u32 val = intel_uncore_read(&i915->uncore, MTL_MEM_SS_INFO_GLOBAL);
 	struct dram_info *dram_info = &i915->dram_info;
 
-	val = REG_FIELD_GET(MTL_DDR_TYPE_MASK, val);
-	switch (val) {
+	switch (REG_FIELD_GET(MTL_DDR_TYPE_MASK, val)) {
 	case 0:
 		dram_info->type = INTEL_DRAM_DDR4;
 		break;
-- 
2.34.1

