Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9ACB804D5C
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 10:16:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7983A10E4B7;
	Tue,  5 Dec 2023 09:16:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 297E710E4B7
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 09:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701767758; x=1733303758;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0pQY6HFGODIgfycLwuUbgFwVCdbt2u6MHWdou/pyp2c=;
 b=XOyHGaxQJprCZT1sb8ko/cdr85MYnRBT80e/gWOQH1INS5DuDIbiW654
 YcmrPXHhs/3+Wnok1+Ff2zkKAjOq57B1Xt1sLkGv31ULzEVnNiWlRuL5Y
 mv2pG5m3OMFLuy/oIhH11Sqfm1MMkWCEJOzjrzm0IVYskx9LiBtr1xOOs
 9n0evNAyXzdQ3ARNff5EYZVMz5p3n6tcL3vnedQoM3WZ+druDr/z2IBT8
 bxOPBFO6nNupqfaPEEHpEvM0kRW2Iyol5IJ4z6PNFhLtgnoKtJ7YuJPCV
 qY7pxKZFvWzZ2MWVfwxG/74xzLsnCw1qFnf0TNIfAyzyoqm/1e1T4UK1S A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="480061865"
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; d="scan'208";a="480061865"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 01:15:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; d="scan'208";a="12267627"
Received: from haridhar-ms-7d25.iind.intel.com ([10.190.238.53])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 01:15:56 -0800
From: Haridhar Kalvala <haridhar.kalvala@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Dec 2023 14:41:05 +0530
Message-Id: <20231205091105.3604223-1-haridhar.kalvala@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Add Wa_14019877138
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
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 9de41703fae5..85ba62639807 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -469,6 +469,9 @@
 #define XEHP_PSS_MODE2				MCR_REG(0x703c)
 #define   SCOREBOARD_STALL_FLUSH_CONTROL	REG_BIT(5)
 
+#define	XEHP_PSS_CHICKEN			MCR_REG(0x7044)
+#define	  FD_END_COLLECT			REG_BIT(5)
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

