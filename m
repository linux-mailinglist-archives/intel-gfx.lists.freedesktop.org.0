Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEF258FF22
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:18:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FBF9B3EF4;
	Thu, 11 Aug 2022 15:18:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3791B3E9F
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660231072; x=1691767072;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LmvG+r9JqL9LH4ewPNjjmZTtVPO4X+SwMt2Jj8wGYQo=;
 b=l+hoKxx7S/Pa4Z0uLA1DZfd4or7fHxHB3tYQ4uR406kugYH0eijEFEgL
 AzpaZt3dq6qwwYGAGsHWpmmBCIWqvLTRRVsnbX6bJqxL3TSqeQMOmEH0z
 yHId6ma8B5X6lHML39iHF/2jDlacEBhXzqm94iL8yQQH34AatGqxe96rT
 Dzq99Vm9udeOAq16BsS8uEV1eEknq3saxF5YPerKpHhx6sC/4/Yob+oMR
 8HoGqUDGv8kvDy+jut7t88LbXaHs8TIWacWZHr02V/BDKXQ9XN3W2UclA
 cev9U7Q+LW6WiYbboSOLSZTnEO126qHOlGUpyKUV5AN7t20syFd3XrT6F g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="317335654"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="317335654"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:09:59 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="608952959"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:09:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:37 +0300
Message-Id: <a636fbee2f8ef133eea875659344755b56aff9be.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 26/39] drm/i915: move fbc to display.fbc
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display related members under drm_i915_private display sub-struct.

Pointers and arrays of pointers to structs that we defined are fine
without a sub-struct wrapping.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
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
index 861178f969bd..066e7ee0b8df 100644
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
@@ -347,6 +348,7 @@ struct intel_display {
 	struct intel_audio audio;
 	struct intel_dmc dmc;
 	struct intel_dpll dpll;
+	struct intel_fbc *fbc[I915_MAX_FBCS];
 	struct intel_hotplug hotplug;
 	struct intel_opregion opregion;
 	struct intel_overlay *overlay;
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 7436b35f7ea0..5e8e29a4559f 100644
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
index 4d6a27757065..594cda11382d 100644
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
index 0dc3983eba84..752eeccb94eb 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -40,7 +40,6 @@
 #include "display/intel_display_core.h"
 #include "display/intel_display_power.h"
 #include "display/intel_dsb.h"
-#include "display/intel_fbc.h"
 #include "display/intel_frontbuffer.h"
 
 #include "gem/i915_gem_context_types.h"
@@ -284,8 +283,6 @@ struct drm_i915_private {
 	};
 	u32 pipestat_irq_mask[I915_MAX_PIPES];
 
-	struct intel_fbc *fbc[I915_MAX_FBCS];
-
 	bool preserve_bios_swizzle;
 
 	unsigned int fsb_freq, mem_freq, is_ddr3;
-- 
2.34.1

