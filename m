Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 284BD880AFA
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 07:05:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F50010EC58;
	Wed, 20 Mar 2024 06:05:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XcMYLMVX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 141FA10EC55
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 06:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710914718; x=1742450718;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Pfq5BuJD8SdSpxFxGwG0Pb+NuSF4lV7BH43S3rDQJTk=;
 b=XcMYLMVXl2r8z1kiX1NbbRBjgG7NAe4BNG0BSt0hjyNHAEC6eF3eQTiV
 7fjBI1hmEmbDKzfGTPEEJeBvZtO+0OIo6ZAWomPloDIUn/VF4FQUFwnXV
 EmcPQ5m1zx6HlDdTgQaDZ+BUa2FDacRTIgVndelgjA75K/Rd7bNl9A3jF
 5ACNX7aQ4hozTnfT3sKdtxlzp5aA1VWMx0ZXYUO7jdzSwItH+y4jETwgD
 lzLi/CZ4UKgnCSVTEV/UgGHaw1vYukMQ8DDXzivjmu2OHJoJTotgRzaLm
 uuV7Q6ygqihezMbZi53646Mq8BnSiivTrbueY1pZNNfjXBKKNtoS7vLNY g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="28295584"
X-IronPort-AV: E=Sophos;i="6.07,139,1708416000"; d="scan'208";a="28295584"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 23:05:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,139,1708416000"; d="scan'208";a="51485510"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 23:05:17 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [CI 6/6] drm/i915: Remove special handling for !RCS_MASK()
Date: Tue, 19 Mar 2024 23:03:03 -0700
Message-ID: <20240320060543.4034215-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240320060543.4034215-1-lucas.demarchi@intel.com>
References: <20240320060543.4034215-1-lucas.demarchi@intel.com>
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

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 5 ++---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c    | 4 ----
 2 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 396f5fe993c3f..476651bd0a210 100644
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
index 217277329546c..3dd7699f2ad3b 100644
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
-- 
2.43.0

