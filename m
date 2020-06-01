Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC3A1EA057
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 10:51:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1861D6E203;
	Mon,  1 Jun 2020 08:51:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2FB7A6E1B9;
 Mon,  1 Jun 2020 08:51:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 29445A0019;
 Mon,  1 Jun 2020 08:51:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 01 Jun 2020 08:51:37 -0000
Message-ID: <159100149713.14889.17017104724943724988@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200601072446.19548-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200601072446.19548-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/36=5D_drm/i915=3A_Handle_very_early_eng?=
 =?utf-8?q?ine_initialisation_failure_=28rev2=29?=
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

Series: series starting with [01/36] drm/i915: Handle very early engine initialisation failure (rev2)
URL   : https://patchwork.freedesktop.org/series/77857/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8560 -> Patchwork_17828
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/index.html

New tests
---------

  New tests have been introduced between CI_DRM_8560 and Patchwork_17828:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 42 pass(s)
    - Exec time: [0.03, 0.10] s

  


Changes
-------

  No changes found


Participating hosts (50 -> 44)
------------------------------

  Additional (1): fi-ehl-1 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8560 -> Patchwork_17828

  CI-20190529: 20190529
  CI_DRM_8560: 02fe287fdb4a3d6bceb1bb61b3c8538b4b941b3c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5687: 668a5be752186b6e08f361bac34da37309d08393 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17828: d2ba95a40d8a1c2731ac575e5183770cbb118343 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d2ba95a40d8a drm/i915/gem: Bind the fence async for execbuf
55b772ca8526 drm/i915/gem: Asynchronous GTT unbinding
8ed22b7514d8 drm/i915/gem: Separate the ww_mutex walker into its own list
e8d99d37c64d drm/i915: Export a preallocate variant of i915_active_acquire()
f86a694d1a36 drm/i915/gem: Assign context id for async work
30672d041d30 drm/i915: Always defer fenced work to the worker
796d8967ce3e drm/i915: Drop I915_IDLE_ENGINES_TIMEOUT
0f995d2bfbe2 drm/i915/gt: Declare when we enabled timeslicing
fe5ce9a4c96f drm/i915/gem: Allow combining submit-fences with syncobj
9f06244959ca drm/i915/gem: Teach execbuf how to wait on future syncobj
59c00fdc9150 drm/syncobj: Allow use of dma-fence-proxy
7f48f9f9cabb drm/i915/gem: Make relocations atomic within execbuf
ce15d9f7f287 drm/i915: Unpeel awaits on a proxy fence
3d075ea5bad9 dma-buf: Proxy fence, an unsignaled fence placeholder
b5ed91ed9028 drm/i915/gem: Add all GPU reloc awaits/signals en masse
cf3caf6ea48e drm/i915/gem: Build the reloc request first
a5a8005dc0d5 drm/i915/gem: Lift GPU relocation allocation
bf626d095a0a drm/i915/gem: Separate reloc validation into an earlier step
d6bb9bf39a67 drm/i915: Add list_for_each_entry_safe_continue_reverse
043a8c092764 drm/i915/gem: Async GPU relocations only
4223614bdbed drm/i915/gem: Mark the buffer pool as active for the cmdparser
8f4228e0458d drm/i915/gt: Enable ring scheduling for gen6/7
e4172f511dc0 drm/i915/gt: Implement ring scheduler for gen6/7
e43d3f056a59 drm/i915: Relinquish forcewake immediately after manual grouping
ad2a6b63bf64 drm/i915/gt: Track if an engine requires forcewake w/a
5354a72cf88c drm/i915/gt: Enable busy-stats for ring-scheduler
9c8572c7a931 drm/i915/gt: Infrastructure for ring scheduling
75a19e638ad6 drm/i915: Support inter-engine semaphores on gen6/7
ad2ec515e737 drm/i915/gt: Use client timeline address for seqno writes
a186650cc2c0 drm/i915/gt: Support creation of 'internal' rings
ee444a1c9757 drm/i915/gt: Couple tasklet scheduling for all CS interrupts
db08f3a83b7d Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
51c5e9106b00 drm/i915: Trim the ironlake+ irq handler
84fb5312e69a drm/i915/gt: Move legacy context wa to intel_workarounds
28f59054aa9e drm/i915/gt: Split low level gen2-7 CS emitters
b0896ff73ea4 drm/i915: Handle very early engine initialisation failure

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
