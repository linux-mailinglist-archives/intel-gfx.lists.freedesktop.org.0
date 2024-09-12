Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E26976C38
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 16:34:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 130D510EBA4;
	Thu, 12 Sep 2024 14:34:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fS7tDIbk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B225F10EBA2;
 Thu, 12 Sep 2024 14:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726151668; x=1757687668;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p2zUoaryyFhoQbGRiow/Jp832ITWYMcTRCqU01J2l4I=;
 b=fS7tDIbkZqXzl5Wp8RAyyKRK0kyUMtQslwHjnoIVcmbC/tXCqAgD51bu
 ddLaSNcgd5J9cxzBZ+cP0fDZvqzzzSAsGdQnIabaP/ED+2spe/UwawE/8
 pciU6PpnKGDs+T/B0BHpSgnuNZsBKuIXt6Gl2aSAV3EYZZJ66UhvSOP7d
 nfhPJLhXnoTLd+3fXCSpwE8Obs6AXuHTNtX0AAjMpoW75kvyxAHJ98pcA
 Gv2z56pn5ex8BZTGYpGolAYso0jAmElzyQ/ClXPT+JnLzxx/PAs+jYAAb
 hb/03rIj/PjvTJ933u+ryLYxLGQBsYdpkMa17XIeTPU3qtyLyUGG5MoGc Q==;
X-CSE-ConnectionGUID: U5isMf7SQLKhK1pq+uCfCg==
X-CSE-MsgGUID: bqaurFG5TWig5XlyVlGbmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="28787391"
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="28787391"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 07:34:26 -0700
X-CSE-ConnectionGUID: HN0N5me4R26oC3oQT8dDog==
X-CSE-MsgGUID: t8/xlA4xS9G8cAV9hc5zhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="68505805"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 07:34:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH v3 1/4] drm/i915: dump display parameters captured in error
 state, not current
Date: Thu, 12 Sep 2024 17:34:11 +0300
Message-Id: <b437a5db768f0cb34377a9e4669c2b37fc7c7c29.1726151571.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726151571.git.jani.nikula@intel.com>
References: <cover.1726151571.git.jani.nikula@intel.com>
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

intel_display_params_dump() prints the current display parameters, not
the ones captured during error capture. It's not likely the params get
changed in between, but make it pedantically correct anyway. Pass in the
parameters and driver name to intel_display_params_dump().

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c | 8 +++++---
 drivers/gpu/drm/i915/display/intel_display_params.h | 5 ++---
 drivers/gpu/drm/i915/i915_debugfs.c                 | 2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c               | 2 +-
 4 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 1a45d300b6f0..024de8abcb1a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -173,14 +173,16 @@ static void _param_print_charp(struct drm_printer *p, const char *driver_name,
 
 /**
  * intel_display_params_dump - dump intel display modparams
- * @display: display device
+ * @params: display params
+ * @driver_name: driver name to use for printing
  * @p: the &drm_printer
  *
  * Pretty printer for i915 modparams.
  */
-void intel_display_params_dump(struct intel_display *display, struct drm_printer *p)
+void intel_display_params_dump(const struct intel_display_params *params,
+			       const char *driver_name, struct drm_printer *p)
 {
-#define PRINT(T, x, ...) _param_print(p, display->drm->driver->name, #x, display->params.x);
+#define PRINT(T, x, ...) _param_print(p, driver_name, #x, params->x);
 	INTEL_DISPLAY_PARAMS_FOR_EACH(PRINT);
 #undef PRINT
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index da8dc943234b..dcb6face936a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -9,7 +9,6 @@
 #include <linux/types.h>
 
 struct drm_printer;
-struct intel_display;
 
 /*
  * Invoke param, a function-like macro, for each intel display param, with
@@ -56,8 +55,8 @@ struct intel_display_params {
 };
 #undef MEMBER
 
-void intel_display_params_dump(struct intel_display *display,
-			       struct drm_printer *p);
+void intel_display_params_dump(const struct intel_display_params *params,
+			       const char *driver_name, struct drm_printer *p);
 void intel_display_params_copy(struct intel_display_params *dest);
 void intel_display_params_free(struct intel_display_params *params);
 
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index f969f585d07b..246fece628d6 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -78,7 +78,7 @@ static int i915_capabilities(struct seq_file *m, void *data)
 
 	kernel_param_lock(THIS_MODULE);
 	i915_params_dump(&i915->params, &p);
-	intel_display_params_dump(display, &p);
+	intel_display_params_dump(&display->params, display->drm->driver->name, &p);
 	kernel_param_unlock(THIS_MODULE);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index b455fa441609..4baee1aa74dc 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -663,7 +663,7 @@ static void err_print_params(struct drm_i915_error_state_buf *m,
 	struct intel_display *display = &m->i915->display;
 
 	i915_params_dump(params, &p);
-	intel_display_params_dump(display, &p);
+	intel_display_params_dump(&display->params, display->drm->driver->name, &p);
 }
 
 static void err_print_pciid(struct drm_i915_error_state_buf *m,
-- 
2.39.2

