Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A64556C17F
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 23:58:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9340610EB0D;
	Fri,  8 Jul 2022 21:58:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D65B310E9E3
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 21:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657317489; x=1688853489;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tzMghZ09Mq4eZP8P2gf8ggN3K3nhBhc01wNLA96xAOw=;
 b=KF+vuYlXr4rCXPDKhzIldLRbfjRRouPVUc0R0fVneelckM9ndLdb3PdB
 nTuTe4Zx1pA+cqDN07kEMmO2N9ZvMX49Q9JuxNjuHbuNhNLpW7irEL760
 pzKrOVqGD10F65NAp5jZVwFwaqAT9CxOS7v9psj83SAlKuFrCXEhgkF3k
 n7yy3MD232++iUDh+NmZSrJfv/2ulnxle6M+FqqibeHiEumpvm2x7dTgR
 W8tdNdC7hxSg6OzhhOkz4F4S2OFnLQO9cv/rvMemh3fBDQkX021lekJxc
 fejN5Hahqld30Li0dxr8A6GW9Rm96OjVpFRvmJV0MrT9QhCYUExrnzgh9 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10402"; a="281927119"
X-IronPort-AV: E=Sophos;i="5.92,256,1650956400"; d="scan'208";a="281927119"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 14:58:08 -0700
X-IronPort-AV: E=Sophos;i="5.92,256,1650956400"; d="scan'208";a="651721138"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 14:58:08 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jul 2022 14:58:03 -0700
Message-Id: <20220708215804.2889246-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dg2: Add Wa_15010599737
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

This workaround may need to be extended to other platforms soon, but for
now it's marked as DG2-specific.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index e6bb24dc7b99..60d6eb5f245b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -371,6 +371,9 @@
 #define GEN9_WM_CHICKEN3			_MMIO(0x5588)
 #define   GEN9_FACTOR_IN_CLR_VAL_HIZ		(1 << 9)
 
+#define CHICKEN_RASTER_1			_MMIO(0x6204)
+#define   DIS_SF_ROUND_NEAREST_EVEN		REG_BIT(8)
+
 #define VFLSKPD					_MMIO(0x62a8)
 #define   DIS_OVER_FETCH_CACHE			REG_BIT(1)
 #define   DIS_MULT_MISS_RD_SQUASH		REG_BIT(0)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index dcc1ee392c0d..e8111fce56d0 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -689,6 +689,9 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_FOREVER) ||
 		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
 		wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
+
+	/* Wa_15010599737:dg2 */
+	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
 }
 
 static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
-- 
2.36.1

