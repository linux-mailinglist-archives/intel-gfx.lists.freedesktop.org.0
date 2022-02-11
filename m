Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 668324B1DAA
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 06:23:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D73A810E9F3;
	Fri, 11 Feb 2022 05:23:48 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBFD310E9F5
 for <Intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 05:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644557027; x=1676093027;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9sti3Kbfy28IIJooyG2GFlhssXv1d81tS0clSbrhKXY=;
 b=eEl71e/MoazDb8ypUB79dZMXrWGaDcCgw6twY1jcl/LMt307Ma7e8UF1
 6ArnM3bTIYkc3IDMaDjEN0lSHsUoLzuPeEM1CAPheA4skt+SPqPSfP660
 /nPm66cSzKUwX/BR9HZSTHRieQF1gPZjYQ9xc49o9zrrdZ7AeEO9kthOX
 qCm56gI9yxuFRnNXZu9g1CvAaj9pTXUwUG/BTVOS6In4MmITwAEKvlzzF
 VetfmOC1Qksg/fCQ2tt3gVsCEW55m0HbssMiRlcBqWqtaTHLvj9HfFnzX
 R8+hHTVeFVfHjaB3lYOYcAh9hQKP4mEPy6rIkI2FJ5kiZ5cHrFbqQrWlZ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="247254719"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="247254719"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 21:23:45 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="630068596"
Received: from sjhawar-mobl1.amr.corp.intel.com (HELO
 cataylo2-mobl1.intel.com) ([10.255.87.81])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 21:23:44 -0800
From: clinton.a.taylor@intel.com
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 21:23:33 -0800
Message-Id: <20220211052333.12306-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V3] drm/i915/dg2: add Wa_14014947963
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
v3: move register definition to gt_regs [MattR]
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index a6f0220c2e9f..5c8c3bc65acc 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -124,6 +124,9 @@
 #define   ECOCHK_PPGTT_WT_HSW		(0x2 << 3)
 #define   ECOCHK_PPGTT_WB_HSW		(0x3 << 3)
 
+#define VF_PREEMPTION			_MMIO(0x83a4)
+#define  PREEMPTION_VERTEX_COUNT	REG_GENMASK(15, 0)
+
 #define GEN8_RC6_CTX_INFO		_MMIO(0x8504)
 
 #define GAC_ECO_BITS			_MMIO(0x14090)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index b146a393cd79..9416b1434c64 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -689,6 +689,11 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 	    IS_DG2_GRAPHICS_STEP(engine->i915, G11, STEP_A0, STEP_B0))
 		wa_masked_en(wal, GEN9_HALF_SLICE_CHICKEN7,
 			     DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA);
+
+	/* wa_14014947963: dg2_g10 [B0..NONE] dg2_g11 dg2_g12 */
+	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_FOREVER) ||
+		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
+		wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
 }
 
 static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
-- 
2.34.1

