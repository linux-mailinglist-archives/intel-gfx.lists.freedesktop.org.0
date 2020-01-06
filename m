Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2429131BE4
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 23:55:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6A9A6E588;
	Mon,  6 Jan 2020 22:55:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 707776E584;
 Mon,  6 Jan 2020 22:55:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6916BA0075;
 Mon,  6 Jan 2020 22:55:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 06 Jan 2020 22:55:48 -0000
Message-ID: <157835134840.24767.10506426891453466236@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106220715.2708760-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200106220715.2708760-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Use_common_priotree_lis?=
 =?utf-8?q?ts_for_virtual_engine?=
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

Series: series starting with [1/2] drm/i915: Use common priotree lists for virtual engine
URL   : https://patchwork.freedesktop.org/series/71676/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7690 -> Patchwork_16008
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16008 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16008, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16008/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16008:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/fi-icl-y/igt@i915_selftest@live_execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16008/fi-icl-y/igt@i915_selftest@live_execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_16008 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-icl-u2:          [PASS][3] -> [DMESG-WARN][4] ([i915#289])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/fi-icl-u2/igt@kms_chamelium@dp-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16008/fi-icl-u2/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-icl-guc:         [PASS][5] -> [INCOMPLETE][6] ([i915#140] / [i915#184])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/fi-icl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16008/fi-icl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6600u:       [DMESG-WARN][7] ([i915#889]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/fi-skl-6600u/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16008/fi-skl-6600u/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-lmem:        [INCOMPLETE][9] ([i915#671]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16008/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-byt-n2820:       [DMESG-FAIL][11] ([i915#725]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/fi-byt-n2820/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16008/fi-byt-n2820/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][13] ([i915#770]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16008/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [DMESG-FAIL][15] ([i915#722]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16008/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][17] ([i915#725]) -> [DMESG-FAIL][18] ([i915#563])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16008/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#184]: https://gitlab.freedesktop.org/drm/intel/issues/184
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (41 -> 40)
------------------------------

  Additional (7): fi-kbl-soraka fi-hsw-peppy fi-skl-guc fi-gdg-551 fi-ivb-3770 fi-kbl-7560u fi-kbl-r 
  Missing    (8): fi-hsw-4200u fi-byt-squawks fi-ctg-p8600 fi-elk-e7500 fi-blb-e6850 fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7690 -> Patchwork_16008

  CI-20190529: 20190529
  CI_DRM_7690: fc0ff49196d0144e8b72406a8ca71a395dbd7040 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16008: 5cda0d240604d7eba331f0a8158511909706da79 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5cda0d240604 drm/i915/gt: Allow temporary suspension of inflight requests
4810a3ae500b drm/i915: Use common priotree lists for virtual engine

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16008/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
