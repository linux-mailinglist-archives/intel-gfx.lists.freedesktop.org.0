Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E59493A1C37
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 19:45:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38F226EAE3;
	Wed,  9 Jun 2021 17:45:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 931006EADE
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 17:45:07 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id
 o17-20020a17090a9f91b029015cef5b3c50so1873544pjp.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Jun 2021 10:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xOTYq1MjQ42l9oPWxlmvxSDBk8ZCeCT1cUEqdwXmKkY=;
 b=LV7wITZgN9rvI7lj+vSrbBY6tz+sOplkGHqF3yrJdehBX2VlYDL+P6E+p+Ihe9AQff
 XPKDQRDEyATgjQTsDe2rM0qKZT0yp8Q0u6CQrENJGYaC2QsxvOSFIohsXnZDMZBXH0iv
 zbQXmro4wQj1ot9vWu71fy/OLwloQmTQpinwk3dvGZKllTEDIErKcTtrZl+M6FlA8CK0
 SGPFaa35OB8zrYOus4Ylo9aPk5PSroy7nWLurT+R7BZbRe3Qef0AqALA8iggoULRUOMQ
 2Cq6AjM/Sf5VA0ERWtoAN87owJf+Fyjw9Hkzf7ugLNEaPapN1XyYXDytnTGfXr6vhVNj
 K+ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xOTYq1MjQ42l9oPWxlmvxSDBk8ZCeCT1cUEqdwXmKkY=;
 b=qsVS3UkTSLT6jiEQTvVZCrvq7FU/mSRS7tbcEuNJKWJt948BtrvI3WjZDQp23azCw9
 NAv6vMn2PDdJinvC/3yNxhfw6FNsv/YGMaaKnKaa8T8KnReDNomoEWxIbGNAwvBPgG3+
 LBD6MtODdIxPjMmb5upgNj28KKBdjQTjkALRTVGv5yVl3cZSGblA7gxdvFxEzxb7dGW4
 IeF0zNGg5PDV6tlKXLxr3RMGsFTB/pdRt4wiZBaes9gHZ3sOapPKCwVphXvlUxEeYCR8
 5n9QhA+kfNHrSzY1yeqiGF5X5E4YMi4yEjFWjmb6vehIUWXNlLgGGI3H13lgqE3x+WT7
 YrAw==
X-Gm-Message-State: AOAM532+2/bj88DsrPCjlFllDnuEPlet8lySh5flvTLdZBEWzPXYGbJA
 jSxGvnYK2XFwDyDuvq4TpHIr9g==
X-Google-Smtp-Source: ABdhPJwmpvfodRvsZb2r5xt3dCmb6nu0t0FqIdRyyMpP5Ueq0icpe9jQdOAPChnBdaStPp3SxmqZwQ==
X-Received: by 2002:a17:902:ed95:b029:ee:aa46:547a with SMTP id
 e21-20020a170902ed95b02900eeaa46547amr827816plj.27.1623260704199; 
 Wed, 09 Jun 2021 10:45:04 -0700 (PDT)
Received: from omlet.lan (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.gmail.com with ESMTPSA id b10sm208619pfi.122.2021.06.09.10.45.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Jun 2021 10:45:03 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed,  9 Jun 2021 12:44:11 -0500
Message-Id: <20210609174418.249585-25-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609174418.249585-1-jason@jlekstrand.net>
References: <20210609174418.249585-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 24/31] drm/i915/gem: Delay context creation (v3)
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The current context uAPI allows for two methods of setting context
parameters: SET_CONTEXT_PARAM and CONTEXT_CREATE_EXT_SETPARAM.  The
former is allowed to be called at any time while the later happens as
part of GEM_CONTEXT_CREATE.  Currently, everything settable via one is
settable via the other.  While some params are fairly simple and setting
them on a live context is harmless such as the context priority, others
are far trickier such as the VM or the set of engines.  In order to swap
out the VM, for instance, we have to delay until all current in-flight
work is complete, swap in the new VM, and then continue.  This leads to
a plethora of potential race conditions we'd really rather avoid.

In previous patches, we added a i915_gem_proto_context struct which is
capable of storing and tracking all such create parameters.  This commit
delays the creation of the actual context until after the client is done
configuring it with SET_CONTEXT_PARAM.  From the perspective of the
client, it has the same u32 context ID the whole time.  From the
perspective of i915, however, it's an i915_gem_proto_context right up
until the point where we attempt to do something which the proto-context
can't handle.  Then the real context gets created.

This is accomplished via a little xarray dance.  When GEM_CONTEXT_CREATE
is called, we create a proto-context, reserve a slot in context_xa but
leave it NULL, the proto-context in the corresponding slot in
proto_context_xa.  Then, whenever we go to look up a context, we first
check context_xa.  If it's there, we return the i915_gem_context and
we're done.  If it's not, we look in proto_context_xa and, if we find it
there, we create the actual context and kill the proto-context.

In order for this dance to work properly, everything which ever touches
a proto-context is guarded by drm_i915_file_private::proto_context_lock,
including context creation.  Yes, this means context creation now takes
a giant global lock but it can't really be helped and that should never
be on any driver's fast-path anyway.

v2 (Daniel Vetter):
 - Commit message grammatical fixes.
 - Use WARN_ON instead of GEM_BUG_ON
 - Rename lazy_create_context_locked to finalize_create_context_locked
 - Rework the control-flow logic in the setparam ioctl
 - Better documentation all around

v3 (kernel test robot):
 - Make finalize_create_context_locked static

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 203 ++++++++++++++----
 drivers/gpu/drm/i915/gem/i915_gem_context.h   |   3 +
 .../gpu/drm/i915/gem/i915_gem_context_types.h |  54 +++++
 .../gpu/drm/i915/gem/selftests/mock_context.c |   5 +-
 drivers/gpu/drm/i915/i915_drv.h               |  76 +++++--
 5 files changed, 283 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 5a1402544d48d..c4f89e4b1665f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -278,6 +278,42 @@ proto_context_create(struct drm_i915_private *i915, unsigned int flags)
 	return err;
 }
 
+static int proto_context_register_locked(struct drm_i915_file_private *fpriv,
+					 struct i915_gem_proto_context *pc,
+					 u32 *id)
+{
+	int ret;
+	void *old;
+
+	lockdep_assert_held(&fpriv->proto_context_lock);
+
+	ret = xa_alloc(&fpriv->context_xa, id, NULL, xa_limit_32b, GFP_KERNEL);
+	if (ret)
+		return ret;
+
+	old = xa_store(&fpriv->proto_context_xa, *id, pc, GFP_KERNEL);
+	if (xa_is_err(old)) {
+		xa_erase(&fpriv->context_xa, *id);
+		return xa_err(old);
+	}
+	WARN_ON(old);
+
+	return 0;
+}
+
+static int proto_context_register(struct drm_i915_file_private *fpriv,
+				  struct i915_gem_proto_context *pc,
+				  u32 *id)
+{
+	int ret;
+
+	mutex_lock(&fpriv->proto_context_lock);
+	ret = proto_context_register_locked(fpriv, pc, id);
+	mutex_unlock(&fpriv->proto_context_lock);
+
+	return ret;
+}
+
 static int set_proto_ctx_vm(struct drm_i915_file_private *fpriv,
 			    struct i915_gem_proto_context *pc,
 			    const struct drm_i915_gem_context_param *args)
@@ -1448,12 +1484,12 @@ void i915_gem_init__contexts(struct drm_i915_private *i915)
 	init_contexts(&i915->gem.contexts);
 }
 
-static int gem_context_register(struct i915_gem_context *ctx,
-				struct drm_i915_file_private *fpriv,
-				u32 *id)
+static void gem_context_register(struct i915_gem_context *ctx,
+				 struct drm_i915_file_private *fpriv,
+				 u32 id)
 {
 	struct drm_i915_private *i915 = ctx->i915;
-	int ret;
+	void *old;
 
 	ctx->file_priv = fpriv;
 
@@ -1462,19 +1498,12 @@ static int gem_context_register(struct i915_gem_context *ctx,
 		 current->comm, pid_nr(ctx->pid));
 
 	/* And finally expose ourselves to userspace via the idr */
-	ret = xa_alloc(&fpriv->context_xa, id, ctx, xa_limit_32b, GFP_KERNEL);
-	if (ret)
-		goto err_pid;
+	old = xa_store(&fpriv->context_xa, id, ctx, GFP_KERNEL);
+	WARN_ON(old);
 
 	spin_lock(&i915->gem.contexts.lock);
 	list_add_tail(&ctx->link, &i915->gem.contexts.list);
 	spin_unlock(&i915->gem.contexts.lock);
-
-	return 0;
-
-err_pid:
-	put_pid(fetch_and_zero(&ctx->pid));
-	return ret;
 }
 
 int i915_gem_context_open(struct drm_i915_private *i915,
@@ -1484,9 +1513,12 @@ int i915_gem_context_open(struct drm_i915_private *i915,
 	struct i915_gem_proto_context *pc;
 	struct i915_gem_context *ctx;
 	int err;
-	u32 id;
 
-	xa_init_flags(&file_priv->context_xa, XA_FLAGS_ALLOC);
+	mutex_init(&file_priv->proto_context_lock);
+	xa_init_flags(&file_priv->proto_context_xa, XA_FLAGS_ALLOC);
+
+	/* 0 reserved for the default context */
+	xa_init_flags(&file_priv->context_xa, XA_FLAGS_ALLOC1);
 
 	/* 0 reserved for invalid/unassigned ppgtt */
 	xa_init_flags(&file_priv->vm_xa, XA_FLAGS_ALLOC1);
@@ -1504,28 +1536,31 @@ int i915_gem_context_open(struct drm_i915_private *i915,
 		goto err;
 	}
 
-	err = gem_context_register(ctx, file_priv, &id);
-	if (err < 0)
-		goto err_ctx;
+	gem_context_register(ctx, file_priv, 0);
 
-	GEM_BUG_ON(id);
 	return 0;
 
-err_ctx:
-	context_close(ctx);
 err:
 	xa_destroy(&file_priv->vm_xa);
 	xa_destroy(&file_priv->context_xa);
+	xa_destroy(&file_priv->proto_context_xa);
+	mutex_destroy(&file_priv->proto_context_lock);
 	return err;
 }
 
 void i915_gem_context_close(struct drm_file *file)
 {
 	struct drm_i915_file_private *file_priv = file->driver_priv;
+	struct i915_gem_proto_context *pc;
 	struct i915_address_space *vm;
 	struct i915_gem_context *ctx;
 	unsigned long idx;
 
+	xa_for_each(&file_priv->proto_context_xa, idx, pc)
+		proto_context_close(pc);
+	xa_destroy(&file_priv->proto_context_xa);
+	mutex_destroy(&file_priv->proto_context_lock);
+
 	xa_for_each(&file_priv->context_xa, idx, ctx)
 		context_close(ctx);
 	xa_destroy(&file_priv->context_xa);
@@ -2480,12 +2515,73 @@ static bool client_is_banned(struct drm_i915_file_private *file_priv)
 	return atomic_read(&file_priv->ban_score) >= I915_CLIENT_SCORE_BANNED;
 }
 
+static inline struct i915_gem_context *
+__context_lookup(struct drm_i915_file_private *file_priv, u32 id)
+{
+	struct i915_gem_context *ctx;
+
+	rcu_read_lock();
+	ctx = xa_load(&file_priv->context_xa, id);
+	if (ctx && !kref_get_unless_zero(&ctx->ref))
+		ctx = NULL;
+	rcu_read_unlock();
+
+	return ctx;
+}
+
+static struct i915_gem_context *
+finalize_create_context_locked(struct drm_i915_file_private *file_priv,
+			       struct i915_gem_proto_context *pc, u32 id)
+{
+	struct i915_gem_context *ctx;
+	void *old;
+
+	lockdep_assert_held(&file_priv->proto_context_lock);
+
+	ctx = i915_gem_create_context(file_priv->dev_priv, pc);
+	if (IS_ERR(ctx))
+		return ctx;
+
+	gem_context_register(ctx, file_priv, id);
+
+	old = xa_erase(&file_priv->proto_context_xa, id);
+	GEM_BUG_ON(old != pc);
+	proto_context_close(pc);
+
+	/* One for the xarray and one for the caller */
+	return i915_gem_context_get(ctx);
+}
+
+struct i915_gem_context *
+i915_gem_context_lookup(struct drm_i915_file_private *file_priv, u32 id)
+{
+	struct i915_gem_proto_context *pc;
+	struct i915_gem_context *ctx;
+
+	ctx = __context_lookup(file_priv, id);
+	if (ctx)
+		return ctx;
+
+	mutex_lock(&file_priv->proto_context_lock);
+	/* Try one more time under the lock */
+	ctx = __context_lookup(file_priv, id);
+	if (!ctx) {
+		pc = xa_load(&file_priv->proto_context_xa, id);
+		if (!pc)
+			ctx = ERR_PTR(-ENOENT);
+		else
+			ctx = finalize_create_context_locked(file_priv, pc, id);
+	}
+	mutex_unlock(&file_priv->proto_context_lock);
+
+	return ctx;
+}
+
 int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 				  struct drm_file *file)
 {
 	struct drm_i915_private *i915 = to_i915(dev);
 	struct drm_i915_gem_context_create_ext *args = data;
-	struct i915_gem_context *ctx;
 	struct create_ext ext_data;
 	int ret;
 	u32 id;
@@ -2517,28 +2613,21 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 					   create_extensions,
 					   ARRAY_SIZE(create_extensions),
 					   &ext_data);
-		if (ret) {
-			proto_context_close(ext_data.pc);
-			return ret;
-		}
+		if (ret)
+			goto err_pc;
 	}
 
-	ctx = i915_gem_create_context(i915, ext_data.pc);
-	proto_context_close(ext_data.pc);
-	if (IS_ERR(ctx))
-		return PTR_ERR(ctx);
-
-	ret = gem_context_register(ctx, ext_data.fpriv, &id);
+	ret = proto_context_register(ext_data.fpriv, ext_data.pc, &id);
 	if (ret < 0)
-		goto err_ctx;
+		goto err_pc;
 
 	args->ctx_id = id;
 	drm_dbg(&i915->drm, "HW context %d created\n", args->ctx_id);
 
 	return 0;
 
-err_ctx:
-	context_close(ctx);
+err_pc:
+	proto_context_close(ext_data.pc);
 	return ret;
 }
 
@@ -2547,6 +2636,7 @@ int i915_gem_context_destroy_ioctl(struct drm_device *dev, void *data,
 {
 	struct drm_i915_gem_context_destroy *args = data;
 	struct drm_i915_file_private *file_priv = file->driver_priv;
+	struct i915_gem_proto_context *pc;
 	struct i915_gem_context *ctx;
 
 	if (args->pad != 0)
@@ -2555,11 +2645,24 @@ int i915_gem_context_destroy_ioctl(struct drm_device *dev, void *data,
 	if (!args->ctx_id)
 		return -ENOENT;
 
+	/* We need to hold the proto-context lock here to prevent races
+	 * with finalize_create_context_locked().
+	 */
+	mutex_lock(&file_priv->proto_context_lock);
 	ctx = xa_erase(&file_priv->context_xa, args->ctx_id);
-	if (!ctx)
+	pc = xa_erase(&file_priv->proto_context_xa, args->ctx_id);
+	mutex_unlock(&file_priv->proto_context_lock);
+
+	if (!ctx && !pc)
 		return -ENOENT;
+	GEM_WARN_ON(ctx && pc);
+
+	if (pc)
+		proto_context_close(pc);
+
+	if (ctx)
+		context_close(ctx);
 
-	context_close(ctx);
 	return 0;
 }
 
@@ -2692,16 +2795,30 @@ int i915_gem_context_setparam_ioctl(struct drm_device *dev, void *data,
 {
 	struct drm_i915_file_private *file_priv = file->driver_priv;
 	struct drm_i915_gem_context_param *args = data;
+	struct i915_gem_proto_context *pc;
 	struct i915_gem_context *ctx;
-	int ret;
+	int ret = 0;
 
-	ctx = i915_gem_context_lookup(file_priv, args->ctx_id);
-	if (IS_ERR(ctx))
-		return PTR_ERR(ctx);
+	mutex_lock(&file_priv->proto_context_lock);
+	ctx = __context_lookup(file_priv, args->ctx_id);
+	if (!ctx) {
+		/* FIXME: We should consider disallowing SET_CONTEXT_PARAM
+		 * for most things on future platforms.  Clients should be
+		 * using CONTEXT_CREATE_EXT_PARAM instead.
+		 */
+		pc = xa_load(&file_priv->proto_context_xa, args->ctx_id);
+		if (pc)
+			ret = set_proto_ctx_param(file_priv, pc, args);
+		else
+			ret = -ENOENT;
+	}
+	mutex_unlock(&file_priv->proto_context_lock);
 
-	ret = ctx_setparam(file_priv, ctx, args);
+	if (ctx) {
+		ret = ctx_setparam(file_priv, ctx, args);
+		i915_gem_context_put(ctx);
+	}
 
-	i915_gem_context_put(ctx);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
index b5c908f3f4f22..20411db84914a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
@@ -133,6 +133,9 @@ int i915_gem_context_setparam_ioctl(struct drm_device *dev, void *data,
 int i915_gem_context_reset_stats_ioctl(struct drm_device *dev, void *data,
 				       struct drm_file *file);
 
+struct i915_gem_context *
+i915_gem_context_lookup(struct drm_i915_file_private *file_priv, u32 id);
+
 static inline struct i915_gem_context *
 i915_gem_context_get(struct i915_gem_context *ctx)
 {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index a1a117d9ed973..94c03a97cb77c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -122,6 +122,60 @@ struct i915_gem_proto_engine {
  * a struct i915_gem_context.  This is used to gather parameters provided
  * either through creation flags or via SET_CONTEXT_PARAM so that, when we
  * create the final i915_gem_context, those parameters can be immutable.
+ *
+ * The context uAPI allows for two methods of setting context parameters:
+ * SET_CONTEXT_PARAM and CONTEXT_CREATE_EXT_SETPARAM.  The former is
+ * allowed to be called at any time while the later happens as part of
+ * GEM_CONTEXT_CREATE.  When these were initially added, Currently,
+ * everything settable via one is settable via the other.  While some
+ * params are fairly simple and setting them on a live context is harmless
+ * such the context priority, others are far trickier such as the VM or the
+ * set of engines.  To avoid some truly nasty race conditions, we don't
+ * allow setting the VM or the set of engines on live contexts.
+ *
+ * The way we dealt with this without breaking older userspace that sets
+ * the VM or engine set via SET_CONTEXT_PARAM is to delay the creation of
+ * the actual context until after the client is done configuring it with
+ * SET_CONTEXT_PARAM.  From the perspective of the client, it has the same
+ * u32 context ID the whole time.  From the perspective of i915, however,
+ * it's an i915_gem_proto_context right up until the point where we attempt
+ * to do something which the proto-context can't handle at which point the
+ * real context gets created.
+ *
+ * This is accomplished via a little xarray dance.  When GEM_CONTEXT_CREATE
+ * is called, we create a proto-context, reserve a slot in context_xa but
+ * leave it NULL, the proto-context in the corresponding slot in
+ * proto_context_xa.  Then, whenever we go to look up a context, we first
+ * check context_xa.  If it's there, we return the i915_gem_context and
+ * we're done.  If it's not, we look in proto_context_xa and, if we find it
+ * there, we create the actual context and kill the proto-context.
+ *
+ * At the time we made this change (April, 2021), we did a fairly complete
+ * audit of existing userspace to ensure this wouldn't break anything:
+ *
+ *  - Mesa/i965 didn't use the engines or VM APIs at all
+ *
+ *  - Mesa/ANV used the engines API but via CONTEXT_CREATE_EXT_SETPARAM and
+ *    didn't use the VM API.
+ *
+ *  - Mesa/iris didn't use the engines or VM APIs at all
+ *
+ *  - The open-source compute-runtime didn't yet use the engines API but
+ *    did use the VM API via SET_CONTEXT_PARAM.  However, CONTEXT_SETPARAM
+ *    was always the second ioctl on that context, immediately following
+ *    GEM_CONTEXT_CREATE.
+ *
+ *  - The media driver sets engines and bonding/balancing via
+ *    SET_CONTEXT_PARAM.  However, CONTEXT_SETPARAM to set the VM was
+ *    always the second ioctl on that context, immediately following
+ *    GEM_CONTEXT_CREATE and setting engines immediately followed that.
+ *
+ * In order for this dance to work properly, any modification to an
+ * i915_gem_proto_context that is exposed to the client via
+ * drm_i915_file_private::proto_context_xa must be guarded by
+ * drm_i915_file_private::proto_context_lock.  The exception is when a
+ * proto-context has not yet been exposed such as when handling
+ * CONTEXT_CREATE_SET_PARAM during GEM_CONTEXT_CREATE.
  */
 struct i915_gem_proto_context {
 	/** @vm: See &i915_gem_context.vm */
diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
index cbeefd060e97b..61aaac4a334cf 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
@@ -81,6 +81,7 @@ void mock_init_contexts(struct drm_i915_private *i915)
 struct i915_gem_context *
 live_context(struct drm_i915_private *i915, struct file *file)
 {
+	struct drm_i915_file_private *fpriv = to_drm_file(file)->driver_priv;
 	struct i915_gem_proto_context *pc;
 	struct i915_gem_context *ctx;
 	int err;
@@ -97,10 +98,12 @@ live_context(struct drm_i915_private *i915, struct file *file)
 
 	i915_gem_context_set_no_error_capture(ctx);
 
-	err = gem_context_register(ctx, to_drm_file(file)->driver_priv, &id);
+	err = xa_alloc(&fpriv->context_xa, &id, NULL, xa_limit_32b, GFP_KERNEL);
 	if (err < 0)
 		goto err_ctx;
 
+	gem_context_register(ctx, fpriv, id);
+
 	return ctx;
 
 err_ctx:
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6aa91b795784c..1c4f86195c6f1 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -202,6 +202,68 @@ struct drm_i915_file_private {
 		struct rcu_head rcu;
 	};
 
+	/** @proto_context_lock: Guards all struct i915_gem_proto_context
+	 * operations
+	 *
+	 * This not only guards @proto_context_xa, but is always held
+	 * whenever we manipulate any struct i915_gem_proto_context,
+	 * including finalizing it on first actual use of the GEM context.
+	 *
+	 * See i915_gem_proto_context.
+	 */
+	struct mutex proto_context_lock;
+
+	/** @proto_context_xa: xarray of struct i915_gem_proto_context
+	 *
+	 * Historically, the context uAPI allowed for two methods of
+	 * setting context parameters: SET_CONTEXT_PARAM and
+	 * CONTEXT_CREATE_EXT_SETPARAM.  The former is allowed to be called
+	 * at any time while the later happens as part of
+	 * GEM_CONTEXT_CREATE.  Everything settable via one was settable
+	 * via the other.  While some params are fairly simple and setting
+	 * them on a live context is harmless such as the context priority,
+	 * others are far trickier such as the VM or the set of engines.
+	 * In order to swap out the VM, for instance, we have to delay
+	 * until all current in-flight work is complete, swap in the new
+	 * VM, and then continue.  This leads to a plethora of potential
+	 * race conditions we'd really rather avoid.
+	 *
+	 * We have since disallowed setting these more complex parameters
+	 * on active contexts.  This works by delaying the creation of the
+	 * actual context until after the client is done configuring it
+	 * with SET_CONTEXT_PARAM.  From the perspective of the client, it
+	 * has the same u32 context ID the whole time.  From the
+	 * perspective of i915, however, it's a struct i915_gem_proto_context
+	 * right up until the point where we attempt to do something which
+	 * the proto-context can't handle.  Then the struct i915_gem_context
+	 * gets created.
+	 *
+	 * This is accomplished via a little xarray dance.  When
+	 * GEM_CONTEXT_CREATE is called, we create a struct
+	 * i915_gem_proto_context, reserve a slot in @context_xa but leave
+	 * it NULL, and place the proto-context in the corresponding slot
+	 * in @proto_context_xa.  Then, in i915_gem_context_lookup(), we
+	 * first check @context_xa.  If it's there, we return the struct
+	 * i915_gem_context and we're done.  If it's not, we look in
+	 * @proto_context_xa and, if we find it there, we create the actual
+	 * context and kill the proto-context.
+	 *
+	 * In order for this dance to work properly, everything which ever
+	 * touches a struct i915_gem_proto_context is guarded by
+	 * @proto_context_lock, including context creation.  Yes, this
+	 * means context creation now takes a giant global lock but it
+	 * can't really be helped and that should never be on any driver's
+	 * fast-path anyway.
+	 */
+	struct xarray proto_context_xa;
+
+	/** @context_xa: xarray of fully created i915_gem_context
+	 *
+	 * Write access to this xarray is guarded by @proto_context_lock.
+	 * Otherwise, writers may race with finalize_create_context_locked().
+	 *
+	 * See @proto_context_xa.
+	 */
 	struct xarray context_xa;
 	struct xarray vm_xa;
 
@@ -1850,20 +1912,6 @@ struct drm_gem_object *i915_gem_prime_import(struct drm_device *dev,
 
 struct dma_buf *i915_gem_prime_export(struct drm_gem_object *gem_obj, int flags);
 
-static inline struct i915_gem_context *
-i915_gem_context_lookup(struct drm_i915_file_private *file_priv, u32 id)
-{
-	struct i915_gem_context *ctx;
-
-	rcu_read_lock();
-	ctx = xa_load(&file_priv->context_xa, id);
-	if (ctx && !kref_get_unless_zero(&ctx->ref))
-		ctx = NULL;
-	rcu_read_unlock();
-
-	return ctx ? ctx : ERR_PTR(-ENOENT);
-}
-
 static inline struct i915_address_space *
 i915_gem_vm_lookup(struct drm_i915_file_private *file_priv, u32 id)
 {
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
