Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E667B974C
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 00:18:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8BF210E07E;
	Wed,  4 Oct 2023 22:18:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64C9E10E0EA
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 22:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696457903; x=1727993903;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GxZYzM8ILxxozNBOZAX+YRT4hHx7Fxz1M0jKjs1IMxQ=;
 b=EZ1ZqEClkPUnTatkk4mLRmrvrIFD6YG+bi0nrhKgRqUitJvxQH/Q6DH+
 Il5s0g3jFjioIiAnbUtlsEZqiI8X2NPIQfZXcohWdwhRS2DurwXBnsXHw
 +SDeIJvQ5wsTVFp2Nt5XP2RaoGsuY7iBe5rEb6k7rdCH0zYQ7HBfQ++8k
 cnaNZ9eg/CVBnlJiyBIRYFcdK235A7Z3YoyXWkJVB6AFmHqKAXSf4ahlj
 zsPk34gWr4sIqNN586PWCcQ1oyGUvSQg8XnDLtqFrpRz1TigLk1bLuoCS
 HTQXUV8/+iETJ5ruP0Rgirpxa1dr7WdRu2O3G0I/CfJSb51nqSZYkLzkm g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="382195123"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="382195123"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 15:18:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="867611813"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="867611813"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 15:18:21 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Oct 2023 15:07:34 -0700
Message-Id: <20231004220739.1313307-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231004220739.1313307-1-jonathan.cavitt@intel.com>
References: <20231004220739.1313307-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH dii-client v6 1/5] drm/i915: Add GuC TLB
 Invalidation pci flags
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

Add pci (device info) flags for if GuC TLB Invalidation is enabled.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 1 +
 drivers/gpu/drm/i915/intel_device_info.h | 3 ++-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index cb60fc9cf8737..c53c5586c40c8 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -801,4 +801,5 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_LMEMBAR_SMEM_STOLEN(i915) (!HAS_LMEM(i915) && \
 				       GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
 
+#define HAS_GUC_TLB_INVALIDATION(i915)	(INTEL_INFO(i915)->has_guc_tlb_invalidation)
 #endif
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

