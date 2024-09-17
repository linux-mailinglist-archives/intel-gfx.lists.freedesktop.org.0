Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E6D97B2D0
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:16:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB39910E4B7;
	Tue, 17 Sep 2024 16:15:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f7vyfUJZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3801910E4B8;
 Tue, 17 Sep 2024 16:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726589755; x=1758125755;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RFoQhpV4FSZXrRPfgK9puHY6P1723BeqE/nQuFxZKK0=;
 b=f7vyfUJZ/i2QQXnvWLqwsm8z8kR28R+DwhSHBiV055yUkLWvWyYTUxE3
 CN82YBCWZM63WGeI9tVXyHI6vct32w7xBhYfCyRfrAH807nQPdH0xbAsV
 mfKOaGxa5tWR0V/xafQxltchZjZGfdkAKQwDEkR0vYaEad2l1+QeM3N6f
 bdX9NHoaCoUY2sb3pvqxOLMhOjJyRdGNcdUDKJOmG2K5Ogijp8jZryEsp
 c1wwXzcRVpoXNaQ/yjwO/5bGtFtV7NFgq+JQJqokZMu86/3kERY3I2V8Q
 mcSkSs5lSrZw6Z/pLiazWC3AKkqgK0kvAExeUPie55oGCNA9MJecJ+oUq g==;
X-CSE-ConnectionGUID: awPAalUOStqZjylnjxwB8g==
X-CSE-MsgGUID: hOBKm+HXRvOr2W+n5Jhtcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="25343531"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="25343531"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:15:54 -0700
X-CSE-ConnectionGUID: lWVSkxMORROfMeF+y+OMWA==
X-CSE-MsgGUID: L8KGWlQ/RCaLPBq9TLkNGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="73989276"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:15:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 17/22] drm/i915/display: add intel_bo_describe() and use it
Date: Tue, 17 Sep 2024 19:13:56 +0300
Message-Id: <66bcaaba9899a2bceb7ce4bd3be56ff60c5c9b09.1726589119.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726589119.git.jani.nikula@intel.com>
References: <cover.1726589119.git.jani.nikula@intel.com>
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

Add an interface based on struct drm_gem_object, and use it.

This lets us delete the compat i915_debugfs.h header.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bo.c            |  6 ++++++
 drivers/gpu/drm/i915/display/intel_bo.h            |  3 +++
 .../gpu/drm/i915/display/intel_display_debugfs.c   |  6 +++---
 .../gpu/drm/xe/compat-i915-headers/i915_debugfs.h  | 14 --------------
 drivers/gpu/drm/xe/display/intel_bo.c              |  5 +++++
 5 files changed, 17 insertions(+), 17 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_debugfs.h

diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i915/display/intel_bo.c
index 3881b9ad08ee..fbd16d7b58d9 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_bo.c
@@ -4,6 +4,7 @@
 #include "gem/i915_gem_mman.h"
 #include "gem/i915_gem_object.h"
 #include "gem/i915_gem_object_frontbuffer.h"
+#include "i915_debugfs.h"
 #include "intel_bo.h"
 
 bool intel_bo_is_tiled(struct drm_gem_object *obj)
@@ -51,3 +52,8 @@ struct intel_frontbuffer *intel_bo_set_frontbuffer(struct drm_gem_object *obj,
 {
 	return i915_gem_object_set_frontbuffer(to_intel_bo(obj), front);
 }
+
+void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj)
+{
+	i915_debugfs_describe_obj(m, to_intel_bo(obj));
+}
diff --git a/drivers/gpu/drm/i915/display/intel_bo.h b/drivers/gpu/drm/i915/display/intel_bo.h
index df0bd8c871a5..ea7a2253aaa5 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.h
+++ b/drivers/gpu/drm/i915/display/intel_bo.h
@@ -7,6 +7,7 @@
 #include <linux/types.h>
 
 struct drm_gem_object;
+struct seq_file;
 struct vm_area_struct;
 
 bool intel_bo_is_tiled(struct drm_gem_object *obj);
@@ -21,4 +22,6 @@ struct intel_frontbuffer *intel_bo_get_frontbuffer(struct drm_gem_object *obj);
 struct intel_frontbuffer *intel_bo_set_frontbuffer(struct drm_gem_object *obj,
 						   struct intel_frontbuffer *front);
 
+void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj);
+
 #endif /* __INTEL_BO__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 86403a9318b0..2a08f5203a1f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -11,10 +11,10 @@
 #include <drm/drm_fourcc.h>
 
 #include "hsw_ips.h"
-#include "i915_debugfs.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
 #include "intel_alpm.h"
+#include "intel_bo.h"
 #include "intel_crtc.h"
 #include "intel_crtc_state_dump.h"
 #include "intel_de.h"
@@ -108,7 +108,7 @@ static int i915_gem_framebuffer_info(struct seq_file *m, void *data)
 			   fbdev_fb->base.format->cpp[0] * 8,
 			   fbdev_fb->base.modifier,
 			   drm_framebuffer_read_refcount(&fbdev_fb->base));
-		i915_debugfs_describe_obj(m, intel_fb_obj(&fbdev_fb->base));
+		intel_bo_describe(m, intel_fb_bo(&fbdev_fb->base));
 		seq_putc(m, '\n');
 	}
 #endif
@@ -126,7 +126,7 @@ static int i915_gem_framebuffer_info(struct seq_file *m, void *data)
 			   fb->base.format->cpp[0] * 8,
 			   fb->base.modifier,
 			   drm_framebuffer_read_refcount(&fb->base));
-		i915_debugfs_describe_obj(m, intel_fb_obj(&fb->base));
+		intel_bo_describe(m, intel_fb_bo(&fb->base));
 		seq_putc(m, '\n');
 	}
 	mutex_unlock(&dev_priv->drm.mode_config.fb_lock);
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_debugfs.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_debugfs.h
deleted file mode 100644
index b4c47617b64b..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_debugfs.h
+++ /dev/null
@@ -1,14 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#ifndef __I915_DEBUGFS_H__
-#define __I915_DEBUGFS_H__
-
-struct drm_i915_gem_object;
-struct seq_file;
-
-static inline void i915_debugfs_describe_obj(struct seq_file *m, struct drm_i915_gem_object *obj) {}
-
-#endif /* __I915_DEBUGFS_H__ */
diff --git a/drivers/gpu/drm/xe/display/intel_bo.c b/drivers/gpu/drm/xe/display/intel_bo.c
index d4007b00b121..647aaa9f3259 100644
--- a/drivers/gpu/drm/xe/display/intel_bo.c
+++ b/drivers/gpu/drm/xe/display/intel_bo.c
@@ -77,3 +77,8 @@ struct intel_frontbuffer *intel_bo_set_frontbuffer(struct drm_gem_object *obj,
 {
 	return front;
 }
+
+void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj)
+{
+	/* FIXME */
+}
-- 
2.39.2

