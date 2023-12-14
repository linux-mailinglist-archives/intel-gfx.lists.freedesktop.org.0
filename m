Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0953812912
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 08:26:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8359D10E35B;
	Thu, 14 Dec 2023 07:26:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D74B10E8DA
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Dec 2023 07:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702538804; x=1734074804;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=B+0wEOPwFhmf6NVTDLQ4MA1kELcXE+oDwHxVpW+54oU=;
 b=k83920tiCnACu+PVyUwRff/RZ0iY31P16U0DqKT21L3u1JmUoeyJIKZo
 4dtBFMrgmtqfYjshNVttoZMLKwsmwcl6HZYcxtZazCqbw3JZkh6KdbW6h
 Mg1H8OhskFE0ilolXe2H/AxQKtTmz/v7Y/PmnYbqjwljXww0/HvUS34z+
 4ZXxXDflI3sdSXZ6gznXeoBdmFPlu4KtOF5zy8r95wAtlprP8v+kARhLE
 mSUrQ7uJYZs4lJmselAy8faCHRiIQym4jYaPSAMbIAaa4hQidblW735Vk
 p5mZrT6fiesWz2qcPK/3jdkwzcmtl+moaacSsaE9rm3ZWP2BC2FlEIUfj w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="375235975"
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; d="scan'208";a="375235975"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 23:26:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="777800392"
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; d="scan'208";a="777800392"
Received: from osgc-linux-buildserver.sh.intel.com ([10.112.232.61])
 by fmsmga007.fm.intel.com with ESMTP; 13 Dec 2023 23:26:38 -0800
From: Shuicheng Lin <shuicheng.lin@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/guc: Change wa registers to MCR type
Date: Thu, 14 Dec 2023 07:26:29 +0000
Message-Id: <20231214072629.3240287-1-shuicheng.lin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

some of the wa registers are MCR registers, which has different
read/write process with normal MMIO registers. As the MCR process
also work for normal MMIO registers, change all wa registers to
MCR process for simplicity.

Signed-off-by: Shuicheng Lin <shuicheng.lin@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 63724e17829a..7409d3255cb0 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -377,8 +377,12 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
 	    CCS_MASK(engine->gt))
 		ret |= GUC_MMIO_REG_ADD(gt, regset, GEN12_RCU_MODE, true);
 
+	/* some of the wa registers are MCR regiters */
 	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
-		ret |= GUC_MMIO_REG_ADD(gt, regset, wa->reg, wa->masked_reg);
+		if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
+			ret |= GUC_MCR_REG_ADD(gt, regset, wa->mcr_reg, wa->masked_reg);
+		else
+			ret |= GUC_MMIO_REG_ADD(gt, regset, wa->reg, wa->masked_reg);
 
 	/* Be extra paranoid and include all whitelist registers. */
 	for (i = 0; i < RING_MAX_NONPRIV_SLOTS; i++)
-- 
2.25.1

