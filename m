Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD457AB550
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 17:54:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F34110E69D;
	Fri, 22 Sep 2023 15:54:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1E2F10E69D
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Sep 2023 15:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695398048; x=1726934048;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k/8GVpdP4VkhXmX68n3bQSsSDUAIw/fS7TpuimjECh8=;
 b=lLVW4yw0Bf0UJjj/AoXq7Ml9AQ3gT8uX7FIU9B2YD+CxZNP7TRSjRshG
 HyIl+Gv/cy/2Njo/v+QniM7wyNUn9Reu9lW/WImDJoq6+MyAHDJRE70Gk
 A5Do5ESoWD0sLG+RY5k4IFkDCWhS6fevsFQZABCu00Cev+iaexddeRX7w
 /wIHl6PoXDzVc4UEBcLh5JFldus2Z9MsRPbAton2M54hTKVhURPHzx+ry
 bJ3rAbm+AzUrTbn3d50qaemuU9lL+eCyIbR8vf2HUSa/3h5l9CTE8+wF4
 DKxGggOQ7NBdUC5GXc8TccNlLfG3nQtxxoSgi9b98J94WJtvS6krlQii/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="380762796"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="380762796"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 08:54:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="813102035"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="813102035"
Received: from shekharc-desk.iind.intel.com ([10.190.239.54])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 08:54:06 -0700
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Sep 2023 21:23:56 +0530
Message-Id: <20230922155356.583595-1-shekhar.chauhan@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5] drm/i915: Add Wa_18028616096
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

Drop UGM per set fragment threshold to 3

BSpec: 54833
Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
 2 files changed, 6 insertions(+)

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
index 660d4f358eab..df0fba2850b6 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2957,6 +2957,11 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		wa_mcr_masked_en(wal, GEN8_HALF_SLICE_CHICKEN1,
 				 GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE);
 	}
+
+	if (IS_DG2_G10(i915) || IS_DG2_G12(i915)) {
+		/* Wa_18028616096 */
+		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, UGM_FRAGMENT_THRESHOLD_TO_3);
+	}
 }
 
 static void
-- 
2.34.1

