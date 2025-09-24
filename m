Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 069E8B9AE6F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 18:44:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C87C10E776;
	Wed, 24 Sep 2025 16:44:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BCpKuyyP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B4B110E013;
 Wed, 24 Sep 2025 16:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758732242; x=1790268242;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pa0TfAiWhzl2q13N54uqvY8GBZgKOp09DnZUmHnhGV4=;
 b=BCpKuyyPDb89sq9J+lcTXeGmowE4otg8vsRm7i2Ck0KXmF/EQTyz2DGD
 kmR6rXq0kDq0hmzysraCHn0asKj068PUQy/4XbWluBOl77xQ9qE83BrdR
 svtPRg8hFQSdtm8oVCYTlPRFage++r/pct2TZwh+o0qt9AMsc5uWH8QWw
 XuePwZETq2ANx5+7HXrIHYnlYpH9sc7J3HOU/UqqQ1pe6RvMS0s0N0ZPF
 2I+hgo26Ulb142GIyJ4DtA2asdPmMpk8A9UGpbDiMOpSZdbuYnBQ45UPX
 dY8shdvzl2YxL1yyQgccwfqz0rxARmmsT7u6p2fNgKlX0L5AtraBCvyAP w==;
X-CSE-ConnectionGUID: SWPpzbqiSFC+RYcBY3GcjQ==
X-CSE-MsgGUID: vPfXZfOMRSqYzZS7ytFtyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="72137965"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="72137965"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 09:44:02 -0700
X-CSE-ConnectionGUID: xRlKptr+RYq8LhKBkUyDlA==
X-CSE-MsgGUID: yFz23yOqR0mX2EnYRZuAug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="177515438"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.149])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 09:43:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 03/11] drm/xe/stolen: convert compat stolen macros to inline
 functions
Date: Wed, 24 Sep 2025 19:43:32 +0300
Message-ID: <1ec1fa59e0e54da49a1ec4fd1d535288066db502.1758732183.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758732183.git.jani.nikula@intel.com>
References: <cover.1758732183.git.jani.nikula@intel.com>
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

Improve type safety. Allows getting rid of a __maybe_unused annotation
too.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
 .../compat-i915-headers/gem/i915_gem_stolen.h | 39 +++++++++++++++----
 2 files changed, 33 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 6a7357fa89db..cc67de6c06cf 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -797,7 +797,7 @@ static u64 intel_fbc_cfb_base_max(struct intel_display *display)
 
 static u64 intel_fbc_stolen_end(struct intel_display *display)
 {
-	struct drm_i915_private __maybe_unused *i915 = to_i915(display->drm);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	u64 end;
 
 	/* The FBC hardware for BDW/SKL doesn't have access to the stolen
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
index b45575b15322..2c77457837e4 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
@@ -62,8 +62,15 @@ static inline void i915_gem_stolen_remove_node(struct xe_device *xe,
 	node->bo = NULL;
 }
 
-#define i915_gem_stolen_initialized(xe) (!!ttm_manager_type(&(xe)->ttm, XE_PL_STOLEN))
-#define i915_gem_stolen_node_allocated(node) (!!((node)->bo))
+static inline bool i915_gem_stolen_initialized(struct xe_device *xe)
+{
+	return ttm_manager_type(&xe->ttm, XE_PL_STOLEN);
+}
+
+static inline bool i915_gem_stolen_node_allocated(const struct intel_stolen_node *node)
+{
+	return node->bo;
+}
 
 static inline u32 i915_gem_stolen_node_offset(struct intel_stolen_node *node)
 {
@@ -74,12 +81,30 @@ static inline u32 i915_gem_stolen_node_offset(struct intel_stolen_node *node)
 }
 
 /* Used for < gen4. These are not supported by Xe */
-#define i915_gem_stolen_area_address(xe) (!WARN_ON(1))
+static inline u64 i915_gem_stolen_area_address(const struct xe_device *xe)
+{
+	WARN_ON(1);
+
+	return 0;
+}
+
 /* Used for gen9 specific WA. Gen9 is not supported by Xe */
-#define i915_gem_stolen_area_size(xe) (!WARN_ON(1))
+static inline u64 i915_gem_stolen_area_size(const struct xe_device *xe)
+{
+	WARN_ON(1);
+
+	return 0;
+}
 
-#define i915_gem_stolen_node_address(xe, node) (xe_ttm_stolen_gpu_offset(xe) + \
-					 i915_gem_stolen_node_offset(node))
-#define i915_gem_stolen_node_size(node) ((u64)((node)->bo->ttm.base.size))
+static inline u64 i915_gem_stolen_node_address(struct xe_device *xe,
+					       struct intel_stolen_node *node)
+{
+	return xe_ttm_stolen_gpu_offset(xe) + i915_gem_stolen_node_offset(node);
+}
+
+static inline u64 i915_gem_stolen_node_size(const struct intel_stolen_node *node)
+{
+	return node->bo->ttm.base.size;
+}
 
 #endif
-- 
2.47.3

