Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9D47C0009
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 17:11:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C259810E396;
	Tue, 10 Oct 2023 15:11:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80FEA10E394
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 15:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696950699; x=1728486699;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c/evRpj07yX0afyZrbKtdGPeICGefxhD8hF1/2mocdY=;
 b=NXXUQxml6/S6c6QRHjiU68WueZt7PawGMCDJB/yuh2qjs0QTb4j5uUWY
 ornV62n51gTSp2ABvDzqJJMbHzKtm6hKMCnFbBsMr9zQ/O95K41d14pse
 hDdQPQiKV2k79S50tg3wMBXh+ze4UxGyc0ZkkqFmrTXMoehhPU1KgCZKj
 xTQuE48XNSMILGAtDF8j1GMIhsBxVEm0SyAkGazW61yaJ9BfPFBrIQFRh
 qByve9U2u/ZbRTcsZshJhJTNnN0oEYDdDm/jAz/IUvR38aFXR8yA3DC8J
 A+rCtdHYYOYad9s1QFIywc7Xf/6OXw6nGIdb8Ym24ejY3mBqlb9JbMRTt w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="415435363"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="415435363"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 08:11:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="1084826136"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="1084826136"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 08:11:38 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 08:00:41 -0700
Message-Id: <20231010150055.2021279-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231010150055.2021279-1-jonathan.cavitt@intel.com>
References: <20231010150055.2021279-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH dii-client v10 1/7] drm/i915: Add GuC TLB
 Invalidation device info flags
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

