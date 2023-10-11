Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 662B07C5EE3
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 23:05:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3A2F10E205;
	Wed, 11 Oct 2023 21:04:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A42E910E1F3
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 21:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697058288; x=1728594288;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LsdlYfToWsi6sDszi0jXbuU59Jxyqs1CvzV3ZT/Mo3A=;
 b=EnGb2INvaQfHh4KE4s46AxvXUJDadsOL2++IMKn3+hm7LOZCEDMD4P26
 kjplHDsKErIIp0c8jBxG3o61t6cqyCzqKVIs7/XnIrIdjWiv0KJF3PF9Q
 NOHLtz7jINTREqzUx9nRiySMoE0iRB5dt0QdXlAccyWKWXwHbT19ehjH1
 WnOTmmATJc2K7/hCVKHOI282XWVSGibHjWz6UKzL2sAeNqmq3rc/mqxbB
 hQzorlF0RmWmUpFkuNT6fj0lxrBBu4c+UC8WvgWFQYlyjYlYzsGDZQWtN
 +8RXzcIn0FbN0MYpnLar+E9WI0GhjiZb8CSrQKUY8sr1t8rzbBoCSjm4w A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="375118401"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="375118401"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 14:04:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="757717879"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="757717879"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 14:03:42 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Oct 2023 13:52:53 -0700
Message-Id: <20231011205259.2295032-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231011205259.2295032-1-jonathan.cavitt@intel.com>
References: <20231011205259.2295032-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v12 1/7] drm/i915: Add GuC TLB Invalidation
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

