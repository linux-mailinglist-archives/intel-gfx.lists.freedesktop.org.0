Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5289491BB
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 15:39:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16AA310E367;
	Tue,  6 Aug 2024 13:39:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S7e7pSU9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A338310E367
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2024 13:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722951544; x=1754487544;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YM3iHkMiYrD9tT7HYE+CTisHIAwzrkNRcqfWFhZlokg=;
 b=S7e7pSU9QZqboMHbgkGIjlOLvRW/NyZv9M1TzgOnP2rzHIovAvASTnPq
 kJGZTp6KvtpuJ4pUd2pTkeNvD0I8uvDCDLphZb6Wp3Kq3XwGd6A2/4G8G
 X2CR+J4OzlmX386wvticd2jv35KBnM/009dQI78RVNzKvssfnguqq97ZP
 K2zxfoSNEL9sEaMHajuv5k6Ts+tqBIy6FtFl5E9KiVHhuQIAeRmfhvL51
 yq5J2uTV2sW5ltu5OGR426LdhcJdJ3nens4lxR/C7NrGhmZeJiB8vy2Rs
 Lwt2jL8jW4nAuWaK1qlYmhHYIoltKvgcAU+M7KpCiDtH27uNNDITp0M1r A==;
X-CSE-ConnectionGUID: s3kEg5TjQHul3nz/9BtOLA==
X-CSE-MsgGUID: n2DoTfIEQ8+jdTyjksq2Bg==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="24756990"
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="24756990"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 06:39:04 -0700
X-CSE-ConnectionGUID: a6mSD29KQOCm59qW57tWOQ==
X-CSE-MsgGUID: QW1f9BNXTTWXVZvIOjNyJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="57090123"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 06:39:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/3] drm/i915: remove __i915_printk()
Date: Tue,  6 Aug 2024 16:38:32 +0300
Message-Id: <be9baeab281f75999e96cc7ad1c06c6680494bc1.1722951405.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1722951405.git.jani.nikula@intel.com>
References: <cover.1722951405.git.jani.nikula@intel.com>
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

With the previous cleanups, the last remaining user of __i915_printk()
is i915_probe_error(). Switch that to use drm_dbg() and drm_err()
instead, dropping the request to report bugs in the few remaining
specific cases.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_utils.c | 41 -------------------------------
 drivers/gpu/drm/i915/i915_utils.h | 13 +++++-----
 2 files changed, 6 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_utils.c b/drivers/gpu/drm/i915/i915_utils.c
index bee32222f0fd..b34a2d3d331d 100644
--- a/drivers/gpu/drm/i915/i915_utils.c
+++ b/drivers/gpu/drm/i915/i915_utils.c
@@ -11,47 +11,6 @@
 #include "i915_reg.h"
 #include "i915_utils.h"
 
-#define FDO_BUG_MSG "Please file a bug on drm/i915; see " FDO_BUG_URL " for details."
-
-void
-__i915_printk(struct drm_i915_private *dev_priv, const char *level,
-	      const char *fmt, ...)
-{
-	static bool shown_bug_once;
-	struct device *kdev = dev_priv->drm.dev;
-	bool is_error = level[1] <= KERN_ERR[1];
-	bool is_debug = level[1] == KERN_DEBUG[1];
-	struct va_format vaf;
-	va_list args;
-
-	if (is_debug && !drm_debug_enabled(DRM_UT_DRIVER))
-		return;
-
-	va_start(args, fmt);
-
-	vaf.fmt = fmt;
-	vaf.va = &args;
-
-	if (is_error)
-		dev_printk(level, kdev, "%pV", &vaf);
-	else
-		dev_printk(level, kdev, "[" DRM_NAME ":%ps] %pV",
-			   __builtin_return_address(0), &vaf);
-
-	va_end(args);
-
-	if (is_error && !shown_bug_once) {
-		/*
-		 * Ask the user to file a bug report for the error, except
-		 * if they may have caused the bug by fiddling with unsafe
-		 * module parameters.
-		 */
-		if (!test_taint(TAINT_USER))
-			dev_notice(kdev, "%s", FDO_BUG_MSG);
-		shown_bug_once = true;
-	}
-}
-
 void add_taint_for_CI(struct drm_i915_private *i915, unsigned int taint)
 {
 	drm_notice(&i915->drm, "CI tainted: %#x by %pS\n",
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index feb078ae246f..71bdc89bd621 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -45,10 +45,6 @@ struct timer_list;
 #define MISSING_CASE(x) WARN(1, "Missing case (%s == %ld)\n", \
 			     __stringify(x), (long)(x))
 
-void __printf(3, 4)
-__i915_printk(struct drm_i915_private *dev_priv, const char *level,
-	      const char *fmt, ...);
-
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
 
 int __i915_inject_probe_error(struct drm_i915_private *i915, int err,
@@ -66,9 +62,12 @@ bool i915_error_injected(void);
 
 #define i915_inject_probe_failure(i915) i915_inject_probe_error((i915), -ENODEV)
 
-#define i915_probe_error(i915, fmt, ...)				   \
-	__i915_printk(i915, i915_error_injected() ? KERN_DEBUG : KERN_ERR, \
-		      fmt, ##__VA_ARGS__)
+#define i915_probe_error(i915, fmt, ...) ({ \
+	if (i915_error_injected()) \
+		drm_dbg(&(i915)->drm, fmt, ##__VA_ARGS__); \
+	else \
+		drm_err(&(i915)->drm, fmt, ##__VA_ARGS__); \
+})
 
 #define range_overflows(start, size, max) ({ \
 	typeof(start) start__ = (start); \
-- 
2.39.2

