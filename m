Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2331C3255
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 07:40:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9FCB6E2F9;
	Mon,  4 May 2020 05:40:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 285166E2E0;
 Mon,  4 May 2020 05:40:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 21936A00CC;
 Mon,  4 May 2020 05:40:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 04 May 2020 05:40:15 -0000
Message-ID: <158857081510.5817.17421344061033523693@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200504044903.7626-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200504044903.7626-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/22=5D_drm/i915=3A_Allow_some_leniency_i?=
 =?utf-8?q?n_PCU_reads?=
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

Series: series starting with [01/22] drm/i915: Allow some leniency in PCU reads
URL   : https://patchwork.freedesktop.org/series/76885/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8415 -> Patchwork_17561
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/index.html

New tests
---------

  New tests have been introduced between CI_DRM_8415 and Patchwork_17561:

### New IGT tests (2) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 38 pass(s)
    - Exec time: [0.03, 0.11] s

  * igt@i915_selftest@live@gem_execbuf:
    - Statuses : 38 pass(s)
    - Exec time: [0.43, 2.56] s

  

Known issues
------------

  Here are the changes found in Patchwork_17561 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-bsw-n3050:       [INCOMPLETE][1] ([i915#1436]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html

  
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436


Participating hosts (48 -> 41)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8415 -> Patchwork_17561

  CI-20190529: 20190529
  CI_DRM_8415: a20d5d8cc2cec9962cf4241fd8ac4b0c4bb4d9d8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5628: 652a3fd8966345fa5498904ce80a2027a6782783 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17561: bf21c39c1bef1cfa475a3a5703201b09b26cb6fd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bf21c39c1bef drm/i915/gem: Lazily acquire the device wakeref for freeing objects
26b068f07a60 drm/i915/gem: Bind the fence async for execbuf
9dbce260a387 drm/i915/gem: Asynchronous GTT unbinding
8dabb78a0e92 drm/i915/gem: Separate the ww_mutex walker into its own list
5cf43ac54f31 drm/i915: Export a preallocate variant of i915_active_acquire()
bb72c2db5d08 drm/i915/gem: Assign context id for async work
842a5ff2e31b drm/i915: Always defer fenced work to the worker
76ffecc4882c drm/i915: Drop I915_IDLE_ENGINES_TIMEOUT
34bb0a3af4a3 drm/i915: Drop I915_RESET_TIMEOUT and friends
5c1dd11745ec drm/i915: Replace the hardcoded I915_FENCE_TIMEOUT
484c921c7e0d drm/i915/gt: Declare when we enabled timeslicing
b2fe59f70453 drm/i915/gem: Allow combining submit-fences with syncobj
1cb8b54c722a drm/i915/gem: Teach execbuf how to wait on future syncobj
58c654c91450 drm/syncobj: Allow use of dma-fence-proxy
0a5f2d25af58 dma-buf: Proxy fence, an unsignaled fence placeholder
5afed03e63b4 drm/i915/gt: Stop holding onto the pinned_default_state
1f334a2377a6 drm/i915/selftests: Repeat the rps clock frequency measurement
695f6b96fd71 drm/i915: Mark concurrent submissions with a weak-dependency
b7c000f49351 drm/i915/gt: Small tidy of gen8+ breadcrumb emission
b176040f5352 drm/i915/gem: Implement legacy MI_STORE_DATA_IMM
90bde0818b4c drm/i915/gem: Specify address type for chained reloc batches
5d6d17a06111 drm/i915: Allow some leniency in PCU reads

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
