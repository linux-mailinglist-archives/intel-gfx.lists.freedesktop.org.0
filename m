Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0907018FA6C
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 17:53:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B8DC6E29E;
	Mon, 23 Mar 2020 16:53:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 410926E29D;
 Mon, 23 Mar 2020 16:53:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3AE2AA0099;
 Mon, 23 Mar 2020 16:53:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 23 Mar 2020 16:53:28 -0000
Message-ID: <158498240820.9809.4142953078955688430@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200323134348.8513-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200323134348.8513-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/12=5D_drm/i915/selftests=3A_Add_request?=
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

Series: series starting with [01/12] drm/i915/selftests: Add request throughput measurement to perf
URL   : https://patchwork.freedesktop.org/series/74974/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8180 -> Patchwork_17055
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17055/index.html

New tests
---------

  New tests have been introduced between CI_DRM_8180 and Patchwork_17055:

### New IGT tests (2) ###

  * igt@dmabuf@all@dma_fence_chain:
    - Statuses : 38 pass(s)
    - Exec time: [7.36, 28.83] s

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 38 pass(s)
    - Exec time: [0.03, 0.10] s

  

Known issues
------------

  Here are the changes found in Patchwork_17055 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [PASS][1] -> [INCOMPLETE][2] ([i915#140])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-y/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17055/fi-icl-y/igt@i915_selftest@live@execlists.html
    - fi-icl-guc:         [PASS][3] -> [INCOMPLETE][4] ([i915#140])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-guc/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17055/fi-icl-guc/igt@i915_selftest@live@execlists.html

  
#### Warnings ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-guc:         [DMESG-FAIL][5] ([i915#481]) -> [DMESG-FAIL][6] ([i915#730] / [i915#933])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17055/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html

  
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#481]: https://gitlab.freedesktop.org/drm/intel/issues/481
  [i915#730]: https://gitlab.freedesktop.org/drm/intel/issues/730
  [i915#933]: https://gitlab.freedesktop.org/drm/intel/issues/933


Participating hosts (40 -> 42)
------------------------------

  Additional (10): fi-bdw-5557u fi-hsw-peppy fi-kbl-7500u fi-gdg-551 fi-elk-e7500 fi-skl-lmem fi-blb-e6850 fi-bsw-nick fi-skl-6600u fi-snb-2600 
  Missing    (8): fi-kbl-soraka fi-byt-squawks fi-icl-u2 fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8180 -> Patchwork_17055

  CI-20190529: 20190529
  CI_DRM_8180: 257af0ddcea3a234dcb79579600f971edd47353f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5530: 2020d743940f06294d06006bb737be43fcd2881e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17055: 1342e0cc637a60ab6f963d64298be1d744e2916a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1342e0cc637a drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
341125247817 drm/i915/gt: Declare when we enabled timeslicing
9b2b992129d0 drm/i915/gem: Allow combining submit-fences with syncobj
23be6793b2d9 drm/i915/gem: Teach execbuf how to wait on future syncobj
8f54e0485592 drm/syncobj: Allow use of dma-fence-proxy
3b5f0d282759 dma-buf: Proxy fence, an unsignaled fence placeholder
eeb9fd4e53b9 dma-buf: Exercise dma-fence-chain under selftests
e6dfb3670cb9 dma-buf: Report signaled links inside dma-fence-chain
5a79f011558a dma-buf: Prettify typecasts for dma-fence-chain
c65d3fa2eec2 drm/i915/perf: Schedule oa_config after modifying the contexts
030aa96c9843 drm/i915: Wrap i915_active in a simple kreffed struct
c1539761ed10 drm/i915/selftests: Add request throughput measurement to perf

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17055/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
