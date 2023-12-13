Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5A6810AA4
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 07:51:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2719C10E6AA;
	Wed, 13 Dec 2023 06:51:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72D8910E6AA
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 06:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702450280; x=1733986280;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=R0CKchSVRa2M2HNMcYdvOsWxh1pVu3SRm+iipvrki00=;
 b=ilZIAStrVXBIXUXBntWJ4pxkPl4VY1APZMx2diQwWfhu98ydU1lyDaAq
 j6beSOgeOsxeTcDv8aoziHBCZIfLjIRHs3oPUqC16Y1OOfucfaR4xVSoY
 3HDu6TKa5FugUUPBW5TL6QPLgKP/NplChqQDBzueOp2G4I2KhjPOG6BGd
 L8jPUSjxCmnjWxkKBFUfQOZmB5zvTUzWkLqQgFLqbyhx2jjr9ViUGwOf9
 YJNwWkQdJR/5do5AwTAgUWdvwtL7ts46l8sw1rRwptiHlpESrcujaClKX
 J19GSv/MatzUKU9AmYPPgXGMDG5yZAqBKrWy6KOTY7lg7eP6uk20esPYC A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="374427832"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="374427832"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 22:51:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="839746009"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="839746009"
Received: from haridhar-ms-7d25.iind.intel.com ([10.190.238.53])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 22:51:18 -0800
From: Haridhar Kalvala <haridhar.kalvala@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915: Add Wa_14019877138
Date: Wed, 13 Dec 2023 12:16:12 +0530
Message-Id: <20231213064612.480032-1-haridhar.kalvala@intel.com>
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Enable Force Dispatch Ends Collection for DG2.

BSpec: 46001

Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 9de41703fae5..50962cfd1353 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -469,6 +469,9 @@
 #define XEHP_PSS_MODE2				MCR_REG(0x703c)
 #define   SCOREBOARD_STALL_FLUSH_CONTROL	REG_BIT(5)
 
+#define XEHP_PSS_CHICKEN			MCR_REG(0x7044)
+#define   FD_END_COLLECT			REG_BIT(5)
+
 #define GEN7_SC_INSTDONE			_MMIO(0x7100)
 #define GEN12_SC_INSTDONE_EXTRA			_MMIO(0x7104)
 #define GEN12_SC_INSTDONE_EXTRA2		_MMIO(0x7108)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 4cbf9e512645..3eacbc50caf8 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -777,6 +777,9 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 
 	/* Wa_18019271663:dg2 */
 	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
+
+	/* Wa_14019877138:dg2 */
+	wa_mcr_masked_en(wal, XEHP_PSS_CHICKEN, FD_END_COLLECT);
 }
 
 static void xelpg_ctx_gt_tuning_init(struct intel_engine_cs *engine,
-- 
2.25.1

