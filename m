Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35471392157
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 22:19:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 204FA6E846;
	Wed, 26 May 2021 20:19:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AA77C6E844;
 Wed, 26 May 2021 20:19:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A1B16A47DF;
 Wed, 26 May 2021 20:19:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 26 May 2021 20:19:23 -0000
Message-ID: <162206036363.13407.8460209250166664499@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210526141456.2334192-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210526141456.2334192-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Catchup_with_a_few_dropped_patches_=28rev2=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Catchup with a few dropped patches (rev2)
URL   : https://patchwork.freedesktop.org/series/90611/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
06eaaa77f454 drm/i915: Take rcu_read_lock for querying fence's driver/timeline names
699c8e356b0c drm/i915: Remove notion of GEM from i915_gem_shrinker_taints_mutex
794fd65790d7 drm/i915: Lift marking a lock as used to utils
0381b2ec34da drm/i915: Wrap cmpxchg64 with try_cmpxchg64() helper
-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_ptr' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/i915_utils.h:482:
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

-:42: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_ptr' - possible side-effects?
#42: FILE: drivers/gpu/drm/i915/i915_utils.h:499:
+#define xchg64(_ptr, _new)						\
+({									\
+	__typeof__(_ptr) __ptr = (_ptr);				\
+	__typeof__(*(_ptr)) __old = *__ptr;				\
+	while (!try_cmpxchg64(__ptr, &__old, (_new)))			\
+		;							\
+	__old;								\
+})

total: 0 errors, 0 warnings, 2 checks, 36 lines checked
4c11f7a7ba2a drm/i915/selftests: Set cache status for huge_gem_object
78904915722c drm/i915/selftests: Use a coherent map to setup scratch batch buffers
4b1c2e4e65db drm/i915/selftests: Replace the unbounded set-domain with an explicit wait
b572875c1081 drm/i915/selftests: Remove redundant set-to-gtt-domain
9ac234560778 drm/i915/selftests: Replace unbound set-domain waits with explicit timeouts
cd286f3a5c04 drm/i915/selftests: Replace an unbounded set-domain wait with a timeout
bbfac81d2ec6 drm/i915/selftests: Remove redundant set-to-gtt-domain before batch submission
a26743a5500b drm/i915/gem: Manage all set-domain waits explicitly


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
