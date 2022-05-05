Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A66C651C942
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 21:34:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0191610E775;
	Thu,  5 May 2022 19:34:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 552EE10E775
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 19:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651779281; x=1683315281;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BvVlNr0Sq03rHwyQO1/jwxZgKJnwX3tctqYJuB8X4as=;
 b=KiMmqj59UQwtRvbG77x1Hs+GO3beHzm5r+bFxzlaoK+HODy89NYOUORl
 wauuxdBYG2YVepHegYVaX8a1yTapyKioI3GdRXSHVf6CCqPyRXU/NIMxp
 4xJxW+PprVlPD8flubQHECSnGnavfKKGpzuZ4DWc0hQNx3aNY/we7SlBF
 50BPx6JT8w9kWza9CnpffBRz7bYOD2QV5C+kPGsqcFwmGkd60ZNYwJjdM
 hxyQaJxvVWxaHhwD5bCT5IZ9L+3fWzcoMHT6GC4YFeFaFj7+MtQahXLp1
 JXWlFOaCZKwIFUNyA+BE50dV1ilNjlsxHfz273bzg5Ygo0A/cCD36jF15 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="265823117"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="265823117"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 12:34:40 -0700
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="665116653"
Received: from josouza-mobl2.fso.intel.com ([10.230.18.139])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 12:34:39 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 May 2022 12:35:18 -0700
Message-Id: <20220505193524.276400-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH CI 1/7] drm/i915: Drop has_gt_uc from device info
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

No need to have this parameter in intel_device_info struct
as all platforms with graphics version 9 or newer has graphics
microcontroller.

As a side effect of the of removal this flag, it will not be printed
in dmesg during driver load anymore and developers will have to rely
on to check the macro and compare with platform being used and IP
versions of it.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c    | 2 +-
 drivers/gpu/drm/i915/i915_pci.c          | 3 ---
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 4 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 2dddc27a1b0ed..af3967149b2d2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1355,7 +1355,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
  */
 #define HAS_FLAT_CCS(dev_priv)   (INTEL_INFO(dev_priv)->has_flat_ccs)
 
-#define HAS_GT_UC(dev_priv)	(INTEL_INFO(dev_priv)->has_gt_uc)
+#define HAS_GT_UC(dev_priv)	(GRAPHICS_VER(dev_priv) >= 9)
 
 #define HAS_POOLED_EU(dev_priv)	(INTEL_INFO(dev_priv)->has_pooled_eu)
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 0512c66fa4f3f..5bd9cb8998527 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -2008,7 +2008,7 @@ __i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 du
 			return ERR_PTR(-ENOMEM);
 		}
 
-		if (INTEL_INFO(i915)->has_gt_uc) {
+		if (HAS_GT_UC(i915)) {
 			error->gt->uc = gt_record_uc(error->gt, compress);
 			if (error->gt->uc) {
 				if (dump_flags & CORE_DUMP_FLAG_IS_GUC_CAPTURE)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 498708b33924f..6d4e2c4292f3b 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -644,7 +644,6 @@ static const struct intel_device_info chv_info = {
 	GEN(9), \
 	GEN9_DEFAULT_PAGE_SIZES, \
 	.display.has_dmc = 1, \
-	.has_gt_uc = 1, \
 	.display.has_hdcp = 1, \
 	.display.has_ipc = 1, \
 	.display.has_psr = 1, \
@@ -705,7 +704,6 @@ static const struct intel_device_info skl_gt4_info = {
 	.has_rps = true, \
 	.display.has_dp_mst = 1, \
 	.has_logical_ring_contexts = 1, \
-	.has_gt_uc = 1, \
 	.dma_mask_size = 39, \
 	.ppgtt_type = INTEL_PPGTT_FULL, \
 	.ppgtt_size = 48, \
@@ -1008,7 +1006,6 @@ static const struct intel_device_info adl_p_info = {
 	.has_64bit_reloc = 1, \
 	.has_flat_ccs = 1, \
 	.has_global_mocs = 1, \
-	.has_gt_uc = 1, \
 	.has_llc = 1, \
 	.has_logical_ring_contexts = 1, \
 	.has_logical_ring_elsq = 1, \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index e7d2cf7d65c85..dcc8c63ae6ed4 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -146,7 +146,6 @@ enum intel_ppgtt_type {
 	func(has_4tile); \
 	func(has_flat_ccs); \
 	func(has_global_mocs); \
-	func(has_gt_uc); \
 	func(has_heci_pxp); \
 	func(has_heci_gscfi); \
 	func(has_guc_deprivilege); \
-- 
2.36.0

