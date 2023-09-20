Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 170CF7A7172
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 06:12:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00C7210E43B;
	Wed, 20 Sep 2023 04:12:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04C7A10E43B
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 04:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695183160; x=1726719160;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lHvXAUC5cgvLDIQYbavytcJNYfp5BfgzM2FDHg/y2ko=;
 b=DNYXLDsNETBPHXatS8paZ02DnshKE3uicKq8QalLXdGZDpwJTR4JAabK
 VefePLbrJgeyUPj+DWdVr7sB88FcmjbSsdQ9bkuGiDvRRqQBtmOEzYrfr
 zDqtOD7iswDBBJQDZqelOorJnZKOm1OzwCPBhmwXJf/bNNx76z8mSeF19
 2lxqKvgcDJgBg79nWAK8I+D/7fbKJHl8dCwSFuqOPDN5FnI2gqVWQ1g/p
 741npbmRQJXXtUwhFs17vgP7SLZLK0RLfcRjj3/pA86sngkdl/yRY2MeI
 ecqxlgKu7sz4ZnTLJ06ni+/vav19XtXTx5rKe9QKH9QIckMl/nMYmvtKY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="370432651"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="370432651"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 21:06:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="920119278"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="920119278"
Received: from shekharc-desk.iind.intel.com ([10.190.239.54])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 21:05:58 -0700
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Sep 2023 09:35:47 +0530
Message-Id: <20230920040547.181861-1-shekhar.chauhan@intel.com>
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
index a00ff51c681d..f8ab99affa15 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1227,6 +1227,7 @@
 #define EU_PERF_CNTL3				PERF_REG(0xe758)
 
 #define LSC_CHICKEN_BIT_0			MCR_REG(0xe7c8)
+#define   UGM_FRAGMENT_THRESHOLD_TO_3		REG_BIT(58)
 #define   DISABLE_D8_D16_COASLESCE		REG_BIT(30)
 #define   FORCE_1_SUB_MESSAGE_PER_FRAGMENT	REG_BIT(15)
 #define LSC_CHICKEN_BIT_0_UDW			MCR_REG(0xe7c8 + 4)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 660d4f358eab..3f3977014ee7 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2914,6 +2914,9 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		 * Wa_22015475538:dg2
 		 */
 		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
+
+		/* Wa_18028616096:dg2 */
+		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, UGM_FRAGMENT_THRESHOLD_TO_3);
 	}
 
 	if (IS_DG2_G11(i915)) {
-- 
2.34.1

