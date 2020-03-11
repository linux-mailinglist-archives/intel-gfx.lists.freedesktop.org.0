Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42251182050
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 19:03:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 950546E9D3;
	Wed, 11 Mar 2020 18:03:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CB5496E9D2;
 Wed, 11 Mar 2020 18:03:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C3CF4A00FD;
 Wed, 11 Mar 2020 18:03:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 11 Mar 2020 18:03:15 -0000
Message-ID: <158394979579.13950.8512599510177469974@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200311133047.30696-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200311133047.30696-1-chris@chris-wilson.co.uk>
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
URL   : https://patchwork.freedesktop.org/series/74586/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8120 -> Patchwork_16929
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/index.html

New tests
---------

  New tests have been introduced between CI_DRM_8120 and Patchwork_16929:

### New IGT tests (2) ###

  * igt@dmabuf@all@dma_fence_chain:
    - Statuses : 39 pass(s)
    - Exec time: [7.43, 70.54] s

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 39 pass(s)
    - Exec time: [0.02, 0.18] s

  

Known issues
------------

  Here are the changes found in Patchwork_16929 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@active:
    - fi-skl-6600u:       [PASS][1] -> [DMESG-FAIL][2] ([i915#666])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-skl-6600u/igt@i915_selftest@live@active.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/fi-skl-6600u/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@dmabuf:
    - fi-ivb-3770:        [PASS][3] -> [DMESG-WARN][4] ([i915#1405])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-ivb-3770/igt@i915_selftest@live@dmabuf.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/fi-ivb-3770/igt@i915_selftest@live@dmabuf.html

  * igt@i915_selftest@live@execlists:
    - fi-glk-dsi:         [PASS][5] -> [INCOMPLETE][6] ([i915#58] / [k.org#198133])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-glk-dsi/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/fi-glk-dsi/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-ivb-3770:        [PASS][7] -> [INCOMPLETE][8] ([i915#1405])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-icl-u2:          [PASS][9] -> [FAIL][10] ([i915#976])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][11] -> [FAIL][12] ([i915#323])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][13] ([CI#94]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live@execlists:
    - fi-bxt-dsi:         [INCOMPLETE][15] ([fdo#103927]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/fi-bxt-dsi/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-skl-lmem:        [INCOMPLETE][17] ([i915#424]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [DMESG-FAIL][19] ([i915#541]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#1405]: https://gitlab.freedesktop.org/drm/intel/issues/1405
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976
  [i915#998]: https://gitlab.freedesktop.org/drm/intel/issues/998
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (49 -> 42)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-snb-2520m fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8120 -> Patchwork_16929

  CI-20190529: 20190529
  CI_DRM_8120: ce66c439df71f01b018803664c4a50fc61255788 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5505: 8973d811f3fdfb4ace4aabab2095ce0309881648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16929: e88f97ca9c8b73d9957825e62a1a28b99466b56a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e88f97ca9c8b drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
09f1ab7ebc44 drm/i915/gt: Declare when we enabled timeslicing
0e2d624783cd drm/i915/gem: Allow combining submit-fences with syncobj
4a7e7b3c3161 drm/i915/gem: Teach execbuf how to wait on future syncobj
ec674233ad1c drm/syncobj: Allow use of dma-fence-proxy
1ab5e6f9c4f0 dma-buf: Proxy fence, an unsignaled fence placeholder
5a616a23bd5c dma-buf: Exercise dma-fence-chain under selftests
9685917a8609 dma-buf: Report signaled links inside dma-fence-chain
95d48627060c dma-buf: Prettify typecasts for dma-fence-chain
d9e4ce2af66c drm/i915/perf: Schedule oa_config after modifying the contexts
0b0bbf029074 drm/i915: Wrap i915_active in a simple kreffed struct
337d76f47d6b drm/i915/selftests: Add request throughput measurement to perf

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
