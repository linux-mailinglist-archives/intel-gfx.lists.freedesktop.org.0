Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2EDC7E32C
	for <lists+intel-gfx@lfdr.de>; Sun, 23 Nov 2025 17:01:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C07F810E191;
	Sun, 23 Nov 2025 16:01:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b8BjpMhO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56F6010E18C;
 Sun, 23 Nov 2025 16:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763913710; x=1795449710;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6VCNAwfKzto+VupaZJ6hot3gu0kdAqqWGEo7R3IUY3I=;
 b=b8BjpMhO+Yf8BpnzQF1M6r5SQkIEf5Tqb1dpRp2zzs8Et0G895u3MVVZ
 byNfnIkIbw33S3bUUoOCxqQjDYYYOnhtTYr17LSgmclravD6ikcQ+KeH7
 s4LQ1Tp+p3ANkv3enm7xjAIdRdV9DFkuSfT6Sb2EHpTm4BI66LZUcAWfl
 SKmEP5i9hiPEm10qwoveHYZ5rjoJtBcB6xiFgDstDYoy+5b2qY0WMD928
 /fHOuObXIeLwoTdqTRbs5JXdkJJc7gUX9DYtEcPnRB7Ydt/zxdJcpbWek
 D9VwbvGjVsqMoV+voLbyhqPNpic9hBuwjDaEQa6a4P/7yaSEEgLpZUIfA Q==;
X-CSE-ConnectionGUID: xeT2VO8YSzWAw3yJ92sMfg==
X-CSE-MsgGUID: TEU3vBVzTZKQsVVJGEYYxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11622"; a="77041000"
X-IronPort-AV: E=Sophos;i="6.20,221,1758610800"; d="scan'208";a="77041000"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2025 08:01:50 -0800
X-CSE-ConnectionGUID: 2KN72GKfThusFFErMKLKAA==
X-CSE-MsgGUID: pU/v1rgcTjuTY373ff6NVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,221,1758610800"; d="scan'208";a="192589056"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.206])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2025 08:01:46 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, matthew.d.roper@intel.com,
 gustavo.sousa@intel.com, ville.syrjala@intel.com, jani.nikula@intel.com
Subject: [PATCH v3 2/2] drm/i915/xe3p_lpd: Enable display use of system cache
 for FBC
Date: Sun, 23 Nov 2025 18:01:27 +0200
Message-ID: <20251123160127.142599-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251123160127.142599-1-vinod.govindapillai@intel.com>
References: <20251123160127.142599-1-vinod.govindapillai@intel.com>
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

v3: - changes related to the use of fbc substruct in intel_display
    - use intel_de_write() instead of intel_rmw() by hardcoding the
      default value fields

Bspec: 68881, 74722
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  3 +
 .../drm/i915/display/intel_display_device.h   |  1 +
 drivers/gpu/drm/i915/display/intel_fbc.c      | 93 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fbc_regs.h | 10 ++
 4 files changed, 107 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 58325f530670..f557c9293d33 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -400,6 +400,9 @@ struct intel_display {
 
 	struct {
 		struct intel_fbc *instances[I915_MAX_FBCS];
+
+		/* xe3p_lpd+ : FBC instance utlizing the system cache */
+		enum intel_fbc_id sys_cache_id;
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
index dcdfcff80de3..d7e913792518 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -71,6 +71,10 @@
 	for_each_fbc_id((__display), (__fbc_id)) \
 		for_each_if((__fbc) = (__display)->fbc.instances[(__fbc_id)])
 
+#define SYS_CACHE_FBC_INSTANCE_NONE			I915_MAX_FBCS
+#define IS_SYS_CACHE_FBC_INSTANCE_NONE(__display)	((__display)->fbc.sys_cache_id == SYS_CACHE_FBC_INSTANCE_NONE)
+#define IS_SYS_CACHE_FBC_INSTANCE_EQUALS(__display, id)	((__display)->fbc.sys_cache_id == (id))
+
 struct intel_fbc_funcs {
 	void (*activate)(struct intel_fbc *fbc);
 	void (*deactivate)(struct intel_fbc *fbc);
@@ -941,6 +945,79 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
 		fbc_compressor_clkgate_disable_wa(fbc, true);
 }
 
+static void xe3p_lpd_fbc_set_sys_cache_fbc_id(struct intel_display *display,
+					      enum intel_fbc_id fbc_id)
+{
+	display->fbc.sys_cache_id = fbc_id;
+}
+
+static void xe3p_lpd_fbc_commit_sys_cache_usage(struct intel_display *display,
+						u32 reg)
+{
+	intel_de_write(display, XE3P_LPD_FBC_SYS_CACHE_USAGE_CFG, reg);
+}
+
+static int xe3p_lpd_fbc_get_cache_limit(void)
+{
+	/* Default 2MB for xe3p_lpd */
+	return 2 * 1024 * 1024;
+}
+
+static void xe3p_lpd_fbc_clear_sys_cache_usage(struct intel_display *display)
+{
+	/* Clear all the fields except the default fields */
+	u32 default_fields = FBC_SYS_CACHE_READ_ENABLE;
+
+	xe3p_lpd_fbc_commit_sys_cache_usage(display, default_fields);
+
+	/* Mark that no FBC instance utilize the system cache */
+	xe3p_lpd_fbc_set_sys_cache_fbc_id(display, SYS_CACHE_FBC_INSTANCE_NONE);
+}
+
+static void xe3p_lpd_fbc_set_sys_cache_usage(const struct intel_fbc *fbc)
+{
+	struct intel_display *display = fbc->display;
+	/* limit to be configured to the register in 64k byte chunks */
+	int range = xe3p_lpd_fbc_get_cache_limit() / (64 * 1024);
+	/* offset to be configured to the register in 4K byte chunks */
+	int offset = i915_gem_stolen_node_offset(fbc->compressed_fb) / (4 * 1024);
+	/* Cache read enable is enabled by default */
+	u32 usage = FBC_SYS_CACHE_TAG_USE_RES_SPACE |
+		    FBC_SYS_CACHEABLE_RANGE(range) |
+		    FBC_SYS_CACHE_START_BASE(offset) |
+		    FBC_SYS_CACHE_READ_ENABLE;
+
+	lockdep_assert_held(&fbc->lock);
+
+	xe3p_lpd_fbc_commit_sys_cache_usage(display, usage);
+
+	xe3p_lpd_fbc_set_sys_cache_fbc_id(display, fbc->id);
+}
+
+static void xe3p_lpd_fbc_update_sys_cache_usage(const struct intel_fbc *fbc,
+						bool set)
+{
+	struct intel_display *display = fbc->display;
+
+	lockdep_assert_held(&fbc->lock);
+
+	/* system cache for fbc already reserved */
+	if (set && !IS_SYS_CACHE_FBC_INSTANCE_NONE(display))
+		return;
+
+	/* cannot clear if "fbc" did not reserve the cache */
+	if (!set && !IS_SYS_CACHE_FBC_INSTANCE_EQUALS(display, fbc->id))
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
@@ -967,6 +1044,9 @@ void intel_fbc_cleanup(struct intel_display *display)
 
 		kfree(fbc);
 	}
+
+	if (HAS_FBC_SYS_CACHE(display))
+		xe3p_lpd_fbc_clear_sys_cache_usage(display);
 }
 
 static bool i8xx_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
@@ -1780,6 +1860,9 @@ static void __intel_fbc_disable(struct intel_fbc *fbc)
 
 	__intel_fbc_cleanup_cfb(fbc);
 
+	if (HAS_FBC_SYS_CACHE(display))
+		xe3p_lpd_fbc_update_sys_cache_usage(fbc, false);
+
 	/* wa_18038517565 Enable DPFC clock gating after FBC disable */
 	if (display->platform.dg2 || DISPLAY_VER(display) >= 14)
 		fbc_compressor_clkgate_disable_wa(fbc, false);
@@ -1972,6 +2055,9 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
 
 	intel_fbc_program_workarounds(fbc);
 	intel_fbc_program_cfb(fbc);
+
+	if (HAS_FBC_SYS_CACHE(display))
+		xe3p_lpd_fbc_update_sys_cache_usage(fbc, true);
 }
 
 /**
@@ -2212,6 +2298,9 @@ void intel_fbc_init(struct intel_display *display)
 
 	for_each_fbc_id(display, fbc_id)
 		display->fbc.instances[fbc_id] = intel_fbc_create(display, fbc_id);
+
+	/* Mark that no FBC instance is using the system cache */
+	xe3p_lpd_fbc_set_sys_cache_fbc_id(display, SYS_CACHE_FBC_INSTANCE_NONE);
 }
 
 /**
@@ -2231,6 +2320,10 @@ void intel_fbc_sanitize(struct intel_display *display)
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

