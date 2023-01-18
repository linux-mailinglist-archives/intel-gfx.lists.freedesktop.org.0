Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E11F5672110
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 16:20:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D506810E76E;
	Wed, 18 Jan 2023 15:20:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F6AE10E76B
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 15:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674055232; x=1705591232;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=unPBGGhjd3N1pqnreG1cYsOVDT9k18r1t6ywCEV1quM=;
 b=bhmns9iqZAW8b9r93od3R2M6SRwD1YQPoH48AvOGlRvlsM0DkhdOBzSB
 2nQppTorTRwb+TFJgzV0f3/TtFSRnLMljnIGx2GWgeW+flBNaUAdaDTsr
 xEEMOdLekItzsTFZw4ujgV7mFh3mO1UTGnQEBprlEV+kjhKO/eg/Pl+9s
 ORmiUqWH8QYIrm9MaBFyqKvH9Vu8nVWrqiCEaxzpP4QMAZaJP0ZGJ4UH0
 wGRTG2nFb9+dqSMMUsGH0tzX5wwdN5v0/QOTQy1E/qYzmyrpc+gejwbo5
 o0m/ziXVTmSGq4TFfUmwR+0S4VyQdVxQCbrVM8UZ9hdUECWgyG0zRNjvn Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="352254063"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="352254063"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 07:18:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="637322589"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="637322589"
Received: from kozlovdm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.28.132])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 07:18:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 17:17:59 +0200
Message-Id: <20230118151800.3669913-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118151800.3669913-1-jani.nikula@intel.com>
References: <20230118151800.3669913-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/params: use generics for parameter
 free
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
 drivers/gpu/drm/i915/i915_params.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index f9d92d0ab2b5..ade744cccfea 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -296,18 +296,21 @@ void i915_params_copy(struct i915_params *dest, const struct i915_params *src)
 #undef DUP
 }
 
-static __always_inline void free_param(const char *type, void *x)
+static void _param_free_charp(char **valp)
 {
-	if (!__builtin_strcmp(type, "char *")) {
-		kfree(*(void **)x);
-		*(void **)x = NULL;
-	}
+	kfree(*valp);
+	*valp = NULL;
 }
 
+#define _param_free(valp)				\
+	_Generic(valp,					\
+		 char **: _param_free_charp,		\
+		 default: _param_nop)(valp)
+
 /* free the allocated members, *not* the passed in params itself */
 void i915_params_free(struct i915_params *params)
 {
-#define FREE(T, x, ...) free_param(#T, &params->x);
+#define FREE(T, x, ...) _param_free(&params->x);
 	I915_PARAMS_FOR_EACH(FREE);
 #undef FREE
 }
-- 
2.34.1

