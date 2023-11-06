Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FD37E21DC
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 13:36:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A60D110E2E0;
	Mon,  6 Nov 2023 12:36:32 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0420310E06F
 for <Intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 12:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699274191; x=1730810191;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=YLtYBu07F40Rc9m0ZeMo3HjoN3adKjancGc4JQjPJ7U=;
 b=MtkBJXjdjuoGvYMmFOWIiolJgwRPQti6uEvGEhQhpLtTOQRLw++coOnW
 I3ThOkzwNhwXAExNZ4BXwLq1QyHyZqIFDWWkonKX2plotaVso6G6lpXXE
 KFqVbkyVdleihNokgx96/PC5zsF5WcJU7b3qS15vYJcRVhiHb11trvX9j
 R75KbvhiLTNqIvAEymHdeIMn49eZeFKr+zVN9U7ZgKzMV3SWq5unesadE
 XpwNPlCYFFX9mXY9Vx2/jRUFB2moi/vDhXqgF2J0dsJDqlhnvp31bcVTJ
 CgRoXKjpo/tqGns9/78Mt6zGIsO1BmIbD39h6yj1hC642EGX7QmDeBhkJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="374293569"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="374293569"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 04:36:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="906046114"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="906046114"
Received: from ajayshan-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.234.152])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 04:36:30 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon,  6 Nov 2023 12:36:21 +0000
Message-Id: <20231106123625.588659-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231106123625.588659-1-tvrtko.ursulin@linux.intel.com>
References: <20231106123625.588659-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 2/6] drm/i915: Record which client owns a VM
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

To enable accounting of indirect client memory usage (such as page tables)
in the following patch, lets start recording the creator of each PPGTT.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c       | 11 ++++++++---
 drivers/gpu/drm/i915/gem/i915_gem_context_types.h |  3 +++
 drivers/gpu/drm/i915/gem/selftests/mock_context.c |  4 ++--
 drivers/gpu/drm/i915/gt/intel_gtt.h               |  1 +
 4 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index e38f06a6e56e..dcbfe32fd30c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -279,7 +279,8 @@ static int proto_context_set_protected(struct drm_i915_private *i915,
 }
 
 static struct i915_gem_proto_context *
-proto_context_create(struct drm_i915_private *i915, unsigned int flags)
+proto_context_create(struct drm_i915_file_private *fpriv,
+		     struct drm_i915_private *i915, unsigned int flags)
 {
 	struct i915_gem_proto_context *pc, *err;
 
@@ -287,6 +288,7 @@ proto_context_create(struct drm_i915_private *i915, unsigned int flags)
 	if (!pc)
 		return ERR_PTR(-ENOMEM);
 
+	pc->fpriv = fpriv;
 	pc->num_user_engines = -1;
 	pc->user_engines = NULL;
 	pc->user_flags = BIT(UCONTEXT_BANNABLE) |
@@ -1622,6 +1624,7 @@ i915_gem_create_context(struct drm_i915_private *i915,
 			err = PTR_ERR(ppgtt);
 			goto err_ctx;
 		}
+		ppgtt->vm.fpriv = pc->fpriv;
 		vm = &ppgtt->vm;
 	}
 	if (vm)
@@ -1741,7 +1744,7 @@ int i915_gem_context_open(struct drm_i915_private *i915,
 	/* 0 reserved for invalid/unassigned ppgtt */
 	xa_init_flags(&file_priv->vm_xa, XA_FLAGS_ALLOC1);
 
-	pc = proto_context_create(i915, 0);
+	pc = proto_context_create(file_priv, i915, 0);
 	if (IS_ERR(pc)) {
 		err = PTR_ERR(pc);
 		goto err;
@@ -1823,6 +1826,7 @@ int i915_gem_vm_create_ioctl(struct drm_device *dev, void *data,
 
 	GEM_BUG_ON(id == 0); /* reserved for invalid/unassigned ppgtt */
 	args->vm_id = id;
+	ppgtt->vm.fpriv = file_priv;
 	return 0;
 
 err_put:
@@ -2285,7 +2289,8 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 		return -EIO;
 	}
 
-	ext_data.pc = proto_context_create(i915, args->flags);
+	ext_data.pc = proto_context_create(file->driver_priv, i915,
+					   args->flags);
 	if (IS_ERR(ext_data.pc))
 		return PTR_ERR(ext_data.pc);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index cb78214a7dcd..c573c067779f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -188,6 +188,9 @@ struct i915_gem_proto_engine {
  * CONTEXT_CREATE_SET_PARAM during GEM_CONTEXT_CREATE.
  */
 struct i915_gem_proto_context {
+	/** @fpriv: Client which creates the context */
+	struct drm_i915_file_private *fpriv;
+
 	/** @vm: See &i915_gem_context.vm */
 	struct i915_address_space *vm;
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
index e199d7dbb876..2b0327cc47c2 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
@@ -83,7 +83,7 @@ live_context(struct drm_i915_private *i915, struct file *file)
 	int err;
 	u32 id;
 
-	pc = proto_context_create(i915, 0);
+	pc = proto_context_create(fpriv, i915, 0);
 	if (IS_ERR(pc))
 		return ERR_CAST(pc);
 
@@ -152,7 +152,7 @@ kernel_context(struct drm_i915_private *i915,
 	struct i915_gem_context *ctx;
 	struct i915_gem_proto_context *pc;
 
-	pc = proto_context_create(i915, 0);
+	pc = proto_context_create(NULL, i915, 0);
 	if (IS_ERR(pc))
 		return ERR_CAST(pc);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 028a5a988eea..6b85222ee3ea 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -255,6 +255,7 @@ struct i915_address_space {
 	} rsvd;
 	struct intel_gt *gt;
 	struct drm_i915_private *i915;
+	struct drm_i915_file_private *fpriv;
 	struct device *dma;
 	u64 total;		/* size addr space maps (ex. 2GB for ggtt) */
 	u64 reserved;		/* size addr space reserved */
-- 
2.39.2

