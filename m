Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 447561C2BFA
	for <lists+intel-gfx@lfdr.de>; Sun,  3 May 2020 14:02:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96D626E1A8;
	Sun,  3 May 2020 12:02:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 447606E184;
 Sun,  3 May 2020 12:02:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3DAF4A0BC6;
 Sun,  3 May 2020 12:02:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 03 May 2020 12:02:44 -0000
Message-ID: <158850736422.21035.17959534937107862933@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200503112132.17899-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200503112132.17899-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/14=5D_drm/i915/gem=3A_Specify_address_t?=
 =?utf-8?q?ype_for_chained_reloc_batches_=28rev2=29?=
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

Series: series starting with [01/14] drm/i915/gem: Specify address type for chained reloc batches (rev2)
URL   : https://patchwork.freedesktop.org/series/76876/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8414 -> Patchwork_17556
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17556/index.html

New tests
---------

  New tests have been introduced between CI_DRM_8414 and Patchwork_17556:

### New IGT tests (2) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 38 pass(s)
    - Exec time: [0.03, 0.09] s

  * igt@i915_selftest@live@gem_execbuf:
    - Statuses : 38 pass(s)
    - Exec time: [0.45, 2.74] s

  

Known issues
------------

  Here are the changes found in Patchwork_17556 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][1] ([i915#62] / [i915#95]) -> [SKIP][2] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8414/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17556/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (48 -> 41)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8414 -> Patchwork_17556

  CI-20190529: 20190529
  CI_DRM_8414: a6f6a61a3cd126f52d1a80c463f4bb3d3dcc1813 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5626: f27fdfff026276ac75c69e487c929a843f66f6ca @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17556: 19be72a69bc5d8b0038d39120cd9bc1a78f97891 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

19be72a69bc5 drm/i915: Drop I915_IDLE_ENGINES_TIMEOUT
d5ad7de1df33 drm/i915: Drop I915_RESET_TIMEOUT and friends
695d8fbf606b drm/i915: Replace the hardcoded I915_FENCE_TIMEOUT
b609443074e3 drm/i915/gt: Declare when we enabled timeslicing
bcb046982800 drm/i915/gem: Allow combining submit-fences with syncobj
4cd92f858258 drm/i915/gem: Teach execbuf how to wait on future syncobj
9d9cd56fe002 drm/syncobj: Allow use of dma-fence-proxy
9bc7d44c8f02 dma-buf: Proxy fence, an unsignaled fence placeholder
c1b14a4db98f drm/i915/gt: Stop holding onto the pinned_default_state
f4534f62acc6 drm/i915/selftests: Repeat the rps clock frequency measurement
c2e4e6b8593f drm/i915: Mark concurrent submissions with a weak-dependency
cc6b97ec7ae6 drm/i915/gt: Small tidy of gen8+ breadcrumb emission
8feebfd436da drm/i915/gem: Implement legacy MI_STORE_DATA_IMM
02c8f810d643 drm/i915/gem: Specify address type for chained reloc batches

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17556/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
