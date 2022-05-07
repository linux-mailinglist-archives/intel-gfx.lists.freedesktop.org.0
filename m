Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC46C51E76A
	for <lists+intel-gfx@lfdr.de>; Sat,  7 May 2022 15:29:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 176BC10E529;
	Sat,  7 May 2022 13:29:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D94D10E529
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 May 2022 13:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651930140; x=1683466140;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mq9AHU+ryEnP+wBTJwPjPHyV7o5mxrdBHzSTQi/vDTs=;
 b=LlRY5oyf8I/wL3l9S9NeZmYaLkA8yZMPOggNVn6ROWs8uZwmjzsbXGMe
 i7nELuLuWxYz+ru4RtmU6q/edX7dgd6acA3BB9x2z4tB1JiFmoQ/4wfsQ
 t1jZ9HmKUkyrMSzuYom1Id5aYeoM8m2Vy5O6O6VQFkAxovX1QpimwRhpQ
 QLAHV+5O60gmrrioGACn/XrgA3azqEldpEIf2XC0m3NCYPu72LVpoqL5V
 gdXl2mCUq7qXFbN4AGKaOnWLp/b97PGTP9RXIIZ0q0bKg0qT/YC3PxE4J
 R8/x4FP/XDAiyBasJkRsxQN+LFTygxjhJ5pAAYuBEsueAjdzYI/jOKBNj w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10340"; a="268334252"
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="268334252"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:28:59 -0700
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="564292939"
Received: from henrypet-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.212.61.248])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:28:58 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 May 2022 06:28:35 -0700
Message-Id: <20220507132850.10272-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/16] drm/i915: Drop has_llc from device info
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

This feature is supported in graphics version 6 and newer in all
integrated GPUs not including VLC and CHV, so we can drop this flag
for a not so complicated macro check.

For this flag we were lucky as XE_HP_FEATURES was setting it to true
while DGFX_FEATURES was setting it to false and xehpsdv and DG2 were
using those macros in this givin order if it was the other way around,
some code paths would follow the HAS_LLC path while LLC is not
available in hardware and was not initialized in software.

As a side effect of the of removal this flag, it will not be printed
in dmesg during driver load anymore and developers will have to rely
on to check the macro and compare with platform being used and IP
versions of it.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_llc.c      | 2 +-
 drivers/gpu/drm/i915/i915_drv.h          | 5 ++++-
 drivers/gpu/drm/i915/i915_pci.c          | 4 ----
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 4 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_llc.c b/drivers/gpu/drm/i915/gt/intel_llc.c
index 40e2e28ee6c75..ffcff51ee6e47 100644
--- a/drivers/gpu/drm/i915/gt/intel_llc.c
+++ b/drivers/gpu/drm/i915/gt/intel_llc.c
@@ -52,7 +52,7 @@ static bool get_ia_constants(struct intel_llc *llc,
 	struct drm_i915_private *i915 = llc_to_gt(llc)->i915;
 	struct intel_rps *rps = &llc_to_gt(llc)->rps;
 
-	if (!HAS_LLC(i915) || IS_DGFX(i915))
+	if (!HAS_LLC(i915))
 		return false;
 
 	if (rps->max_freq <= rps->min_freq)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6dfaf7fce9156..fd5269845e9ad 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1236,7 +1236,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
  */
 #define CMDPARSER_USES_GGTT(dev_priv) (GRAPHICS_VER(dev_priv) == 7)
 
-#define HAS_LLC(dev_priv)	(INTEL_INFO(dev_priv)->has_llc)
+#define HAS_LLC(dev_priv)	(!IS_DGFX(dev_priv) && (GRAPHICS_VER(dev_priv) >= 8 || \
+							IS_HASWELL(dev_priv) || \
+							IS_IVYBRIDGE(dev_priv) || \
+							IS_SANDYBRIDGE(dev_priv)))
 #define HAS_4TILE(dev_priv)	(INTEL_INFO(dev_priv)->has_4tile)
 #define HAS_SNOOP(dev_priv)	(INTEL_INFO(dev_priv)->has_snoop)
 #define HAS_EDRAM(dev_priv)	((dev_priv)->edram_size_mb)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 799573a5e5a6f..30a32a5d0e3c9 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -404,7 +404,6 @@ static const struct intel_device_info ilk_m_info = {
 	.display.fbc_mask = BIT(INTEL_FBC_A), \
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_coherent_ggtt = true, \
-	.has_llc = 1, \
 	.has_rc6p = 1, \
 	.has_rps = true, \
 	.dma_mask_size = 40, \
@@ -454,7 +453,6 @@ static const struct intel_device_info snb_m_gt2_info = {
 	.display.fbc_mask = BIT(INTEL_FBC_A), \
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_coherent_ggtt = true, \
-	.has_llc = 1, \
 	.has_rc6p = 1, \
 	.has_rps = true, \
 	.dma_mask_size = 40, \
@@ -878,7 +876,6 @@ static const struct intel_device_info rkl_info = {
 
 #define DGFX_FEATURES \
 	.memory_regions = REGION_SMEM | REGION_LMEM | REGION_STOLEN_LMEM, \
-	.has_llc = 0, \
 	.has_pxp = 0, \
 	.has_snoop = 1, \
 	.is_dgfx = 1, \
@@ -985,7 +982,6 @@ static const struct intel_device_info adl_p_info = {
 	.has_64bit_reloc = 1, \
 	.has_flat_ccs = 1, \
 	.has_global_mocs = 1, \
-	.has_llc = 1, \
 	.has_logical_ring_contexts = 1, \
 	.has_mslices = 1, \
 	.has_rps = 1, \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index a2e53b8683285..e8d53c7a1bd83 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -149,7 +149,6 @@ enum intel_ppgtt_type {
 	func(has_heci_gscfi); \
 	func(has_guc_deprivilege); \
 	func(has_l3_dpf); \
-	func(has_llc); \
 	func(has_logical_ring_contexts); \
 	func(has_mslices); \
 	func(has_pooled_eu); \
-- 
2.36.0

