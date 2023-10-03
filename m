Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 254C57B731C
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 23:12:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98CFF10E31D;
	Tue,  3 Oct 2023 21:12:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DF0F10E31D
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 21:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696367559; x=1727903559;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IBJZNX6QdZ1nfHZyb0qZzPx31cybd90pLyR9aqZ7npg=;
 b=Cn4B4sUXfi26NDjQAmc6oW7N/CK+P0aGhEQpEne3hJMnznkSWOVSTO9Y
 emlJbOXOMsPUnm0Yskn/5MnJNf2AaxfAE4Y8o1zpHp22a8s/fuEdSUtsS
 gMtKWQksuJjhp18igrsBrRTGbhEO7Qz+pYymrxiDigd1RKs291Ehdw+oj
 O0EVZQVS9IMtRg6wJA8/MAEtQO5K9+mymCJy2dhiO+5UVNdRQ5lM6W/FC
 igmLEuS5/MhnxCMWcxrfJqwlJKr3ZZXQVbqV2KYCbNMEjFX/eWkTQlgzl
 wv4itSsMVv+DJvQRies2Zy26OSRd4Erq4Cmy1fpi2y73ETaPabLjpZLlA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="449472897"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="449472897"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 14:12:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="821399829"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="821399829"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 14:12:37 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Oct 2023 14:01:54 -0700
Message-Id: <20231003210156.1172732-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/3] drm/i915: Add GuC TLB Invalidation pci
 tags
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

Add device info tags for if GuC TLB Invalidation is enabled.  Since GuC
based TLB invalidation is only strictly necessary for MTL presently,
only enable GuC based TLB invalidations for MTL.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 1 +
 drivers/gpu/drm/i915/i915_pci.c          | 1 +
 drivers/gpu/drm/i915/intel_device_info.h | 3 ++-
 3 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b4fa81cab92d7..154f004373a9c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -821,4 +821,5 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
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

