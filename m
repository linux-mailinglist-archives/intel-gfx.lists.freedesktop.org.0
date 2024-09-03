Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9322969FBD
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 16:03:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C14710E5B9;
	Tue,  3 Sep 2024 14:03:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NgUXRpKT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B80D10E5B4;
 Tue,  3 Sep 2024 14:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725372203; x=1756908203;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Rbm6PY/XIGWfL2IsoQIsG/B55NvCQK2xMiSHmvdrJY0=;
 b=NgUXRpKTXQAoIFTi1TyTig1vMRwyUDwANNUTJkd4Kwbv5RApyqI+G+gc
 /TF3/5EBlqQ1vqh2XjpEKrQhXXLpOtbNhwkMO43E+qPZbpH7xJ9fhV502
 yfArXVIJ2euiF3O2B1DWH0fwNe1Yqbuyb2wcEkkhfLQwcU6ZXrN8EYcHQ
 JVpdFxC0r0weHjdDkAyYs0g/eWTXhaQArZcY/Z5uwDeupAPe1vAERXgpC
 +y49d0T0fousQCK/9WRbNOLzpxprSQPNUijARau+k3f5jVRE45SJhcg6l
 hUwhQV96bX7PXPUPnqlRLUz9w+NXpD8SEU0w8oqXiJh6vGlI9aPMHK83D w==;
X-CSE-ConnectionGUID: 3P3oFsw4RXuh5LCfBjmtBg==
X-CSE-MsgGUID: 8UXO1sRaQNy8tI3F+2tFFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="35364037"
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="35364037"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 07:03:23 -0700
X-CSE-ConnectionGUID: W1aW9x+ESRm1nqL/Wb2uVA==
X-CSE-MsgGUID: FUS1VsapRJmfJkpGNUuihg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="88164204"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.148])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 07:03:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/4] drm/i915: dump display parameters captured in error state,
 not current
Date: Tue,  3 Sep 2024 17:02:57 +0300
Message-Id: <6f6b56d5a68dc4541d5fa57aa3787f8cade743d1.1725372032.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725372032.git.jani.nikula@intel.com>
References: <cover.1725372032.git.jani.nikula@intel.com>
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
index 6469b9bcf2ec..f23769ccf050 100644
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

