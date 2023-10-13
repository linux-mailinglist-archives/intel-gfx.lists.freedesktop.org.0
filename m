Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A74287C8CB6
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 20:03:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74BA810E083;
	Fri, 13 Oct 2023 18:03:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9E1210E628
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 18:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697220210; x=1728756210;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LsdlYfToWsi6sDszi0jXbuU59Jxyqs1CvzV3ZT/Mo3A=;
 b=XWfrCeSRQnZXrCk7//wLF1rcD/J0td3ksQsTycyoJuZb1Rjf6vXU/Z9R
 fl98uIyIr2GoOXQPBjdtr+XiYz8OraDNTU4/Oi7MvLIV/0NyP7s7Y5iTf
 eFPy0SZWJ0urEyL5HIJxxafUmQFmVF/0ucfidh7HEjNsZEHicEWk+RwgN
 or1OV90hJsgMd7xl4CRPYvucIcBRfFZgIt3mADUVM7NmWWOZd2RC2pM4v
 h8x+D2rEj03P5/HPPGVamtZSMvJ7Q8WabmPxz1V8wJxcH9CVSB25cuW4x
 115PrF3Lxcg0Boh9eU146TIF5dTBvSn5/ly76FjxBnHcCCzCppPaorPb1 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="388083596"
X-IronPort-AV: E=Sophos;i="6.03,222,1694761200"; d="scan'208";a="388083596"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 11:03:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="898649242"
X-IronPort-AV: E=Sophos;i="6.03,222,1694761200"; d="scan'208";a="898649242"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 11:01:18 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Oct 2023 10:52:12 -0700
Message-Id: <20231013175218.2664309-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231013175218.2664309-1-jonathan.cavitt@intel.com>
References: <20231013175218.2664309-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v14 1/7] drm/i915: Add GuC TLB Invalidation
 device info flags
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
 matthew.d.roper@intel.com, jonathan.cavitt@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add device info flags for if GuC TLB Invalidation is enabled.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 ++
 drivers/gpu/drm/i915/intel_device_info.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index cb60fc9cf8737..6a2a78c61f212 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -794,6 +794,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_GUC_DEPRIVILEGE(i915) \
 	(INTEL_INFO(i915)->has_guc_deprivilege)
 
+#define HAS_GUC_TLB_INVALIDATION(i915)	(INTEL_INFO(i915)->has_guc_tlb_invalidation)
+
 #define HAS_3D_PIPELINE(i915)	(INTEL_INFO(i915)->has_3d_pipeline)
 
 #define HAS_ONE_EU_PER_FUSE_BIT(i915)	(INTEL_INFO(i915)->has_one_eu_per_fuse_bit)
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 39817490b13fd..eba2f0b919c87 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -153,6 +153,7 @@ enum intel_ppgtt_type {
 	func(has_heci_pxp); \
 	func(has_heci_gscfi); \
 	func(has_guc_deprivilege); \
+	func(has_guc_tlb_invalidation); \
 	func(has_l3_ccs_read); \
 	func(has_l3_dpf); \
 	func(has_llc); \
-- 
2.25.1

