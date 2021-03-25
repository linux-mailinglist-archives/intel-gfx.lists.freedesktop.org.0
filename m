Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1A43498FF
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 19:07:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 502696EE11;
	Thu, 25 Mar 2021 18:07:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B822B6EE11
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 18:07:31 +0000 (UTC)
IronPort-SDR: rWD2RxERiH1NjCuPX7PpV+vuLWtAMJPw7OCosjalgmNRwrbbikRGfs/tiJnPBWTvSoG3r8SBWa
 lGDAuE+9WZvw==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="178112534"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="178112534"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:30 -0700
IronPort-SDR: K/XzkkCu4KFyCOBJZHD+qtCticbKx9jw+k1TNVfNXDNgSgu8+eL6i7Es8nEvrNhrJ+AUI3dO1M
 nJDVRAZIseJg==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="453176606"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:30 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 11:06:49 -0700
Message-Id: <20210325180720.401410-20-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210325180720.401410-1-matthew.d.roper@intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 19/50] drm/i915/adl_p: ADL_P device info
 enabling
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
Cc: me@freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Clinton Taylor <Clinton.A.Taylor@intel.com>

Add ADL-P to the device_info table and support MACROS.

Bspec: 49185, 55372, 55373
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 arch/x86/kernel/early-quirks.c           |  1 +
 drivers/gpu/drm/i915/i915_drv.h          |  1 +
 drivers/gpu/drm/i915/i915_pci.c          | 12 ++++++++++++
 drivers/gpu/drm/i915/intel_device_info.c |  1 +
 drivers/gpu/drm/i915/intel_device_info.h |  1 +
 5 files changed, 16 insertions(+)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index 6edd1e2ee8af..b553ffe9b985 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -552,6 +552,7 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
 	INTEL_TGL_12_IDS(&gen11_early_ops),
 	INTEL_RKL_IDS(&gen11_early_ops),
 	INTEL_ADLS_IDS(&gen11_early_ops),
+	INTEL_ADLP_IDS(&gen11_early_ops),
 };
 
 struct resource intel_graphics_stolen_res __ro_after_init = DEFINE_RES_MEM(0, 0);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index c78d7d37a754..ab1db490bbcf 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1375,6 +1375,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_ROCKETLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_ROCKETLAKE)
 #define IS_DG1(dev_priv)        IS_PLATFORM(dev_priv, INTEL_DG1)
 #define IS_ALDERLAKE_S(dev_priv) IS_PLATFORM(dev_priv, INTEL_ALDERLAKE_S)
+#define IS_ALDERLAKE_P(dev_priv) IS_PLATFORM(dev_priv, INTEL_ALDERLAKE_P)
 #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
 				    (INTEL_DEVID(dev_priv) & 0xFF00) == 0x0C00)
 #define IS_BDW_ULT(dev_priv) \
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 295a39bc7a2f..1ceb3cd4068d 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -946,6 +946,17 @@ static const struct intel_device_info adl_s_info = {
 	.ddb_size = 4096,						\
 	.num_supported_dbuf_slices = 4
 
+static const struct intel_device_info adl_p_info = {
+	GEN12_FEATURES,
+	XE_LPD_FEATURES,
+	PLATFORM(INTEL_ALDERLAKE_P),
+	.require_force_probe = 1,
+	.platform_engine_mask =
+		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
+	.ppgtt_size = 48,
+	.dma_mask_size = 46,
+};
+
 #undef GEN
 #undef PLATFORM
 
@@ -1023,6 +1034,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_TGL_12_IDS(&tgl_info),
 	INTEL_RKL_IDS(&rkl_info),
 	INTEL_ADLS_IDS(&adl_s_info),
+	INTEL_ADLP_IDS(&adl_p_info),
 	{0, 0, 0}
 };
 MODULE_DEVICE_TABLE(pci, pciidlist);
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 8a55cdfc802c..16d8be7f734f 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -67,6 +67,7 @@ static const char * const platform_names[] = {
 	PLATFORM_NAME(ROCKETLAKE),
 	PLATFORM_NAME(DG1),
 	PLATFORM_NAME(ALDERLAKE_S),
+	PLATFORM_NAME(ALDERLAKE_P),
 };
 #undef PLATFORM_NAME
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 90acbaf800d5..bd948457e0e4 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -85,6 +85,7 @@ enum intel_platform {
 	INTEL_ROCKETLAKE,
 	INTEL_DG1,
 	INTEL_ALDERLAKE_S,
+	INTEL_ALDERLAKE_P,
 	INTEL_MAX_PLATFORMS
 };
 
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
