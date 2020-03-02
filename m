Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75838175CEB
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 15:24:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF6C26E451;
	Mon,  2 Mar 2020 14:24:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 88F8D6E2A5;
 Mon,  2 Mar 2020 14:24:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 85389A011C;
 Mon,  2 Mar 2020 14:24:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 02 Mar 2020 14:24:27 -0000
Message-ID: <158315906754.30646.64821308992223922@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200302085812.4172450-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200302085812.4172450-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/22=5D_drm/i915/gem=3A_Consolidate_ctx-?=
 =?utf-8?q?=3Eengines=5B=5D_release?=
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

Series: series starting with [01/22] drm/i915/gem: Consolidate ctx->engines[] release
URL   : https://patchwork.freedesktop.org/series/74131/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8043 -> Patchwork_16777
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16777 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16777, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16777/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16777:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@blt:
    - fi-snb-2600:        [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/fi-snb-2600/igt@i915_selftest@live@blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16777/fi-snb-2600/igt@i915_selftest@live@blt.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8043 and Patchwork_16777:

### New IGT tests (2) ###

  * igt@dmabuf@all@dma_fence_chain:
    - Statuses : 41 pass(s)
    - Exec time: [7.48, 28.68] s

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 41 pass(s)
    - Exec time: [0.02, 0.09] s

  

Known issues
------------

  Here are the changes found in Patchwork_16777 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@flink-lifetime:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([CI#94] / [i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16777/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][5] ([CI#94]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16777/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [DMESG-FAIL][7] ([fdo#108569]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/fi-icl-y/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16777/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@kms_addfb_basic@bad-pitch-999:
    - fi-tgl-y:           [DMESG-WARN][9] ([CI#94] / [i915#402]) -> [PASS][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-999.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16777/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-999.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][11] ([i915#192] / [i915#193] / [i915#194]) -> [FAIL][12] ([i915#1209])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/fi-kbl-8809g/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16777/fi-kbl-8809g/igt@runner@aborted.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (48 -> 42)
------------------------------

  Additional (4): fi-glk-dsi fi-kbl-7560u fi-byt-n2820 fi-elk-e7500 
  Missing    (10): fi-kbl-soraka fi-ilk-m540 fi-bsw-n3050 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-gdg-551 fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8043 -> Patchwork_16777

  CI-20190529: 20190529
  CI_DRM_8043: 7e5119254441cdf0764418bbf3f43f6547d30a8a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5483: 1707153df224ffb6333c6c660a792b7f334eb3d3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16777: 9d36cbcd1c369c53f5fef0e084387caee2e9f0ac @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9d36cbcd1c36 drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
0fe67463719f drm/i915/gt: Declare when we enabled timeslicing
a4595a6bbbfb drm/i915/gem: Allow combining submit-fences with syncobj
36dadb2f23d6 drm/i915/gem: Teach execbuf how to wait on future syncobj
e95e336bec8e drm/syncobj: Allow use of dma-fence-proxy
2f9c8ffce272 dma-buf: Proxy fence, an unsignaled fence placeholder
7a77040c1c21 dma-buf: Exercise dma-fence-chain under selftests
0c794e11ae51 dma-buf: Report signaled links inside dma-fence-chain
ec6462245001 dma-buf: Prettify typecasts for dma-fence-chain
304b7730d4f7 drm/i915/execlists: Reduce preempt-to-busy roundtrip delay
d92fc6dcd157 drm/i915/execlists: Check the sentinel is alone in the ELSP
44ec5f8e5c7c drm/i915/selftests: Add request throughput measurement to perf
c217c503b903 drm/i915/perf: Schedule oa_config after modifying the contexts
d9379944ec2d drm/i915: Extend i915_request_await_active to use all timelines
80532d70b271 drm/i915: Wrap i915_active in a simple kreffed struct
4bc4e5b8bf9b drm/i915/perf: Reintroduce wait on OA configuration completion
785f2f840a4b drm/i915/gem: Only call eb_lookup_vma once during execbuf ioctl
abe716d0c7b1 drm/i915/gem: Extract transient execbuf flags from i915_vma
a9e51e63509e drm/i915: Drop inspection of execbuf flags during evict
273e8c952a87 drm/i915/gem: Check that the context wasn't closed during setup
efe30d6b961f drm/i915/gt: Prevent allocation on a banned context
15d2ef066485 drm/i915/gem: Consolidate ctx->engines[] release

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16777/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
