Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 389DB1DAE47
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 11:03:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6141489E11;
	Wed, 20 May 2020 09:03:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D588189DFE;
 Wed, 20 May 2020 09:03:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CDE80A008A;
 Wed, 20 May 2020 09:03:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 20 May 2020 09:03:34 -0000
Message-ID: <158996541481.30692.13042297775507765685@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200520075503.10388-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200520075503.10388-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/22=5D_drm/i915/gem=3A_Suppress_some_ran?=
 =?utf-8?q?dom_warnings?=
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

Series: series starting with [01/22] drm/i915/gem: Suppress some random warnings
URL   : https://patchwork.freedesktop.org/series/77459/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8509 -> Patchwork_17724
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/index.html

New tests
---------

  New tests have been introduced between CI_DRM_8509 and Patchwork_17724:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 38 pass(s)
    - Exec time: [0.02, 0.10] s

  

Known issues
------------

  Here are the changes found in Patchwork_17724 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-skl-lmem:        [PASS][1] -> [INCOMPLETE][2] ([i915#1874])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/fi-skl-lmem/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/fi-skl-lmem/igt@i915_selftest@live@execlists.html

  
  [i915#1874]: https://gitlab.freedesktop.org/drm/intel/issues/1874


Participating hosts (48 -> 44)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8509 -> Patchwork_17724

  CI-20190529: 20190529
  CI_DRM_8509: ea6a2729d3d286137415319de4161042b0337e87 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5662: e79462659e0f45cd3f4f766f58cb792303c6bf9b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17724: b91e0003626c8e9af7d9bc5c6716d6dfb68a02c0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b91e0003626c drm/i915: Micro-optimise i915_request_completed()
002b1ada3b2c drm/i915/gem: Bind the fence async for execbuf
93d1d01786b9 drm/i915/gem: Asynchronous GTT unbinding
32a908f52387 drm/i915/gem: Separate the ww_mutex walker into its own list
d4f5912b32c2 drm/i915: Export a preallocate variant of i915_active_acquire()
4d8c9d1e6bf7 drm/i915/gem: Assign context id for async work
a166cd2383c3 drm/i915: Always defer fenced work to the worker
1db0d219282e drm/i915: Drop I915_IDLE_ENGINES_TIMEOUT
a612c3379605 drm/i915/gt: Use built-in active intel_context reference
44980c2e4806 drm/i915/gt: Declare when we enabled timeslicing
c78b3fceaec2 drm/i915/gem: Allow combining submit-fences with syncobj
6995a5de6f1d drm/i915/gem: Teach execbuf how to wait on future syncobj
be1de9ed0950 drm/syncobj: Allow use of dma-fence-proxy
cc0b5daa9c3a dma-buf: Proxy fence, an unsignaled fence placeholder
b72331f639dd drm/i915: Improve execute_cb struct packing
0435401407a9 drm/i915/gt: Resubmit the virtual engine on schedule-out
f63db413341d drm/i915/gt: Decouple inflight virtual engines
c4839c4c4fe9 drm/i915/gt: Use virtual_engine during execlists_dequeue
8ea14b342e49 drm/i915: Move saturated workload detection back to the context
ad7a7cab4515 drm/i915: Avoid using rq->engine after free during i915_fence_release
ec289918ff88 drm/i915/execlists: Shortcircuit queue_prio() for no internal levels
35b35b313bad drm/i915/gem: Suppress some random warnings

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
