Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1DC1CD3FC
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 10:32:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 025DB89CC9;
	Mon, 11 May 2020 08:32:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B673A89CB5;
 Mon, 11 May 2020 08:32:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AFF18A47E0;
 Mon, 11 May 2020 08:32:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 11 May 2020 08:32:35 -0000
Message-ID: <158918595568.13116.10118537693942261039@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200511075722.13483-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200511075722.13483-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/20=5D_drm/i915/gt=3A_Mark_up_the_racy_r?=
 =?utf-8?q?ead_of_execlists-=3Econtext=5Ftag?=
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

Series: series starting with [01/20] drm/i915/gt: Mark up the racy read of execlists->context_tag
URL   : https://patchwork.freedesktop.org/series/77141/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8461 -> Patchwork_17620
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17620 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17620, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17620/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17620:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-kbl-r:           NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17620/fi-kbl-r/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8461 and Patchwork_17620:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 35 pass(s)
    - Exec time: [0.03, 0.10] s

  

Known issues
------------

  Here are the changes found in Patchwork_17620 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_mocs:
    - fi-bwr-2160:        [PASS][2] -> [INCOMPLETE][3] ([i915#489])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-bwr-2160/igt@i915_selftest@live@gt_mocs.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17620/fi-bwr-2160/igt@i915_selftest@live@gt_mocs.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-y:           [INCOMPLETE][4] ([i915#1580]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-icl-y/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17620/fi-icl-y/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580
  [i915#1803]: https://gitlab.freedesktop.org/drm/intel/issues/1803
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (48 -> 42)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-bxt-dsi fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8461 -> Patchwork_17620

  CI-20190529: 20190529
  CI_DRM_8461: c0be14b9502e54c9ece4f4fc25872d665c6a6553 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5644: 16f067ae42a6a93b8f0c5835210e2575a883001b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17620: a36f76dba344c34b8d5ab7b56fad43781ad8bd83 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a36f76dba344 drm/i915/selftests: Always flush before unpining after writing
2d0a0242f895 drm/i915: Emit await(batch) before MI_BB_START
da8da4f7bf46 drm/i915/selftests: Always call the provided engine->emit_init_breadcrumb
a6e1762c5b41 drm/i915: Drop I915_IDLE_ENGINES_TIMEOUT
1c257f5105ba drm/i915: Drop I915_RESET_TIMEOUT and friends
8fd6b02f35ea drm/i915/gt: Use built-in active intel_context reference
b408f2a0bcf3 drm/i915: Remove the saturation backoff for HW semaphores
30e4aad7f08c drm/i915: Move saturated workload detection back to the context
b3548165607b drm/i915: Drop no-semaphore boosting
9edbc891b919 drm/i915/gem: Remove redundant exec_fence
456efa24718d drm/i915/gt: Declare when we enabled timeslicing
554edd421135 drm/i915/gem: Allow combining submit-fences with syncobj
2d38f7b8348e drm/i915/gem: Teach execbuf how to wait on future syncobj
f5ce843a1d9e drm/syncobj: Allow use of dma-fence-proxy
b28a6fb10640 dma-buf: Proxy fence, an unsignaled fence placeholder
aae3a8087d19 drm/i915: Tidy awaiting on dma-fences
344cdfd1b12f drm/i915: Mark the addition of the initial-breadcrumb in the request
00b75eb28274 dma-buf: Use atomic_fetch_add() for the context id
bf3abad22116 drm/i915/gt: Couple up old virtual breadcrumb on new sibling
e9cce902ea86 drm/i915/gt: Mark up the racy read of execlists->context_tag

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17620/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
