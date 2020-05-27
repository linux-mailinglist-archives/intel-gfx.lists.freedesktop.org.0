Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D511E51FA
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 01:49:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75F976E11E;
	Wed, 27 May 2020 23:49:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AACFA6E11E;
 Wed, 27 May 2020 23:49:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A8EBEA0BA8;
 Wed, 27 May 2020 23:49:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Wed, 27 May 2020 23:49:52 -0000
Message-ID: <159062339268.343.14401712259980320659@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200527200022.28003-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200527200022.28003-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Minor_link_training_logic_fixes_for_dp=5Fmst?=
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

Series: drm/i915: Minor link training logic fixes for dp_mst
URL   : https://patchwork.freedesktop.org/series/77716/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8544_full -> Patchwork_17797_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17797_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17797_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17797_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-glk:          NOTRUN -> [TIMEOUT][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-glk8/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@runner@aborted:
    - shard-hsw:          NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-hsw7/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17797_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][3] -> [FAIL][4] ([i915#454])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#300])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [PASS][7] -> [DMESG-WARN][8] ([i915#1927])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-hsw2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-hsw7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@pipe-b-torture-move:
    - shard-iclb:         [PASS][9] -> [DMESG-WARN][10] ([i915#128])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-iclb7/igt@kms_cursor_legacy@pipe-b-torture-move.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-iclb4/igt@kms_cursor_legacy@pipe-b-torture-move.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109349])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109441]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-iclb6/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][15] -> [FAIL][16] ([i915#31])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-apl2/igt@kms_setmode@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-apl7/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#69])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-skl8/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-skl8/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-glk:          [FAIL][21] ([i915#1930]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-glk7/igt@gem_exec_reloc@basic-concurrent0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-glk6/igt@gem_exec_reloc@basic-concurrent0.html

  * {igt@gem_exec_reloc@basic-concurrent16}:
    - shard-snb:          [FAIL][23] ([i915#1930]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [INCOMPLETE][25] ([i915#155]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-kbl4/igt@gem_exec_suspend@basic-s3.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-kbl6/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28] +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-kbl7/igt@i915_suspend@forcewake.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-kbl2/igt@i915_suspend@forcewake.html
    - shard-skl:          [INCOMPLETE][29] ([i915#636] / [i915#69]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-skl5/igt@i915_suspend@forcewake.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-skl10/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [FAIL][31] ([i915#1119] / [i915#118] / [i915#95]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-glk1/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-apl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen:
    - shard-skl:          [FAIL][35] ([i915#54]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen.html

  * {igt@kms_flip@flip-vs-suspend@c-hdmi-a1}:
    - shard-hsw:          [INCOMPLETE][37] ([i915#61]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-hsw8/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-hsw1/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][39] ([i915#1188]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][41] ([fdo#108145] / [i915#265]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][43] ([fdo#109441]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][45] ([i915#1542]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-hsw7/igt@perf@blocking-parameterized.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-hsw2/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-apl:          [FAIL][47] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][48] ([i915#1319] / [i915#1635])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-apl6/igt@kms_content_protection@atomic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-apl3/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][49] ([i915#1319] / [i915#1635]) -> [FAIL][50] ([fdo#110321] / [fdo#110336] / [i915#95])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-apl3/igt@kms_content_protection@atomic-dpms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-apl1/igt@kms_content_protection@atomic-dpms.html
    - shard-kbl:          [TIMEOUT][51] ([i915#1319]) -> [FAIL][52] ([fdo#110321] / [fdo#110336] / [i915#93] / [i915#95])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-kbl7/igt@kms_content_protection@atomic-dpms.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-kbl2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-glk:          [DMESG-FAIL][53] ([i915#1925]) -> [DMESG-WARN][54] ([i915#1926] / [i915#1927])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-glk6/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-glk8/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][55] ([fdo#109642] / [fdo#111068]) -> [FAIL][56] ([i915#608])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-iclb3/igt@kms_psr2_su@page_flip.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8544 -> Patchwork_17797

  CI-20190529: 20190529
  CI_DRM_8544: c6c0a18e985d7a3fd4451e0e786e6522371ea9ee @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5680: f7e3772175c53f0c910f4513831791cb5bdcab04 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17797: d865c402a9c66c553cdf73d076f84cc5b9e017af @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
