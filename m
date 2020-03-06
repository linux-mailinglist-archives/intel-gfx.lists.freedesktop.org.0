Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1744117C80C
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 22:59:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 689F66ED80;
	Fri,  6 Mar 2020 21:59:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 947326ED7C;
 Fri,  6 Mar 2020 21:59:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 919E3A0019;
 Fri,  6 Mar 2020 21:59:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 06 Mar 2020 21:59:41 -0000
Message-ID: <158353198159.3081.16443995671321136334@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200306133852.3420322-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200306133852.3420322-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/17=5D_drm/i915/selftests=3A_Apply_a_hea?=
 =?utf-8?q?vy_handed_flush_to_i915=5Factive?=
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

Series: series starting with [01/17] drm/i915/selftests: Apply a heavy handed flush to i915_active
URL   : https://patchwork.freedesktop.org/series/74392/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8086 -> Patchwork_16862
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16862 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16862, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16862/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16862:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-kbl-x1275:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16862/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
    - fi-skl-6770hq:      [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-skl-6770hq/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16862/fi-skl-6770hq/igt@i915_selftest@live@execlists.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8086 and Patchwork_16862:

### New IGT tests (2) ###

  * igt@dmabuf@all@dma_fence_chain:
    - Statuses : 42 pass(s)
    - Exec time: [7.38, 78.64] s

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 42 pass(s)
    - Exec time: [0.02, 0.19] s

  

Known issues
------------

  Here are the changes found in Patchwork_16862 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@contexts:
    - fi-apl-guc:         [PASS][5] -> [INCOMPLETE][6] ([fdo#103927])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-apl-guc/igt@gem_exec_parallel@contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16862/fi-apl-guc/igt@gem_exec_parallel@contexts.html

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([CI#94] / [i915#402])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16862/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@i915_module_load@reload:
    - fi-skl-6770hq:      [PASS][9] -> [DMESG-WARN][10] ([i915#92]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-skl-6770hq/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16862/fi-skl-6770hq/igt@i915_module_load@reload.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-icl-u2:          [PASS][11] -> [FAIL][12] ([fdo#109635] / [i915#217])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16862/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-skl-6770hq:      [PASS][13] -> [SKIP][14] ([fdo#109271]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16862/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-skl-6770hq:      [PASS][15] -> [DMESG-WARN][16] ([i915#106])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16862/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][17] ([CI#94]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16862/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_mmap@basic:
    - fi-tgl-y:           [DMESG-WARN][19] ([CI#94] / [i915#402]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-tgl-y/igt@gem_mmap@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16862/fi-tgl-y/igt@gem_mmap@basic.html

  * igt@i915_selftest@live@dmabuf:
    - fi-ivb-3770:        [DMESG-WARN][21] -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-ivb-3770/igt@i915_selftest@live@dmabuf.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16862/fi-ivb-3770/igt@i915_selftest@live@dmabuf.html

  * igt@i915_selftest@live@hangcheck:
    - fi-ivb-3770:        [INCOMPLETE][23] -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16862/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [FAIL][25] ([i915#217]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16862/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [i915#106]: https://gitlab.freedesktop.org/drm/intel/issues/106
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (50 -> 44)
------------------------------

  Additional (2): fi-skl-guc fi-skl-lmem 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-bdw-gvtdvm fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8086 -> Patchwork_16862

  CI-20190529: 20190529
  CI_DRM_8086: 3a1e69684036738b540510ffcc31964600bc0b3f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5498: 1bb7a25a09fe3e653d310e8bdfbdde4a1934b326 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16862: 62e2ea9500a8a90b6f1822b5a80366be4b412b1a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

62e2ea9500a8 drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
232c8948625d drm/i915/gt: Declare when we enabled timeslicing
e7ace1917afa drm/i915/gem: Allow combining submit-fences with syncobj
2bf6c69d342d drm/i915/gem: Teach execbuf how to wait on future syncobj
72c5da66b118 drm/syncobj: Allow use of dma-fence-proxy
dfcab52a6de6 dma-buf: Proxy fence, an unsignaled fence placeholder
e3df6c598dbd dma-buf: Exercise dma-fence-chain under selftests
3702ebf022c1 dma-buf: Report signaled links inside dma-fence-chain
0a74ccdc875c dma-buf: Prettify typecasts for dma-fence-chain
d0db810d00b0 drm/i915/selftests: Add request throughput measurement to perf
5ae4e5feccba drm/i915/perf: Schedule oa_config after modifying the contexts
3109c8f9d4d0 drm/i915: Extend i915_request_await_active to use all timelines
c0d1c65cb89a drm/i915: Wrap i915_active in a simple kreffed struct
5d9fda3690f4 drm/i915: Tweak scheduler's kick_submission()
9b61d8749081 drm/i915: Improve the start alignment of bonded pairs
031f94155df6 drm/i915/execlists: Enable timeslice on partial virtual engine dequeue
982908c93abd drm/i915/selftests: Apply a heavy handed flush to i915_active

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16862/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
