Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B6767210E
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 16:20:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7733110E76B;
	Wed, 18 Jan 2023 15:20:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B95110E76B
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 15:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674055231; x=1705591231;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vPTt/S8wBsK1jNqUOXvJ4EZdyXE/2R7FLmX2DyZvo4U=;
 b=Vj+UpWJRbpoQfddybI1HO1YmNLVil9WvAbz+BkbUgMfIn7X0tdt9afkU
 djNofcwTRKTZOV9H2MDkr5hdKhaCl+LMlPt5aK5cihHC2HVowZYkxo+9W
 d+cvjLOCoFVVIkF9TuqRntTyRnhWkV+e/RhbCOtfFW2GJnTcZQ/+0SQtw
 4r9unlMER/jdwDfouz+vThE5t2dFIszGCim4dcqfaQIkiwfCn57DCrfxm
 RE4cgw489LWFe1vzbsGtD6IFySdfprjQNBV+CK47v6pKUNbvFixvAajIT
 O07xQDjr6adN2JsdYKvIxz+7sEUGOFLM2wPIwVV+jDLjHg5Nbn9U0Zio5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="352254022"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="352254022"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 07:18:06 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="637322572"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="637322572"
Received: from kozlovdm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.28.132])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 07:18:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 17:17:57 +0200
Message-Id: <20230118151800.3669913-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/params: use generics for parameter
 printing
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Replace the __builtin_strcmp() if ladder with generics.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_params.c | 55 +++++++++++++++++++-----------
 1 file changed, 36 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index d634bd3f641a..6482e878f31e 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -222,27 +222,44 @@ i915_param_named_unsafe(lmem_size, uint, 0400,
 i915_param_named_unsafe(lmem_bar_size, uint, 0400,
 			"Set the lmem bar size(in MiB).");
 
-static __always_inline void _print_param(struct drm_printer *p,
-					 const char *name,
-					 const char *type,
-					 const void *x)
+static void _param_print_bool(struct drm_printer *p, const char *name,
+			      bool val)
 {
-	if (!__builtin_strcmp(type, "bool"))
-		drm_printf(p, "i915.%s=%s\n", name,
-			   str_yes_no(*(const bool *)x));
-	else if (!__builtin_strcmp(type, "int"))
-		drm_printf(p, "i915.%s=%d\n", name, *(const int *)x);
-	else if (!__builtin_strcmp(type, "unsigned int"))
-		drm_printf(p, "i915.%s=%u\n", name, *(const unsigned int *)x);
-	else if (!__builtin_strcmp(type, "unsigned long"))
-		drm_printf(p, "i915.%s=%lu\n", name, *(const unsigned long *)x);
-	else if (!__builtin_strcmp(type, "char *"))
-		drm_printf(p, "i915.%s=%s\n", name, *(const char **)x);
-	else
-		WARN_ONCE(1, "no printer defined for param type %s (i915.%s)\n",
-			  type, name);
+	drm_printf(p, "i915.%s=%s\n", name, str_yes_no(val));
 }
 
+static void _param_print_int(struct drm_printer *p, const char *name,
+			     int val)
+{
+	drm_printf(p, "i915.%s=%d\n", name, val);
+}
+
+static void _param_print_uint(struct drm_printer *p, const char *name,
+			      unsigned int val)
+{
+	drm_printf(p, "i915.%s=%u\n", name, val);
+}
+
+static void _param_print_ulong(struct drm_printer *p, const char *name,
+			       unsigned long val)
+{
+	drm_printf(p, "i915.%s=%lu\n", name, val);
+}
+
+static void _param_print_charp(struct drm_printer *p, const char *name,
+			       const char *val)
+{
+	drm_printf(p, "i915.%s=%s\n", name, val);
+}
+
+#define _param_print(p, name, val)				\
+	_Generic(val,						\
+		 bool: _param_print_bool,			\
+		 int: _param_print_int,				\
+		 unsigned int: _param_print_uint,		\
+		 unsigned long: _param_print_ulong,		\
+		 char *: _param_print_charp)(p, name, val)
+
 /**
  * i915_params_dump - dump i915 modparams
  * @params: i915 modparams
@@ -252,7 +269,7 @@ static __always_inline void _print_param(struct drm_printer *p,
  */
 void i915_params_dump(const struct i915_params *params, struct drm_printer *p)
 {
-#define PRINT(T, x, ...) _print_param(p, #x, #T, &params->x);
+#define PRINT(T, x, ...) _param_print(p, #x, params->x);
 	I915_PARAMS_FOR_EACH(PRINT);
 #undef PRINT
 }
-- 
2.34.1

