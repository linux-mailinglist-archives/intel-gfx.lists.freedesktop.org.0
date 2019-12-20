Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D16A6127644
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 08:08:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC5716EBDE;
	Fri, 20 Dec 2019 07:08:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 958A56EBDD;
 Fri, 20 Dec 2019 07:08:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8B12EA0093;
 Fri, 20 Dec 2019 07:08:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Navare, Manasi D" <manasi.d.navare@intel.com>
Date: Fri, 20 Dec 2019 07:08:53 -0000
Message-ID: <157682573354.9212.16149573106593159717@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191220010403.29111-1-manasi.d.navare@intel.com>
In-Reply-To: <20191220010403.29111-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_Disable_Port_sync_mode_correctly_on_teardown_=28rev?=
 =?utf-8?q?2=29?=
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

Series: drm/i915/dp: Disable Port sync mode correctly on teardown (rev2)
URL   : https://patchwork.freedesktop.org/series/71196/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7612 -> Patchwork_15856
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/index.html

Known issues
------------

  Here are the changes found in Patchwork_15856 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-bsw-kefka:       [PASS][1] -> [INCOMPLETE][2] ([i915#392])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][3] -> [DMESG-FAIL][4] ([i915#770])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [PASS][5] -> [DMESG-WARN][6] ([i915#44])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][7] ([i915#725]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [INCOMPLETE][9] ([i915#694]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-icl-u2:          [DMESG-WARN][11] ([i915#109] / [i915#289]) -> [DMESG-WARN][12] ([i915#289])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/fi-icl-u2/igt@i915_module_load@reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/fi-icl-u2/igt@i915_module_load@reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#62] / [i915#92]) -> [DMESG-WARN][14] ([i915#62] / [i915#92] / [i915#95]) +7 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][15] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][16] ([i915#62] / [i915#92]) +5 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/fi-kbl-x1275/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/fi-kbl-x1275/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (49 -> 36)
------------------------------

  Additional (1): fi-bwr-2160 
  Missing    (14): fi-ilk-m540 fi-kbl-7560u fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-ctg-p8600 fi-gdg-551 fi-skl-lmem fi-blb-e6850 fi-byt-clapper fi-bsw-nick fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7612 -> Patchwork_15856

  CI-20190529: 20190529
  CI_DRM_7612: d8427504d16e1aa87eab972f812c02478522bd70 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15856: fd216e800c73d487c734de2a75a4357fd3abc3cf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fd216e800c73 drm/i915/dp: Disable Port sync mode correctly on teardown

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
