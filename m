Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8C8201EB1
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Jun 2020 01:42:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A66E56ECD2;
	Fri, 19 Jun 2020 23:42:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F0FDE6ECD0;
 Fri, 19 Jun 2020 23:42:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C912EA47EA;
 Fri, 19 Jun 2020 23:42:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 19 Jun 2020 23:42:34 -0000
Message-ID: <159261015479.12533.8534815786216449835@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200619194038.5088-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200619194038.5088-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Avoid_kmalloc_under_i915-=3Emm=5Flock?=
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

Series: drm/i915/gem: Avoid kmalloc under i915->mm_lock
URL   : https://patchwork.freedesktop.org/series/78650/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8647_full -> Patchwork_17998_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17998_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#1930])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-glk7/igt@gem_exec_reloc@basic-concurrent0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-iclb:         [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-iclb5/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-iclb3/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-addfb-size-overflow:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#95]) +18 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-apl8/igt@kms_big_fb@x-tiled-addfb-size-overflow.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-apl6/igt@kms_big_fb@x-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][7] -> [DMESG-FAIL][8] ([i915#118] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-glk7/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_color@pipe-a-ctm-red-to-blue:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#93] / [i915#95]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-kbl2/igt@kms_color@pipe-a-ctm-red-to-blue.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-kbl2/igt@kms_color@pipe-a-ctm-red-to-blue.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge:
    - shard-glk:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-glk9/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-glk8/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-tglb:         [PASS][13] -> [DMESG-WARN][14] ([i915#128])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-tglb1/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-tglb1/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-kbl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-kbl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check@c-edp1:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1928])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-skl2/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-skl7/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-iclb:         [PASS][21] -> [FAIL][22] ([i915#49])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-tglb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_lease@page_flip_implicit_plane:
    - shard-skl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982]) +5 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-skl8/igt@kms_lease@page_flip_implicit_plane.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-skl3/igt@kms_lease@page_flip_implicit_plane.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][29] -> [DMESG-FAIL][30] ([fdo#108145] / [i915#1982])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-iclb2/igt@kms_psr@psr2_basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-iclb8/igt@kms_psr@psr2_basic.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-cleanup@bcs0:
    - shard-apl:          [DMESG-WARN][33] ([i915#95]) -> [PASS][34] +8 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-apl8/igt@gem_ctx_persistence@engines-cleanup@bcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-apl7/igt@gem_ctx_persistence@engines-cleanup@bcs0.html

  * igt@gem_shrink@reclaim:
    - shard-hsw:          [SKIP][35] ([fdo#109271]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-hsw6/igt@gem_shrink@reclaim.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-hsw8/igt@gem_shrink@reclaim.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][37] ([i915#402]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-tglb8/igt@i915_module_load@reload.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-tglb3/igt@i915_module_load@reload.html

  * igt@kms_color@pipe-a-ctm-red-to-blue:
    - shard-skl:          [DMESG-WARN][39] ([i915#1982]) -> [PASS][40] +9 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-skl4/igt@kms_color@pipe-a-ctm-red-to-blue.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-skl1/igt@kms_color@pipe-a-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +10 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-kbl:          [DMESG-WARN][43] ([i915#93] / [i915#95]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-kbl2/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-kbl2/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          [FAIL][45] ([i915#1928]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][47] ([i915#1188]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][49] ([i915#173]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-iclb1/igt@kms_psr@no_drrs.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-iclb4/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][51] ([fdo#109441]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-iclb3/igt@kms_psr@psr2_cursor_render.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-b-accuracy-idle:
    - shard-apl:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +3 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-apl8/igt@kms_vblank@pipe-b-accuracy-idle.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-apl7/igt@kms_vblank@pipe-b-accuracy-idle.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][55] ([i915#1542]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-iclb3/igt@perf@blocking-parameterized.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-iclb2/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [DMESG-WARN][58] ([i915#93] / [i915#95])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-kbl3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-kbl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          [FAIL][59] ([i915#265]) -> [DMESG-FAIL][60] ([i915#95])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8647/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 12)
------------------------------

  Additional (1): pig-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_8647 -> Patchwork_17998

  CI-20190529: 20190529
  CI_DRM_8647: 71ab536a49048aff9e9bd07abb012785388be53a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5714: f0ade50caf38574592886f55bb03cf80c574bb83 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17998: 04218f2bd97e5c2de77e5ffb28526b8169e55177 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17998/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
