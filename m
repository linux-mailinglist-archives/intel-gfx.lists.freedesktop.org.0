Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8015D35F82F
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 17:52:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBF956E957;
	Wed, 14 Apr 2021 15:52:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0879F6E957
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 15:52:19 +0000 (UTC)
IronPort-SDR: fa9asy7e4S2ioW2d4Prtboo7ClvQzCsys5huSUIYYJn3TSJb/2igMAxAa/vQHYIrlz3LIDI3Af
 x9VIo9xQO97A==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="181791648"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="181791648"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 08:52:19 -0700
IronPort-SDR: ECd6JgB9EnsFO/+ROYbsjtWSYeEUJqzEAgqrqe8GpvFjPmFxslspZuchYuIBzPcCoWSXP7GLTu
 yCz6Yrcl8Pdg==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="399226545"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 08:52:17 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 18:52:01 +0300
Message-Id: <20210414155208.3161335-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414155208.3161335-1-imre.deak@intel.com>
References: <20210414155208.3161335-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/11] drm/i915/adl_p: ADL_P device info enabling
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
index 6edd1e2ee8afa..b553ffe9b9851 100644
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
index e20294e9227a4..e5513e19beb5c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1392,6 +1392,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_ROCKETLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_ROCKETLAKE)
 #define IS_DG1(dev_priv)        IS_PLATFORM(dev_priv, INTEL_DG1)
 #define IS_ALDERLAKE_S(dev_priv) IS_PLATFORM(dev_priv, INTEL_ALDERLAKE_S)
+#define IS_ALDERLAKE_P(dev_priv) IS_PLATFORM(dev_priv, INTEL_ALDERLAKE_P)
 #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
 				    (INTEL_DEVID(dev_priv) & 0xFF00) == 0x0C00)
 #define IS_BDW_ULT(dev_priv) \
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 40b58a6dc3193..2384198e41f85 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -949,6 +949,17 @@ static const struct intel_device_info adl_s_info = {
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
+	.dma_mask_size = 39,
+};
+
 #undef GEN
 #undef PLATFORM
 
@@ -1026,6 +1037,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_TGL_12_IDS(&tgl_info),
 	INTEL_RKL_IDS(&rkl_info),
 	INTEL_ADLS_IDS(&adl_s_info),
+	INTEL_ADLP_IDS(&adl_p_info),
 	{0, 0, 0}
 };
 MODULE_DEVICE_TABLE(pci, pciidlist);
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 6a351a7094174..3b975ce1ff591 100644
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
index 8ab4fa6c7fdd7..edf68244be2bc 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -87,6 +87,7 @@ enum intel_platform {
 	INTEL_ROCKETLAKE,
 	INTEL_DG1,
 	INTEL_ALDERLAKE_S,
+	INTEL_ALDERLAKE_P,
 	INTEL_MAX_PLATFORMS
 };
 
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
