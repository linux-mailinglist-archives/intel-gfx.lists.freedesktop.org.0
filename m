Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 735B951E770
	for <lists+intel-gfx@lfdr.de>; Sat,  7 May 2022 15:29:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED76B112776;
	Sat,  7 May 2022 13:29:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61054112769
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 May 2022 13:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651930149; x=1683466149;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rk03BxYg45mN+Y2qpPC1Nwvo5MhGn037mMewgVCcBc0=;
 b=eESxUzRibWuS5Wfm2Ma+QqAMyxnPy7sFrbp/2lyHOf074TJkjO9iF3DK
 cxMf8VDlm2OBD+Rlmfeydi0PEPKZqSyApv+PJev+umoVVUay3bw+EKpEC
 hAOTU65BD9Sf7tRFwacfH8NYOds2vWsPAfOCl1zYup/afZDJ84Zt4AK5d
 I4Nn1e4n+WsWJqQ7xvT/kf7vanN/XYjY6NBp9w4mwmqdtWGbfm5oorMOk
 wRVmZ+To1KaDk5pZr7WYzvXkjtnj8RkAEcY0otKfycR43naDfTQcPX8+C
 +w2bmCcDkIK3w5QPm7T36/Qv2g7bcjJOKa7cNr/SaVOu11PSn80sxzOJm w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10340"; a="268334262"
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="268334262"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:09 -0700
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="564292967"
Received: from henrypet-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.212.61.248])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:08 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 May 2022 06:28:41 -0700
Message-Id: <20220507132850.10272-7-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220507132850.10272-1-jose.souza@intel.com>
References: <20220507132850.10272-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/16] drm/i915: Drop has_4tile from device info
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

No need to have this parameter in intel_device_info struct as this
tiling format is supported in platforms with graphics 12.50 or
newer what was missed in xehpsdv.

As a side effect of the of removal this flag, it will not be printed
in dmesg during driver load anymore and developers will have to rely
on to check the macro and compare with platform being used and IP
versions of it.

BSpec: 44917
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 +-
 drivers/gpu/drm/i915/i915_pci.c          | 1 -
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index c107ff03c1fbc..c22846d77d8de 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1241,7 +1241,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 							IS_HASWELL(dev_priv) || \
 							IS_IVYBRIDGE(dev_priv) || \
 							IS_SANDYBRIDGE(dev_priv)))
-#define HAS_4TILE(dev_priv)	(INTEL_INFO(dev_priv)->has_4tile)
+#define HAS_4TILE(dev_priv)	(GRAPHICS_VER_FULL(dev_priv) >= IP_VER(12, 50))
 #define HAS_SNOOP(dev_priv)	(INTEL_INFO(dev_priv)->has_snoop)
 #define HAS_EDRAM(dev_priv)	((dev_priv)->edram_size_mb)
 #define HAS_SECURE_BATCHES(dev_priv) (GRAPHICS_VER(dev_priv) < 6)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index f4d484ea4c712..d8b6f357ae4fa 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1001,7 +1001,6 @@ static const struct intel_device_info xehpsdv_info = {
 	.graphics.rel = 55, \
 	.media.rel = 55, \
 	PLATFORM(INTEL_DG2), \
-	.has_4tile = 1, \
 	.has_64k_pages = 1, \
 	.has_guc_deprivilege = 1, \
 	.has_heci_pxp = 1, \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 0974e3ff24cf8..fa42ee085bc8f 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -142,7 +142,6 @@ enum intel_ppgtt_type {
 	func(has_64k_pages); \
 	func(needs_compact_pt); \
 	func(gpu_reset_clobbers_display); \
-	func(has_4tile); \
 	func(has_flat_ccs); \
 	func(has_global_mocs); \
 	func(has_heci_pxp); \
-- 
2.36.0

