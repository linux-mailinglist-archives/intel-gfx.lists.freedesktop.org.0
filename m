Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B15D19A2D0
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 02:27:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 681646E22D;
	Wed,  1 Apr 2020 00:27:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B0D5689D3E;
 Wed,  1 Apr 2020 00:27:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AA082A66C9;
 Wed,  1 Apr 2020 00:27:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 Apr 2020 00:27:28 -0000
Message-ID: <158570084866.25628.2938131793218753465@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200331212600.16654-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200331212600.16654-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/10=5D_drm/i915/selftests=3A_Add_request?=
 =?utf-8?q?_throughput_measurement_to_perf?=
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

Series: series starting with [01/10] drm/i915/selftests: Add request throughput measurement to perf
URL   : https://patchwork.freedesktop.org/series/75339/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8230 -> Patchwork_17163
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17163 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17163, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17163/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17163:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-icl-guc/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17163/fi-icl-guc/igt@i915_selftest@live@execlists.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8230 and Patchwork_17163:

### New IGT tests (2) ###

  * igt@dmabuf@all@dma_fence_chain:
    - Statuses : 39 pass(s)
    - Exec time: [7.55, 31.78] s

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 39 pass(s)
    - Exec time: [0.03, 0.12] s

  



Participating hosts (40 -> 41)
------------------------------

  Additional (8): fi-byt-j1900 fi-skl-guc fi-ilk-650 fi-kbl-7500u fi-hsw-4770 fi-bsw-kefka fi-bsw-nick fi-skl-6700k2 
  Missing    (7): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-icl-dsi fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8230 -> Patchwork_17163

  CI-20190529: 20190529
  CI_DRM_8230: fa9f8453ffb88a4fc4e36d68b84a7ff9bf90f769 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5550: 98927dfde17aecaecfe67bb9853ceca326ca2b23 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17163: 0d8def3960ab5fe0a89a257a2be7efe1bf580dee @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0d8def3960ab drm/i915/gt: Declare when we enabled timeslicing
2d5b4fca2c1b drm/i915/gem: Allow combining submit-fences with syncobj
412fe1e789b8 drm/i915/gem: Teach execbuf how to wait on future syncobj
4a0733737869 drm/syncobj: Allow use of dma-fence-proxy
67377ece60a5 dma-buf: Proxy fence, an unsignaled fence placeholder
df7f6b7d44e4 dma-buf: Exercise dma-fence-chain under selftests
b67b12fdb069 dma-buf: Report signaled links inside dma-fence-chain
ed002f458246 dma-buf: Prettify typecasts for dma-fence-chain
953a5643b346 drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
51766e1b3978 drm/i915/selftests: Add request throughput measurement to perf

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17163/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
