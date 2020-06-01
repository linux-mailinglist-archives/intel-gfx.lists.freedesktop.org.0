Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9471E9FA3
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 09:56:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E4576E1BC;
	Mon,  1 Jun 2020 07:56:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AAE8A6E1B9;
 Mon,  1 Jun 2020 07:56:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A4C74A66C7;
 Mon,  1 Jun 2020 07:56:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 01 Jun 2020 07:56:29 -0000
Message-ID: <159099818964.14891.14266739176950401576@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200601072446.19548-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200601072446.19548-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/36=5D_drm/i915=3A_Handle_very_early_eng?=
 =?utf-8?q?ine_initialisation_failure?=
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

Series: series starting with [01/36] drm/i915: Handle very early engine initialisation failure
URL   : https://patchwork.freedesktop.org/series/77857/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8560 -> Patchwork_17826
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17826 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17826, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17826/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17826:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_engines:
    - fi-cml-s:           [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/fi-cml-s/igt@i915_selftest@live@gt_engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17826/fi-cml-s/igt@i915_selftest@live@gt_engines.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8560 and Patchwork_17826:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 42 pass(s)
    - Exec time: [0.02, 0.11] s

  



Participating hosts (50 -> 44)
------------------------------

  Additional (1): fi-ehl-1 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8560 -> Patchwork_17826

  CI-20190529: 20190529
  CI_DRM_8560: 02fe287fdb4a3d6bceb1bb61b3c8538b4b941b3c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5687: 668a5be752186b6e08f361bac34da37309d08393 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17826: ac90fd42eb1dc9c16ba67d9a551bb2b3c238cd42 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ac90fd42eb1d drm/i915/gem: Bind the fence async for execbuf
9c2cdb286a07 drm/i915/gem: Asynchronous GTT unbinding
d90d92d26c5c drm/i915/gem: Separate the ww_mutex walker into its own list
68f85c40ff48 drm/i915: Export a preallocate variant of i915_active_acquire()
b253079dbe95 drm/i915/gem: Assign context id for async work
308d42d80cb3 drm/i915: Always defer fenced work to the worker
7cf3aad63437 drm/i915: Drop I915_IDLE_ENGINES_TIMEOUT
9675274fc27c drm/i915/gt: Declare when we enabled timeslicing
9b560a7e6079 drm/i915/gem: Allow combining submit-fences with syncobj
d03f86e3977c drm/i915/gem: Teach execbuf how to wait on future syncobj
dda5123316b5 drm/syncobj: Allow use of dma-fence-proxy
f3cd5ea0ff2c drm/i915/gem: Make relocations atomic within execbuf
06d2116fd5f4 drm/i915: Unpeel awaits on a proxy fence
6b9cc101590e dma-buf: Proxy fence, an unsignaled fence placeholder
710af09a4672 drm/i915/gem: Add all GPU reloc awaits/signals en masse
6f01210067aa drm/i915/gem: Build the reloc request first
c26758f43cfe drm/i915/gem: Lift GPU relocation allocation
b2abfeed9589 drm/i915/gem: Separate reloc validation into an earlier step
9b9d4aa5ab50 drm/i915: Add list_for_each_entry_safe_continue_reverse
033b56b47071 drm/i915/gem: Async GPU relocations only
143d1995d466 drm/i915/gem: Mark the buffer pool as active for the cmdparser
3148cd01132a drm/i915/gt: Enable ring scheduling for gen6/7
8c829f7c5554 drm/i915/gt: Implement ring scheduler for gen6/7
99a81a3f55b0 drm/i915: Relinquish forcewake immediately after manual grouping
118524c684c6 drm/i915/gt: Track if an engine requires forcewake w/a
0760ab97f627 drm/i915/gt: Enable busy-stats for ring-scheduler
15787ec4da9d drm/i915/gt: Infrastructure for ring scheduling
703dea6710a7 drm/i915: Support inter-engine semaphores on gen6/7
58305c0b593a drm/i915/gt: Use client timeline address for seqno writes
eacfbfb97087 drm/i915/gt: Support creation of 'internal' rings
ce9a7aebf8d2 drm/i915/gt: Couple tasklet scheduling for all CS interrupts
cf0807656a76 Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
5b9d253c3510 drm/i915: Trim the ironlake+ irq handler
8f9e2ddc2328 drm/i915/gt: Move legacy context wa to intel_workarounds
284e5e82f9e8 drm/i915/gt: Split low level gen2-7 CS emitters
96d738818236 drm/i915: Handle very early engine initialisation failure

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17826/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
