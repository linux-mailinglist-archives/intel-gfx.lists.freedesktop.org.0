Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DBB1B1F98
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 09:13:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13BB16E87D;
	Tue, 21 Apr 2020 07:13:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E0A256E87D;
 Tue, 21 Apr 2020 07:13:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D9E67A47DB;
 Tue, 21 Apr 2020 07:13:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Date: Tue, 21 Apr 2020 07:13:44 -0000
Message-ID: <158745322486.17661.16125722960181061888@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200415193535.14597-1-matthew.s.atwood@intel.com>
In-Reply-To: <20200415193535.14597-1-matthew.s.atwood@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Wa=5F14011059788_=28rev4=29?=
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

Series: drm/i915/tgl: Wa_14011059788 (rev4)
URL   : https://patchwork.freedesktop.org/series/75990/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8335_full -> Patchwork_17393_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17393_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-kbl:          [PASS][1] -> [INCOMPLETE][2] ([i915#1373])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-kbl2/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-kbl1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#69])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-skl5/igt@i915_suspend@debugfs-reader.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-skl6/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#1119] / [i915#93] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-kbl6/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-kbl3/igt@kms_big_fb@linear-32bpp-rotate-0.html
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#1119] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-apl2/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-apl2/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#300])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [PASS][13] -> [FAIL][14] ([i915#57])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-hsw4/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([IGT#5])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109349])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#52] / [i915#54])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html

  * igt@kms_flip_tiling@flip-to-x-tiled:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#167])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-skl10/igt@kms_flip_tiling@flip-to-x-tiled.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-skl5/igt@kms_flip_tiling@flip-to-x-tiled.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][27] -> [FAIL][28] ([i915#31])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-hsw1/igt@kms_setmode@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-hsw6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-hsw:          [PASS][29] -> [INCOMPLETE][30] ([i915#61])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-hsw7/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-hsw7/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@rcs0}:
    - shard-apl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32] +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-apl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [INCOMPLETE][33] ([i915#151] / [i915#69]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-skl6/igt@i915_pm_rpm@system-suspend-execbuf.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-skl10/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-kbl:          [INCOMPLETE][35] ([i915#155] / [i915#95]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-kbl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-kbl7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_legacy@pipe-b-torture-move:
    - shard-iclb:         [DMESG-WARN][37] ([i915#128]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-iclb2/igt@kms_cursor_legacy@pipe-b-torture-move.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-iclb7/igt@kms_cursor_legacy@pipe-b-torture-move.html

  * igt@kms_cursor_legacy@pipe-c-torture-move:
    - shard-hsw:          [DMESG-WARN][39] ([i915#128]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-hsw7/igt@kms_cursor_legacy@pipe-c-torture-move.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-hsw4/igt@kms_cursor_legacy@pipe-c-torture-move.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-kbl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][43] ([fdo#108145] / [i915#265]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][45] ([fdo#109441]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][47] ([i915#454]) -> [SKIP][48] ([i915#468])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-tglb1/igt@i915_pm_dc@dc6-psr.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@gem-mmap-type:
    - shard-snb:          [SKIP][49] ([fdo#109271]) -> [INCOMPLETE][50] ([i915#82])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/shard-snb2/igt@i915_pm_rpm@gem-mmap-type.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/shard-snb2/igt@i915_pm_rpm@gem-mmap-type.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1373]: https://gitlab.freedesktop.org/drm/intel/issues/1373
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#167]: https://gitlab.freedesktop.org/drm/intel/issues/167
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8335 -> Patchwork_17393

  CI-20190529: 20190529
  CI_DRM_8335: ad015a5ae83e52e4eac4975e27c0db4d633345ce @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17393: 538b756324678b9b392e2b7edc1fe6e1e67194c4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
