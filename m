Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 242AB7B9750
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 00:18:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA8B610E3CD;
	Wed,  4 Oct 2023 22:18:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD17310E07E
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 22:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696457903; x=1727993903;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wQBxzFRZPUtKmJcIPpx9iIXPiT58Z3TKWyKhMVD8KH4=;
 b=c2DkhN5aVJOyAYC+tS+TWUXiCFvKc6ErnBLqt8Ngw9397GJcJMH+FjXm
 7cgY1yLEmVphJCdqnBk8E5MpAPjc45LA8LqqTC56EZrlOazhbniHF7kc/
 ZdtUgqiaJUbJuCaZCpLGOHs/tUGcnOd1jMrBv75iyZLOUK6pvzIN7gwBh
 BdVaL7YGfa5tyCKzWzwMvFJfagulJ+VakDZMSy1c/Y565kJd+0O2vINR7
 Zr0hWzwfZ01TvKUGxDApO6hf3Zt1IJ+ac+d1Z+3nj0huZMSy+3giz2Trn
 7b+TikYd7XPP5i/5qo3sLYdokZq4A4fieuki/hYAN+kc9PPsm0v0oWtlV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="382195124"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="382195124"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 15:18:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="867611816"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="867611816"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 15:18:22 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Oct 2023 15:07:35 -0700
Message-Id: <20231004220739.1313307-3-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231004220739.1313307-1-jonathan.cavitt@intel.com>
References: <20231004220739.1313307-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH dii-client v6 1/4] drm/i915: Add GuC TLB
 Invalidation pci tags
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, jonathan.cavitt@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add pci (device info) tags for if GuC TLB Invalidation is enabled.
Since GuC based TLB invalidation is only strictly necessary for MTL
resently, only enable GuC based TLB invalidations for MTL.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 1 +
 drivers/gpu/drm/i915/i915_pci.c          | 1 +
 drivers/gpu/drm/i915/intel_device_info.h | 3 ++-
 3 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index cb60fc9cf8737..c53c5586c40c8 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -801,4 +801,5 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_LMEMBAR_SMEM_STOLEN(i915) (!HAS_LMEM(i915) && \
 				       GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
 
+#define HAS_GUC_TLB_INVALIDATION(i915)	(INTEL_INFO(i915)->has_guc_tlb_invalidation)
 #endif
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index df7c261410f79..c3a5d5efb45d1 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -837,6 +837,7 @@ static const struct intel_device_info mtl_info = {
 	.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
 	.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(CCS0),
 	.require_force_probe = 1,
+	.has_guc_tlb_invalidation = 1,
 	MTL_CACHELEVEL,
 };
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 39817490b13fd..ad54db0a22470 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -173,7 +173,8 @@ enum intel_ppgtt_type {
 	func(has_coherent_ggtt); \
 	func(tuning_thread_rr_after_dep); \
 	func(unfenced_needs_alignment); \
-	func(hws_needs_physical);
+	func(hws_needs_physical); \
+	func(has_guc_tlb_invalidation);
 
 struct intel_ip_version {
 	u8 ver;
-- 
2.25.1

