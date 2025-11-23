Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5C6C7E329
	for <lists+intel-gfx@lfdr.de>; Sun, 23 Nov 2025 17:01:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2891610E18E;
	Sun, 23 Nov 2025 16:01:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BfrS/B8z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8906A10E18B;
 Sun, 23 Nov 2025 16:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763913705; x=1795449705;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+J+AMxp8LydO2FMNOS7ndUF7VKX3tmdXGwK31EqZjkU=;
 b=BfrS/B8zEyRnKKA2ug3RkP2UVrg0RDg80Prb6/Jid1sii2vA0y8KcU1N
 WFJ1BGRE7ubP/Cgs7+fj5VZZdcyIe8sjGQucuJFokzpZjW+lZVPCrrwX3
 H47M8NwBVza8E2b+gInCXyCq/1FJezIywTX3HgMnMRcCy5dx+gDdXPoCO
 LXeCgV+zIQFDLv7xx3g9iCmnIJAG9v3ukRVNBHtzz1GkXwq6lUKakcdC1
 alfrMkNDszO1I7okP8RZuCrIHGh9zCOiBnSbXxLEnvKNHxPUc36DQ2ja/
 zQzx2jNTxHiJXHw2U7hAe2K3uocwUNj4+VrwlegrDyHbR14gJmOLIuATG g==;
X-CSE-ConnectionGUID: OcFBK0AdTu6+dFtS4XfeMQ==
X-CSE-MsgGUID: Ej+QnLqzRte8WDZZTa55ww==
X-IronPort-AV: E=McAfee;i="6800,10657,11622"; a="77040998"
X-IronPort-AV: E=Sophos;i="6.20,221,1758610800"; d="scan'208";a="77040998"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2025 08:01:45 -0800
X-CSE-ConnectionGUID: kF3XHIXsSJyyCWJWbCLY/g==
X-CSE-MsgGUID: CkvdHgQiSZqc4aPMN8gwTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,221,1758610800"; d="scan'208";a="192589046"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.206])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2025 08:01:43 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, matthew.d.roper@intel.com,
 gustavo.sousa@intel.com, ville.syrjala@intel.com, jani.nikula@intel.com
Subject: [PATCH v3 1/2] drm/i915/display: Use a sub-struct for fbc operations
 in intel_display
Date: Sun, 23 Nov 2025 18:01:26 +0200
Message-ID: <20251123160127.142599-2-vinod.govindapillai@intel.com>
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

As FBC can utilze the system cache in xe3p_lpd onwards, we need
a way to track which fbc instance is utilizing this cache. So we
would need to extend the intel_display with such a functionality.
Introduce a new fbc substruct and move the current fbc instance
array into that. Then the following patch can utilize this to
introduce functionaity to configure and track the system cache
usage by the fbc instance.

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c          | 2 +-
 drivers/gpu/drm/i915/display/intel_display_core.h  | 5 ++++-
 drivers/gpu/drm/i915/display/intel_fbc.c           | 6 +++---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 2 +-
 4 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 51ccc6bd5f21..2c40bc632b3d 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -134,7 +134,7 @@ static struct intel_fbc *i9xx_plane_fbc(struct intel_display *display,
 					enum i9xx_plane_id i9xx_plane)
 {
 	if (i9xx_plane_has_fbc(display, i9xx_plane))
-		return display->fbc[INTEL_FBC_A];
+		return display->fbc.instances[INTEL_FBC_A];
 	else
 		return NULL;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 9b36654b593d..58325f530670 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -398,6 +398,10 @@ struct intel_display {
 		const struct dram_info *info;
 	} dram;
 
+	struct {
+		struct intel_fbc *instances[I915_MAX_FBCS];
+	} fbc;
+
 	struct {
 		/* list of fbdev register on this device */
 		struct intel_fbdev *fbdev;
@@ -615,7 +619,6 @@ struct intel_display {
 	struct drm_dp_tunnel_mgr *dp_tunnel_mgr;
 	struct intel_audio audio;
 	struct intel_dpll_global dpll;
-	struct intel_fbc *fbc[I915_MAX_FBCS];
 	struct intel_frontbuffer_tracking fb_tracking;
 	struct intel_hotplug hotplug;
 	struct intel_opregion *opregion;
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index d9cab25d414a..dcdfcff80de3 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -69,7 +69,7 @@
 
 #define for_each_intel_fbc(__display, __fbc, __fbc_id) \
 	for_each_fbc_id((__display), (__fbc_id)) \
-		for_each_if((__fbc) = (__display)->fbc[(__fbc_id)])
+		for_each_if((__fbc) = (__display)->fbc.instances[(__fbc_id)])
 
 struct intel_fbc_funcs {
 	void (*activate)(struct intel_fbc *fbc);
@@ -2211,7 +2211,7 @@ void intel_fbc_init(struct intel_display *display)
 		    display->params.enable_fbc);
 
 	for_each_fbc_id(display, fbc_id)
-		display->fbc[fbc_id] = intel_fbc_create(display, fbc_id);
+		display->fbc.instances[fbc_id] = intel_fbc_create(display, fbc_id);
 }
 
 /**
@@ -2330,7 +2330,7 @@ void intel_fbc_debugfs_register(struct intel_display *display)
 {
 	struct intel_fbc *fbc;
 
-	fbc = display->fbc[INTEL_FBC_A];
+	fbc = display->fbc.instances[INTEL_FBC_A];
 	if (fbc)
 		intel_fbc_debugfs_add(fbc, display->drm->debugfs_root);
 }
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 89c8003ccfe7..48af74963e74 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2444,7 +2444,7 @@ static struct intel_fbc *skl_plane_fbc(struct intel_display *display,
 	enum intel_fbc_id fbc_id = skl_fbc_id_for_pipe(pipe);
 
 	if (skl_plane_has_fbc(display, fbc_id, plane_id))
-		return display->fbc[fbc_id];
+		return display->fbc.instances[fbc_id];
 	else
 		return NULL;
 }
-- 
2.43.0

