Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E412797B2B3
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:14:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8641C10E4A3;
	Tue, 17 Sep 2024 16:14:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MGPkiNEe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23F5B10E4A3;
 Tue, 17 Sep 2024 16:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726589663; x=1758125663;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=387J02XCQbEN0Ea8CZgvA2HM+ikoViTsF/UQiZ8KsOc=;
 b=MGPkiNEeJsK8lKB13G6JPSXSbwG2ywYJ2XZWDeJB5z2udv4Umo7sTodY
 5yrDCZcbfSWzXhjMyTG2xVIms3DhYheHKORlqwq7hHKGWaDW2SDXFq0mg
 8NdfE/JB7jEYStX4alLy8kjowGNSUGw/dDFw1TvXmutbZYX29lj8nZ+Id
 bA3rVWOEGS6wEcF05Wc+aT9dIk0KH37jAygvPsJXJhP7LgxjTZV+VKZBp
 wHyWeWFvR0UqXkcVMzifWOqvidv5RWpPL9ZNDHOipRYG9Y3hmzYyQNN/w
 0VrYMVTZ0oveSGf/JbO5MO9eUt4aDq5395sVREKEWkbk6oZ0M+LZUWbxb w==;
X-CSE-ConnectionGUID: vTt+a4HtRNuttbDbTxBdPg==
X-CSE-MsgGUID: +AzB83IXQUCu/T1pPzg3cg==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="24990166"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="24990166"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:14:22 -0700
X-CSE-ConnectionGUID: Q674FFMhTBqJ1Bc39EqqSw==
X-CSE-MsgGUID: roq+qy2GQHGXBVE6wZJknA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69348852"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:14:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 02/22] drm/i915/display: convert intel_atomic_plane.c to
 struct drm_gem_object
Date: Tue, 17 Sep 2024 19:13:41 +0300
Message-Id: <a60e14663f53e921bf228420af0e3d8762d92b82.1726589119.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726589119.git.jani.nikula@intel.com>
References: <cover.1726589119.git.jani.nikula@intel.com>
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

Prefer the driver agnostic struct drm_gem_object over i915 specific
struct drm_i915_gem_object.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 928d985f9985..18c516298e79 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -35,11 +35,11 @@
 #include <linux/dma-resv.h>
 
 #include <drm/drm_atomic_helper.h>
-#include <drm/drm_gem_atomic_helper.h>
 #include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
+#include <drm/drm_gem.h>
+#include <drm/drm_gem_atomic_helper.h>
 
-#include "gem/i915_gem_object_types.h"
 #include "i915_config.h"
 #include "i9xx_plane_regs.h"
 #include "intel_atomic_plane.h"
@@ -1115,8 +1115,8 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	struct intel_plane_state *old_plane_state =
 		intel_atomic_get_old_plane_state(state, plane);
-	struct drm_i915_gem_object *obj = intel_fb_obj(new_plane_state->hw.fb);
-	struct drm_i915_gem_object *old_obj = intel_fb_obj(old_plane_state->hw.fb);
+	struct drm_gem_object *obj = intel_fb_bo(new_plane_state->hw.fb);
+	struct drm_gem_object *old_obj = intel_fb_bo(old_plane_state->hw.fb);
 	int ret;
 
 	if (old_obj) {
@@ -1136,7 +1136,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 		 * can safely continue.
 		 */
 		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state)) {
-			ret = add_dma_resv_fences(intel_bo_to_drm_bo(old_obj)->resv,
+			ret = add_dma_resv_fences(old_obj->resv,
 						  &new_plane_state->uapi);
 			if (ret < 0)
 				return ret;
@@ -1196,7 +1196,7 @@ intel_cleanup_plane_fb(struct drm_plane *plane,
 	struct intel_atomic_state *state =
 		to_intel_atomic_state(old_plane_state->uapi.state);
 	struct drm_i915_private *dev_priv = to_i915(plane->dev);
-	struct drm_i915_gem_object *obj = intel_fb_obj(old_plane_state->hw.fb);
+	struct drm_gem_object *obj = intel_fb_bo(old_plane_state->hw.fb);
 
 	if (!obj)
 		return;
-- 
2.39.2

