Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3320A4B11FA
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 16:46:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54FB310E8A3;
	Thu, 10 Feb 2022 15:46:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE3CE10E8A3
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 15:46:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644507996; x=1676043996;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dsfoKgnNA/zUev3tzq33Jcj0KOb3QQhXuGin2g0VU1c=;
 b=YKx/D2K1LZqj+7VRUZRBcXPljPCmvR3ZBBBm86G5epS0y4MVCiNT/z0R
 NIQZppAWlpHtrV6UXxZtPFfR6C/5GcLGJL+khYUBaSwiGT7TaK4O36nS2
 gasBIZVgKHM0MpnFKgI6GCF+3AiENVzcjwR+ccV2U/I9Zk3p2NvWipn6K
 PMzJYTnW//v3zJUj6a7pW27oG+/CXtvuYFVGCL8IM/Lxh9/qnBVP5/OhK
 yXoksGdhvHLSA6204rU1Lu2kBBqHsKGRVpxIEtqBCzeQ36S/C/camIVxn
 76NTgBzsxSlAGKMBW4Jx04inoSO+agJUq91YcLZdA5Nk+gAuQOh76gJsP A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="247101903"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="247101903"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:46:36 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="500435349"
Received: from dhogarty-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.221])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:46:34 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 17:45:45 +0200
Message-Id: <a080e401840a8b9d45946ff33fd63c7939a623ae.1644507885.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1644507885.git.jani.nikula@intel.com>
References: <cover.1644507885.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 07/14] drm/i915: move i915_gem_vm_lookup()
 where it's used
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
Cc: jani.nikula@intel.com, Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the function next to the only user. Arguably it's perhaps not the
best place, but it's much better than having a static inline in a
header.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
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
index 306bc87dadcc..bc51b2336e05 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1623,20 +1623,6 @@ void i915_gem_driver_release(struct drm_i915_private *dev_priv);
 
 int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
 
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

