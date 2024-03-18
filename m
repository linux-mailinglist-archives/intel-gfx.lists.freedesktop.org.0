Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 138EC87F07A
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 20:37:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C84010E8EE;
	Mon, 18 Mar 2024 19:37:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FljZN2tM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B67410E8EE
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Mar 2024 19:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710790649; x=1742326649;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XMLXYgpUESKErIZDBpE0IWOjLnWgCsyLxasr66AQaBk=;
 b=FljZN2tMYP3DRmm3hzGMOl6FnuWgz/R7bUvw/yM05disGQ91cEKt7fGN
 z5U3IYuXIeym9yNi6pbj8FiZ0SC/Cq0neHMO/Mw6Q9Vx5Z/L7d2G5mTe7
 0EVfaU2qprAjWXLxNllcCmRzIB1lzFGZvsVlMySzvKxnLFvjAmxItNDOe
 y3sTYj4yfBBIyNdgQji/Wrjc+hNnTUfw9v05xdXqU3sxLnFRXBp5q2yqE
 J9mfCH4IdUD3gPcmIhQOFtGbd/ASQW3GcKyfzosvUIms/HVkRJXqsjwiY
 SxusQyMoiozkh3XRR9ZVthLHuEJyg2XJlMKApWvak+5AkoBmaYyHqabVt g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="5487470"
X-IronPort-AV: E=Sophos;i="6.07,135,1708416000"; 
   d="scan'208";a="5487470"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 12:37:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,135,1708416000"; d="scan'208";a="18179630"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 12:37:28 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH] drm/i915/mtl: Add Wa_14020495402
Date: Mon, 18 Mar 2024 12:35:58 -0700
Message-Id: <20240318193558.387153-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Disable clockgating for TDL SVHS fub.

Bspec: 46045
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 50962cfd1353..860765cd2ad2 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1215,6 +1215,7 @@
 #define   GEN12_DISABLE_EARLY_READ		REG_BIT(14)
 #define   GEN12_ENABLE_LARGE_GRF_MODE		REG_BIT(12)
 #define   GEN12_PUSH_CONST_DEREF_HOLD_DIS	REG_BIT(8)
+#define   MTL_DISABLE_TDL_SVHS_GATING		REG_BIT(1)
 #define   GEN12_DISABLE_DOP_GATING              REG_BIT(0)
 
 #define RT_CTRL					MCR_REG(0xe530)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index b079cbbc1897..8a82aa93a08d 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -828,6 +828,9 @@ static void xelpg_ctx_workarounds_init(struct intel_engine_cs *engine,
 
 	/* Wa_14019877138 */
 	wa_mcr_masked_en(wal, XEHP_PSS_CHICKEN, FD_END_COLLECT);
+
+	/* Wa_14020495402 */
+	wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2, MTL_DISABLE_TDL_SVHS_GATING);
 }
 
 static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
-- 
2.34.1

