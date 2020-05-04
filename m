Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0AD1C3C5F
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 16:07:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90DC36E416;
	Mon,  4 May 2020 14:07:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 92EBA6E40F;
 Mon,  4 May 2020 14:07:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 82F1BA00CC;
 Mon,  4 May 2020 14:07:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 04 May 2020 14:07:32 -0000
Message-ID: <158860125253.5818.10204582485123849324@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200504044903.7626-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200504044903.7626-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/22=5D_drm/i915=3A_Allow_some_leniency_i?=
 =?utf-8?q?n_PCU_reads_=28rev2=29?=
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

Series: series starting with [01/22] drm/i915: Allow some leniency in PCU reads (rev2)
URL   : https://patchwork.freedesktop.org/series/76885/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8418 -> Patchwork_17568
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17568/index.html

New tests
---------

  New tests have been introduced between CI_DRM_8418 and Patchwork_17568:

### New IGT tests (2) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 41 pass(s)
    - Exec time: [0.03, 0.10] s

  * igt@i915_selftest@live@gem_execbuf:
    - Statuses : 41 pass(s)
    - Exec time: [0.42, 2.55] s

  

Known issues
------------

  Here are the changes found in Patchwork_17568 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - fi-bwr-2160:        [INCOMPLETE][1] ([i915#489]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8418/fi-bwr-2160/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17568/fi-bwr-2160/igt@i915_selftest@live@gt_pm.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [SKIP][3] ([fdo#109271]) -> [FAIL][4] ([i915#62])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8418/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17568/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Participating hosts (51 -> 44)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8418 -> Patchwork_17568

  CI-20190529: 20190529
  CI_DRM_8418: bdfc2bf07b3e68612db8955fc3df80ad5b6c9a8d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5628: 652a3fd8966345fa5498904ce80a2027a6782783 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17568: 521d3542c857f910bfff1940ced5f65412023df2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

521d3542c857 drm/i915/gem: Bind the fence async for execbuf
85b00e9cfc8b drm/i915/gem: Asynchronous GTT unbinding
be6fb364f8d6 drm/i915/gem: Separate the ww_mutex walker into its own list
ed2c711193c2 drm/i915: Export a preallocate variant of i915_active_acquire()
a22d55e2deae drm/i915/gem: Assign context id for async work
4326f797fff7 drm/i915: Always defer fenced work to the worker
f09d9b73e50d drm/i915: Drop I915_IDLE_ENGINES_TIMEOUT
961120507200 drm/i915: Drop I915_RESET_TIMEOUT and friends
d53f22cfe300 drm/i915: Replace the hardcoded I915_FENCE_TIMEOUT
790bb35fea74 drm/i915/gt: Declare when we enabled timeslicing
33eac422e35d drm/i915/gem: Allow combining submit-fences with syncobj
b0aa4798a0df drm/i915/gem: Teach execbuf how to wait on future syncobj
490d576eff67 drm/syncobj: Allow use of dma-fence-proxy
3874422ce21d dma-buf: Proxy fence, an unsignaled fence placeholder
2c95e99a6959 drm/i915/gt: Stop holding onto the pinned_default_state
de29266bc3fa drm/i915/selftests: Repeat the rps clock frequency measurement
16d136335185 drm/i915: Mark concurrent submissions with a weak-dependency
b97355c82125 drm/i915/gt: Small tidy of gen8+ breadcrumb emission
e515da211062 drm/i915/gem: Implement legacy MI_STORE_DATA_IMM
3420e18d19f1 drm/i915/gem: Specify address type for chained reloc batches

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17568/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
