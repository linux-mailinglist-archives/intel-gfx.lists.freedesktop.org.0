Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 281055A4DA9
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 15:19:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6158810F29A;
	Mon, 29 Aug 2022 13:19:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F97110F278
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Aug 2022 13:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661779149; x=1693315149;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mPXBAY98w+g4Zj/XopxyLsjSs/c/EVYEZNpYx6MwxEc=;
 b=fDPXMZ1pio3Jgy/XqVvKszheFVQy9FPGZvcpYDrLjHDhH+Rgz+sCfOqO
 dARwYzBRCkRsCls8qZzrWiM+Z4Y1lNSP3j9z0UyJ7aLz4ipbnUk6UJgYB
 O2rhjqzHw2M+oNWwvcVihpxch6i8Gr2DeDuVfXy+bv/ng6mOALN9/2bCt
 PWUr9bllj152ykb4V8LfLQOd7c00NsAI1AE43MZ01GaTctd8YN1KN+A20
 g3ST1rxQQCOk6S4R0RwiyPBMHHdE0GYmrm1dkG/NTbRLdTnyVxlLUNPxO
 lDyzHmCuwxrhm7Awy4WwTc3K2QfkLAdN9nGk/a00Jc65JBlX92+N131jg g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="275293679"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="275293679"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:19:08 -0700
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="562216052"
Received: from idecesar-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.198])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:19:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Aug 2022 16:18:15 +0300
Message-Id: <1151469ec13d392df86b72a375f490fd70a3257a.1661779055.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661779055.git.jani.nikula@intel.com>
References: <cover.1661779055.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 08/18] drm/i915: move fbc to display.fbc
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display FBC related members under drm_i915_private display
sub-struct.

Pointers and arrays of pointers to structs that we defined are fine
without a sub-struct wrapping.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c          | 2 +-
 drivers/gpu/drm/i915/display/intel_display_core.h  | 2 ++
 drivers/gpu/drm/i915/display/intel_fbc.c           | 6 +++---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                    | 3 ---
 5 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 0f35f2facdfc..5afbe3e98ee8 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -125,7 +125,7 @@ static struct intel_fbc *i9xx_plane_fbc(struct drm_i915_private *dev_priv,
 					enum i9xx_plane_id i9xx_plane)
 {
 	if (i9xx_plane_has_fbc(dev_priv, i9xx_plane))
-		return dev_priv->fbc[INTEL_FBC_A];
+		return dev_priv->display.fbc[INTEL_FBC_A];
 	else
 		return NULL;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 4eeb6a8caf67..be40d4a12434 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -18,6 +18,7 @@
 #include "intel_display.h"
 #include "intel_dmc.h"
 #include "intel_dpll_mgr.h"
+#include "intel_fbc.h"
 #include "intel_global_state.h"
 #include "intel_gmbus.h"
 #include "intel_opregion.h"
@@ -345,6 +346,7 @@ struct intel_display {
 	struct intel_audio audio;
 	struct intel_dmc dmc;
 	struct intel_dpll dpll;
+	struct intel_fbc *fbc[I915_MAX_FBCS];
 	struct intel_hotplug hotplug;
 	struct intel_opregion opregion;
 	struct intel_overlay *overlay;
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 0ece995ae766..f38175304928 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -59,7 +59,7 @@
 
 #define for_each_intel_fbc(__dev_priv, __fbc, __fbc_id) \
 	for_each_fbc_id((__dev_priv), (__fbc_id)) \
-		for_each_if((__fbc) = (__dev_priv)->fbc[(__fbc_id)])
+		for_each_if((__fbc) = (__dev_priv)->display.fbc[(__fbc_id)])
 
 struct intel_fbc_funcs {
 	void (*activate)(struct intel_fbc *fbc);
@@ -1720,7 +1720,7 @@ void intel_fbc_init(struct drm_i915_private *i915)
 		    i915->params.enable_fbc);
 
 	for_each_fbc_id(i915, fbc_id)
-		i915->fbc[fbc_id] = intel_fbc_create(i915, fbc_id);
+		i915->display.fbc[fbc_id] = intel_fbc_create(i915, fbc_id);
 }
 
 /**
@@ -1840,7 +1840,7 @@ void intel_fbc_debugfs_register(struct drm_i915_private *i915)
 	struct drm_minor *minor = i915->drm.primary;
 	struct intel_fbc *fbc;
 
-	fbc = i915->fbc[INTEL_FBC_A];
+	fbc = i915->display.fbc[INTEL_FBC_A];
 	if (fbc)
 		intel_fbc_debugfs_add(fbc, minor->debugfs_root);
 }
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index bcfde81e4d08..8f22a2739d1d 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1940,7 +1940,7 @@ static struct intel_fbc *skl_plane_fbc(struct drm_i915_private *dev_priv,
 	enum intel_fbc_id fbc_id = skl_fbc_id_for_pipe(pipe);
 
 	if (skl_plane_has_fbc(dev_priv, fbc_id, plane_id))
-		return dev_priv->fbc[fbc_id];
+		return dev_priv->display.fbc[fbc_id];
 	else
 		return NULL;
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e3c7de286226..43e73f6d7ef3 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -40,7 +40,6 @@
 #include "display/intel_display_core.h"
 #include "display/intel_display_power.h"
 #include "display/intel_dsb.h"
-#include "display/intel_fbc.h"
 #include "display/intel_frontbuffer.h"
 
 #include "gem/i915_gem_context_types.h"
@@ -286,8 +285,6 @@ struct drm_i915_private {
 	};
 	u32 pipestat_irq_mask[I915_MAX_PIPES];
 
-	struct intel_fbc *fbc[I915_MAX_FBCS];
-
 	bool preserve_bios_swizzle;
 
 	unsigned int fsb_freq, mem_freq, is_ddr3;
-- 
2.34.1

