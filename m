Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7AFBDC4F6
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:18:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2868C10E708;
	Wed, 15 Oct 2025 03:18:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oH5boVwS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B37B10E707;
 Wed, 15 Oct 2025 03:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498282; x=1792034282;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=HJjCgkY0Daz4+8PoGuKiLr5r13+SJ/rO5MtzHvnqcvE=;
 b=oH5boVwS7wUJG7qyJ5OIkHNiMUZMMAaTfH6d8tr6VlCR5TM37twIuSUO
 yZGKtLHGSr6WDi7WhAZvS/ghazm0Ta5MThHLWvn2m0d1uu7UraorD3ftX
 0omrriBKzwvb5lp+KE3HdbKBcnrwP1atBwbpbuR7eEwNhocgFrntlZlUC
 rjvqNwxAjCNynSg6y1vlERRoOhUMizb+xpea97CUi2eDSVxDpqnYQXz3M
 7Ih2/DBLGfQf2tPLkUQtCXgDDs2GCsI7PO0sC/6bsLCiFNmMZt18XbNHa
 NxQMUr0a09E0WeXZcA31H7jqj6fSTB1W5t6x7jue/iv7RBeoHRdPFot3K g==;
X-CSE-ConnectionGUID: Y/otAWALRAe6KMrDS/Muhg==
X-CSE-MsgGUID: TnFHLYJiT2SxNVmVJgsrXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62577244"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62577244"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:18:02 -0700
X-CSE-ConnectionGUID: zxP9RvW9Qq+zQzWrqJANaw==
X-CSE-MsgGUID: 8ndg3gGySiuLdBNZ6fWmUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186302891"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:57 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:20 -0300
Subject: [PATCH 20/32] drm/i915/xe3p_lpd: Enable system caching for FBC
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-20-d2d1e26520aa@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
X-Mailer: b4 0.15-dev
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

From: Vinod Govindapillai <vinod.govindapillai@intel.com>

Configure one of the FBC instances to use system caching. FBC
read/write requests are tagged as cacheable till a programmed
limit is reached by the hw.

Bspec: 74722
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c      | 47 +++++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fbc_regs.h |  9 +++++
 2 files changed, 56 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 39d257267f9b..75c78bef54f2 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -127,6 +127,9 @@ struct intel_fbc {
 	 */
 	struct intel_fbc_state state;
 	const char *no_fbc_reason;
+
+	/* Only one of FBC instances can use the system cache */
+	bool own_sys_cache;
 };
 
 /* plane stride in pixels */
@@ -571,12 +574,51 @@ static bool ilk_fbc_is_compressing(struct intel_fbc *fbc)
 	return intel_de_read(fbc->display, ILK_DPFC_STATUS(fbc->id)) & DPFC_COMP_SEG_MASK;
 }
 
+static void nvl_fbc_program_system_cache(struct intel_fbc *fbc, bool enable)
+{
+	struct intel_display *display = fbc->display;
+	u32 cfb_offset, usage;
+
+	lockdep_assert_held(&fbc->lock);
+
+	usage = intel_de_read(display, NVL_FBC_SYS_CACHE_USAGE_CFG);
+
+	/* System cache already being used by another pipe */
+	if (enable && (usage & FBC_SYS_CACHE_TAG_USE_RES_SPACE))
+		return;
+
+	/* Only the fbc instance which owns system cache can disable it */
+	if (!enable && !fbc->own_sys_cache)
+		return;
+
+	/*
+	 * Not programming the cache limit and cache reading enable bits explicitly
+	 * here. The default values should take care of those and that could leave
+	 * adjustments of those bits to the system hw policy
+	 *
+	 * TODO: check if we need to explicitly program these?
+	 */
+	cfb_offset = enable ? i915_gem_stolen_node_offset(fbc->compressed_fb) : 0;
+	usage |= FBC_SYS_CACHE_START_BASE(cfb_offset);
+	usage |= enable ? FBC_SYS_CACHE_TAG_USE_RES_SPACE : FBC_SYS_CACHE_TAG_DONT_CACHE;
+
+	intel_de_write(display, NVL_FBC_SYS_CACHE_USAGE_CFG, usage);
+
+	fbc->own_sys_cache = enable;
+
+	drm_dbg_kms(display->drm, "System caching for FBC[%d] %s\n",
+		    fbc->id, enable ? "configured" : "cleared");
+}
+
 static void ilk_fbc_program_cfb(struct intel_fbc *fbc)
 {
 	struct intel_display *display = fbc->display;
 
 	intel_de_write(display, ILK_DPFC_CB_BASE(fbc->id),
 		       i915_gem_stolen_node_offset(fbc->compressed_fb));
+
+	if (DISPLAY_VER(display) >= 35)
+		nvl_fbc_program_system_cache(fbc, true);
 }
 
 static const struct intel_fbc_funcs ilk_fbc_funcs = {
@@ -951,6 +993,8 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
 
 static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
 {
+	struct intel_display *display = fbc->display;
+
 	if (WARN_ON(intel_fbc_hw_is_active(fbc)))
 		return;
 
@@ -958,6 +1002,9 @@ static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
 		i915_gem_stolen_remove_node(fbc->compressed_llb);
 	if (i915_gem_stolen_node_allocated(fbc->compressed_fb))
 		i915_gem_stolen_remove_node(fbc->compressed_fb);
+
+	if (DISPLAY_VER(display) >= 35)
+		nvl_fbc_program_system_cache(fbc, false);
 }
 
 void intel_fbc_cleanup(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
index b1d0161a3196..264799bba7e0 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
@@ -126,4 +126,13 @@
 #define   FBC_REND_NUKE			REG_BIT(2)
 #define   FBC_REND_CACHE_CLEAN		REG_BIT(1)
 
+#define NVL_FBC_SYS_CACHE_USAGE_CFG             _MMIO(0x1344E0)
+#define   FBC_SYS_CACHE_START_BASE_MASK         REG_GENMASK(31, 16)
+#define   FBC_SYS_CACHE_START_BASE(base)        REG_FIELD_PREP(FBC_SYS_CACHE_START_BASE_MASK, (base))
+#define   FBC_SYS_CACHEABLE_RANGE_MASK          REG_GENMASK(15, 4)
+#define   FBC_SYS_CACHEABLE_RANGE(range)        REG_FIELD_PREP(FBC_SYS_CACHEABLE_RANGE_MASK, (range))
+#define   FBC_SYS_CACHE_TAG_MASK                REG_GENMASK(3, 2)
+#define   FBC_SYS_CACHE_TAG_DONT_CACHE          REG_FIELD_PREP(FBC_SYS_CACHE_TAG_MASK, 0)
+#define   FBC_SYS_CACHE_TAG_USE_RES_SPACE       REG_FIELD_PREP(FBC_SYS_CACHE_TAG_MASK, 3)
+
 #endif /* __INTEL_FBC_REGS__ */

-- 
2.51.0

