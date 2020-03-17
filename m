Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 508AC1885FC
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 14:39:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84AB46E126;
	Tue, 17 Mar 2020 13:39:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3343B6E125;
 Tue, 17 Mar 2020 13:39:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2C14BA0091;
 Tue, 17 Mar 2020 13:39:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 17 Mar 2020 13:39:25 -0000
Message-ID: <158445236515.5178.6051607066659437223@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200317122719.1889-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200317122719.1889-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
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
URL   : https://patchwork.freedesktop.org/series/74769/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8141 -> Patchwork_16992
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16992 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16992, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16992/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16992:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-kbl-x1275:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16992/fi-kbl-x1275/igt@i915_selftest@live@execlists.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8141 and Patchwork_16992:

### New IGT tests (2) ###

  * igt@dmabuf@all@dma_fence_chain:
    - Statuses : 34 pass(s)
    - Exec time: [7.70, 31.87] s

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 34 pass(s)
    - Exec time: [0.03, 0.12] s

  

Known issues
------------

  Here are the changes found in Patchwork_16992 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bxt-dsi:         [PASS][3] -> [INCOMPLETE][4] ([fdo#103927] / [i915#656])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16992/fi-bxt-dsi/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8700k:       [INCOMPLETE][5] ([i915#656]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16992/fi-cfl-8700k/igt@i915_selftest@live@execlists.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (47 -> 37)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (11): fi-bdw-samus fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-ilk-650 fi-elk-e7500 fi-blb-e6850 fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8141 -> Patchwork_16992

  CI-20190529: 20190529
  CI_DRM_8141: f7be958f2574d30bad18983c3afe2c5401674dfb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5513: 417c926459dacf062f2945d3ba01a3f94551b16f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16992: 70b9d252dbbd0c6e03c8e8057d8889227bf8df09 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

70b9d252dbbd drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
33b7b12c8b42 drm/i915/gt: Declare when we enabled timeslicing
93996f119438 drm/i915/gem: Allow combining submit-fences with syncobj
25c7bc564fc2 drm/i915/gem: Teach execbuf how to wait on future syncobj
9a241d62343d drm/syncobj: Allow use of dma-fence-proxy
c3e54c28d94e dma-buf: Proxy fence, an unsignaled fence placeholder
6fb945deb41e dma-buf: Exercise dma-fence-chain under selftests
e72f695e0d59 dma-buf: Report signaled links inside dma-fence-chain
27864e4415fc dma-buf: Prettify typecasts for dma-fence-chain
da8602561652 drm/i915/perf: Schedule oa_config after modifying the contexts
22069998921a drm/i915: Wrap i915_active in a simple kreffed struct
0d574449054f drm/i915/selftests: Add request throughput measurement to perf

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16992/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
