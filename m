Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C56F997B2BC
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:15:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 566DE10E4AD;
	Tue, 17 Sep 2024 16:15:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lX9RbjOT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B061C10E4AD;
 Tue, 17 Sep 2024 16:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726589701; x=1758125701;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8B6/7jbvIJ7w8UFGqn+FFsj5RSvQEkHcDH6scV52MXE=;
 b=lX9RbjOTkwkCsMw+PZgg5W5GTUQgzjSp4R3Slgj21arXtqfkFA8Bhrmy
 4+r/bb9l+pdwqbdqC4cvu4kFcpzSNPIVdSrFIDDXt4kfccGrAl0fAupWy
 37glk7x10O1fmapEAbWR8s2VxJKXZtu7GJTsvdOD+T0JlUQ30VlVRAzCf
 OnVw5pRp7sFmqA/n4pr41LlW81D3u6JgUHIeEw2Hk1b5ul1gDUav0myYX
 /kS50td61e6MA+LEuiL4WiypZ8eIkbPZj4UHQQhhgmW2ahIx2+SV9Nc+z
 ISz1QAHIACEtrcYx1xINK6b61SU8VJcGjeO8Vce4WXvOWvuUnssFgY7KI Q==;
X-CSE-ConnectionGUID: mlILEybCT1uXX2LzP1m/zQ==
X-CSE-MsgGUID: yvgYqeiaSX+hbzd5GIwMZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="42933981"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="42933981"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:15:01 -0700
X-CSE-ConnectionGUID: 6vboh3sNQrOMddc2gJeOsA==
X-CSE-MsgGUID: oq4+JQb6Sy2R+WsNWsBXDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69717953"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:14:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 08/22] drm/i915/fb: convert intel_fb_bo_framebuffer_init() to
 struct drm_i915_gem_object
Date: Tue, 17 Sep 2024 19:13:47 +0300
Message-Id: <37f6dbb8946198cfac132e5e8eb5820f4f8dbc13.1726589119.git.jani.nikula@intel.com>
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
struct drm_i915_gem_object. Add new intel_bo_* functions as needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_fb_bo.c | 3 ++-
 drivers/gpu/drm/i915/display/intel_fb_bo.h | 2 +-
 drivers/gpu/drm/xe/display/intel_fb_bo.c   | 3 ++-
 drivers/gpu/drm/xe/display/intel_fb_bo.h   | 2 +-
 5 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index b705ae05c73e..107ee5d3665f 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1972,7 +1972,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	int ret = -EINVAL;
 	int i;
 
-	ret = intel_fb_bo_framebuffer_init(intel_fb, to_intel_bo(obj), mode_cmd);
+	ret = intel_fb_bo_framebuffer_init(intel_fb, obj, mode_cmd);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.c b/drivers/gpu/drm/i915/display/intel_fb_bo.c
index c9a332afa601..0932bd9f0100 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_bo.c
@@ -17,9 +17,10 @@ void intel_fb_bo_framebuffer_fini(struct drm_i915_gem_object *obj)
 }
 
 int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
-				 struct drm_i915_gem_object *obj,
+				 struct drm_gem_object *_obj,
 				 struct drm_mode_fb_cmd2 *mode_cmd)
 {
+	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	unsigned int tiling, stride;
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.h b/drivers/gpu/drm/i915/display/intel_fb_bo.h
index e7f4e57e8964..6030029042e7 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_bo.h
+++ b/drivers/gpu/drm/i915/display/intel_fb_bo.h
@@ -16,7 +16,7 @@ struct intel_framebuffer;
 void intel_fb_bo_framebuffer_fini(struct drm_i915_gem_object *obj);
 
 int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
-				 struct drm_i915_gem_object *obj,
+				 struct drm_gem_object *obj,
 				 struct drm_mode_fb_cmd2 *mode_cmd);
 
 struct drm_gem_object *
diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c b/drivers/gpu/drm/xe/display/intel_fb_bo.c
index a973106d9e8c..a3ec82d5ac8a 100644
--- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
+++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
@@ -23,9 +23,10 @@ void intel_fb_bo_framebuffer_fini(struct xe_bo *bo)
 }
 
 int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
-				 struct xe_bo *bo,
+				 struct drm_gem_object *obj,
 				 struct drm_mode_fb_cmd2 *mode_cmd)
 {
+	struct xe_bo *bo = gem_to_xe_bo(obj);
 	struct xe_device *xe = to_xe_device(bo->ttm.base.dev);
 	int ret;
 
diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.h b/drivers/gpu/drm/xe/display/intel_fb_bo.h
index 430acca554fb..ad835bc050e8 100644
--- a/drivers/gpu/drm/xe/display/intel_fb_bo.h
+++ b/drivers/gpu/drm/xe/display/intel_fb_bo.h
@@ -15,7 +15,7 @@ struct xe_bo;
 
 void intel_fb_bo_framebuffer_fini(struct xe_bo *bo);
 int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
-				 struct xe_bo *bo,
+				 struct drm_gem_object *obj,
 				 struct drm_mode_fb_cmd2 *mode_cmd);
 
 struct drm_gem_object *intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915,
-- 
2.39.2

