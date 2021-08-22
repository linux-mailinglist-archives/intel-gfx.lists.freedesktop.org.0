Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1511F3F4073
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Aug 2021 18:30:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3677D89E0C;
	Sun, 22 Aug 2021 16:30:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9E7F89E06
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Aug 2021 16:30:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="302567436"
X-IronPort-AV: E=Sophos;i="5.84,342,1620716400"; d="scan'208";a="302567436"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2021 09:30:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,342,1620716400"; d="scan'208";a="596395731"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by fmsmga001.fm.intel.com with ESMTP; 22 Aug 2021 09:30:18 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stuart Summers <stuart.summers@intel.com>,
 Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Date: Sun, 22 Aug 2021 21:56:54 +0530
Message-Id: <20210822162706.819507-2-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210822162706.819507-1-ayaz.siddiqui@intel.com>
References: <20210822162706.819507-1-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 01/13] drm/i915: Add has_64k_pages flag
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

From: Stuart Summers <stuart.summers@intel.com>

Add a new platform flag, has_64k_pages, for platforms supporting
base page sizes of 64k.

Signed-off-by: Stuart Summers <stuart.summers@intel.com>
Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 ++
 drivers/gpu/drm/i915/i915_pci.c          | 2 ++
 drivers/gpu/drm/i915/intel_device_info.h | 1 +
 3 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 8c722ea88e80..ac050e4599de 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1693,6 +1693,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_MSLICES(dev_priv) \
 	(INTEL_INFO(dev_priv)->has_mslices)
 
+#define HAS_64K_PAGES(dev_priv) (INTEL_INFO(dev_priv)->has_64k_pages)
+
 #define HAS_IPC(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ipc)
 
 #define HAS_REGION(i915, i) (INTEL_INFO(i915)->memory_regions & (i))
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 2c1cb9b6b556..7b8bba60b899 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1014,6 +1014,7 @@ static const struct intel_device_info xehpsdv_info = {
 	DGFX_FEATURES,
 	PLATFORM(INTEL_XEHPSDV),
 	.display = { },
+	.has_64k_pages = 1,
 	.pipe_mask = 0,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) |
@@ -1032,6 +1033,7 @@ static const struct intel_device_info dg2_info = {
 	.graphics_rel = 55,
 	.media_rel = 55,
 	PLATFORM(INTEL_DG2),
+	.has_64k_pages = 1,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) |
 		BIT(VECS0) | BIT(VECS1) |
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index d328bb95c49b..bbeec52ea6dc 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -123,6 +123,7 @@ enum intel_ppgtt_type {
 	func(is_dgfx); \
 	/* Keep has_* in alphabetical order */ \
 	func(has_64bit_reloc); \
+	func(has_64k_pages); \
 	func(gpu_reset_clobbers_display); \
 	func(has_reset_engine); \
 	func(has_global_mocs); \
-- 
2.26.2

