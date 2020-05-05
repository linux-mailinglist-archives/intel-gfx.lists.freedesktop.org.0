Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6194A1C64A6
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 01:55:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4820B6E252;
	Tue,  5 May 2020 23:55:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 338066E0E3;
 Tue,  5 May 2020 23:55:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2264CA47DB;
 Tue,  5 May 2020 23:55:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 05 May 2020 23:55:22 -0000
Message-ID: <158872292210.25911.1210321460694870576@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200505215214.9690-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200505215214.9690-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/14=5D_drm/i915=3A_Mark_concurrent_submi?=
 =?utf-8?q?ssions_with_a_weak-dependency?=
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

Series: series starting with [01/14] drm/i915: Mark concurrent submissions with a weak-dependency
URL   : https://patchwork.freedesktop.org/series/76973/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8433 -> Patchwork_17586
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/index.html

New tests
---------

  New tests have been introduced between CI_DRM_8433 and Patchwork_17586:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 40 pass(s)
    - Exec time: [0.03, 0.10] s

  

Known issues
------------

  Here are the changes found in Patchwork_17586 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [SKIP][1] ([fdo#109271]) -> [FAIL][2] ([i915#62])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Participating hosts (51 -> 44)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8433 -> Patchwork_17586

  CI-20190529: 20190529
  CI_DRM_8433: db68fed086f2ddcdc30e0d9ca5faaba5e55d0d01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5633: c8c2e5ed5cd8e4b7a69a903f3f1653612086abcc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17586: 9ac5d5912623123a8c73ccb3c80385c0348b4897 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9ac5d5912623 drm/i915: Drop I915_IDLE_ENGINES_TIMEOUT
161372b2eff2 drm/i915: Drop I915_RESET_TIMEOUT and friends
e779556e8752 drm/i915: Replace the hardcoded I915_FENCE_TIMEOUT
a88bbc5651d9 drm/i915/gt: Declare when we enabled timeslicing
e2f962c64a8e drm/i915/gem: Allow combining submit-fences with syncobj
0654a7646abf drm/i915/gem: Teach execbuf how to wait on future syncobj
52b85f061e0e drm/syncobj: Allow use of dma-fence-proxy
53a2de478fd1 dma-buf: Proxy fence, an unsignaled fence placeholder
827865132bb2 drm/i915: Tidy awaiting on dma-fences
b147f27369cc drm/i915: Prevent using semaphores to chain up to external fences
d2d277b8470c drm/i915: Pull waiting on an external dma-fence into its routine
c098263cd3f9 drm/i915: Ignore submit-fences on the same timeline
46cafc823859 drm/i915: Propagate error from completed fences
c4828948d40e drm/i915: Mark concurrent submissions with a weak-dependency

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
