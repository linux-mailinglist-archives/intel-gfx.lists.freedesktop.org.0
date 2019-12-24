Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF52129FA7
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 10:22:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7262D89F55;
	Tue, 24 Dec 2019 09:21:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E9A7089F55;
 Tue, 24 Dec 2019 09:21:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C0C51A0BC6;
 Tue, 24 Dec 2019 09:21:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 24 Dec 2019 09:21:55 -0000
Message-ID: <157717931576.26087.18076166118893454344@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191224084012.24241-1-lucas.demarchi@intel.com>
In-Reply-To: <20191224084012.24241-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C01/10=5D_drm/i915=3A_simplify_prefixe?=
 =?utf-8?q?s_on_device=5Finfo?=
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

Series: series starting with [CI,01/10] drm/i915: simplify prefixes on device_info
URL   : https://patchwork.freedesktop.org/series/71341/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7630 -> Patchwork_15913
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15913 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15913, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15913/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15913:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_basic@basic-all:
    - fi-byt-n2820:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-byt-n2820/igt@gem_exec_basic@basic-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15913/fi-byt-n2820/igt@gem_exec_basic@basic-all.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - {fi-kbl-7560u}:     NOTRUN -> [WARN][3] +10 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15913/fi-kbl-7560u/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  
Known issues
------------

  Here are the changes found in Patchwork_15913 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_sync@basic-store-each:
    - fi-tgl-y:           [PASS][4] -> [INCOMPLETE][5] ([i915#435] / [i915#472])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-tgl-y/igt@gem_sync@basic-store-each.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15913/fi-tgl-y/igt@gem_sync@basic-store-each.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [PASS][6] -> [DMESG-WARN][7] ([i915#44])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15913/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_create@basic:
    - {fi-tgl-u}:         [INCOMPLETE][8] ([fdo#111736]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-tgl-u/igt@gem_exec_create@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15913/fi-tgl-u/igt@gem_exec_create@basic.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [INCOMPLETE][10] ([i915#505]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15913/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_memory_region:
    - fi-bwr-2160:        [FAIL][12] -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-bwr-2160/igt@i915_selftest@live_memory_region.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15913/fi-bwr-2160/igt@i915_selftest@live_memory_region.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-x1275:       [DMESG-WARN][14] ([i915#62] / [i915#92]) -> [DMESG-WARN][15] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15913/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][16] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][17] ([i915#62] / [i915#92]) +8 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15913/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (43 -> 44)
------------------------------

  Additional (8): fi-byt-j1900 fi-skl-6770hq fi-glk-dsi fi-whl-u fi-gdg-551 fi-ivb-3770 fi-kbl-7560u fi-snb-2600 
  Missing    (7): fi-kbl-soraka fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7630 -> Patchwork_15913

  CI-20190529: 20190529
  CI_DRM_7630: 28a2aa0ebf1520ea8a0dd89299f7ceea80dfd96f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15913: 18ae683fdb99300464353232ff1142b36e389097 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

18ae683fdb99 drm/i915: prefer 3-letter acronym for tigerlake
74a3b3907b01 drm/i915: prefer 3-letter acronym for ivybridge
0b2371a21c10 drm/i915: prefer 3-letter acronym for broadwell
6c575419c24d drm/i915: prefer 3-letter acronym for ironlake
444ed33824b7 drm/i915: prefer 3-letter acronym for icelake
d057272ddf16 drm/i915: prefer 3-letter acronym for cannonlake
be2130b9f1fa drm/i915: prefer 3-letter acronym for skylake
8f55a932e519 drm/i915: prefer 3-letter acronym for haswell
22b8aeef43c4 drm/i915: prefer 3-letter acronym for pineview
23a8e66b38ab drm/i915: simplify prefixes on device_info

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15913/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
