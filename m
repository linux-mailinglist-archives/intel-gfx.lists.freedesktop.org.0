Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4165B1067
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 01:32:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44D9510E22D;
	Wed,  7 Sep 2022 23:32:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AC2D10E0CF;
 Wed,  7 Sep 2022 23:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662593561; x=1694129561;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Unfh/TnO8f07zKN2tZh/Njd4zrpLnClsJyjkAW5jqno=;
 b=hRg5FZW3iN04eIC/6pLJkOevqJeHPwJGuRdpps2v09NLb7p3QCLx6Kmk
 Kn5hNzX5j75Gu2ncU12dVXx3MXa0Yg5CMqBZg6HU13YiTndJb9Nbpj3Lw
 GD6q7WMOGUCBOUeXHGJvMWP2Pr15lfK+RLw6GIRZfMTJfcAdJb4PVFp2A
 FFnljTuJW8dPvzzj+5IedJzLUXOXnR61jOwJIRY7f9muBuAzdHLkpulAk
 q2rfNNrh7CnjIOhH615ayaKV6BilkfaDRvYwnIiaxZunpy3Nsuq0ZiVo2
 2L2AC+9xUqVNRbgsBNU6ZHiu0L5afsuV85cB8VM2SNGDcm+QCSNDqiIxN Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="297022076"
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; d="scan'208";a="297022076"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 16:32:40 -0700
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; d="scan'208";a="740471136"
Received: from invictus.jf.intel.com ([10.165.21.188])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 16:32:39 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 16:32:08 -0700
Message-Id: <20220907233208.357672-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220902060342.151824-3-radhakrishna.sripada@intel.com>
References: <20220902060342.151824-3-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4.1] drm/i915: Read graphics/media/display arch
 version from hw
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matt Roper <matthew.d.roper@intel.com>

Going forward, the hardware teams no longer consider new platforms to
have a "generation" in the way we've defined it for past platforms.
Instead, each IP block (graphics, media, display) will have their own
architecture major.minor versions and stepping ID's which should be read
directly from a register in the MMIO space.  New hardware programming
styles, features, and workarounds should be conditional solely on the
architecture version, and should no longer be derived from the PCI
device ID, revision ID, or platform-specific feature flags.

Bspec: 63361, 64111

v2:
  - Move the IP version readout to intel_device_info.c
  - Convert the macro into a function

v3:
  - Move subplatform init to runtime early init
  - Cache runtime ver, release info to compare with hardware values.
  - Use IP_VER for snaity check(MattR)

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h  |  2 +
 drivers/gpu/drm/i915/i915_driver.c       |  3 +-
 drivers/gpu/drm/i915/i915_drv.h          |  2 +
 drivers/gpu/drm/i915/i915_pci.c          |  1 +
 drivers/gpu/drm/i915/i915_reg.h          |  7 +++
 drivers/gpu/drm/i915/intel_device_info.c | 74 +++++++++++++++++++++++-
 drivers/gpu/drm/i915/intel_device_info.h | 12 +++-
 7 files changed, 98 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index d414785003cc..579da62158c4 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -39,6 +39,8 @@
 #define FORCEWAKE_ACK_RENDER_GEN9		_MMIO(0xd84)
 #define FORCEWAKE_ACK_MEDIA_GEN9		_MMIO(0xd88)
 
+#define GMD_ID_GRAPHICS				_MMIO(0xd8c)
+
 #define MCFG_MCR_SELECTOR			_MMIO(0xfd0)
 #define SF_MCR_SELECTOR				_MMIO(0xfd8)
 #define GEN8_MCR_SELECTOR			_MMIO(0xfdc)
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 56a2bcddb2af..a1ab49521d19 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -323,7 +323,8 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	if (i915_inject_probe_failure(dev_priv))
 		return -ENODEV;
 
-	intel_device_info_subplatform_init(dev_priv);
+	intel_device_info_runtime_init_early(dev_priv);
+
 	intel_step_init(dev_priv);
 
 	intel_uncore_mmio_debug_init_early(&dev_priv->mmio_debug);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 2702e3dbed53..bfb69b65ad67 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -936,6 +936,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
 
+#define HAS_GMD_ID(i915)	INTEL_INFO(i915)->has_gmd_id
+
 #define HAS_LSPCON(dev_priv) (IS_DISPLAY_VER(dev_priv, 9, 10))
 
 #define HAS_L3_CCS_READ(i915) (INTEL_INFO(i915)->has_l3_ccs_read)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index f6aaf938c53c..4672894f4bc1 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1129,6 +1129,7 @@ static const struct intel_device_info mtl_info = {
 	PLATFORM(INTEL_METEORLAKE),
 	.display.has_modular_fia = 1,
 	.has_flat_ccs = 0,
+	.has_gmd_id = 1,
 	.has_snoop = 1,
 	.__runtime.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(CCS0),
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c413eec3373f..885ff4598fd4 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5798,6 +5798,11 @@
 #define ICL_DSSM_CDCLK_PLL_REFCLK_19_2MHz	(1 << 29)
 #define ICL_DSSM_CDCLK_PLL_REFCLK_38_4MHz	(2 << 29)
 
+#define GMD_ID_DISPLAY				_MMIO(0x510a0)
+#define   GMD_ID_ARCH_MASK			REG_GENMASK(31, 22)
+#define   GMD_ID_RELEASE_MASK			REG_GENMASK(21, 14)
+#define   GMD_ID_STEP				REG_GENMASK(5, 0)
+
 /*GEN11 chicken */
 #define _PIPEA_CHICKEN				0x70038
 #define _PIPEB_CHICKEN				0x71038
@@ -8298,4 +8303,6 @@ enum skl_power_gate {
 #define  MTL_LATENCY_LEVEL_EVEN_MASK	REG_GENMASK(12, 0)
 #define  MTL_LATENCY_LEVEL_ODD_MASK	REG_GENMASK(28, 16)
 
+#define MTL_MEDIA_GSI_BASE		0x380000
+
 #endif /* _I915_REG_H_ */
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 56f19683dd55..f7472f40ab51 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -29,6 +29,7 @@
 
 #include "display/intel_cdclk.h"
 #include "display/intel_de.h"
+#include "gt/intel_gt_regs.h"
 #include "intel_device_info.h"
 #include "i915_drv.h"
 #include "i915_utils.h"
@@ -231,7 +232,7 @@ static bool find_devid(u16 id, const u16 *p, unsigned int num)
 	return false;
 }
 
-void intel_device_info_subplatform_init(struct drm_i915_private *i915)
+static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 {
 	const struct intel_device_info *info = INTEL_INFO(i915);
 	const struct intel_runtime_info *rinfo = RUNTIME_INFO(i915);
@@ -288,6 +289,77 @@ void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 	RUNTIME_INFO(i915)->platform_mask[pi] |= mask;
 }
 
+static void ip_ver_read(struct drm_i915_private *i915, u32 offset, struct ip_version *ip)
+{
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	void __iomem *addr;
+	u32 val;
+	u8 ver = ip->ver;
+	u8 rel = ip->rel;
+
+	addr = pci_iomap_range(pdev, 0, offset, sizeof(u32));
+	if (drm_WARN_ON(&i915->drm, !addr))
+		return;
+
+	val = ioread32(addr);
+	pci_iounmap(pdev, addr);
+
+	ip->ver = REG_FIELD_GET(GMD_ID_ARCH_MASK, val);
+	ip->rel = REG_FIELD_GET(GMD_ID_RELEASE_MASK, val);
+	ip->step = REG_FIELD_GET(GMD_ID_STEP, val);
+
+	/* Sanity check against expected versions from device info */
+	if (IP_VER(ip->ver, ip->rel) < IP_VER(ver, rel))
+		drm_dbg(&i915->drm,
+			"Hardware reports GMD IP version %u.%u but minimum expected is %u.%u\n",
+			ip->ver, ip->rel, ver, rel);
+}
+
+/**
+ * Setup the graphics version for the current device.  This must be done before
+ * any code that performs checks on GRAPHICS_VER or DISPLAY_VER, so this
+ * function should be called very early in the driver initialization sequence.
+ *
+ * Regular MMIO access is not yet setup at the point this function is called so
+ * we peek at the appropriate MMIO offset directly.  The GMD_ID register is
+ * part of an 'always on' power well by design, so we don't need to worry about
+ * forcewake while reading it.
+ */
+static void intel_ipver_early_init(struct drm_i915_private *i915)
+{
+	struct intel_runtime_info *runtime = RUNTIME_INFO(i915);
+
+	if (!HAS_GMD_ID(i915))
+		return;
+
+	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_GRAPHICS),
+		    &runtime->graphics.version);
+	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_DISPLAY),
+		    &runtime->display.version);
+	ip_ver_read(i915, MTL_MEDIA_GSI_BASE + i915_mmio_reg_offset(GMD_ID_GRAPHICS),
+		    &runtime->media.version);
+}
+
+/**
+ * intel_device_info_runtime_init_early - initialize early runtime info
+ * @i915: the i915 device
+ *
+ * Determine early intel_device_info fields at runtime.
+ *
+ * Use it when:
+ *   - Early init of certain runtime info fields are to be initialized
+ *
+ * This function needs to be called:
+ *   - before the MMIO has been setup as we are reading registers,
+ *   - before the PCH has been detected,
+ *   - before the first usage of the fields it can tweak.
+ */
+void intel_device_info_runtime_init_early(struct drm_i915_private *i915)
+{
+	intel_ipver_early_init(i915);
+	intel_device_info_subplatform_init(i915);
+}
+
 /**
  * intel_device_info_runtime_init - initialize runtime info
  * @dev_priv: the i915 device
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index d36cf25f1d5f..4a938cb897d0 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -152,6 +152,7 @@ enum intel_ppgtt_type {
 	func(has_4tile); \
 	func(has_flat_ccs); \
 	func(has_global_mocs); \
+	func(has_gmd_id); \
 	func(has_gt_uc); \
 	func(has_heci_pxp); \
 	func(has_heci_gscfi); \
@@ -197,9 +198,18 @@ enum intel_ppgtt_type {
 struct ip_version {
 	u8 ver;
 	u8 rel;
+	u8 step;
 };
 
 struct intel_runtime_info {
+	/*
+	 * On modern platforms, the architecture major.minor version numbers
+	 * and stepping are read directly from the hardware rather than derived
+	 * from the PCI device and revision ID's.
+	 *
+	 * Note that the hardware gives us a single "graphics" number that
+	 * should represent render, compute, and copy behavior.
+	 */
 	struct {
 		struct ip_version version;
 	} graphics;
@@ -305,7 +315,7 @@ struct intel_driver_caps {
 
 const char *intel_platform_name(enum intel_platform platform);
 
-void intel_device_info_subplatform_init(struct drm_i915_private *dev_priv);
+void intel_device_info_runtime_init_early(struct drm_i915_private *dev_priv);
 void intel_device_info_runtime_init(struct drm_i915_private *dev_priv);
 
 void intel_device_info_print(const struct intel_device_info *info,
-- 
2.34.1

