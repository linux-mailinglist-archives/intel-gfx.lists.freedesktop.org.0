Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C1751E772
	for <lists+intel-gfx@lfdr.de>; Sat,  7 May 2022 15:29:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE46E11276E;
	Sat,  7 May 2022 13:29:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D3A811276E
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 May 2022 13:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651930150; x=1683466150;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E13gApxz7pPB2y/zAXD8aKXI42cvGRNaPLsYxmmHg+k=;
 b=EIci7W+Tchuctcp7cyv+gjRmiF/KN+1sm/lOoFGBlJyeezORwcLGcQM9
 E+PzTm2iCXdWrx40fEb5hbTApuyz/g/cNg2PwVwUNF8zn6BqCrBKZEguZ
 znsTicTqGd5DgTo2s+w1V08YLVVIFs3ZYdg3cmjaVMgbZg4hb9mUzCI1C
 eOvA8TV8vKrPWtf/9bY8+tYfukO/GBwbFQQkfcXEj7QSXjKurOo51kazC
 mKOFDVS5fmTuCdb4/n7lFiRshMLcCdH2Yl0EgDKDO8NmHqEWK6Jbwww4J
 7XgeMUi6+st6+uXUJIBtYUE7bXV2XMkGtMBCmqqEYyvnm63jD6uiyS/xx g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10340"; a="268334270"
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="268334270"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:10 -0700
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="564292972"
Received: from henrypet-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.212.61.248])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:09 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 May 2022 06:28:42 -0700
Message-Id: <20220507132850.10272-8-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220507132850.10272-1-jose.souza@intel.com>
References: <20220507132850.10272-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/16] drm/i915: Drop has_64bit_reloc from
 device info
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
as all platforms with graphics version 8 or newer have software
support for this feature.

As a side effect of the of removal this flag, it will not be printed
in dmesg during driver load anymore and developers will have to rely
on to check the macro and compare with platform being used and IP
versions of it.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 +-
 drivers/gpu/drm/i915/i915_pci.c          | 6 +-----
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index c22846d77d8de..1552a44a1fafe 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1332,7 +1332,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_MSO(i915)		(DISPLAY_VER(i915) >= 12)
 
 #define HAS_RUNTIME_PM(dev_priv) (INTEL_INFO(dev_priv)->has_runtime_pm)
-#define HAS_64BIT_RELOC(dev_priv) (INTEL_INFO(dev_priv)->has_64bit_reloc)
+#define HAS_64BIT_RELOC(dev_priv) (GRAPHICS_VER(dev_priv) >= 8)
 
 #define HAS_MSLICES(dev_priv) \
 	(INTEL_INFO(dev_priv)->has_mslices)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index d8b6f357ae4fa..0e326b5ccf10f 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -557,8 +557,7 @@ static const struct intel_device_info hsw_gt3_info = {
 	.has_logical_ring_contexts = 1, \
 	.dma_mask_size = 39, \
 	.ppgtt_type = INTEL_PPGTT_FULL, \
-	.ppgtt_size = 48, \
-	.has_64bit_reloc = 1
+	.ppgtt_size = 48
 
 #define BDW_PLATFORM \
 	GEN8_FEATURES, \
@@ -597,7 +596,6 @@ static const struct intel_device_info chv_info = {
 	.display.has_hotplug = 1,
 	.is_lp = 1,
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0),
-	.has_64bit_reloc = 1,
 	.has_runtime_pm = 1,
 	.has_rps = true,
 	.has_logical_ring_contexts = 1,
@@ -668,7 +666,6 @@ static const struct intel_device_info skl_gt4_info = {
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
 		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
-	.has_64bit_reloc = 1, \
 	.display.has_fpga_dbg = 1, \
 	.display.fbc_mask = BIT(INTEL_FBC_A), \
 	.display.has_hdcp = 1, \
@@ -962,7 +959,6 @@ static const struct intel_device_info adl_p_info = {
 	.graphics.rel = 50, \
 	XE_HP_PAGE_SIZES, \
 	.dma_mask_size = 46, \
-	.has_64bit_reloc = 1, \
 	.has_flat_ccs = 1, \
 	.has_global_mocs = 1, \
 	.has_logical_ring_contexts = 1, \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index fa42ee085bc8f..e0b9a7547acc2 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -138,7 +138,6 @@ enum intel_ppgtt_type {
 	func(require_force_probe); \
 	func(is_dgfx); \
 	/* Keep has_* in alphabetical order */ \
-	func(has_64bit_reloc); \
 	func(has_64k_pages); \
 	func(needs_compact_pt); \
 	func(gpu_reset_clobbers_display); \
-- 
2.36.0

