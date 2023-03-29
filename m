Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF966CF552
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 23:24:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60C9010EC7C;
	Wed, 29 Mar 2023 21:24:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46A9910EC7C
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 21:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680125038; x=1711661038;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0UZHhuuX+wYfSAEsn4CBEbBX/tOo41ekGFM3Ais46VI=;
 b=VEc9rw0SEPyDbcPjjv3YlHybFvlWJFaJ7/6xuNS0qJefNgBZoNvQfsxb
 tGjRzHeoSm8EKWQP5bzfnVhb8CfJNsgblKq96ELq29b0QcQvDWGVZrRNj
 daEw29OH0PDJZ5kqWN9gHtX8SdCuLoYy7qQLQQUPJPi79wAFSI44+GBys
 v91dFUIzDLwB3zyLhiVck214n3zokssvxeCoKmMQNdoMvRWAvIqx1hchF
 RhA3dypTcGKZQIRH/MSTH3Y3Hkct0kjnK5TGRWLEyxmj/3xGlFLsMwC5S
 MKLhJgErOtmkJzXcqOXpkA7j+Di2dc8gNxhTCkLad0klexPZqNfOOKRuT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="338504131"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="338504131"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 14:23:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="748916120"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="748916120"
Received: from snalwade-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.255.37.126])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 14:23:56 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 18:23:35 -0300
Message-Id: <20230329212336.106161-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230329212336.106161-1-gustavo.sousa@intel.com>
References: <20230329212336.106161-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/mtl: Add workarounds
 Wa_14017066071 and Wa_14017654203
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

From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Both workarounds require the same implementation and apply to MTL P and
M from stepping A0 to B0 (exclusive).

v2:
  - Remove unrelated brace removal. (Matt)

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 9 +++++++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 4aecb5a7b631..1ec855813632 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1144,6 +1144,7 @@
 #define   ENABLE_SMALLPL			REG_BIT(15)
 #define   SC_DISABLE_POWER_OPTIMIZATION_EBB	REG_BIT(9)
 #define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
+#define   MTL_DISABLE_SAMPLER_SC_OOO		REG_BIT(3)
 
 #define GEN9_HALF_SLICE_CHICKEN7		MCR_REG(0xe194)
 #define   DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA	REG_BIT(15)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index e7ee24bcad89..6170535f94ef 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2971,6 +2971,15 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 
 	add_render_compute_tuning_settings(i915, wal);
 
+	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
+	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
+		/*
+		 * Wa_14017066071
+		 * Wa_14017654203
+		 */
+		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
+				 MTL_DISABLE_SAMPLER_SC_OOO);
+
 	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
 	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
 	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
-- 
2.40.0

