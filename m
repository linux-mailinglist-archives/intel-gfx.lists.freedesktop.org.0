Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE7767210F
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 16:20:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9A3810E76D;
	Wed, 18 Jan 2023 15:20:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F23110E76B
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 15:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674055232; x=1705591232;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=scjGgMpTqU74KEGjLe1gzG5eVhOWjYG/ozobIlOXl9E=;
 b=FXX/6J27d6Dl7+8eaQJ6Pdly5n0EGEU8Al2C2TKK33vxPPKii1+wfqLg
 rPuFV81OiXv/g5sVRzjYD6yYjNUkwHqZNeTPnaU84Ye17CKZSsPK/sNUw
 FoqIe83Cknyzw/xSP7U8pTz4jXF2vfxT13M/pNFc7hf4HtM2SfIo7/01D
 WNhSMJjCu9FZVG+e9ea+HhemBe6udh/7056ygGcvadncbhjvNVWmLWcXM
 h01D5Joh2DWPvV+q9rU5J4q7hrLCwivDHql3TxxlUm20MC5LJ5VzEHPiA
 u0e0s7q0TRMKwgNihU8l/g5/6H7UtPlRNBbseTBKsMBCQLNw1SN0Vp0u4 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="352254050"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="352254050"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 07:18:09 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="637322578"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="637322578"
Received: from kozlovdm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.28.132])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 07:18:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 17:17:58 +0200
Message-Id: <20230118151800.3669913-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118151800.3669913-1-jani.nikula@intel.com>
References: <20230118151800.3669913-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/params: use generics for parameter
 dup
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
 drivers/gpu/drm/i915/i915_params.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 6482e878f31e..f9d92d0ab2b5 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -274,16 +274,24 @@ void i915_params_dump(const struct i915_params *params, struct drm_printer *p)
 #undef PRINT
 }
 
-static __always_inline void dup_param(const char *type, void *x)
+static void _param_dup_charp(char **valp)
 {
-	if (!__builtin_strcmp(type, "char *"))
-		*(void **)x = kstrdup(*(void **)x, GFP_ATOMIC);
+	*valp = kstrdup(*valp, GFP_ATOMIC);
 }
 
+static void _param_nop(void *valp)
+{
+}
+
+#define _param_dup(valp)				\
+	_Generic(valp,					\
+		 char **: _param_dup_charp,		\
+		 default: _param_nop)(valp)
+
 void i915_params_copy(struct i915_params *dest, const struct i915_params *src)
 {
 	*dest = *src;
-#define DUP(T, x, ...) dup_param(#T, &dest->x);
+#define DUP(T, x, ...) _param_dup(&dest->x);
 	I915_PARAMS_FOR_EACH(DUP);
 #undef DUP
 }
-- 
2.34.1

