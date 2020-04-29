Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 671AD1BEC9B
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 01:23:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93B996E0DA;
	Wed, 29 Apr 2020 23:22:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C649A6E0DA;
 Wed, 29 Apr 2020 23:22:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9DD30A47E6;
 Wed, 29 Apr 2020 23:22:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 29 Apr 2020 23:22:57 -0000
Message-ID: <158820257761.6697.6669448347382760483@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_FBC_fixes_=28rev2=29?=
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

Series: drm/i915: FBC fixes (rev2)
URL   : https://patchwork.freedesktop.org/series/76714/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8392_full -> Patchwork_17517_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17517_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2] ([i915#69])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-skl3/igt@i915_suspend@sysfs-reader.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-skl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-kbl:          [PASS][3] -> [FAIL][4] ([i915#54] / [i915#93] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled:
    - shard-snb:          [PASS][5] -> [SKIP][6] ([fdo#109271]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-snb2/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-snb6/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [PASS][7] -> [SKIP][8] ([i915#668]) +9 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#173])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-iclb7/igt@kms_psr@no_drrs.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109441]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#31])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-kbl1/igt@kms_setmode@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-kbl4/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-skl:          [FAIL][19] ([i915#1528]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-skl5/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-skl7/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][21] ([fdo#109276]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-iclb6/igt@gem_exec_params@invalid-bsd-ring.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-iclb4/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-kbl:          [DMESG-WARN][23] ([i915#1436] / [i915#716]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-kbl3/igt@gen9_exec_parse@allowed-single.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-kbl3/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - shard-glk:          [FAIL][25] ([i915#1119]) -> [PASS][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-glk1/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-glk6/igt@kms_big_fb@linear-16bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][27] ([i915#165] / [i915#180]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][29] ([fdo#109349]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_draw_crc@draw-method-rgb565-render-untiled:
    - shard-glk:          [FAIL][31] ([i915#52] / [i915#54]) -> [PASS][32] +6 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-glk5/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled:
    - shard-kbl:          [FAIL][33] ([fdo#108145] / [i915#177] / [i915#52] / [i915#54] / [i915#93] / [i915#95]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-kbl7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-kbl7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
    - shard-apl:          [FAIL][35] ([fdo#108145] / [i915#52] / [i915#54] / [i915#95]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-apl6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-apl6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1}:
    - shard-skl:          [FAIL][37] ([i915#46]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-edp1}:
    - shard-skl:          [INCOMPLETE][39] ([i915#198]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * {igt@kms_flip@flip-vs-suspend@b-dp1}:
    - shard-kbl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-kbl7/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-kbl7/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][43] ([i915#1188]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-apl2/igt@kms_hdr@bpc-switch-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-apl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [FAIL][47] ([i915#1036]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_lowres@pipe-a-tiling-none:
    - shard-glk:          [FAIL][49] ([i915#899]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-none.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-none.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][51] ([fdo#109441]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-iclb8/igt@kms_psr@psr2_primary_blt.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][53] ([i915#1542]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-hsw8/igt@perf@polling-parameterized.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-hsw5/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-snb:          [INCOMPLETE][55] ([i915#82]) -> [SKIP][56] ([fdo#109271])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-snb5/igt@i915_pm_dc@dc6-psr.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-snb6/igt@i915_pm_dc@dc6-psr.html
    - shard-tglb:         [FAIL][57] ([i915#454]) -> [SKIP][58] ([i915#468])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/shard-tglb6/igt@i915_pm_dc@dc6-psr.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1036]: https://gitlab.freedesktop.org/drm/intel/issues/1036
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8392 -> Patchwork_17517

  CI-20190529: 20190529
  CI_DRM_8392: c5ceaac881b4dc4eca6473abeb27342663c898d3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5614: d095827add11d4e8158b87683971ee659749d9a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17517: 15396082f189f069234e45031d13ee4568e0e64f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
