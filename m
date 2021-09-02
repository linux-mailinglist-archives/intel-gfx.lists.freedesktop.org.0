Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6173FEF4A
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 16:21:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECD6A6E573;
	Thu,  2 Sep 2021 14:21:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 325FC6E58A
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 14:21:09 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 v20-20020a1cf714000000b002e71f4d2026so1223266wmh.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Sep 2021 07:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ux0otQKkFIhr/QzCoIyfdoj8qLEcSwHP4PZjPx1SDPA=;
 b=GmC3l0SIdMeNjne5Uk2zC1bP6hyYwVk2VagtX+0PlQBCOc7cqIetweS/52DGepj7LA
 e6qHIg6QCPEv7VKLQu0Q4xATcbeAsWcdJR3MY/WxxqOCyNyxrmdXq9QQ78ElKr+ZqS4f
 Ay10seIzo6Xw1Q8LjK3JU6W2+t8MBpPgayS64=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ux0otQKkFIhr/QzCoIyfdoj8qLEcSwHP4PZjPx1SDPA=;
 b=npe4LK/lotp959zRYbvKRmEcPwlftxUqQcucPqaTaP3Bk66/CtULN3uXgwH6eJovxX
 aMOpZSkaVx4enm6yJbyrlUftq1ccicCnOv3+jYOfm7fyFVZki3BrN5Y540btKitIGzms
 rzhpQMW7/7TniOqad05n6Qny0ziItbvMyW2RaN+ZxWXOxN/fBo1cAPFlWvV+uxME3aFq
 ZiY8XJQ/hgOEm4RJ77MXO1ELHVIRPXz0HpqbaEBkDatboH8BinPOD4EGdmO2jVX8R0o8
 Fo99YNq/ynxwQ0Jb59dJTx3ANcpUcQ2RsPHORZz6Wp2X7epbAs1Y8X60gFYRLwrx5HGS
 7g5A==
X-Gm-Message-State: AOAM530iOGO9h1bnDzpRf/Y2pFxp3HNsuJkyLD0LeOcgOpF+12n3pUIv
 if15UgJv/e86dBlf/9TJE6OVnA==
X-Google-Smtp-Source: ABdhPJz+E4l437MOTIMiP8zWOjOwsHBZ4wPX0HjuuHeYspQFpcOUQoUr1QX8nZwLzQ86oD+eA7lnlA==
X-Received: by 2002:a05:600c:2056:: with SMTP id
 p22mr3489538wmg.8.1630592467758; 
 Thu, 02 Sep 2021 07:21:07 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l2sm1841811wmi.1.2021.09.02.07.21.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Sep 2021 07:21:07 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 "Acked-by : Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Jon Bloomfield <jon.bloomfield@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Dave Airlie <airlied@redhat.com>, Jason Ekstrand <jason@jlekstrand.net>
Date: Thu,  2 Sep 2021 16:20:47 +0200
Message-Id: <20210902142057.929669-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/11] drm/i915: Release i915_gem_context from a
 worker
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

The only reason for this really is the i915_gem_engines->fence
callback engines_notify(), which exists purely as a fairly funky
reference counting scheme for that. Otherwise all other callers are
from process context, and generally fairly benign locking context.

Unfortunately untangling that requires some major surgery, and we have
a few i915_gem_context reference counting bugs that need fixing, and
they blow in the current hardirq calling context, so we need a
stop-gap measure.

Put a FIXME comment in when this should be removable again.

v2: Fix mock_context(), noticed by intel-gfx-ci.

Acked-by: Acked-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: "Thomas Hellström" <thomas.hellstrom@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: Dave Airlie <airlied@redhat.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c       | 13 +++++++++++--
 drivers/gpu/drm/i915/gem/i915_gem_context_types.h | 12 ++++++++++++
 drivers/gpu/drm/i915/gem/selftests/mock_context.c |  1 +
 3 files changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index fd169cf2f75a..051bc357ff65 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -986,9 +986,10 @@ static struct i915_gem_engines *user_engines(struct i915_gem_context *ctx,
 	return err;
 }
 
-void i915_gem_context_release(struct kref *ref)
+static void i915_gem_context_release_work(struct work_struct *work)
 {
-	struct i915_gem_context *ctx = container_of(ref, typeof(*ctx), ref);
+	struct i915_gem_context *ctx = container_of(work, typeof(*ctx),
+						    release_work);
 
 	trace_i915_context_free(ctx);
 	GEM_BUG_ON(!i915_gem_context_is_closed(ctx));
@@ -1002,6 +1003,13 @@ void i915_gem_context_release(struct kref *ref)
 	kfree_rcu(ctx, rcu);
 }
 
+void i915_gem_context_release(struct kref *ref)
+{
+	struct i915_gem_context *ctx = container_of(ref, typeof(*ctx), ref);
+
+	queue_work(ctx->i915->wq, &ctx->release_work);
+}
+
 static inline struct i915_gem_engines *
 __context_engines_static(const struct i915_gem_context *ctx)
 {
@@ -1303,6 +1311,7 @@ i915_gem_create_context(struct drm_i915_private *i915,
 	ctx->sched = pc->sched;
 	mutex_init(&ctx->mutex);
 	INIT_LIST_HEAD(&ctx->link);
+	INIT_WORK(&ctx->release_work, i915_gem_context_release_work);
 
 	spin_lock_init(&ctx->stale.lock);
 	INIT_LIST_HEAD(&ctx->stale.engines);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 94c03a97cb77..0c38789bd4a8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -288,6 +288,18 @@ struct i915_gem_context {
 	 */
 	struct kref ref;
 
+	/**
+	 * @release_work:
+	 *
+	 * Work item for deferred cleanup, since i915_gem_context_put() tends to
+	 * be called from hardirq context.
+	 *
+	 * FIXME: The only real reason for this is &i915_gem_engines.fence, all
+	 * other callers are from process context and need at most some mild
+	 * shuffling to pull the i915_gem_context_put() call out of a spinlock.
+	 */
+	struct work_struct release_work;
+
 	/**
 	 * @rcu: rcu_head for deferred freeing.
 	 */
diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
index fee070df1c97..067d68a6fe4c 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
@@ -23,6 +23,7 @@ mock_context(struct drm_i915_private *i915,
 	kref_init(&ctx->ref);
 	INIT_LIST_HEAD(&ctx->link);
 	ctx->i915 = i915;
+	INIT_WORK(&ctx->release_work, i915_gem_context_release_work);
 
 	mutex_init(&ctx->mutex);
 
-- 
2.33.0

