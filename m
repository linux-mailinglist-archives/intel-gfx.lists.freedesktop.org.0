Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A6451E775
	for <lists+intel-gfx@lfdr.de>; Sat,  7 May 2022 15:29:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E61F113356;
	Sat,  7 May 2022 13:29:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CA29113354
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 May 2022 13:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651930155; x=1683466155;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tCc1le4Abkr76+GxJrYSkmJDIOHHYxx9W0MOC9yJZhY=;
 b=QKydsmSxUA2LoNE2Z5fydk6M1ME66KeutO7sYr1o97K9Gxt2jmMEfQWt
 Win2Hg10/DZ2YKZ45YsuceVY+9cwnylzWZ8VRJBqK8T04J2slaZfF+qI8
 A+Q8xui8dpbu2rHABbm/dszc2IcSDlvAsaI1POxhCmT4xYBEpZ6y+m7MR
 HbfmuO/6pG3kNg/0FA5cRj6Ej9Q/Z8tCXUSvr0TGCUYuGC4Q7Ws5PBTFz
 qPNY76R1ltPtCrJeW0NrbM3gVx6E3nnb783wuaQaT69yFwTwIhlxBWdhk
 SD+mNK5rAcuXpxtZNk73tBvt0yRgM56WeYneOHirglzvGTOhCcD/FMIHy w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10340"; a="268334306"
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="268334306"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:15 -0700
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="564292993"
Received: from henrypet-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.212.61.248])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:14 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 May 2022 06:28:46 -0700
Message-Id: <20220507132850.10272-12-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220507132850.10272-1-jose.souza@intel.com>
References: <20220507132850.10272-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/16] drm/i915: Drop has_heci_gscfi from device
 info
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
as all discrete platforms supports this feature.

As a side effect of the of removal this flag, it will not be printed
in dmesg during driver load anymore and developers will have to rely
on to check the macro and compare with platform being used and IP
versions of it.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 3 +--
 drivers/gpu/drm/i915/i915_pci.c          | 3 +--
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 29e5017e64d70..1431416b7fd60 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1324,8 +1324,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_HECI_PXP(dev_priv) \
 	(INTEL_INFO(dev_priv)->has_heci_pxp)
 
-#define HAS_HECI_GSCFI(dev_priv) \
-	(INTEL_INFO(dev_priv)->has_heci_gscfi)
+#define HAS_HECI_GSCFI(dev_priv) (IS_DGFX(dev_priv))
 
 #define HAS_HECI_GSC(dev_priv) (HAS_HECI_PXP(dev_priv) || HAS_HECI_GSCFI(dev_priv))
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index e8afaa0344134..e4864b0a59234 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -859,8 +859,7 @@ static const struct intel_device_info rkl_info = {
 #define DGFX_FEATURES \
 	.memory_regions = REGION_SMEM | REGION_LMEM | REGION_STOLEN_LMEM, \
 	.has_snoop = 1, \
-	.is_dgfx = 1, \
-	.has_heci_gscfi = 1
+	.is_dgfx = 1
 
 static const struct intel_device_info dg1_info = {
 	GEN12_FEATURES,
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index edbd76aa31a9c..e40ae78c4c7c9 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -143,7 +143,6 @@ enum intel_ppgtt_type {
 	func(gpu_reset_clobbers_display); \
 	func(has_flat_ccs); \
 	func(has_heci_pxp); \
-	func(has_heci_gscfi); \
 	func(has_l3_dpf); \
 	func(has_logical_ring_contexts); \
 	func(has_mslices); \
-- 
2.36.0

