Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F41019D47E
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 11:58:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D853D6EB5C;
	Fri,  3 Apr 2020 09:58:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 583616EB4E;
 Fri,  3 Apr 2020 09:58:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4853EA41FB;
 Fri,  3 Apr 2020 09:58:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 03 Apr 2020 09:58:51 -0000
Message-ID: <158590793126.13351.2602433989267715600@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200403091300.14734-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200403091300.14734-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
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
URL   : https://patchwork.freedesktop.org/series/75452/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8243 -> Patchwork_17197
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17197/index.html

New tests
---------

  New tests have been introduced between CI_DRM_8243 and Patchwork_17197:

### New IGT tests (2) ###

  * igt@dmabuf@all@dma_fence_chain:
    - Statuses : 43 pass(s)
    - Exec time: [7.43, 32.02] s

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 43 pass(s)
    - Exec time: [0.03, 0.12] s

  

Known issues
------------

  Here are the changes found in Patchwork_17197 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-cml-u2:          [PASS][1] -> [DMESG-WARN][2] ([IGT#4])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17197/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [PASS][3] -> [FAIL][4] ([i915#976])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17197/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-dsi:         [INCOMPLETE][5] ([i915#189]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17197/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-bxt-dsi:         [INCOMPLETE][7] ([i915#656]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17197/fi-bxt-dsi/igt@i915_selftest@live@execlists.html

  
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (41 -> 44)
------------------------------

  Additional (9): fi-skl-6770hq fi-bwr-2160 fi-snb-2520m fi-ivb-3770 fi-cfl-8109u fi-skl-lmem fi-kbl-7560u fi-byt-n2820 fi-skl-6600u 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-x1275 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8243 -> Patchwork_17197

  CI-20190529: 20190529
  CI_DRM_8243: 45ccb1b8606b6ba1a5d4f8a8b4dda27bd8dbb04c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5560: 213062c7dcf0cbc8069cbb5f91acbc494def33fd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17197: 48a06c080f4b9055f83ac771df1ec5506b72bb9c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

48a06c080f4b drm/i915/gt: Declare when we enabled timeslicing
fa98e5774e0e drm/i915/gem: Allow combining submit-fences with syncobj
7889ebb21db1 drm/i915/gem: Teach execbuf how to wait on future syncobj
537c5a3fd9bc drm/syncobj: Allow use of dma-fence-proxy
ecffda61d51b dma-buf: Proxy fence, an unsignaled fence placeholder
ae8934bfc404 dma-buf: Exercise dma-fence-chain under selftests
42c9e1350031 dma-buf: Report signaled links inside dma-fence-chain
daaaab3b61d6 dma-buf: Prettify typecasts for dma-fence-chain
1401910d33b8 drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
9b51ead71e1a drm/i915/selftests: Add request throughput measurement to perf

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17197/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
