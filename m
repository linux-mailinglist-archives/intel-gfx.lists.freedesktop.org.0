Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB552E1B9C
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Dec 2020 12:12:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D43C96E939;
	Wed, 23 Dec 2020 11:12:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D3BA6E088
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Dec 2020 11:11:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23412221-1500050 
 for multiple; Wed, 23 Dec 2020 11:11:34 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Dec 2020 11:11:04 +0000
Message-Id: <20201223111126.3338-40-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201223111126.3338-1-chris@chris-wilson.co.uk>
References: <20201223111126.3338-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 40/62] drm/i915: Wrap cmpxchg64 with
 try_cmpxchg64() helper
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

Wrap cmpxchg64 with a try_cmpxchg()-esque helper. Hiding the old-value
dance in the helper allows for cleaner code.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_utils.h | 32 +++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index 54773371e6bd..f8addd6d5afa 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -456,4 +456,36 @@ static inline bool timer_expired(const struct timer_list *t)
  */
 #define IS_ACTIVE(config) ((config) != 0)
 
+#ifndef try_cmpxchg64
+#if IS_ENABLED(CONFIG_64BIT)
+#define try_cmpxchg64(_ptr, _pold, _new) try_cmpxchg(_ptr, _pold, _new)
+#else
+#define try_cmpxchg64(_ptr, _pold, _new)				\
+({									\
+	__typeof__(_ptr) _old = (__typeof__(_ptr))(_pold);		\
+	__typeof__(*(_ptr)) __old = *_old;				\
+	__typeof__(*(_ptr)) __cur = cmpxchg64(_ptr, __old, _new);	\
+	bool success = __cur == __old;					\
+	if (unlikely(!success))						\
+		*_old = __cur;						\
+	likely(success);						\
+})
+#endif
+#endif
+
+#ifndef xchg64
+#if IS_ENABLED(CONFIG_64BIT)
+#define xchg64(_ptr, _new) xchg(_ptr, _new)
+#else
+#define xchg64(_ptr, _new)						\
+({									\
+	__typeof__(_ptr) __ptr = (_ptr);				\
+	__typeof__(*(_ptr)) __old = *__ptr;				\
+	while (!try_cmpxchg64(__ptr, &__old, (_new)))			\
+		;							\
+	__old;								\
+})
+#endif
+#endif
+
 #endif /* !__I915_UTILS_H */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
