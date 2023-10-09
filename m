Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2E27BEF59
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 01:49:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB37C10E14F;
	Mon,  9 Oct 2023 23:49:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66C0A10E14F
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 23:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696895380; x=1728431380;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=awEVjPUJZUIA7Eu/R2kci34PejAQviA8Ddx8X6+iRX8=;
 b=NwGvEgx7cF1cySdFHHLfGXB1To2LEVS2ldqLEAPD22F81yejAMu1ovXj
 UxZoMkM3YRSlGzHd1MD/uDJOLMvwG3VRbwNXHX70J86mHYUTDtx8uJhYD
 djllK2zl9COCPF9Lu0X1yZElzdJZ3ysNoZLsUsMEt0pET9ywZK5ZAh/Ox
 n9JdwJdlmyJFSB2jTBySs5vKqXv3Recuiwk+dRs9F+DzHuREDMJNVdULd
 nzLDiBfQi0PAlyt4UmTq3Wi9xaEnhgnIxqfMOIgNYf/Z3nnKYMc6bC8j5
 IXQ9N9UoCxVuyDrxYDdi/qat40TlB4f4fKtNSMBEflSHUbY9H3+x5Rqj0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="2861177"
X-IronPort-AV: E=Sophos;i="6.03,211,1694761200"; 
   d="scan'208";a="2861177"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 16:49:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="877007044"
X-IronPort-AV: E=Sophos;i="6.03,211,1694761200"; d="scan'208";a="877007044"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 16:49:38 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Oct 2023 16:38:56 -0700
Message-Id: <20231009233856.1932887-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Temporarily force MTL into
 uncached mode
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
Cc: matthew.d.roper@intel.com, saurabhg.gupta@intel.com,
 jonathan.cavitt@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

FIXME: CAT errors are cropping up on MTL.  This removes them,
but the real root cause must still be diagnosed.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c     | 6 +++++-
 drivers/gpu/drm/i915/gt/intel_lrc.c    | 5 ++++-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c | 5 ++++-
 3 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index ed32bf5b15464..b52c8eb0b033f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -1026,8 +1026,12 @@ enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
 	/*
 	 * Wa_22016122933: always return I915_MAP_WC for Media
 	 * version 13.0 when the object is on the Media GT
+	 *
+	 * FIXME: CAT errors are cropping up on MTL.  This removes them,
+	 * but the real root cause must still be diagnosed.
 	 */
-	if (i915_gem_object_is_lmem(obj) || intel_gt_needs_wa_22016122933(gt))
+	if (i915_gem_object_is_lmem(obj) || intel_gt_needs_wa_22016122933(gt) ||
+	    IS_METEORLAKE(gt->i915))
 		return I915_MAP_WC;
 	if (HAS_LLC(gt->i915) || always_coherent)
 		return I915_MAP_WB;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index eaf66d9031665..8aaa4df84cb3e 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1124,8 +1124,11 @@ __lrc_alloc_state(struct intel_context *ce, struct intel_engine_cs *engine)
 		 * Wa_22016122933: For Media version 13.0, all Media GT shared
 		 * memory needs to be mapped as WC on CPU side and UC (PAT
 		 * index 2) on GPU side.
+		 *
+		 * FIXME: CAT errors are cropping up on MTL.  This removes them,
+		 * but the real root cause must still be diagnosed.
 		 */
-		if (intel_gt_needs_wa_22016122933(engine->gt))
+		if (intel_gt_needs_wa_22016122933(engine->gt) || IS_METEORLAKE(engine->i915))
 			i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 27df41c53b890..e3a7d61506188 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -774,8 +774,11 @@ struct i915_vma *intel_guc_allocate_vma(struct intel_guc *guc, u32 size)
 	 * Wa_22016122933: For Media version 13.0, all Media GT shared
 	 * memory needs to be mapped as WC on CPU side and UC (PAT
 	 * index 2) on GPU side.
+	 *
+	 * FIXME: CAT errors are cropping up on MTL.  This removes them,
+	 * but the real root cause must still be diagnosed.
 	 */
-	if (intel_gt_needs_wa_22016122933(gt))
+	if (intel_gt_needs_wa_22016122933(gt) || IS_METEORLAKE(gt->i915))
 		i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
 
 	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
-- 
2.25.1

