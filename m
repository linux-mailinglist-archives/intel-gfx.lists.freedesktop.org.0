Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA0E4093D3
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 16:25:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B73B96E1A7;
	Mon, 13 Sep 2021 14:25:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 50C3D6E1A7;
 Mon, 13 Sep 2021 14:25:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 49EDAA77A5;
 Mon, 13 Sep 2021 14:25:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Sep 2021 14:25:47 -0000
Message-ID: <163154314726.12461.8204071263553088061@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210913131707.45639-1-christian.koenig@amd.com>
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/26=5D_dma-buf=3A_add_dma=5Fresv?=
 =?utf-8?q?=5Ffor=5Feach=5Ffence=5Funlocked?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [01/26] dma-buf: add dma_resv_for_each_fence_unlocked
URL   : https://patchwork.freedesktop.org/series/94605/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a5a4809c51c3 dma-buf: add dma_resv_for_each_fence_unlocked
-:69: CHECK:OPEN_ENDED_LINE: Lines should not end with a '['
#69: FILE: drivers/dma-buf/dma-resv.c:369:
+				fence = rcu_dereference(fences->shared[

-:128: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'obj' - possible side-effects?
#128: FILE: include/linux/dma-resv.h:180:
+#define dma_resv_for_each_fence_unlocked(obj, cursor, all_fences, fence)    \
+	for (fence = dma_resv_walk_unlocked(obj, cursor, all_fences, true); \
+	     fence; dma_fence_put(fence),				    \
+	     fence = dma_resv_walk_unlocked(obj, cursor, all_fences, false))

-:128: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'cursor' - possible side-effects?
#128: FILE: include/linux/dma-resv.h:180:
+#define dma_resv_for_each_fence_unlocked(obj, cursor, all_fences, fence)    \
+	for (fence = dma_resv_walk_unlocked(obj, cursor, all_fences, true); \
+	     fence; dma_fence_put(fence),				    \
+	     fence = dma_resv_walk_unlocked(obj, cursor, all_fences, false))

-:128: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'all_fences' - possible side-effects?
#128: FILE: include/linux/dma-resv.h:180:
+#define dma_resv_for_each_fence_unlocked(obj, cursor, all_fences, fence)    \
+	for (fence = dma_resv_walk_unlocked(obj, cursor, all_fences, true); \
+	     fence; dma_fence_put(fence),				    \
+	     fence = dma_resv_walk_unlocked(obj, cursor, all_fences, false))

-:128: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fence' - possible side-effects?
#128: FILE: include/linux/dma-resv.h:180:
+#define dma_resv_for_each_fence_unlocked(obj, cursor, all_fences, fence)    \
+	for (fence = dma_resv_walk_unlocked(obj, cursor, all_fences, true); \
+	     fence; dma_fence_put(fence),				    \
+	     fence = dma_resv_walk_unlocked(obj, cursor, all_fences, false))

-:145: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 5 checks, 117 lines checked
d86af6324ecd dma-buf: add dma_resv_for_each_fence
-:82: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'obj' - possible side-effects?
#82: FILE: include/linux/dma-resv.h:179:
+#define dma_resv_for_each_fence(obj, cursor, all_fences, fence)		  \
+	for (fence = dma_resv_walk(obj, cursor, all_fences, true); fence; \
+	     fence = dma_resv_walk(obj, cursor, all_fences, false))

-:82: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'cursor' - possible side-effects?
#82: FILE: include/linux/dma-resv.h:179:
+#define dma_resv_for_each_fence(obj, cursor, all_fences, fence)		  \
+	for (fence = dma_resv_walk(obj, cursor, all_fences, true); fence; \
+	     fence = dma_resv_walk(obj, cursor, all_fences, false))

-:82: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'all_fences' - possible side-effects?
#82: FILE: include/linux/dma-resv.h:179:
+#define dma_resv_for_each_fence(obj, cursor, all_fences, fence)		  \
+	for (fence = dma_resv_walk(obj, cursor, all_fences, true); fence; \
+	     fence = dma_resv_walk(obj, cursor, all_fences, false))

-:82: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fence' - possible side-effects?
#82: FILE: include/linux/dma-resv.h:179:
+#define dma_resv_for_each_fence(obj, cursor, all_fences, fence)		  \
+	for (fence = dma_resv_walk(obj, cursor, all_fences, true); fence; \
+	     fence = dma_resv_walk(obj, cursor, all_fences, false))

-:98: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 4 checks, 74 lines checked
a09933d567e8 dma-buf: use new iterator in dma_resv_copy_fences
-:124: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 106 lines checked
52d4d01515dd dma-buf: use new iterator in dma_resv_get_fences v2
-:121: ERROR:POINTER_LOCATION: "(foo*)" should be "(foo *)"
#121: FILE: drivers/dma-buf/dma-resv.c:535:
+						 sizeof(void*),

-:156: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 1 errors, 1 warnings, 0 checks, 136 lines checked
9ac03efbd4df dma-buf: use new iterator in dma_resv_wait_timeout
-:99: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 81 lines checked
b3c5b34567df dma-buf: use new iterator in dma_resv_test_signaled
-:91: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 72 lines checked
73f737059793 drm/ttm: use the new iterator in ttm_bo_flush_all_fences
-:39: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 21 lines checked
dffe8854038d drm/amdgpu: use the new iterator in amdgpu_sync_resv
-:72: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 55 lines checked
bb6008db8ce0 drm/amdgpu: use new iterator in amdgpu_ttm_bo_eviction_valuable
-:47: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 28 lines checked
5d1ec21b3b8f drm/msm: use new iterator in msm_gem_describe
-:55: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 34 lines checked
b2a3b96527a5 drm/radeon: use new iterator in radeon_sync_resv
-:53: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
a88d8558e2ca drm/scheduler: use new iterator in drm_sched_job_add_implicit_dependencies
-:54: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
f952954785f3 drm/i915: use the new iterator in i915_gem_busy_ioctl
-:64: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 45 lines checked
542393a55f28 drm/i915: use the new iterator in i915_sw_fence_await_reservation
-:84: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 66 lines checked
ff87ab40927f drm/i915: use the new iterator in i915_request_await_object
-:62: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 45 lines checked
dc06dd9d1fa1 drm/i915: use new iterator in i915_gem_object_wait_reservation
-:82: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 64 lines checked
201bbdd7fcc7 drm/i915: use new iterator in i915_gem_object_wait_priority
-:53: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
800e9dbca06f drm/i915: use new iterator in i915_gem_object_last_write_engine
-:41: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 23 lines checked
b2a96f247826 drm/i915: use new cursor in intel_prepare_plane_fb
-:38: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 20 lines checked
9dafcbeff892 drm: use new iterator in drm_gem_fence_array_add_implicit
-:56: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 39 lines checked
36f4828e60a7 drm: use new iterator in drm_gem_plane_helper_prepare_fb
-:41: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
145e068ae31e drm/nouveau: use the new iterator in nouveau_fence_sync
-:96: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 77 lines checked
d8cbd50515cf drm/nouveau: use the new interator in nv50_wndw_prepare_fb
-:40: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 21 lines checked
22010ad4c08c drm/etnaviv: use new iterator in etnaviv_gem_describe
-:65: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 47 lines checked
2bb60c4ef61e drm/etnaviv: replace dma_resv_get_excl_unlocked
-:25: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
ca57e3cbd5d4 dma-buf: nuke dma_resv_get_excl_unlocked
-:49: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 32 lines checked


