Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9BF4227C7
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Oct 2021 15:27:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0D6C6E3EF;
	Tue,  5 Oct 2021 13:27:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 52B466E3EF;
 Tue,  5 Oct 2021 13:27:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4F847A66C8;
 Tue,  5 Oct 2021 13:27:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 05 Oct 2021 13:27:54 -0000
Message-ID: <163344047432.19282.14102221060196877851@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211005113742.1101-1-christian.koenig@amd.com>
In-Reply-To: <20211005113742.1101-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/28=5D_dma-buf=3A_add_dma=5Fresv?=
 =?utf-8?q?=5Ffor=5Feach=5Ffence=5Funlocked_v8?=
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

Series: series starting with [01/28] dma-buf: add dma_resv_for_each_fence_unlocked v8
URL   : https://patchwork.freedesktop.org/series/95456/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4d20a8353f25 dma-buf: add dma_resv_for_each_fence_unlocked v8
-:23: WARNING:TYPO_SPELLING: 'superflous' may be misspelled - perhaps 'superfluous'?
#23: 
v4: fix NULL deref when no explicit fence exists, drop superflous
                                                       ^^^^^^^^^^

-:247: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'cursor' - possible side-effects?
#247: FILE: include/linux/dma-resv.h:243:
+#define dma_resv_for_each_fence_unlocked(cursor, fence)			\
+	for (fence = dma_resv_iter_first_unlocked(cursor);		\
+	     fence; fence = dma_resv_iter_next_unlocked(cursor))

-:247: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fence' - possible side-effects?
#247: FILE: include/linux/dma-resv.h:243:
+#define dma_resv_for_each_fence_unlocked(cursor, fence)			\
+	for (fence = dma_resv_iter_first_unlocked(cursor);		\
+	     fence; fence = dma_resv_iter_next_unlocked(cursor))

-:253: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 2 warnings, 2 checks, 207 lines checked
730f3d21c81f dma-buf: add dma_resv_for_each_fence v2
-:105: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'cursor' - possible side-effects?
#105: FILE: include/linux/dma-resv.h:261:
+#define dma_resv_for_each_fence(cursor, obj, all_fences, fence)	\
+	for (dma_resv_iter_begin(cursor, obj, all_fences),	\
+	     fence = dma_resv_iter_first(cursor); fence;	\
+	     fence = dma_resv_iter_next(cursor))

-:105: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fence' - possible side-effects?
#105: FILE: include/linux/dma-resv.h:261:
+#define dma_resv_for_each_fence(cursor, obj, all_fences, fence)	\
+	for (dma_resv_iter_begin(cursor, obj, all_fences),	\
+	     fence = dma_resv_iter_first(cursor); fence;	\
+	     fence = dma_resv_iter_next(cursor))

-:112: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 2 checks, 86 lines checked
013a9ec61fe0 dma-buf: add dma_resv selftest v3
-:40: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#40: 
new file mode 100644

-:45: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/dma-buf/st-dma-resv.c', please use '//' instead
#45: FILE: drivers/dma-buf/st-dma-resv.c:1:
+/* SPDX-License-Identifier: MIT */

-:45: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#45: FILE: drivers/dma-buf/st-dma-resv.c:1:
+/* SPDX-License-Identifier: MIT */

-:48: WARNING:BLOCK_COMMENT_STYLE: Block comments should align the * on each line
#48: FILE: drivers/dma-buf/st-dma-resv.c:4:
+/*
+* Copyright © 2019 Intel Corporation

-:235: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#235: FILE: drivers/dma-buf/st-dma-resv.c:191:
+static int test_for_each_unlocked(void *arg, bool shared)
+{

-:302: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#302: FILE: drivers/dma-buf/st-dma-resv.c:258:
+static int test_excl_for_each_unlocked(void *arg)
+{

-:307: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#307: FILE: drivers/dma-buf/st-dma-resv.c:263:
+static int test_shared_for_each_unlocked(void *arg)
+{

-:326: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 3 errors, 5 warnings, 0 checks, 294 lines checked
ccd90c562c2f dma-buf: use new iterator in dma_resv_copy_fences
-:125: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 106 lines checked
a6d5759c5743 dma-buf: use new iterator in dma_resv_get_fences v3
-:156: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 134 lines checked
a7df5e34b826 dma-buf: use new iterator in dma_resv_wait_timeout
-:101: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 82 lines checked
18fd3c76ebf0 dma-buf: use new iterator in dma_resv_test_signaled
-:92: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 72 lines checked
125cf4c8aa72 dma-buf: use the new iterator in dma_buf_debug_show
-:56: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 37 lines checked
5fe5c13fc49a dma-buf: use the new iterator in dma_resv_poll
-:85: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 64 lines checked
47df85486fff drm/ttm: use the new iterator in ttm_bo_flush_all_fences
-:46: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 27 lines checked
77ab4e7a68a8 drm/amdgpu: use the new iterator in amdgpu_sync_resv
-:72: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 55 lines checked
e62ee53e573a drm/amdgpu: use new iterator in amdgpu_ttm_bo_eviction_valuable
-:47: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 28 lines checked
941b6bfabfcd drm/amdgpu: use new iterator in amdgpu_vm_prt_fini
-:52: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 35 lines checked
bf5b593d49d1 drm/msm: use new iterator in msm_gem_describe
-:55: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 34 lines checked
891229388829 drm/radeon: use new iterator in radeon_sync_resv
-:53: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
1a4214d132dc drm/scheduler: use new iterator in drm_sched_job_add_implicit_dependencies v2
-:57: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
59a42552b141 drm/i915: use the new iterator in i915_gem_busy_ioctl v2
-:69: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 49 lines checked
dcccc307bd08 drm/i915: use the new iterator in i915_sw_fence_await_reservation v3
-:89: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 67 lines checked
b906c585aa10 drm/i915: use the new iterator in i915_request_await_object v2
-:65: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 43 lines checked
16a4cfb0898d drm/i915: use new iterator in i915_gem_object_wait_reservation
-:82: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 64 lines checked
0f74a7aa113f drm/i915: use new iterator in i915_gem_object_wait_priority
-:55: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 38 lines checked
bef9eb83bd54 drm/i915: use new cursor in intel_prepare_plane_fb
-:40: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
a65beb7b512d drm: use new iterator in drm_gem_fence_array_add_implicit v3
-:57: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
b02819040fe2 drm: use new iterator in drm_gem_plane_helper_prepare_fb v2
-:38: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#38: FILE: drivers/gpu/drm/drm_gem_atomic_helper.c:158:
+		 * one. */

-:47: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 2 warnings, 0 checks, 26 lines checked
787d9b5f6a89 drm/nouveau: use the new iterator in nouveau_fence_sync
-:96: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 77 lines checked
b627817591ce drm/nouveau: use the new interator in nv50_wndw_prepare_fb
-:41: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
3787760057aa drm/etnaviv: use new iterator in etnaviv_gem_describe
-:69: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 51 lines checked
1a64491cae77 drm/etnaviv: replace dma_resv_get_excl_unlocked
-:25: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 8 lines checked


