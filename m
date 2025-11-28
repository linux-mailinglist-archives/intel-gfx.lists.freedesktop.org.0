Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7FEC91CD4
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Nov 2025 12:36:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5862D10E052;
	Fri, 28 Nov 2025 11:36:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fItq5HuF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C1B310E052;
 Fri, 28 Nov 2025 11:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764329770; x=1795865770;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hzbj8auLxEbEyj5+qrbh99sgQd+pcTIGSZ3ta3VkbCI=;
 b=fItq5HuFkm7uRBN29g2Og0jhA1KH759GvYpf/mb6FyXF7QcOfxsaf58P
 /UHovkbewBDdWxllkfLKAC051XsdL2Kn3VC0Gx1mnoqSh5o6wyrYRAYpK
 UcfKYQBH7yWpuAyXcheoUNwypoXF/4xNe6TkhWoTkttUXTp08jjv29roU
 5wvM2vzgWkaNzI02RYLUDeFi2pTKehp21PKyTyER9q0UUZypD/9JHu1Dd
 T2QeSZZR9CbwiuMT39TmjQt/+rJuMY/0aSwVpKAJX7jti4zieLS8bD45K
 RdQImfEyMsbhEtivK8GL1nEi0gixdpU6fn2xmcskeOmNgnzAZ0vgL8Nii g==;
X-CSE-ConnectionGUID: R73rK7ULTi+OobCmDvYTbg==
X-CSE-MsgGUID: Cm+w7phXQdaS7UoeanTPgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66252417"
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="66252417"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 03:36:09 -0800
X-CSE-ConnectionGUID: EIzhBxjiSQGTwKX9O9YGtg==
X-CSE-MsgGUID: 4ioe1lQWRwWFDHQ8Z7iFKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="193340796"
Received: from abityuts-desk.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.244.192])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 03:36:07 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, matthew.d.roper@intel.com,
 gustavo.sousa@intel.com, ville.syrjala@intel.com, jani.nikula@intel.com
Subject: [PATCH v5 2/3] drm/i915/xe3p_lpd: Enable display use of system cache
 for FBC
Date: Fri, 28 Nov 2025 13:35:57 +0200
Message-ID: <20251128113557.129192-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251127115349.249120-3-vinod.govindapillai@intel.com>
References: <20251127115349.249120-3-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo
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

v3: - changes related to the use of fbc substruct in intel_display
    - use intel_de_write() instead of intel_rmw() by hardcoding the
      default value fields

v4: - protect sys cache config accesses, sys cache usage status in
      debugfs per fbc instance (Jani)

v5: - mutex_init and missing mutex_lock in sanitize call

Bspec: 68881, 74722
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  7 ++
 .../drm/i915/display/intel_display_device.h   |  1 +
 drivers/gpu/drm/i915/display/intel_fbc.c      | 87 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fbc_regs.h | 10 +++
 4 files changed, 105 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 58325f530670..0a1744b3b440 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -400,6 +400,13 @@ struct intel_display {
 
 	struct {
 		struct intel_fbc *instances[I915_MAX_FBCS];
+
+		/* xe3p_lpd+: FBC instance utilizing the system cache */
+		struct sys_cache_cfg {
+			/* Protect concurrecnt access to system cache configuration */
+			struct mutex lock;
+			enum intel_fbc_id id;
+		} sys_cache;
 	} fbc;
 
 	struct {
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
index dcdfcff80de3..cebde5db3dd7 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -71,6 +71,8 @@
 	for_each_fbc_id((__display), (__fbc_id)) \
 		for_each_if((__fbc) = (__display)->fbc.instances[(__fbc_id)])
 
+#define FBC_SYS_CACHE_ID_NONE	I915_MAX_FBCS
+
 struct intel_fbc_funcs {
 	void (*activate)(struct intel_fbc *fbc);
 	void (*deactivate)(struct intel_fbc *fbc);
@@ -941,6 +943,69 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
 		fbc_compressor_clkgate_disable_wa(fbc, true);
 }
 
+static void fbc_sys_cache_update_config(struct intel_display *display, u32 reg,
+					enum intel_fbc_id id)
+{
+	if (!HAS_FBC_SYS_CACHE(display))
+		return;
+
+	lockdep_assert_held(&display->fbc.sys_cache.lock);
+
+	/* Cache read enable is set by default */
+	reg |= FBC_SYS_CACHE_READ_ENABLE;
+
+	intel_de_write(display, XE3P_LPD_FBC_SYS_CACHE_USAGE_CFG, reg);
+
+	display->fbc.sys_cache.id = id;
+}
+
+static void fbc_sys_cache_disable(const struct intel_fbc *fbc)
+{
+	struct intel_display *display = fbc->display;
+	struct sys_cache_cfg *sys_cache = &display->fbc.sys_cache;
+
+	mutex_lock(&sys_cache->lock);
+	/* clear only if "fbc" reserved the cache */
+	if (sys_cache->id == fbc->id)
+		fbc_sys_cache_update_config(display, 0, FBC_SYS_CACHE_ID_NONE);
+	mutex_unlock(&sys_cache->lock);
+}
+
+static int fbc_sys_cache_limit(struct intel_display *display)
+{
+	/* Default 2MB for xe3p_lpd */
+	if (DISPLAY_VER(display) == 35)
+		return 2 * 1024 * 1024;
+
+	return 0;
+}
+
+static void fbc_sys_cache_enable(const struct intel_fbc *fbc)
+{
+	struct intel_display *display = fbc->display;
+	struct sys_cache_cfg *sys_cache = &display->fbc.sys_cache;
+	int range, offset;
+	u32 cfg;
+
+	if (!HAS_FBC_SYS_CACHE(display))
+		return;
+
+	/* limit to be configured to the register in 64k byte chunks */
+	range = fbc_sys_cache_limit(display) / (64 * 1024);
+
+	/* offset to be configured to the register in 4K byte chunks */
+	offset = i915_gem_stolen_node_offset(fbc->compressed_fb) / (4 * 1024);
+
+	cfg = FBC_SYS_CACHE_TAG_USE_RES_SPACE | FBC_SYS_CACHEABLE_RANGE(range) |
+	      FBC_SYS_CACHE_START_BASE(offset);
+
+	mutex_lock(&sys_cache->lock);
+	/* update sys cache config only if sys cache is unassigned */
+	if (sys_cache->id == FBC_SYS_CACHE_ID_NONE)
+		fbc_sys_cache_update_config(display, cfg, fbc->id);
+	mutex_unlock(&sys_cache->lock);
+}
+
 static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
 {
 	if (WARN_ON(intel_fbc_hw_is_active(fbc)))
@@ -967,6 +1032,11 @@ void intel_fbc_cleanup(struct intel_display *display)
 
 		kfree(fbc);
 	}
+
+	mutex_lock(&display->fbc.sys_cache.lock);
+	drm_WARN_ON(display->drm,
+		    display->fbc.sys_cache.id != FBC_SYS_CACHE_ID_NONE);
+	mutex_unlock(&display->fbc.sys_cache.lock);
 }
 
 static bool i8xx_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
@@ -1780,6 +1850,8 @@ static void __intel_fbc_disable(struct intel_fbc *fbc)
 
 	__intel_fbc_cleanup_cfb(fbc);
 
+	fbc_sys_cache_disable(fbc);
+
 	/* wa_18038517565 Enable DPFC clock gating after FBC disable */
 	if (display->platform.dg2 || DISPLAY_VER(display) >= 14)
 		fbc_compressor_clkgate_disable_wa(fbc, false);
@@ -1972,6 +2044,8 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
 
 	intel_fbc_program_workarounds(fbc);
 	intel_fbc_program_cfb(fbc);
+
+	fbc_sys_cache_enable(fbc);
 }
 
 /**
@@ -2212,6 +2286,9 @@ void intel_fbc_init(struct intel_display *display)
 
 	for_each_fbc_id(display, fbc_id)
 		display->fbc.instances[fbc_id] = intel_fbc_create(display, fbc_id);
+
+	mutex_init(&display->fbc.sys_cache.lock);
+	display->fbc.sys_cache.id = FBC_SYS_CACHE_ID_NONE;
 }
 
 /**
@@ -2231,6 +2308,11 @@ void intel_fbc_sanitize(struct intel_display *display)
 		if (intel_fbc_hw_is_active(fbc))
 			intel_fbc_hw_deactivate(fbc);
 	}
+
+	/* Ensure the sys cache usage config is clear as well */
+	mutex_lock(&display->fbc.sys_cache.lock);
+	fbc_sys_cache_update_config(display, 0, FBC_SYS_CACHE_ID_NONE);
+	mutex_unlock(&display->fbc.sys_cache.lock);
 }
 
 static int intel_fbc_debugfs_status_show(struct seq_file *m, void *unused)
@@ -2249,6 +2331,11 @@ static int intel_fbc_debugfs_status_show(struct seq_file *m, void *unused)
 		seq_puts(m, "FBC enabled\n");
 		seq_printf(m, "Compressing: %s\n",
 			   str_yes_no(intel_fbc_is_compressing(fbc)));
+
+		mutex_lock(&display->fbc.sys_cache.lock);
+		seq_printf(m, "Using system cache: %s\n",
+			   str_yes_no(display->fbc.sys_cache.id == fbc->id));
+		mutex_unlock(&display->fbc.sys_cache.lock);
 	} else {
 		seq_printf(m, "FBC disabled: %s\n", fbc->no_fbc_reason);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
index b1d0161a3196..d2d889fa4bed 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
@@ -126,4 +126,14 @@
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
+#define   FBC_SYS_CACHE_READ_ENABLE		REG_BIT(0)
+
 #endif /* __INTEL_FBC_REGS__ */
-- 
2.43.0

