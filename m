Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7624212E04A
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2020 20:27:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9748389C05;
	Wed,  1 Jan 2020 19:27:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EF08A8991E;
 Wed,  1 Jan 2020 19:27:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E4E1BA0093;
 Wed,  1 Jan 2020 19:27:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 Jan 2020 19:27:44 -0000
Message-ID: <157790686490.5187.3623806242952775359@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200101163918.768253-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200101163918.768253-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/gem=3A_Single_page_ob?=
 =?utf-8?q?jects_are_naturally_contiguous_=28rev3=29?=
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

Series: series starting with [CI,1/3] drm/i915/gem: Single page objects are naturally contiguous (rev3)
URL   : https://patchwork.freedesktop.org/series/71546/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7663 -> Patchwork_15970
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15970 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15970, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15970/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15970:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-kbl-x1275:       NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15970/fi-kbl-x1275/igt@i915_selftest@live_gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_15970 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][2] -> [DMESG-FAIL][3] ([i915#553] / [i915#725])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15970/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [PASS][4] -> [DMESG-FAIL][5] ([i915#553] / [i915#725])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15970/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [PASS][6] -> [DMESG-FAIL][7] ([i915#722])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15970/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_mman:
    - fi-bxt-dsi:         [PASS][8] -> [DMESG-WARN][9] ([i915#889]) +23 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-bxt-dsi/igt@i915_selftest@live_mman.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15970/fi-bxt-dsi/igt@i915_selftest@live_mman.html

  * igt@i915_selftest@live_reset:
    - fi-bxt-dsi:         [PASS][10] -> [DMESG-FAIL][11] ([i915#889]) +7 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-bxt-dsi/igt@i915_selftest@live_reset.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15970/fi-bxt-dsi/igt@i915_selftest@live_reset.html

  * igt@i915_selftest@live_workarounds:
    - fi-bwr-2160:        [PASS][12] -> [FAIL][13] ([i915#878])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-bwr-2160/igt@i915_selftest@live_workarounds.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15970/fi-bwr-2160/igt@i915_selftest@live_workarounds.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][14] -> [FAIL][15] ([fdo#111096] / [i915#323])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15970/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-icl-u2:          [PASS][16] -> [INCOMPLETE][17] ([i915#140])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-icl-u2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15970/fi-icl-u2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][18] ([i915#816]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15970/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [INCOMPLETE][20] ([i915#671]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15970/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-peppy:       [DMESG-FAIL][22] ([i915#553] / [i915#725]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-hsw-peppy/igt@i915_selftest@live_blt.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15970/fi-hsw-peppy/igt@i915_selftest@live_blt.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a:
    - fi-icl-dsi:         [DMESG-WARN][24] ([i915#109]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-icl-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15970/fi-icl-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-a.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][26] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][27] ([fdo#107139] / [i915#62] / [i915#92])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15970/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][28] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][29] ([i915#62] / [i915#92]) +7 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15970/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - fi-kbl-x1275:       [DMESG-WARN][30] ([i915#62] / [i915#92]) -> [DMESG-WARN][31] ([i915#62] / [i915#92] / [i915#95]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-kbl-x1275/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15970/fi-kbl-x1275/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  
  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#878]: https://gitlab.freedesktop.org/drm/intel/issues/878
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (43 -> 45)
------------------------------

  Additional (8): fi-bdw-5557u fi-bsw-n3050 fi-skl-6770hq fi-snb-2520m fi-ivb-3770 fi-skl-lmem fi-bsw-nick fi-kbl-r 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7663 -> Patchwork_15970

  CI-20190529: 20190529
  CI_DRM_7663: f062a18e0daf3d831fd816c27f74458ff36a1da9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15970: 27af2c2220591578cfa8be1bf56674ce902edbc7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

27af2c222059 drm/i915/selftests: Extend fault handler selftests to all memory regions
a2560cd82c34 drm/i915/gem: Extend mmap support for lmem
92c6f56628eb drm/i915/gem: Single page objects are naturally contiguous

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15970/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
