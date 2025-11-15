Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC83C60603
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Nov 2025 14:32:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C052710E270;
	Sat, 15 Nov 2025 13:32:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eC6h0RmU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32CDA10E270;
 Sat, 15 Nov 2025 13:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763213561; x=1794749561;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zPe+NnJYT1o7rt2yEFB12O9xqpT6CaHNBQvEVvA5uj8=;
 b=eC6h0RmUU6WpyfDTnqWN5SFKm51wZ9WmbqwqYC6EhClxrJEfJBguffyH
 9O2MUmbCsnJs/Ef89v9MhDGvvNCZd6oCq7t9PWrMdBv6ZrZjqUq69vqR5
 R/x8nZCyRhFd1y8zO4jr4Cm3rVJgAklaZCSw203bvpkwJB3AGyb6kBLU+
 vtZYqmeRblt8lXlJfd2pRDCbc2DTxe6OXrcAKnby1WjZ5e+Ou9/7Bs+PM
 a/o6iM6VmVTK3hbcP8FywhumLMDxED1pyu1eSGKJ2BTunUjq2joishpE8
 29fed4otiaxmb89GvfNkjNewwpSUWQ9EDK77lYEBanicrfZxSo2GXTh5B A==;
X-CSE-ConnectionGUID: LBo3pUHXT5+8S9L/3PAvzA==
X-CSE-MsgGUID: uW1dlnQASga4EsifZ7cwGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11614"; a="69133137"
X-IronPort-AV: E=Sophos;i="6.19,307,1754982000"; d="scan'208";a="69133137"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2025 05:32:40 -0800
X-CSE-ConnectionGUID: TIGaU6iFTn2PhYfwkq0hdw==
X-CSE-MsgGUID: y/gVmzzqSjSi9zeTOiF4zw==
X-ExtLoop1: 1
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.246.254])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2025 05:32:37 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, matthew.d.roper@intel.com,
 gustavo.sousa@intel.com
Subject: [PATCH v2] drm/i915/xe3p_lpd: Enable display use of system cache for
 FBC
Date: Sat, 15 Nov 2025 15:32:23 +0200
Message-ID: <20251115133223.370577-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

One of the FBC instances can utilize the reserved area of SoC
level cache for the fbc transactions to benefit reduced memory
system power especially in idle scenarios. Reserved area of the
system cache can be assigned to an fbc instance by configuring
the cacheability configuration register with offset of the
compressed frame buffer in stolen memoty of that fbc. There is
a limit to this reserved area which is programmable and for
xe3p_lpd the limit is defined as 2MB.

v2: - better to track fbc sys cache usage from intel_display level,
      sanitize the cacheability config register on probe (Matt)
    - limit this for integrated graphics solutions, confirmed that
      no default value set for cache range by hw (Gustavo)

Bspec: 68881, 74722
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  3 +
 .../drm/i915/display/intel_display_device.h   |  1 +
 drivers/gpu/drm/i915/display/intel_fbc.c      | 76 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fbc_regs.h |  9 +++
 4 files changed, 89 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 9b8414b77c15..15b9e4c62c77 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -588,6 +588,9 @@ struct intel_display {
 		u32 bxt_phy_grc;
 	} state;
 
+	/* FBC instance utlizing the system cache */
+	int sys_cache_fbc;
+
 	struct {
 		unsigned int hpll_freq;
 		unsigned int czclk_freq;
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index b559ef43d547..b74cb69ccc85 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -173,6 +173,7 @@ struct intel_display_platforms {
 #define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >= 12 && HAS_DSC(__display))
 #define HAS_FBC(__display)		(DISPLAY_RUNTIME_INFO(__display)->fbc_mask != 0)
 #define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >= 30)
+#define HAS_FBC_SYS_CACHE(__display)	(DISPLAY_VER(__display) >= 35 && !(__display)->platform.dgfx)
 #define HAS_FPGA_DBG_UNCLAIMED(__display)	(DISPLAY_INFO(__display)->has_fpga_dbg)
 #define HAS_FW_BLC(__display)		(DISPLAY_VER(__display) >= 3)
 #define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 16cd99db2978..b85f24147a01 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -73,6 +73,9 @@
 	for_each_fbc_id((__display), (__fbc_id)) \
 		for_each_if((__fbc) = (__display)->fbc[(__fbc_id)])
 
+#define SYS_CACHE_FBC_UNASSIGNED		-1
+#define IS_SYS_CACHE_FBC_UNASSIGNED(__display)	((__display)->sys_cache_fbc == SYS_CACHE_FBC_UNASSIGNED)
+
 struct intel_fbc_funcs {
 	void (*activate)(struct intel_fbc *fbc);
 	void (*deactivate)(struct intel_fbc *fbc);
@@ -945,6 +948,66 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
 		fbc_compressor_clkgate_disable_wa(fbc, true);
 }
 
+static int xe3p_lpd_fbc_get_cache_limit(void)
+{
+	/* Default 2MB for xe3p_lpd */
+	return 2 * 1024 * 1024;
+}
+
+static void xe3p_lpd_fbc_clear_sys_cache_usage(struct intel_display *display)
+{
+	/* Clear all the fields except the default fields */
+	intel_de_rmw(display, XE3P_LPD_FBC_SYS_CACHE_USAGE_CFG,
+		     FBC_SYS_CACHE_TAG_MASK | FBC_SYS_CACHEABLE_RANGE_MASK |
+		     FBC_SYS_CACHE_START_BASE_MASK, 0);
+
+	/* Mark that no FBC instance utilize the system cache */
+	display->sys_cache_fbc = SYS_CACHE_FBC_UNASSIGNED;
+}
+
+static void xe3p_lpd_fbc_set_sys_cache_usage(const struct intel_fbc *fbc)
+{
+	struct intel_display *display = fbc->display;
+	/* limit to be configured to the register in 64k byte chunks */
+	int range = xe3p_lpd_fbc_get_cache_limit() / (64 * 1024);
+	/* offset to be configured to the register in 4K byte chunks */
+	int offset = i915_gem_stolen_node_offset(fbc->compressed_fb) / (4 * 1024);
+	u32 usage = FBC_SYS_CACHE_TAG_USE_RES_SPACE |
+		    FBC_SYS_CACHEABLE_RANGE(range) |
+		    FBC_SYS_CACHE_START_BASE(offset);
+
+	lockdep_assert_held(&fbc->lock);
+
+	intel_de_rmw(display, XE3P_LPD_FBC_SYS_CACHE_USAGE_CFG,
+		     FBC_SYS_CACHE_TAG_MASK | FBC_SYS_CACHEABLE_RANGE_MASK |
+		     FBC_SYS_CACHE_START_BASE_MASK, usage);
+
+	display->sys_cache_fbc = fbc->id;
+}
+
+static void xe3p_lpd_fbc_update_sys_cache_usage(const struct intel_fbc *fbc, bool set)
+{
+	struct intel_display *display = fbc->display;
+
+	lockdep_assert_held(&fbc->lock);
+
+	/* system cache for fbc already reserved */
+	if (set && !IS_SYS_CACHE_FBC_UNASSIGNED(display))
+		return;
+
+	/* cannot clear if "fbc" did not reserve the cache */
+	if (!set && display->sys_cache_fbc != fbc->id)
+		return;
+
+	if (set)
+		xe3p_lpd_fbc_set_sys_cache_usage(fbc);
+	else
+		xe3p_lpd_fbc_clear_sys_cache_usage(display);
+
+	drm_dbg_kms(display->drm, "System cacheability usage for FBC[%d] %s\n",
+		    fbc->id, set ? "configured" : "cleared");
+}
+
 static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
 {
 	if (WARN_ON(intel_fbc_hw_is_active(fbc)))
@@ -971,6 +1034,9 @@ void intel_fbc_cleanup(struct intel_display *display)
 
 		kfree(fbc);
 	}
+
+	if (HAS_FBC_SYS_CACHE(display))
+		xe3p_lpd_fbc_clear_sys_cache_usage(display);
 }
 
 static bool i8xx_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
@@ -1785,6 +1851,9 @@ static void __intel_fbc_disable(struct intel_fbc *fbc)
 
 	__intel_fbc_cleanup_cfb(fbc);
 
+	if (HAS_FBC_SYS_CACHE(display))
+		xe3p_lpd_fbc_update_sys_cache_usage(fbc, false);
+
 	/* wa_18038517565 Enable DPFC clock gating after FBC disable */
 	if (display->platform.dg2 || DISPLAY_VER(display) >= 14)
 		fbc_compressor_clkgate_disable_wa(fbc, false);
@@ -1977,6 +2046,9 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
 
 	intel_fbc_program_workarounds(fbc);
 	intel_fbc_program_cfb(fbc);
+
+	if (HAS_FBC_SYS_CACHE(display))
+		xe3p_lpd_fbc_update_sys_cache_usage(fbc, true);
 }
 
 /**
@@ -2236,6 +2308,10 @@ void intel_fbc_sanitize(struct intel_display *display)
 		if (intel_fbc_hw_is_active(fbc))
 			intel_fbc_hw_deactivate(fbc);
 	}
+
+	/* Ensure the sys cache usage register gets cleared */
+	if (HAS_FBC_SYS_CACHE(display))
+		xe3p_lpd_fbc_clear_sys_cache_usage(display);
 }
 
 static int intel_fbc_debugfs_status_show(struct seq_file *m, void *unused)
diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
index b1d0161a3196..9c9fe6355acd 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
@@ -126,4 +126,13 @@
 #define   FBC_REND_NUKE			REG_BIT(2)
 #define   FBC_REND_CACHE_CLEAN		REG_BIT(1)
 
+#define XE3P_LPD_FBC_SYS_CACHE_USAGE_CFG	_MMIO(0x1344E0)
+#define   FBC_SYS_CACHE_START_BASE_MASK		REG_GENMASK(31, 16)
+#define   FBC_SYS_CACHE_START_BASE(base)	REG_FIELD_PREP(FBC_SYS_CACHE_START_BASE_MASK, (base))
+#define   FBC_SYS_CACHEABLE_RANGE_MASK		REG_GENMASK(15, 4)
+#define   FBC_SYS_CACHEABLE_RANGE(range)	REG_FIELD_PREP(FBC_SYS_CACHEABLE_RANGE_MASK, (range))
+#define   FBC_SYS_CACHE_TAG_MASK		REG_GENMASK(3, 2)
+#define   FBC_SYS_CACHE_TAG_DONT_CACHE		REG_FIELD_PREP(FBC_SYS_CACHE_TAG_MASK, 0)
+#define   FBC_SYS_CACHE_TAG_USE_RES_SPACE	REG_FIELD_PREP(FBC_SYS_CACHE_TAG_MASK, 3)
+
 #endif /* __INTEL_FBC_REGS__ */
-- 
2.43.0

