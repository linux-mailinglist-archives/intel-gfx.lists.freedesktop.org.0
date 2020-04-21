Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB5B1B2CE1
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 18:41:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 563B96E0A1;
	Tue, 21 Apr 2020 16:41:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF8EA6E0A1
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 16:41:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20974628-1500050 
 for multiple; Tue, 21 Apr 2020 17:41:32 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Apr 2020 17:41:30 +0100
Message-Id: <20200421164130.11135-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] RFC drm/i915/gem: Allow creation of contexts
 with an 'empty' VM
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Normally when we create a new context, and a new ppGTT to go with it, we
point all the unused pages in the ppGTT to a 'safe' scratch page. Any
inadvertent access outside of the declared user's area will result in a
read/write to scratch instead. However, sometimes it is preferrable to
that to cause a fault instead. This does not trap execution of the
faulting batch, but it does record the error:

FAULT_TLB_DATA: 0x00000000 0x00000004
    Address 0x0000000000004000 PPGTT

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Jason Ekstrand <jason@jlekstrand.net>
---
The name and value semantics are horrendous. The non-trapping behaviour
is also less than ideal. Worth it?
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 48 +++++++++++++++++++++
 include/uapi/drm/i915_drm.h                 |  2 +
 2 files changed, 50 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 1c4afa864bfe..f981269e883d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1191,6 +1191,33 @@ static int set_ringsize(struct i915_gem_context *ctx,
 				 __intel_context_ring_size(args->value));
 }
 
+static int set_empty_vm(struct i915_gem_context *ctx,
+			struct drm_i915_gem_context_param *args)
+{
+	struct i915_address_space *vm = ctx->vm;
+	int i;
+
+	if (!vm || INTEL_GEN(ctx->i915) < 8)
+		return -ENODEV;
+
+	if (args->size || args->value)
+		return -EINVAL;
+
+	if (!vm->scratch[0].encode)
+		return 0;
+
+	if (vm->mm.head_node.hole_size != vm->total)
+		return -EBUSY;
+
+	free_scratch(vm);
+
+	fill_page_dma(px_base(i915_vm_to_ppgtt(vm)->pd), 0, 512);
+	for (i = 0; i <= vm->top; i++)
+		vm->scratch[i].encode = 0;
+
+	return 0;
+}
+
 static int __get_ringsize(struct intel_context *ce, void *arg)
 {
 	long sz;
@@ -1220,6 +1247,19 @@ static int get_ringsize(struct i915_gem_context *ctx,
 	return 0;
 }
 
+static int get_empty_vm(struct i915_gem_context *ctx,
+			struct drm_i915_gem_context_param *args)
+{
+	if (!ctx->vm || INTEL_GEN(ctx->i915) < 8)
+		return -ENODEV;
+
+	if (args->size)
+		return -EINVAL;
+
+	args->value = !ctx->vm->scratch[0].encode;
+	return 0;
+}
+
 int
 i915_gem_user_to_context_sseu(struct drm_i915_private *i915,
 			      const struct drm_i915_gem_context_param_sseu *user,
@@ -1896,6 +1936,10 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
 		ret = set_ringsize(ctx, args);
 		break;
 
+	case I915_CONTEXT_PARAM_EMPTY_VM:
+		ret = set_empty_vm(ctx, args);
+		break;
+
 	case I915_CONTEXT_PARAM_BAN_PERIOD:
 	default:
 		ret = -EINVAL;
@@ -2348,6 +2392,10 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
 		ret = get_ringsize(ctx, args);
 		break;
 
+	case I915_CONTEXT_PARAM_EMPTY_VM:
+		ret = get_empty_vm(ctx, args);
+		break;
+
 	case I915_CONTEXT_PARAM_BAN_PERIOD:
 	default:
 		ret = -EINVAL;
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 14b67cd6b54b..b18215a61332 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1640,6 +1640,8 @@ struct drm_i915_gem_context_param {
  * Default is 16 KiB.
  */
 #define I915_CONTEXT_PARAM_RINGSIZE	0xc
+
+#define I915_CONTEXT_PARAM_EMPTY_VM	0xd
 /* Must be kept compact -- no holes and well documented */
 
 	__u64 value;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
