Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 902374B1A38
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 01:14:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4169610E998;
	Fri, 11 Feb 2022 00:13:57 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D506E10E998
 for <Intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 00:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644538435; x=1676074435;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2/d3XCMUVn+Y02oLCdQ2KphtSvPj8mo6relBP+c7RuQ=;
 b=JfOQKxOsMqjRy/yEK7vNXaug9mb+AFs7h/OztXCeYqzga00WtAUMae+B
 MyLZdNCuTC+Ct4Pm9coc0yZj2xBGq5KCZgTMMIRt3fmeEq6Dd62DhtKYu
 se4K0/TS2nIkUvSGosKr2MmJ4864CQJaYzq+TDSDvFlufDaMI+WqGfvEM
 j7flFgepilEOj/B/ecpnCsESzliOhXmLpRtSAbXi5RoEx8vAM2315Gr0a
 q1ULkR8KVnaFXm9dRDpAzr0tP1RjAEgPzijVVcxbZI/cGFvWVmb9lKIH/
 sMt9Z7TSnUYbINCWHrTF9b828kH7OXg86/jvx/cytCiB1flvn1oVh0RZ7 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="233179449"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="233179449"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 16:13:55 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="526740531"
Received: from sjhawar-mobl1.amr.corp.intel.com (HELO
 cataylo2-mobl1.intel.com) ([10.255.87.81])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 16:13:53 -0800
From: clinton.a.taylor@intel.com
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 16:13:42 -0800
Message-Id: <20220211001342.16730-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/dg2: add Wa_14014947963
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

From: Clint Taylor <clinton.a.taylor@intel.com>

BSPEC: 46123
v2: Address review feedback [MattR]
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
 drivers/gpu/drm/i915/i915_reg.h             | 2 ++
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index b146a393cd79..c6b78529d149 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -689,6 +689,11 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 	    IS_DG2_GRAPHICS_STEP(engine->i915, G11, STEP_A0, STEP_B0))
 		wa_masked_en(wal, GEN9_HALF_SLICE_CHICKEN7,
 			     DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA);
+
+	/* wa_14014947963: DG2 G10 [B0..NONE] G11 [ALL] */
+	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_FOREVER) ||
+		IS_DG2_G11(engine->i915))
+		wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
 }
 
 static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 87c92314ee26..bfbeebe57725 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9928,4 +9928,6 @@ enum skl_power_gate {
 #define CLKGATE_DIS_MISC			_MMIO(0x46534)
 #define  CLKGATE_DIS_MISC_DMASC_GATING_DIS	REG_BIT(21)
 
+#define VF_PREEMPTION			_MMIO(0x83a4)
+#define  PREEMPTION_VERTEX_COUNT	REG_GENMASK(15, 0)
 #endif /* _I915_REG_H_ */
-- 
2.34.1

