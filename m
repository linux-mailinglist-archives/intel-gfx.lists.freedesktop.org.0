Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D198C4859A6
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 20:57:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C177D10E3F4;
	Wed,  5 Jan 2022 19:57:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFCAB10E3EC
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 19:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641412673; x=1672948673;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bG5SAU+v3sE3IM09mH225WR8/vLae09lfl3jVBPJFfw=;
 b=m1K2G333QaDW8eppDZNf8RsAX54r6xpoLu42vtDufaJ55nkrCJ3V+oPr
 wz41b3VX67plRkJLHcrm2sHSreN0zGn1ZYCafA2KwOG+2qU022oswfztr
 iTBI1ToKelRXFXc5YnASuHIMzbhlhR0s1rzyXOIAHPxYCYuSDMB1/R9lq
 yKd9VMAbxM1oqoj/4SYjKLQ85MxqpC00N87najLs/C4vZtvPwPCSUMkyy
 bciaQ3OLNBWKge2/j8miXVnVozIE5q+O+5kqX4tVp8JEMnhUGHPfD9NKo
 UOahhp5lxSoF4cWGN075zPmN3+j52jvx3eQkOREbRkyygPF6M9i5WxIQR Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="222521406"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="222521406"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:57:53 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="611582064"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:57:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jan 2022 21:56:29 +0200
Message-Id: <6a8bef9f3a3ef69cb14f6130b76a3d8e59c99ff0.1641411696.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641411696.git.jani.nikula@intel.com>
References: <cover.1641411696.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/21] drm/i915: move i915_gem_vm_lookup() where
 it's used
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

Move the function next to the only user. Arguably it's perhaps not the
best place, but it's much better than having a static inline in a
header.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h             | 14 --------------
 2 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index ebbac2ea0833..fff09df0009e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -343,6 +343,21 @@ static int proto_context_register(struct drm_i915_file_private *fpriv,
 	return ret;
 }
 
+
+static struct i915_address_space *
+i915_gem_vm_lookup(struct drm_i915_file_private *file_priv, u32 id)
+{
+	struct i915_address_space *vm;
+
+	xa_lock(&file_priv->vm_xa);
+	vm = xa_load(&file_priv->vm_xa, id);
+	if (vm)
+		kref_get(&vm->ref);
+	xa_unlock(&file_priv->vm_xa);
+
+	return vm;
+}
+
 static int set_proto_ctx_vm(struct drm_i915_file_private *fpriv,
 			    struct i915_gem_proto_context *pc,
 			    const struct drm_i915_gem_context_param *args)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 3e9aeb51de34..aabd4a563a00 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1654,20 +1654,6 @@ static inline u32 i915_reset_engine_count(struct i915_gpu_error *error,
 	return atomic_read(&error->reset_engine_count[engine->uabi_class]);
 }
 
-static inline struct i915_address_space *
-i915_gem_vm_lookup(struct drm_i915_file_private *file_priv, u32 id)
-{
-	struct i915_address_space *vm;
-
-	xa_lock(&file_priv->vm_xa);
-	vm = xa_load(&file_priv->vm_xa, id);
-	if (vm)
-		kref_get(&vm->ref);
-	xa_unlock(&file_priv->vm_xa);
-
-	return vm;
-}
-
 /* i915_gem_tiling.c */
 static inline bool i915_gem_object_needs_bit17_swizzle(struct drm_i915_gem_object *obj)
 {
-- 
2.30.2

