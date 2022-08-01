Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E067587371
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Aug 2022 23:39:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6E6414AB57;
	Mon,  1 Aug 2022 21:38:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6366012AD11
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Aug 2022 21:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659389924; x=1690925924;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PWlU498Girunavc+keq0SFiWp+MJN55EPVH0nzhEnFU=;
 b=Z0lXghQnYoB7rgH5xM6BjSLFl9oxbuNVeBvmxfeHssf5sziW7lUh1lgk
 RM1THf9IqnY+mapdYiQ2qLYKcQhc2jWLFuWbWOvX5qYEibq2TgA4iiu/H
 CsFV968N72cLWEE4glPDJ9/DKGJvv38emaSmczhSrfdT4LOLkRHYERxb6
 aNObsZs5N0Rd+JMQGRSVjja6zpsnedkkfBrfN2IfyECX7j9SpYxs8dhqH
 /DZYkDxN5STDfjr8KWR+3WQYXH4MHp8YlSPafuOD2VGvNowij7jHOX711
 GYOnYMhKNTIpOOtshZHJPNfzwnNFkNZLpdM8oALytwetO/6hru2EoUzww w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="288012200"
X-IronPort-AV: E=Sophos;i="5.93,209,1654585200"; d="scan'208";a="288012200"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2022 14:38:43 -0700
X-IronPort-AV: E=Sophos;i="5.93,209,1654585200"; d="scan'208";a="778396469"
Received: from hchegond-ivm1.jf.intel.com ([10.165.21.208])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2022 14:38:43 -0700
From: Harish Chegondi <harish.chegondi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Aug 2022 14:38:39 -0700
Message-Id: <20220801213839.8549-1-harish.chegondi@intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/dg2: Add Wa_1509727124
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

Bspec: 46052
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Harish Chegondi <harish.chegondi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 +++++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 60d6eb5f245b..b3b49f6d6d1c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1078,6 +1078,7 @@
 
 #define GEN10_SAMPLER_MODE			_MMIO(0xe18c)
 #define   ENABLE_SMALLPL			REG_BIT(15)
+#define   SC_DISABLE_POWER_OPTIMIZATION_EBB	REG_BIT(9)
 #define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
 
 #define GEN9_HALF_SLICE_CHICKEN7		_MMIO(0xe194)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index e8111fce56d0..59cf28baa472 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2119,6 +2119,13 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		wa_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
 	}
 
+	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
+	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
+		/* Wa_1509727124:dg2 */
+		wa_masked_en(wal, GEN10_SAMPLER_MODE,
+			     SC_DISABLE_POWER_OPTIMIZATION_EBB);
+	}
+
 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0) ||
 	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
 		/* Wa_14012419201:dg2 */
-- 
2.37.1

