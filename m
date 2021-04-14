Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83ADB35F2C3
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:50:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F2D36E922;
	Wed, 14 Apr 2021 11:50:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F4496E8BC
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:50:50 +0000 (UTC)
IronPort-SDR: q/8BNl3G8yH2cXMsH/2us6xv4FRBmbCOHhArWiJtZsh3fiNe7AJeaECCL1hhziO31SZDPXe9T/
 QNiG5pOqB8VQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194732264"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="194732264"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:50 -0700
IronPort-SDR: RPv3ujv8ln5bkXiG15CrgIosCHvG73M5WLnt2Zi6lVth3dad8FZeEyMSLmwgsGz65cTjDWkSPy
 2iTMPaAatOIg==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965176"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:49 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:09 +0100
Message-Id: <20210414115028.168504-10-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
References: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 09/28] drm/i915: Make Sandybridge/Gen6 platforms
 support optional
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.platforms | 12 ++++++++++++
 drivers/gpu/drm/i915/i915_drv.h        |  4 +++-
 drivers/gpu/drm/i915/i915_pci.c        |  6 ++++++
 3 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.platforms b/drivers/gpu/drm/i915/Kconfig.platforms
index ade0520a1559..1302eb3989be 100644
--- a/drivers/gpu/drm/i915/Kconfig.platforms
+++ b/drivers/gpu/drm/i915/Kconfig.platforms
@@ -129,3 +129,15 @@ config DRM_I915_PLATFORM_INTEL_IRONLAKE
 	select DRM_I915_GEN5
 	help
 	  Include support for Intel Ironlake platforms.
+
+config DRM_I915_GEN6
+	bool
+
+config DRM_I915_PLATFORM_INTEL_SANDYBRIDGE
+	bool "Intel Sandybridge platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN6
+	help
+	  Include support for Intel Sandybridge platforms.
+
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 741c1fff3616..2bb6e88f4f63 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -2729,7 +2729,9 @@ intel_info(const struct drm_i915_private *dev_priv)
 #define IS_GEN5(dev_priv) \
 	(IS_ENABLED(CONFIG_DRM_I915_GEN5) && \
 	 ((dev_priv)->info.gen_mask & BIT(4)))
-#define IS_GEN6(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(5)))
+#define IS_GEN6(dev_priv) \
+	(IS_ENABLED(CONFIG_DRM_I915_GEN6) && \
+	 ((dev_priv)->info.gen_mask & BIT(5)))
 #define IS_GEN7(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(6)))
 #define IS_GEN8(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(7)))
 #define IS_GEN9(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(8)))
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index dbc580f05678..8a7399787f4b 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -273,6 +273,7 @@ static const struct intel_device_info intel_ironlake_m_info = {
 	GEN6_FEATURES, \
 	.platform = INTEL_SANDYBRIDGE
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_SANDYBRIDGE
 static const struct intel_device_info intel_sandybridge_d_gt1_info = {
 	SNB_D_PLATFORM,
 	.gt = 1,
@@ -282,6 +283,7 @@ static const struct intel_device_info intel_sandybridge_d_gt2_info = {
 	SNB_D_PLATFORM,
 	.gt = 2,
 };
+#endif
 
 #define SNB_M_PLATFORM \
 	GEN6_FEATURES, \
@@ -289,6 +291,7 @@ static const struct intel_device_info intel_sandybridge_d_gt2_info = {
 	.is_mobile = 1
 
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_SANDYBRIDGE
 static const struct intel_device_info intel_sandybridge_m_gt1_info = {
 	SNB_M_PLATFORM,
 	.gt = 1,
@@ -298,6 +301,7 @@ static const struct intel_device_info intel_sandybridge_m_gt2_info = {
 	SNB_M_PLATFORM,
 	.gt = 2,
 };
+#endif
 
 #define GEN7_FEATURES  \
 	.gen = 7, .num_pipes = 3, \
@@ -675,10 +679,12 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_IRONLAKE_D_IDS(&intel_ironlake_d_info),
 	INTEL_IRONLAKE_M_IDS(&intel_ironlake_m_info),
 #endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_SANDYBRIDGE
 	INTEL_SNB_D_GT1_IDS(&intel_sandybridge_d_gt1_info),
 	INTEL_SNB_D_GT2_IDS(&intel_sandybridge_d_gt2_info),
 	INTEL_SNB_M_GT1_IDS(&intel_sandybridge_m_gt1_info),
 	INTEL_SNB_M_GT2_IDS(&intel_sandybridge_m_gt2_info),
+#endif
 	INTEL_IVB_Q_IDS(&intel_ivybridge_q_info), /* must be first IVB */
 	INTEL_IVB_M_GT1_IDS(&intel_ivybridge_m_gt1_info),
 	INTEL_IVB_M_GT2_IDS(&intel_ivybridge_m_gt2_info),
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
