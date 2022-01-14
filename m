Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BAA48F088
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 20:41:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3447F10E1B3;
	Fri, 14 Jan 2022 19:41:39 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 026A310E1B3
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jan 2022 19:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642189298; x=1673725298;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1QChcV5JeAGPCq3sGfIZ9bxJi0oKyTg0vX3GAYokeRg=;
 b=KwIy9r8po0mEz6vmqtJG4kqn4VruamRv9GqgzUe/H+EdodaUthcm8uO3
 SHe3FhmuqYLGkU2HEXcbhei2cIL/G/eakA7S0CBx9eWlu1G66DfaZOB2C
 j9jh7YgfAxo9dapLDgZfa5M5IlAk1kB7Pe/FIcQfjNCNBMV2Efv9VzQ92
 sPE9dqCY4CVfch9AglwMgsgszJ9Ov18rGRAaKKWRibDvfzzRy+6N3ftNX
 cZMRqTj7nBUkFoovN+vNzimSvmx+hsRNNUwI0gfiQiRbycinpGp9ACAwp
 Rotsyt8ZL6mI2I5BzZ/sUf9Eri8/eaTUUV3fedWEB8vTVCGkcizLeOkD1 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10227"; a="225001458"
X-IronPort-AV: E=Sophos;i="5.88,289,1635231600"; d="scan'208";a="225001458"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 11:41:37 -0800
X-IronPort-AV: E=Sophos;i="5.88,289,1635231600"; d="scan'208";a="614438670"
Received: from jeannewa-mobl2.amr.corp.intel.com (HELO
 cataylo2-xps.jf.intel.com) ([10.251.139.95])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 11:41:36 -0800
From: clinton.a.taylor@intel.com
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jan 2022 11:41:31 -0800
Message-Id: <20220114194131.21999-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: add Wa_14015023722
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
 drivers/gpu/drm/i915/i915_reg.h             | 4 ++++
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 6a4372c3a3c5..5cdacfa8aefc 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -688,6 +688,11 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 	    IS_DG2_GRAPHICS_STEP(engine->i915, G11, STEP_A0, STEP_B0))
 		wa_masked_en(wal, GEN9_HALF_SLICE_CHICKEN7,
 			     DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA);
+
+	/* wa_14015023722: DG2 G11 [B0..NONE] */
+	if (IS_DG2_GRAPHICS_STEP(engine->i915, G11, STEP_B0, STEP_FOREVER))
+		wa_masked_en(wal, VF_PREEMPTION, PREEMPTION_VERTEX_4000);
+
 }
 
 static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index ef6bc8180073..5805a45920b3 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -11934,4 +11934,8 @@ enum skl_power_gate {
 #define SLICE_COMMON_ECO_CHICKEN1		_MMIO(0x731C)
 #define   MSC_MSAA_REODER_BUF_BYPASS_DISABLE	REG_BIT(14)
 
+#define VF_PREEMPTION			_MMIO(0x83a4)
+#define  PREEMPTION_VERTEX_COUNT	REG_GENMASK(15, 0)
+#define  PREEMPTION_VERTEX_4000		REG_FIELD_PREP(PREEMPTION_VERTEX_COUNT, 0x4000)
+
 #endif /* _I915_REG_H_ */
-- 
2.34.1

