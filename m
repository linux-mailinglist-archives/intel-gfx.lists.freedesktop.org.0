Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5368879FD9
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 00:51:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73FC410F256;
	Tue, 12 Mar 2024 23:51:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HxCvgXaX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5312510F24A
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 23:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710287475; x=1741823475;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hAjXkJYePvgxzu+bwPo5U/rwoSMjpvl+KVDdExYISo8=;
 b=HxCvgXaXRvCXfeUCAxZlCC1sU8WeD9N8HY7nV7Q1RgJEJQXyJkNoMlfm
 8/29s0li2vbYIWXUSFq8iHIuWf8R/pga8gGFpzWFOd4JnmLPBh26LfJa6
 QvzVnmak28ZgIjXDnko2JHpfsZCoQYhi+96FPjPFWj3Xq3J8oVyXc+2oI
 qwyRSbLYl0TTxNKu1qEcgsU6rPcWFjVmdyab0VnevBfiicACU1K3n5D4Y
 ruj6uAs25fJLraMc8pQqV2uZndqscqUOUR0+1pNJCHpV1MAYfL5BrFjOf
 ECqK4RGkDWk/clwzNXxVwEAQ9InSEZ4YMEkKd5EMWsvWKtQMh/JzYwLuZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="8848047"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="8848047"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 16:51:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="42715887"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 16:51:15 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH v2 6/6] drm/i915: Remove special handling for !RCS_MASK()
Date: Tue, 12 Mar 2024 16:51:45 -0700
Message-ID: <20240312235145.2443975-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240312235145.2443975-1-lucas.demarchi@intel.com>
References: <20240312235145.2443975-1-lucas.demarchi@intel.com>
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

With both XEHPSDV and PVC removed (as platforms, most of their code
remain used by others), there's no need to handle !RCS_MASK() as
other platforms don't ever have fused-off render. Remove those code
paths and the special WA flag when initializing GuC.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c   | 5 ++---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c      | 4 ----
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 1 -
 3 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 396f5fe993c3..476651bd0a21 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -497,9 +497,8 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id,
 	engine->logical_mask = BIT(logical_instance);
 	__sprint_engine_name(engine);
 
-	if ((engine->class == COMPUTE_CLASS && !RCS_MASK(engine->gt) &&
-	     __ffs(CCS_MASK(engine->gt)) == engine->instance) ||
-	     engine->class == RENDER_CLASS)
+	if ((engine->class == COMPUTE_CLASS || engine->class == RENDER_CLASS) &&
+	    __ffs(CCS_MASK(engine->gt) | RCS_MASK(engine->gt)) == engine->instance)
 		engine->flags |= I915_ENGINE_FIRST_RENDER_COMPUTE;
 
 	/* features common between engines sharing EUs */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 217277329546..3dd7699f2ad3 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -320,10 +320,6 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 	if (IS_DG2_G11(gt->i915))
 		flags |= GUC_WA_CONTEXT_ISOLATION;
 
-	/* Wa_18020744125 */
-	if (!RCS_MASK(gt))
-		flags |= GUC_WA_RCS_REGS_IN_CCS_REGS_LIST;
-
 	/*
 	 * Wa_14018913170: Applicable to all platforms supported by i915 so
 	 * don't bother testing for all X/Y/Z platforms explicitly.
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index 14797e80bc92..1ad31a743197 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -101,7 +101,6 @@
 #define   GUC_WA_RCS_CCS_SWITCHOUT	BIT(16)
 #define   GUC_WA_HOLD_CCS_SWITCHOUT	BIT(17)
 #define   GUC_WA_POLLCS			BIT(18)
-#define   GUC_WA_RCS_REGS_IN_CCS_REGS_LIST	BIT(21)
 #define   GUC_WA_ENABLE_TSC_CHECK_ON_RC6	BIT(22)
 
 #define GUC_CTL_FEATURE			2
-- 
2.43.0

