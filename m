Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 009B73EDC30
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 19:15:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46D8F89C54;
	Mon, 16 Aug 2021 17:15:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A15EB89C1F;
 Mon, 16 Aug 2021 17:15:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="212783391"
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="212783391"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 10:14:58 -0700
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="448686654"
Received: from yifeiren-mobl.ccr.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.101])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 10:14:56 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.william.auld@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Date: Mon, 16 Aug 2021 19:14:44 +0200
Message-Id: <20210816171444.105469-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: Ditch the i915_gem_ww_ctx loop
 member
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

It's only used by the for_i915_gem_ww() macro and we can use
the (typically) on-stack _err variable in its place.

v2:
- Don't clear the _err variable when entering the loop
  (Matthew Auld, Maarten Lankhorst).
- Use parentheses around the _err macro argument.
- Fix up comment.

Cc: Matthew Auld <matthew.william.auld@gmail.com>
Suggested-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_gem_ww.h | 25 ++++++++-----------------
 1 file changed, 8 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem_ww.h b/drivers/gpu/drm/i915/i915_gem_ww.h
index f6b1a796667b..86f0fe343de6 100644
--- a/drivers/gpu/drm/i915/i915_gem_ww.h
+++ b/drivers/gpu/drm/i915/i915_gem_ww.h
@@ -11,8 +11,7 @@ struct i915_gem_ww_ctx {
 	struct ww_acquire_ctx ctx;
 	struct list_head obj_list;
 	struct drm_i915_gem_object *contended;
-	unsigned short intr;
-	unsigned short loop;
+	bool intr;
 };
 
 void i915_gem_ww_ctx_init(struct i915_gem_ww_ctx *ctx, bool intr);
@@ -20,31 +19,23 @@ void i915_gem_ww_ctx_fini(struct i915_gem_ww_ctx *ctx);
 int __must_check i915_gem_ww_ctx_backoff(struct i915_gem_ww_ctx *ctx);
 void i915_gem_ww_unlock_single(struct drm_i915_gem_object *obj);
 
-/* Internal functions used by the inlines! Don't use. */
+/* Internal function used by the inlines! Don't use. */
 static inline int __i915_gem_ww_fini(struct i915_gem_ww_ctx *ww, int err)
 {
-	ww->loop = 0;
 	if (err == -EDEADLK) {
 		err = i915_gem_ww_ctx_backoff(ww);
 		if (!err)
-			ww->loop = 1;
+			err = -EDEADLK;
 	}
 
-	if (!ww->loop)
+	if (err != -EDEADLK)
 		i915_gem_ww_ctx_fini(ww);
 
 	return err;
 }
 
-static inline void
-__i915_gem_ww_init(struct i915_gem_ww_ctx *ww, bool intr)
-{
-	i915_gem_ww_ctx_init(ww, intr);
-	ww->loop = 1;
-}
-
-#define for_i915_gem_ww(_ww, _err, _intr)			\
-	for (__i915_gem_ww_init(_ww, _intr); (_ww)->loop;	\
-	     _err = __i915_gem_ww_fini(_ww, _err))
-
+#define for_i915_gem_ww(_ww, _err, _intr)			  \
+	for (i915_gem_ww_ctx_init(_ww, _intr), (_err) = -EDEADLK; \
+	     (_err) == -EDEADLK;				  \
+	     (_err) = __i915_gem_ww_fini(_ww, _err))
 #endif
-- 
2.31.1

