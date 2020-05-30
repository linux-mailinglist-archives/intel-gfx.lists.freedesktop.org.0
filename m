Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8766D1E8D31
	for <lists+intel-gfx@lfdr.de>; Sat, 30 May 2020 04:35:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 940C46E99A;
	Sat, 30 May 2020 02:35:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 54E0F6E998;
 Sat, 30 May 2020 02:35:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 45B7BA432F;
 Sat, 30 May 2020 02:35:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 30 May 2020 02:35:16 -0000
Message-ID: <159080611625.9480.11299906734483964984@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200529201534.474853-1-arnd@arndb.de>
In-Reply-To: <20200529201534.474853-1-arnd@arndb.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgY29t?=
 =?utf-8?q?pact-test-array?=
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

Series: compact-test-array
URL   : https://patchwork.freedesktop.org/series/77802/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8556_full -> Patchwork_17822_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17822_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17822_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17822_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque:
    - shard-hsw:          NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-hsw6/igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque.html

  
Known issues
------------

  Here are the changes found in Patchwork_17822_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [PASS][2] -> [FAIL][3] ([i915#1119] / [i915#118] / [i915#95]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-glk4/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding:
    - shard-kbl:          [PASS][4] -> [FAIL][5] ([i915#54])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
    - shard-skl:          [PASS][6] -> [FAIL][7] ([i915#54])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
    - shard-apl:          [PASS][8] -> [FAIL][9] ([i915#54])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][10] -> [DMESG-WARN][11] ([i915#180]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#72])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][14] -> [DMESG-WARN][15] ([i915#180] / [i915#93] / [i915#95])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-apl:          [PASS][16] -> [DMESG-WARN][17] ([i915#180]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][18] -> [FAIL][19] ([fdo#108145] / [i915#265])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#109441]) +3 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html

  
#### Possible fixes ####

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-glk:          [FAIL][22] ([i915#1930]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-glk6/igt@gem_exec_reloc@basic-concurrent0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-glk9/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-tglb:         [INCOMPLETE][24] ([i915#456]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-tglb6/igt@i915_pm_rpm@system-suspend-execbuf.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-tglb1/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [DMESG-WARN][26] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-kbl2/igt@i915_suspend@fence-restore-untiled.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-glk:          [FAIL][28] ([i915#1119] / [i915#118] / [i915#95]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-glk7/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_color@pipe-a-ctm-blue-to-red:
    - shard-skl:          [FAIL][30] ([i915#129]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-skl8/igt@kms_color@pipe-a-ctm-blue-to-red.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-skl5/igt@kms_color@pipe-a-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-random:
    - shard-skl:          [FAIL][32] ([i915#54]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][34] ([i915#180]) -> [PASS][35] +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-hsw:          [INCOMPLETE][36] ([i915#1926] / [i915#61]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-hsw7/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-hsw6/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * {igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][38] ([i915#79]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][40] ([i915#180]) -> [PASS][41] +3 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
    - shard-iclb:         [FAIL][42] ([i915#49]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][44] ([fdo#108145] / [i915#265]) -> [PASS][45] +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-glk:          [INCOMPLETE][46] ([i915#1927] / [i915#58] / [k.org#198133]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-glk2/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-glk4/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][48] ([fdo#109441]) -> [PASS][49] +5 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Warnings ####

  * igt@kms_content_protection@legacy:
    - shard-apl:          [DMESG-FAIL][50] ([fdo#110321]) -> [TIMEOUT][51] ([i915#1319] / [i915#1635])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-apl2/igt@kms_content_protection@legacy.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-apl2/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][52] ([i915#1319] / [i915#1635]) -> [FAIL][53] ([fdo#110321])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-apl1/igt@kms_content_protection@lic.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-apl4/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][54] ([i915#1319]) -> [TIMEOUT][55] ([i915#1319] / [i915#1635])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-apl7/igt@kms_content_protection@srm.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-apl8/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          [FAIL][56] ([i915#357]) -> [FAIL][57] ([i915#357] / [i915#93] / [i915#95])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-kbl3/igt@kms_content_protection@uevent.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-kbl6/igt@kms_content_protection@uevent.html
    - shard-apl:          [FAIL][58] ([i915#357]) -> [FAIL][59] ([i915#357] / [i915#95])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-apl1/igt@kms_content_protection@uevent.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-apl6/igt@kms_content_protection@uevent.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          [FAIL][60] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][61] ([fdo#108145] / [i915#265])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#357]: https://gitlab.freedesktop.org/drm/intel/issues/357
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8556 -> Patchwork_17822

  CI-20190529: 20190529
  CI_DRM_8556: a12abc504361cc53eeb53c2948aebbd88709a901 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5684: bd399f5eb8263bb4a84ae6a5bb1a13d329e0515d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17822: 546e4806fc80f3557d3395a9a101d9c21e985323 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17822/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
