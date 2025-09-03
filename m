Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E9EB42AFB
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 22:32:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCBA310E91E;
	Wed,  3 Sep 2025 20:32:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VUBI1FMt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06EF810E91E;
 Wed,  3 Sep 2025 20:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756931565; x=1788467565;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZTdjlAwyvDfO7MSihz4LR/L/rjJOCSB2ms8nJp+ahxo=;
 b=VUBI1FMtbaGk++EtjbH9zpaRF4BaQYZF8uCXR2bH7f4O8WIG7p0dZO77
 18KvGBVXVkjgrIKil4NUpVKOtBvNkWY/A0VDh9vsnS2Rm7kNAiJyjMP7D
 pVxInElXp6A1lR9f0lS3HygRc0P8M9Y5L3wrQc3jyNBMWJkJl3uF0oE9W
 HHUlp5cx3TT57wC2nMmd5L9MiU6vsgnLTQOUUq4luuaRKi6X9qRzk4lII
 pOoZu7ht6kZAuhjGe5235Rnf+N69rMzgQHSNno7kXjCc39gofhLG9N6nJ
 G4pVY8OaDl8XkqnD2tdDzXF0YBIJpEt958oxxqwVMdy3hV4cpm8+iLNty Q==;
X-CSE-ConnectionGUID: mjE4+iQtRwG9SnlBCWApzw==
X-CSE-MsgGUID: A2udxScqSRaASc4LroO8Kw==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="46833166"
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="46833166"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 13:32:45 -0700
X-CSE-ConnectionGUID: hKTf5WD/TFmugcIfLNu3MQ==
X-CSE-MsgGUID: YbEkN3kAT9iup4YMb2zhVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="171582499"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.55])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 13:32:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 6/9] drm/{i915,xe}/fbdev: add intel_fbdev_fb_bo_destroy()
Date: Wed,  3 Sep 2025 23:32:03 +0300
Message-ID: <52acac7760e8bc440ad9539aaa89b8cb3b5c23dc.1756931441.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1756931441.git.jani.nikula@intel.com>
References: <cover.1756931441.git.jani.nikula@intel.com>
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

xe does xe_bo_unpin_map_no_vm() on the failure path. Add a common helper
to enable further refactoring.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h | 1 +
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 7 ++++++-
 3 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index 3837973b0d25..6b70823ce5ef 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -51,6 +51,11 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size
 	return &obj->base;
 }
 
+void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
+{
+	/* nop? */
+}
+
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 					       struct drm_mode_fb_cmd2 *mode_cmd)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
index b10c4635bf46..6d6f316834df 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
@@ -17,6 +17,7 @@ struct intel_display;
 
 u32 intel_fbdev_fb_pitch_align(u32 stride);
 struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size);
+void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj);
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 					       struct drm_mode_fb_cmd2 *mode_cmd);
 int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index 9a5d14d5781a..9a5cf50ea7de 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -54,6 +54,11 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size
 	return &obj->ttm.base;
 }
 
+void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
+{
+	xe_bo_unpin_map_no_vm(gem_to_xe_bo(obj));
+}
+
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 					       struct drm_mode_fb_cmd2 *mode_cmd)
 {
@@ -76,7 +81,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 							  mode_cmd->modifier[0]),
 				      mode_cmd);
 	if (IS_ERR(fb)) {
-		xe_bo_unpin_map_no_vm(gem_to_xe_bo(obj));
+		intel_fbdev_fb_bo_destroy(obj);
 		goto err;
 	}
 
-- 
2.47.2

