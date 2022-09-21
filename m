Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A14A5BF824
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 09:47:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 870EC10E3C2;
	Wed, 21 Sep 2022 07:47:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B7AE10E8B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 07:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663746442; x=1695282442;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KHOo0c496UeffmiqWmVitvK2JTYFuQsGYOxulOm/fv8=;
 b=TBeTWL7bMFxG4Acl6V7CnF0HfNeBh9wlgA1UmdV7ypmjO/KPDKtgAFl8
 vas9a23aRW/pwY+FtiYTlSNa5qPHl3M/M6H+mcKtPyP5997a4BnijukyI
 dd7Vm8t0mLi5dtJNqqinu6fTgIgHnBhyyhDJsTLZssIFXgyXSVznZ6DFZ
 9F2HZN/1ojnjlPSnBdlvIozfzIdofAFN4g8N07QD6cfvct6CnJuFNSJCU
 lulLlmu0ta3QZ/FrLlkFRNlimA815b+VdBPcdd0PBkgA20v8L3NbQSQYI
 q16hJn/CAwXOmNL3NlVk36LKekjc35fLvJqgB9f93PeQe6mNreTa2KXsy A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="298649972"
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="298649972"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 00:47:21 -0700
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="708336992"
Received: from fyang16-desk.jf.intel.com ([10.24.96.243])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 00:47:21 -0700
From: fei.yang@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Sep 2022 00:49:01 -0700
Message-Id: <20220921074901.3651252-4-fei.yang@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220921074901.3651252-1-fei.yang@intel.com>
References: <20220921074901.3651252-1-fei.yang@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/guc: enable GuC GGTT invalidation
 from the start
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

From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Invalidating the GuC TLBs while GuC is not loaded does not have negative
consequences, so if we're starting the driver with GuC enabled we can
use the GGTT invalidation function from the get-go, iinstead of switching
to it when we initialize the GuC objects.

In MTL, this fixes and issue where we try to overwrite the
invalidation function twice (once for each GuC).

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c   | 28 ++++----------------------
 drivers/gpu/drm/i915/gt/intel_gtt.h    |  2 --
 drivers/gpu/drm/i915/gt/uc/intel_guc.c |  7 -------
 3 files changed, 4 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 30cf5c3369d9..c302125b9ae6 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -979,7 +979,10 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 			I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
 	}
 
-	ggtt->invalidate = gen8_ggtt_invalidate;
+	if (intel_uc_wants_guc(&ggtt->vm.gt->uc))
+		ggtt->invalidate = guc_ggtt_invalidate;
+	else
+		ggtt->invalidate = gen8_ggtt_invalidate;
 
 	ggtt->vm.vma_ops.bind_vma    = intel_ggtt_bind_vma;
 	ggtt->vm.vma_ops.unbind_vma  = intel_ggtt_unbind_vma;
@@ -1216,29 +1219,6 @@ int i915_ggtt_enable_hw(struct drm_i915_private *i915)
 	return 0;
 }
 
-void i915_ggtt_enable_guc(struct i915_ggtt *ggtt)
-{
-	GEM_BUG_ON(ggtt->invalidate != gen8_ggtt_invalidate);
-
-	ggtt->invalidate = guc_ggtt_invalidate;
-
-	ggtt->invalidate(ggtt);
-}
-
-void i915_ggtt_disable_guc(struct i915_ggtt *ggtt)
-{
-	/* XXX Temporary pardon for error unload */
-	if (ggtt->invalidate == gen8_ggtt_invalidate)
-		return;
-
-	/* We should only be called after i915_ggtt_enable_guc() */
-	GEM_BUG_ON(ggtt->invalidate != guc_ggtt_invalidate);
-
-	ggtt->invalidate = gen8_ggtt_invalidate;
-
-	ggtt->invalidate(ggtt);
-}
-
 /**
  * i915_ggtt_resume_vm - Restore the memory mappings for a GGTT or DPT VM
  * @vm: The VM to restore the mappings for
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index c0ca53cba9f0..1ebd49b04a43 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -578,8 +578,6 @@ void intel_ggtt_unbind_vma(struct i915_address_space *vm,
 int i915_ggtt_probe_hw(struct drm_i915_private *i915);
 int i915_ggtt_init_hw(struct drm_i915_private *i915);
 int i915_ggtt_enable_hw(struct drm_i915_private *i915);
-void i915_ggtt_enable_guc(struct i915_ggtt *ggtt);
-void i915_ggtt_disable_guc(struct i915_ggtt *ggtt);
 int i915_init_ggtt(struct drm_i915_private *i915);
 void i915_ggtt_driver_release(struct drm_i915_private *i915);
 void i915_ggtt_driver_late_release(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 925b6c9af491..c213e8479307 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -421,9 +421,6 @@ int intel_guc_init(struct intel_guc *guc)
 	/* now that everything is perma-pinned, initialize the parameters */
 	guc_init_params(guc);
 
-	/* We need to notify the guc whenever we change the GGTT */
-	i915_ggtt_enable_guc(gt->ggtt);
-
 	intel_uc_fw_change_status(&guc->fw, INTEL_UC_FIRMWARE_LOADABLE);
 
 	return 0;
@@ -447,13 +444,9 @@ int intel_guc_init(struct intel_guc *guc)
 
 void intel_guc_fini(struct intel_guc *guc)
 {
-	struct intel_gt *gt = guc_to_gt(guc);
-
 	if (!intel_uc_fw_is_loadable(&guc->fw))
 		return;
 
-	i915_ggtt_disable_guc(gt->ggtt);
-
 	if (intel_guc_slpc_is_used(guc))
 		intel_guc_slpc_fini(&guc->slpc);
 
-- 
2.25.1

