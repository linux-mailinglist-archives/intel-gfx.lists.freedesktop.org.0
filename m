Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1B251E779
	for <lists+intel-gfx@lfdr.de>; Sat,  7 May 2022 15:29:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0F24113359;
	Sat,  7 May 2022 13:29:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52768113355
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 May 2022 13:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651930159; x=1683466159;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S7VVH5fwH0hRPGCFMJte0XEKV7eWeVZFcpxLl1XV/bw=;
 b=VomJov/oIrUR4QzhXLICWENJ0ZnmUj6s5bctUCk/s/p5IGqXlKDfvK1a
 VR7Siqw7yNMDwdgbJ9mD/lSwsJl4Vz4dq7d8KQ1cJ4z3EK0mNpg62HVp8
 BzZ0H6YWVnYJ5Zkov/BUgtJMYZ/g/Iv3tXpgjIUBeXo7w4orqSXEId9ic
 KBcJMSQNrbl92v3PTxom5ft1VI11dr4+dzg7rhj35IkGYDWw+7OXorxPr
 FFiIEIRJUelFluZMRje5dWtoEdtmjY936+dUUriWiUt6HpfYkwwrpMDxp
 XEceSzJBiAwfbJyhoqCj49p3drkfGKIDNCgVKazbyW7+lEVyw8j+vWvG8 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10340"; a="268334314"
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="268334314"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:19 -0700
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="564293007"
Received: from henrypet-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.212.61.248])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:18 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 May 2022 06:28:49 -0700
Message-Id: <20220507132850.10272-15-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220507132850.10272-1-jose.souza@intel.com>
References: <20220507132850.10272-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/16] drm/i915: Drop has_logical_ring_contexts
 from device info
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
as this feature is supported all platforms with graphics version 8 or
newer.

As a side effect of the of removal this flag, it will not be printed
in dmesg during driver load anymore and developers will have to rely
on to check the macro and compare with platform being used and IP
versions of it.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 3 +--
 drivers/gpu/drm/i915/i915_pci.c          | 4 ----
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b193374f53f91..4b1025dbaab2a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1249,8 +1249,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HWS_NEEDS_PHYSICAL(dev_priv)	(INTEL_INFO(dev_priv)->hws_needs_physical)
 
-#define HAS_LOGICAL_RING_CONTEXTS(dev_priv) \
-		(INTEL_INFO(dev_priv)->has_logical_ring_contexts)
+#define HAS_LOGICAL_RING_CONTEXTS(dev_priv) (GRAPHICS_VER(dev_priv) >= 8)
 #define HAS_LOGICAL_RING_ELSQ(dev_priv) (GRAPHICS_VER(dev_priv) >= 11)
 
 #define HAS_EXECLISTS(dev_priv) HAS_LOGICAL_RING_CONTEXTS(dev_priv)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 9638949f40eb7..5a42acb162a15 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -548,7 +548,6 @@ static const struct intel_device_info hsw_gt3_info = {
 #define GEN8_FEATURES \
 	G75_FEATURES, \
 	GEN(8), \
-	.has_logical_ring_contexts = 1, \
 	.dma_mask_size = 39, \
 	.ppgtt_type = INTEL_PPGTT_FULL, \
 	.ppgtt_size = 48
@@ -591,7 +590,6 @@ static const struct intel_device_info chv_info = {
 	.is_lp = 1,
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0),
 	.has_rps = true,
-	.has_logical_ring_contexts = 1,
 	.display.has_gmch = 1,
 	.dma_mask_size = 39,
 	.ppgtt_type = INTEL_PPGTT_FULL,
@@ -664,7 +662,6 @@ static const struct intel_device_info skl_gt4_info = {
 	.display.has_hdcp = 1, \
 	.display.has_dmc = 1, \
 	.has_rps = true, \
-	.has_logical_ring_contexts = 1, \
 	.dma_mask_size = 39, \
 	.ppgtt_type = INTEL_PPGTT_FULL, \
 	.ppgtt_size = 48, \
@@ -948,7 +945,6 @@ static const struct intel_device_info adl_p_info = {
 	XE_HP_PAGE_SIZES, \
 	.dma_mask_size = 46, \
 	.has_flat_ccs = 1, \
-	.has_logical_ring_contexts = 1, \
 	.has_mslices = 1, \
 	.has_rps = 1, \
 	.ppgtt_size = 48, \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 7974b3edf42e2..7581ef4a68f94 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -143,7 +143,6 @@ enum intel_ppgtt_type {
 	func(gpu_reset_clobbers_display); \
 	func(has_flat_ccs); \
 	func(has_heci_pxp); \
-	func(has_logical_ring_contexts); \
 	func(has_mslices); \
 	func(has_pooled_eu); \
 	func(has_rps); \
-- 
2.36.0

