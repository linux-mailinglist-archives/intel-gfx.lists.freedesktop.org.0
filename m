Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 096A56720F8
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 16:19:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3638310E76D;
	Wed, 18 Jan 2023 15:18:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC98010E76B
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 15:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674055131; x=1705591131;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=42tTBEJvgPQVns0jeSt9yU4SbadQlpWz8XH8WAs1Czo=;
 b=Q+1NU9VMQfoljB8e8woZ3bu+IyBcP9diQuRiGJWE5UamriEs8xcCWi0B
 j7JshW3siqInUSQpxVEGbgUUHy3ra4dtFfgW9u0jvRxgasIFnEUwXsPov
 +k6d9gnckZTmzGTMy5Z45hOLx1KtpdUOa+MY+F4bey23FU3kuAHKBTkzs
 7MIel5L90HfjlaQrVjIgJLTzipN/vZ5UKs92ZD5oTYD2dA1BEo2cwYBvM
 tWHl3E/WogHjYKIWdiSkFFqBXB8CBs+gl1fBRr9p2E56+8gCbFx8mxagJ
 bgRnGT2Y0989JQWGNcgTJ4uNL8Vciljr+QNg3ag1IgWwvNCwSCgYb/CS0 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="389502536"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="389502536"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 07:18:17 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="652980499"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="652980499"
Received: from kozlovdm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.28.132])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 07:18:16 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 17:18:00 +0200
Message-Id: <20230118151800.3669913-4-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118151800.3669913-1-jani.nikula@intel.com>
References: <20230118151800.3669913-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/params: use generics for parameter
 debugfs file creation
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
 drivers/gpu/drm/i915/i915_debugfs_params.c | 33 ++++++++--------------
 1 file changed, 11 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs_params.c b/drivers/gpu/drm/i915/i915_debugfs_params.c
index 783c8676eee2..614bde321589 100644
--- a/drivers/gpu/drm/i915/i915_debugfs_params.c
+++ b/drivers/gpu/drm/i915/i915_debugfs_params.c
@@ -230,27 +230,16 @@ i915_debugfs_create_charp(const char *name, umode_t mode,
 				   &i915_param_charp_fops);
 }
 
-static __always_inline void
-_i915_param_create_file(struct dentry *parent, const char *name,
-			const char *type, int mode, void *value)
-{
-	if (!mode)
-		return;
-
-	if (!__builtin_strcmp(type, "bool"))
-		debugfs_create_bool(name, mode, parent, value);
-	else if (!__builtin_strcmp(type, "int"))
-		i915_debugfs_create_int(name, mode, parent, value);
-	else if (!__builtin_strcmp(type, "unsigned int"))
-		i915_debugfs_create_uint(name, mode, parent, value);
-	else if (!__builtin_strcmp(type, "unsigned long"))
-		debugfs_create_ulong(name, mode, parent, value);
-	else if (!__builtin_strcmp(type, "char *"))
-		i915_debugfs_create_charp(name, mode, parent, value);
-	else
-		WARN(1, "no debugfs fops defined for param type %s (i915.%s)\n",
-		     type, name);
-}
+#define _i915_param_create_file(parent, name, mode, valp)		\
+	do {								\
+		if (mode)						\
+			_Generic(valp,					\
+				 bool *: debugfs_create_bool,		\
+				 int *: i915_debugfs_create_int,	\
+				 unsigned int *: i915_debugfs_create_uint, \
+				 unsigned long *: debugfs_create_ulong,	\
+				 char **: i915_debugfs_create_charp)(name, mode, parent, valp); \
+	} while(0)
 
 /* add a subdirectory with files for each i915 param */
 struct dentry *i915_debugfs_params(struct drm_i915_private *i915)
@@ -269,7 +258,7 @@ struct dentry *i915_debugfs_params(struct drm_i915_private *i915)
 	 * just let the generic create file fail silently with -EEXIST.
 	 */
 
-#define REGISTER(T, x, unused, mode, ...) _i915_param_create_file(dir, #x, #T, mode, &params->x);
+#define REGISTER(T, x, unused, mode, ...) _i915_param_create_file(dir, #x, mode, &params->x);
 	I915_PARAMS_FOR_EACH(REGISTER);
 #undef REGISTER
 
-- 
2.34.1

