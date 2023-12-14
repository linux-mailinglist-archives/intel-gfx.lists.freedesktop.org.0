Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0A88129E0
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 09:00:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1B3610E8E9;
	Thu, 14 Dec 2023 08:00:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 024AD10E842
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Dec 2023 08:00:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702540810; x=1734076810;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lxWzLA58T5rLCxLQdLmdM9+je/b2joUPjjyBRbIMLDs=;
 b=ZuaHUTZpV2XOxmLtbO/sCvCj7tmtSWeHgJ5xaBsQItj3kOdn5q8WQcEX
 JfeCKAohRn0u+CHlWB6PzMW2rtSSwu6OIZ91v1oXb27Kdi0sefuP53aj+
 2MiQqJSxyjkcSYfh3AxKPVqfwTrj01l9l0yFwoN0T/T8upf+ppObdviis
 +c1akTPnyjdiysgjqmassZQYHrZxs+xKrUF+LoVTdNMQXlEu2Za/GPdc1
 KutQjTup6Rw6CngrM+B/6dVUNSXQHhE24quBMun7Uc8IEkwmaRBCihGxW
 uaF9dpY+PiX5GirXWLsuiPJBaeoULi3mt6xAXOTJJ5s3YlD3+SYEs83HV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="2238574"
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; 
   d="scan'208";a="2238574"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 00:00:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="864935480"
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; d="scan'208";a="864935480"
Received: from osgc-linux-buildserver.sh.intel.com ([10.112.232.61])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Dec 2023 00:00:07 -0800
From: Shuicheng Lin <shuicheng.lin@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/guc: Change wa registers to MCR type
Date: Thu, 14 Dec 2023 07:59:47 +0000
Message-Id: <20231214075947.3240751-1-shuicheng.lin@intel.com>
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

some of the wa registers are MCR registers, which have different
read/write process with normal MMIO registers. As the MCR process
also work for normal MMIO registers, change all wa registers to
MCR process for simplicity.

Signed-off-by: Shuicheng Lin <shuicheng.lin@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 63724e17829a..5edf05401f08 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -377,8 +377,12 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
 	    CCS_MASK(engine->gt))
 		ret |= GUC_MMIO_REG_ADD(gt, regset, GEN12_RCU_MODE, true);
 
+	/* some of the wa registers are MCR registers */
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

