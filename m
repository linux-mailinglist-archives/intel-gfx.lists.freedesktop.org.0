Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA5112DFC1
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2020 18:37:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 902C189870;
	Wed,  1 Jan 2020 17:36:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 308BE89819;
 Wed,  1 Jan 2020 17:36:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F3A95A0003;
 Wed,  1 Jan 2020 17:36:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 Jan 2020 17:36:58 -0000
Message-ID: <157790021896.5186.2044085067039681025@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200101163918.768253-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200101163918.768253-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/gem=3A_Single_page_ob?=
 =?utf-8?q?jects_are_naturally_contiguous?=
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

Series: series starting with [CI,1/3] drm/i915/gem: Single page objects are naturally contiguous
URL   : https://patchwork.freedesktop.org/series/71546/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7663 -> Patchwork_15968
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15968 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15968, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15968/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15968:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_sanitycheck:
    - fi-skl-lmem:        NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15968/fi-skl-lmem/igt@i915_selftest@live_sanitycheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_15968 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-glk-dsi:         [PASS][2] -> [INCOMPLETE][3] ([i915#58] / [k.org#198133])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-glk-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15968/fi-glk-dsi/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][4] -> [DMESG-FAIL][5] ([i915#563])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15968/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [PASS][6] -> [DMESG-FAIL][7] ([i915#722])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15968/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][8] -> [FAIL][9] ([i915#217])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15968/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [INCOMPLETE][10] ([i915#671]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15968/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-peppy:       [DMESG-FAIL][12] ([i915#553] / [i915#725]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-hsw-peppy/igt@i915_selftest@live_blt.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15968/fi-hsw-peppy/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_coherency:
    - fi-cfl-guc:         [DMESG-FAIL][14] ([i915#889]) -> [PASS][15] +7 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-cfl-guc/igt@i915_selftest@live_coherency.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15968/fi-cfl-guc/igt@i915_selftest@live_coherency.html

  * igt@i915_selftest@live_gt_timelines:
    - fi-cfl-guc:         [DMESG-WARN][16] ([i915#889]) -> [PASS][17] +23 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-cfl-guc/igt@i915_selftest@live_gt_timelines.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15968/fi-cfl-guc/igt@i915_selftest@live_gt_timelines.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a:
    - fi-icl-dsi:         [DMESG-WARN][18] ([i915#109]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-icl-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15968/fi-icl-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-a.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][20] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][21] ([fdo#107139] / [i915#62] / [i915#92])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15968/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][22] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][23] ([i915#62] / [i915#92]) +5 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15968/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - fi-kbl-x1275:       [DMESG-WARN][24] ([i915#62] / [i915#92]) -> [DMESG-WARN][25] ([i915#62] / [i915#92] / [i915#95]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-kbl-x1275/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15968/fi-kbl-x1275/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  
  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (43 -> 43)
------------------------------

  Additional (7): fi-bdw-5557u fi-bsw-n3050 fi-snb-2520m fi-ivb-3770 fi-skl-lmem fi-bsw-nick fi-kbl-r 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7663 -> Patchwork_15968

  CI-20190529: 20190529
  CI_DRM_7663: f062a18e0daf3d831fd816c27f74458ff36a1da9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15968: c93470d6d9e6060304216578b939179479c9eb52 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c93470d6d9e6 drm/i915/selftests: Extend fault handler selftests to all memory regions
f6d07dc9fd0c drm/i915/gem: Extend mmap support for lmem
7c5119931f56 drm/i915/gem: Single page objects are naturally contiguous

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15968/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
