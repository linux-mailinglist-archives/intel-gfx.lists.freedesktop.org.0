Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE987A9542
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 16:30:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0118010E5CC;
	Thu, 21 Sep 2023 14:30:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79B3010E5CC
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 14:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695306642; x=1726842642;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NugaU5p/vz43USkNiEI2EF4Yokl/cvQi9sZvLZrzx6M=;
 b=LnRynQt5rvE4U23T9EVCTlOUrcmK0oQwHSB5EN1ue93wpeEdfszvU+Xm
 9RcrT3C64pYFZv8VJr455cQG/YQvWJw663jGe2Hjwx7zJrzk52VSykSMT
 rk2QlxmNT/kTzY7twkxQB+22kj/ryYYyLJaEdMpGfYcMYi+q0Q7V78NCk
 RiJZENF6aLwHLXvnn7ddyEoO7437bCoDw33CKo36fu+VMJ1chiftaAUHY
 7nWKTL5lCC5uWeKfbG5c/4dhw3+i6ZDUXbYHdlAo99PFAt5KfyP4nA1qw
 k+5muef8Vhhyo3SCaqpX1PpjW/nOG02u18wGzXVOQYnLIhPnMifkodcAB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="384389838"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="384389838"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 07:30:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="812670858"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="812670858"
Received: from shekharc-desk.iind.intel.com ([10.190.239.54])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 07:30:39 -0700
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Sep 2023 20:00:28 +0530
Message-Id: <20230921143028.483008-1-shekhar.chauhan@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Add Wa_18028616096
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

Drop UGM per set fragment threshold to 3

BSpec: 54833
Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index a00ff51c681d..431c575c532b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1230,6 +1230,7 @@
 #define   DISABLE_D8_D16_COASLESCE		REG_BIT(30)
 #define   FORCE_1_SUB_MESSAGE_PER_FRAGMENT	REG_BIT(15)
 #define LSC_CHICKEN_BIT_0_UDW			MCR_REG(0xe7c8 + 4)
+#define   UGM_FRAGMENT_THRESHOLD_TO_3		REG_BIT(58 - 32)
 #define   DIS_CHAIN_2XSIMD8			REG_BIT(55 - 32)
 #define   FORCE_SLM_FENCE_SCOPE_TO_TILE		REG_BIT(42 - 32)
 #define   FORCE_UGM_FENCE_SCOPE_TO_TILE		REG_BIT(41 - 32)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 660d4f358eab..992041e3776c 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2914,6 +2914,9 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		 * Wa_22015475538:dg2
 		 */
 		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
+
+		/* Wa_18028616096:dg2 */
+		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, UGM_FRAGMENT_THRESHOLD_TO_3);
 	}
 
 	if (IS_DG2_G11(i915)) {
-- 
2.34.1

