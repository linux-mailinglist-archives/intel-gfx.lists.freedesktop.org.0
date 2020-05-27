Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C531E4CF7
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 20:19:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E9346E391;
	Wed, 27 May 2020 18:19:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8B73A6E388;
 Wed, 27 May 2020 18:19:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8382EA008A;
 Wed, 27 May 2020 18:19:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arnd Bergmann" <arnd@arndb.de>
Date: Wed, 27 May 2020 18:19:14 -0000
Message-ID: <159060355450.343.5269593133524850203@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200527140526.1458215-1-arnd@arndb.de>
In-Reply-To: <20200527140526.1458215-1-arnd@arndb.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/pmu=3A_avoid_an_maybe-unin?=
 =?utf-8?q?itialized_warning?=
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

Series: series starting with [1/3] drm/i915/pmu: avoid an maybe-uninitialized warning
URL   : https://patchwork.freedesktop.org/series/77706/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8543_full -> Patchwork_17791_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17791_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17791_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17791_full:

### CI changes ###

#### Possible regressions ####

  * boot:
    - shard-tglb:         ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [FAIL][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb8/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb8/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb8/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb8/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb2/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb2/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb1/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-hsw:          NOTRUN -> [FAIL][51]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-hsw7/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17791_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][52] -> [DMESG-WARN][53] ([i915#1436] / [i915#716])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-apl4/igt@gen9_exec_parse@allowed-all.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-apl4/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [PASS][54] -> [DMESG-WARN][55] ([i915#180])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-apl6/igt@i915_suspend@forcewake.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-apl1/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][56] -> [FAIL][57] ([i915#1119] / [i915#118] / [i915#95])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-glk2/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen:
    - shard-hsw:          [PASS][58] -> [INCOMPLETE][59] ([i915#1927] / [i915#61])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-hsw1/igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-hsw7/igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [PASS][60] -> [INCOMPLETE][61] ([i915#61])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-hsw7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-glk:          [PASS][62] -> [DMESG-WARN][63] ([i915#1927])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-glk9/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-glk5/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-hsw:          [PASS][64] -> [SKIP][65] ([fdo#109271])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-hsw6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-hsw6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][66] -> [FAIL][67] ([i915#1188]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][68] -> [INCOMPLETE][69] ([i915#69]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][70] -> [FAIL][71] ([fdo#108145] / [i915#265]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][72] -> [SKIP][73] ([fdo#109441]) +2 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][74] -> [DMESG-WARN][75] ([i915#180]) +4 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [INCOMPLETE][76] ([i915#155]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-kbl1/igt@gem_exec_suspend@basic-s3.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-kbl7/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-glk:          [DMESG-WARN][78] ([i915#1926]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-glk5/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-glk8/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_cursor_legacy@pipe-b-torture-bo:
    - shard-tglb:         [DMESG-WARN][80] ([i915#128]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb8/igt@kms_cursor_legacy@pipe-b-torture-bo.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-tglb2/igt@kms_cursor_legacy@pipe-b-torture-bo.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][82] ([i915#180]) -> [PASS][83] +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-kbl:          [DMESG-WARN][84] ([i915#180]) -> [PASS][85] +5 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][86] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][88] ([fdo#108145] / [i915#265]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][90] ([fdo#109441]) -> [PASS][91] +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * {igt@sysfs_heartbeat_interval@mixed@bcs0}:
    - shard-skl:          [FAIL][92] ([i915#1731]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-skl5/igt@sysfs_heartbeat_interval@mixed@bcs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-skl7/igt@sysfs_heartbeat_interval@mixed@bcs0.html

  
#### Warnings ####

  * igt@i915_pm_backlight@fade:
    - shard-glk:          [TIMEOUT][94] -> [SKIP][95] ([fdo#109271]) +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-glk5/igt@i915_pm_backlight@fade.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-glk8/igt@i915_pm_backlight@fade.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][96] ([i915#1319] / [i915#1635]) -> [FAIL][97] ([fdo#110321] / [fdo#110336] / [i915#95])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-apl7/igt@kms_content_protection@atomic-dpms.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-apl7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][98] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][99] ([i915#1319])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-apl2/igt@kms_content_protection@legacy.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-apl2/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][100] ([i915#1319] / [i915#1635]) -> [TIMEOUT][101] ([i915#1319])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-apl4/igt@kms_content_protection@lic.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/shard-apl6/igt@kms_content_protection@lic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8543 -> Patchwork_17791

  CI-20190529: 20190529
  CI_DRM_8543: 3fcc7e306e95013f1f4c527e0dda96197e1243bf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5680: f7e3772175c53f0c910f4513831791cb5bdcab04 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17791: c333523a465573fc6e237bcd98a186a63f085d12 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17791/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
