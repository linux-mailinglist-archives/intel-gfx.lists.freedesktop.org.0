Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 989D91D0AD2
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 10:29:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E4F66E9BD;
	Wed, 13 May 2020 08:28:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F137A6E9B9;
 Wed, 13 May 2020 08:28:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EABD6A008A;
 Wed, 13 May 2020 08:28:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 13 May 2020 08:28:54 -0000
Message-ID: <158935853495.25405.8453284149459349991@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200513074809.18194-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200513074809.18194-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/24=5D_drm/i915/gt=3A_Transfer_old_virtu?=
 =?utf-8?q?al_breadcrumbs_to_irq=5Fworker?=
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

Series: series starting with [01/24] drm/i915/gt: Transfer old virtual breadcrumbs to irq_worker
URL   : https://patchwork.freedesktop.org/series/77206/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8471 -> Patchwork_17639
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17639 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17639, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17639/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17639:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_pm:
    - fi-whl-u:           [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8471/fi-whl-u/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17639/fi-whl-u/igt@i915_selftest@live@gt_pm.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8471 and Patchwork_17639:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 36 pass(s)
    - Exec time: [0.03, 0.10] s

  

Known issues
------------

  Here are the changes found in Patchwork_17639 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@objects:
    - fi-bwr-2160:        [INCOMPLETE][3] ([i915#489]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8471/fi-bwr-2160/igt@i915_selftest@live@objects.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17639/fi-bwr-2160/igt@i915_selftest@live@objects.html

  
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (49 -> 41)
------------------------------

  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-8700k fi-tgl-y fi-byt-clapper fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8471 -> Patchwork_17639

  CI-20190529: 20190529
  CI_DRM_8471: 3c84a88ed50e99b200fac400a9b817a23d399c01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5651: e54e2642f1967ca3c488db32264607df670d1dfb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17639: 4842e8ffd4a030a44be3d2d0603eac8ffdffcfeb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4842e8ffd4a0 drm/i915: Show per-engine default property values in sysfs
e56800e94599 drm/i915/gem: Bind the fence async for execbuf
f36911bb9551 drm/i915/gem: Asynchronous GTT unbinding
dbb8c079fa73 drm/i915/gem: Separate the ww_mutex walker into its own list
536b4afc6bcd drm/i915: Export a preallocate variant of i915_active_acquire()
ec1ec75471f6 drm/i915/gem: Assign context id for async work
c229c3651ca1 drm/i915: Always defer fenced work to the worker
5ab78e0c654c drm/i915/gt: Do not suspend bonded requests if one hangs
6cd3a2e3228f drm/i915/selftests: Always call the provided engine->emit_init_breadcrumb
a6ea09974ca5 drm/i915: Drop I915_IDLE_ENGINES_TIMEOUT
67e7f9c1fd1b drm/i915: Drop I915_RESET_TIMEOUT and friends
6bf996a3601d drm/i915/gt: Use built-in active intel_context reference
eccb2abc67b2 drm/i915: Remove the saturation backoff for HW semaphores
49a593e6bf87 drm/i915: Move saturated workload detection back to the context
bf2ca3e56570 drm/i915: Drop no-semaphore boosting
266499ff1b75 drm/i915/gem: Remove redundant exec_fence
897758a943d2 drm/i915/gt: Declare when we enabled timeslicing
fc77d982c314 drm/i915/gem: Allow combining submit-fences with syncobj
773537ae484b drm/i915/gem: Teach execbuf how to wait on future syncobj
82be0c56504c drm/syncobj: Allow use of dma-fence-proxy
a94b5ee24e05 dma-buf: Proxy fence, an unsignaled fence placeholder
a15a684cc4c9 drm/i915: Mark the addition of the initial-breadcrumb in the request
d6f1021a3dcb dma-buf: Use atomic_fetch_add() for the context id
cef179c6c753 drm/i915/gt: Transfer old virtual breadcrumbs to irq_worker

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17639/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
