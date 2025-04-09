Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF70A82E6B
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 20:18:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2147910E6AD;
	Wed,  9 Apr 2025 18:18:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e6g2yXs+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E09610E2FB;
 Wed,  9 Apr 2025 18:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744222724; x=1775758724;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MiRuUJNAjSBc4hey1bmnLvUaxnypCoxl7wnKHXDKSRc=;
 b=e6g2yXs+OtazPyYJzWXykZOWWvMmbkOQYcNfyrOR30DdPFQ8Z1HSOy7W
 Qb9qDV0tUvECcaMZifeLDmiUpgajTfjaPeP1dSAoG8O6vH6650HmsNq4b
 vBzcKG6PLRgaflHKEhjAK4skGQcdRcYdsXuAjG4VUsnxPGxiERnwFkVDP
 zM2El3u2SA3jDQ7Onxrm0s+kVj4u36o6FsiOkYVseDtNx17yL2VP2NynB
 ospjXVIJ659p+nvO9pXUviOWLLzW25JgoR24ClIB7VEKZ7dUd6HzAaoVN
 UjZCSGNZcmKxOYj5zP/OwbiNhGp+2akx3T+xc/CacbbJV3VmVzEUJLjOd g==;
X-CSE-ConnectionGUID: lIbXg0+iSxGikIbECJ7RmQ==
X-CSE-MsgGUID: ZB6Coj40SYmbuyue1VZRSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="57088351"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="57088351"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:18:29 -0700
X-CSE-ConnectionGUID: 8bX2YF9ZTM+aA2VZ01pAzA==
X-CSE-MsgGUID: Hhiwqw6zTXeVjKfSixUX5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="133785331"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:18:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 04/14] drm/i915/sprite: convert intel_sprite_uapi.c to struct
 intel_display
Date: Wed,  9 Apr 2025 21:17:45 +0300
Message-Id: <d4f71c2976a1a28b4e74c2fc1097090fe7f78743.1744222449.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744222449.git.jani.nikula@intel.com>
References: <cover.1744222449.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
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

Going forward, struct intel_display is the main display device data
pointer. Convert intel_sprite_uapi.c to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_sprite_uapi.c    | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite_uapi.c b/drivers/gpu/drm/i915/display/intel_sprite_uapi.c
index 1d0b84b464c1..4981cc34da05 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite_uapi.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite_uapi.c
@@ -3,21 +3,21 @@
  * Copyright © 2023 Intel Corporation
  */
 
-#include "i915_drv.h"
 #include "intel_crtc.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_sprite_uapi.h"
 
-static bool has_dst_key_in_primary_plane(struct drm_i915_private *dev_priv)
+static bool has_dst_key_in_primary_plane(struct intel_display *display)
 {
-	return DISPLAY_VER(dev_priv) >= 9;
+	return DISPLAY_VER(display) >= 9;
 }
 
 static void intel_plane_set_ckey(struct intel_plane_state *plane_state,
 				 const struct drm_intel_sprite_colorkey *set)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
 
 	*key = *set;
@@ -34,7 +34,7 @@ static void intel_plane_set_ckey(struct intel_plane_state *plane_state,
 	 * On SKL+ we want dst key enabled on
 	 * the primary and not on the sprite.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 9 && plane->id != PLANE_PRIMARY &&
+	if (DISPLAY_VER(display) >= 9 && plane->id != PLANE_PRIMARY &&
 	    set->flags & I915_SET_COLORKEY_DESTINATION)
 		key->flags = 0;
 }
@@ -43,7 +43,6 @@ int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
 				    struct drm_file *file_priv)
 {
 	struct intel_display *display = to_intel_display(dev);
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct drm_intel_sprite_colorkey *set = data;
 	struct drm_plane *plane;
 	struct drm_plane_state *plane_state;
@@ -61,7 +60,7 @@ int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
 	if ((set->flags & (I915_SET_COLORKEY_DESTINATION | I915_SET_COLORKEY_SOURCE)) == (I915_SET_COLORKEY_DESTINATION | I915_SET_COLORKEY_SOURCE))
 		return -EINVAL;
 
-	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
+	if ((display->platform.valleyview || display->platform.cherryview) &&
 	    set->flags & I915_SET_COLORKEY_DESTINATION)
 		return -EINVAL;
 
@@ -74,7 +73,7 @@ int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
 	 * Also multiple planes can't do destination keying on the same
 	 * pipe simultaneously.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 9 &&
+	if (DISPLAY_VER(display) >= 9 &&
 	    to_intel_plane(plane)->id >= PLANE_3 &&
 	    set->flags & I915_SET_COLORKEY_DESTINATION)
 		return -EINVAL;
@@ -99,7 +98,7 @@ int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
 		 * On some platforms we have to configure
 		 * the dst colorkey on the primary plane.
 		 */
-		if (!ret && has_dst_key_in_primary_plane(dev_priv)) {
+		if (!ret && has_dst_key_in_primary_plane(display)) {
 			struct intel_crtc *crtc =
 				intel_crtc_for_pipe(display,
 						    to_intel_plane(plane)->pipe);
-- 
2.39.5

