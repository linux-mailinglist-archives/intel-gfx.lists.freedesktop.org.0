Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE864C8E242
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 12:54:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7661C10E0DC;
	Thu, 27 Nov 2025 11:54:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YvpSngEj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DA7C10E0DC;
 Thu, 27 Nov 2025 11:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764244497; x=1795780497;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b4zeyrWswwbrBhxJ/Bot4xiqJLtwZ0L9lB+9yUPOwt8=;
 b=YvpSngEjN960IFMlddEAqeywVPF82pbItVHMZEzDVsJActhN/HnRlmJt
 l9e41WSekxIDI+dfGyy2usHBZ8ACtQSjwsBkbSc3418hJRwhsp6MzDn5V
 2A6nTH1ui6h2v54vEXKweG2REyZ+fy2cs0IHU0y3OOZ9SQPVKI+4h8jkH
 lJRqC0ZSnMEcq+MO6/rfIqMaOhRaqmjJAw1ijFZLkH8KYnl7OAPcYwk/i
 IGcZRoTQIB/zGqTanazBPa+PJZUCW9Pk9KBL48Oo5mm7T3cHaCsdq+xJn
 jRwkAAJ1RxDKJB8Aj3P0bW/2gudEcl7h1GVIPKkl+FGTVtbdh6yOrlMsF g==;
X-CSE-ConnectionGUID: 2cBpUtuZSROaZrpsYSQeZA==
X-CSE-MsgGUID: NScbXlsUT+mC9Dw8R1O86A==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="83682764"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="83682764"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 03:54:56 -0800
X-CSE-ConnectionGUID: Vvohh0rPTcSV6/nU4RQFkw==
X-CSE-MsgGUID: VFNq42BWQVyN2y97S9yYfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="224167874"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.244])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 03:54:54 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, matthew.d.roper@intel.com,
 gustavo.sousa@intel.com, ville.syrjala@intel.com, jani.nikula@intel.com
Subject: [PATCH v4 1/3] drm/i915/display: Use a sub-struct for fbc operations
 in intel_display
Date: Thu, 27 Nov 2025 13:53:47 +0200
Message-ID: <20251127115349.249120-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251127115349.249120-1-vinod.govindapillai@intel.com>
References: <20251127115349.249120-1-vinod.govindapillai@intel.com>
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

As FBC can utilize the system cache in xe3p_lpd onwards, we need
a provision to track which fbc instance is utilizing this cache.
A sub-struct at intel_display level to group all the fbc ops will
make fbc handling much easier. Introduce a fbc sub-struct and move
the fbc instance array into that.

v2: changes in commit message

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
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

