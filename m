Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5E095BB54
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 18:05:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 632C810EB56;
	Thu, 22 Aug 2024 16:05:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BG/TxCog";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DF0010EB53;
 Thu, 22 Aug 2024 16:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724342738; x=1755878738;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1XEEe8YVHZiMuTiQs+gCenX/AZJKJ1ZEUKMoWyj9EIU=;
 b=BG/TxCogcfK/EbFtV1SbOD1vgSnr15wJTFBPBxs3ielonjgzOnld/ya1
 Fz89xmkQEX3QhqZKg7jcDJGbebl8Uz3wLhZ/QbrdY14stplIamoCaGivL
 wl1hPB4J5BZ6g5L5lPsyv58xJy10uIeAMTHvpDgJDT5zfWFBf20z4hYHz
 D8CVm452gw7pYzQgSkdFOYG829+FoYyW4pWp+VUbPje/ARxhNTLWeKpe1
 hQd69Z5L4HFkdEZCv8i1twrxFi+2WTCa+YBoEcycYz/clBxn/UTjJVuwR
 jLfCCCBBsFBId/d5uX/2V55uqdXlhhZIIMAPKwKrzZLZI+OJRlNWdrvHK A==;
X-CSE-ConnectionGUID: 62v7dQrlTretIXqDjwb8XQ==
X-CSE-MsgGUID: /o8l9EoqTbmwLlVYKHoGQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="22647224"
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="22647224"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 09:05:38 -0700
X-CSE-ConnectionGUID: vXLQxLyUSVW+YuXIy+0/Kg==
X-CSE-MsgGUID: J3/W/ak7Q9iWC7L3gjObTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="66424081"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.121])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 09:05:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 7/7] drm/i915/display: convert params to struct intel_display
Date: Thu, 22 Aug 2024 19:04:55 +0300
Message-Id: <3e5cc1744eaf4708b08303e3e7e194035d7941cc.1724342644.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724342644.git.jani.nikula@intel.com>
References: <cover.1724342644.git.jani.nikula@intel.com>
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

Going forward, struct intel_display shall replace struct
drm_i915_private as the main display device data pointer type. Convert
intel_display_params.[ch] and intel_display_debugfs_params.[ch] to
struct intel_display.

Some stragglers	are left behind	where needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c      | 2 +-
 .../gpu/drm/i915/display/intel_display_debugfs_params.c   | 8 ++++----
 .../gpu/drm/i915/display/intel_display_debugfs_params.h   | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_params.c       | 6 +++---
 drivers/gpu/drm/i915/display/intel_display_params.h       | 4 ++--
 drivers/gpu/drm/i915/i915_debugfs.c                       | 3 ++-
 drivers/gpu/drm/i915/i915_gpu_error.c                     | 3 ++-
 7 files changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 0cf0b4223513..74f527647aa9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1073,7 +1073,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 	intel_opregion_debugfs_register(display);
 	intel_psr_debugfs_register(i915);
 	intel_wm_debugfs_register(i915);
-	intel_display_debugfs_params(i915);
+	intel_display_debugfs_params(display);
 }
 
 static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
index f35718748555..ec3ed29a83c9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
@@ -151,13 +151,13 @@ intel_display_debugfs_create_uint(const char *name, umode_t mode,
 	} while (0)
 
 /* add a subdirectory with files for each intel display param */
-void intel_display_debugfs_params(struct drm_i915_private *i915)
+void intel_display_debugfs_params(struct intel_display *display)
 {
-	struct drm_minor *minor = i915->drm.primary;
+	struct drm_minor *minor = display->drm->primary;
 	struct dentry *dir;
 	char dirname[16];
 
-	snprintf(dirname, sizeof(dirname), "%s_params", i915->drm.driver->name);
+	snprintf(dirname, sizeof(dirname), "%s_params", display->drm->driver->name);
 	dir = debugfs_lookup(dirname, minor->debugfs_root);
 	if (!dir)
 		dir = debugfs_create_dir(dirname, minor->debugfs_root);
@@ -171,7 +171,7 @@ void intel_display_debugfs_params(struct drm_i915_private *i915)
 	 */
 
 #define REGISTER(T, x, unused, mode, ...) _intel_display_param_create_file( \
-		dir, #x, mode, &i915->display.params.x);
+		dir, #x, mode, &display->params.x);
 	INTEL_DISPLAY_PARAMS_FOR_EACH(REGISTER);
 #undef REGISTER
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.h b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.h
index 1e9945a4044c..a1120915a5a8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.h
@@ -6,8 +6,8 @@
 #ifndef __INTEL_DISPLAY_DEBUGFS_PARAMS__
 #define __INTEL_DISPLAY_DEBUGFS_PARAMS__
 
-struct drm_i915_private;
+struct intel_display;
 
-void intel_display_debugfs_params(struct drm_i915_private *i915);
+void intel_display_debugfs_params(struct intel_display *display);
 
 #endif /* __INTEL_DISPLAY_DEBUGFS_PARAMS__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index e82bd72d32fa..1a45d300b6f0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -173,14 +173,14 @@ static void _param_print_charp(struct drm_printer *p, const char *driver_name,
 
 /**
  * intel_display_params_dump - dump intel display modparams
- * @i915: i915 device
+ * @display: display device
  * @p: the &drm_printer
  *
  * Pretty printer for i915 modparams.
  */
-void intel_display_params_dump(struct drm_i915_private *i915, struct drm_printer *p)
+void intel_display_params_dump(struct intel_display *display, struct drm_printer *p)
 {
-#define PRINT(T, x, ...) _param_print(p, i915->drm.driver->name, #x, i915->display.params.x);
+#define PRINT(T, x, ...) _param_print(p, display->drm->driver->name, #x, display->params.x);
 	INTEL_DISPLAY_PARAMS_FOR_EACH(PRINT);
 #undef PRINT
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 48c29c55c939..da8dc943234b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -9,7 +9,7 @@
 #include <linux/types.h>
 
 struct drm_printer;
-struct drm_i915_private;
+struct intel_display;
 
 /*
  * Invoke param, a function-like macro, for each intel display param, with
@@ -56,7 +56,7 @@ struct intel_display_params {
 };
 #undef MEMBER
 
-void intel_display_params_dump(struct drm_i915_private *i915,
+void intel_display_params_dump(struct intel_display *display,
 			       struct drm_printer *p);
 void intel_display_params_copy(struct intel_display_params *dest);
 void intel_display_params_free(struct intel_display_params *params);
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index bc717cf544e4..f969f585d07b 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -66,6 +66,7 @@ static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
 static int i915_capabilities(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *i915 = node_to_i915(m->private);
+	struct intel_display *display = &i915->display;
 	struct drm_printer p = drm_seq_file_printer(m);
 
 	seq_printf(m, "pch: %d\n", INTEL_PCH_TYPE(i915));
@@ -77,7 +78,7 @@ static int i915_capabilities(struct seq_file *m, void *data)
 
 	kernel_param_lock(THIS_MODULE);
 	i915_params_dump(&i915->params, &p);
-	intel_display_params_dump(i915, &p);
+	intel_display_params_dump(display, &p);
 	kernel_param_unlock(THIS_MODULE);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 96c6cafd5b9e..6469b9bcf2ec 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -660,9 +660,10 @@ static void err_print_params(struct drm_i915_error_state_buf *m,
 			     const struct i915_params *params)
 {
 	struct drm_printer p = i915_error_printer(m);
+	struct intel_display *display = &m->i915->display;
 
 	i915_params_dump(params, &p);
-	intel_display_params_dump(m->i915, &p);
+	intel_display_params_dump(display, &p);
 }
 
 static void err_print_pciid(struct drm_i915_error_state_buf *m,
-- 
2.39.2

