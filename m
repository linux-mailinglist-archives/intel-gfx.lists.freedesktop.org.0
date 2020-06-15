Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F9D1F9E73
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 19:30:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 938CA6E454;
	Mon, 15 Jun 2020 17:30:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 21EA26E454;
 Mon, 15 Jun 2020 17:30:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1AFFEA3C0D;
 Mon, 15 Jun 2020 17:30:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Date: Mon, 15 Jun 2020 17:30:29 -0000
Message-ID: <159224222907.16139.6430906840021452793@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200615145415.1775-1-christian.koenig@amd.com>
In-Reply-To: <20200615145415.1775-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/mm=3A_remove_unused_rb=5Fhole?=
 =?utf-8?b?X3NpemUoKQ==?=
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

Series: series starting with [1/3] drm/mm: remove unused rb_hole_size()
URL   : https://patchwork.freedesktop.org/series/78376/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8627_full -> Patchwork_17951_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17951_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-tglb1/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-tglb5/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#165])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-kbl1/igt@i915_pm_rpm@system-suspend-modeset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-kbl2/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#95]) +18 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-apl3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-apl1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-iclb:         [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-tglb:         [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-tglb5/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-tglb7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([fdo#108145] / [i915#265]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-yf:
    - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +10 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-skl3/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-skl9/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-iclb1/igt@kms_psr@psr2_cursor_render.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#1820])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-kbl3/igt@perf_pmu@semaphore-busy@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@sliced:
    - shard-tglb:         [TIMEOUT][21] ([i915#1936]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-tglb6/igt@gem_exec_balancer@sliced.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-tglb8/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_schedule@implicit-read-write@rcs0:
    - shard-snb:          [INCOMPLETE][23] ([i915#82]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-snb2/igt@gem_exec_schedule@implicit-read-write@rcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-snb6/igt@gem_exec_schedule@implicit-read-write@rcs0.html

  * {igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@edp-1-pipe-a}:
    - shard-tglb:         [DMESG-WARN][25] ([i915#1982]) -> [PASS][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-tglb1/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@edp-1-pipe-a.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-tglb5/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@edp-1-pipe-a.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-apl:          [DMESG-WARN][27] ([i915#1982]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-apl4/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-apl7/igt@kms_big_fb@linear-64bpp-rotate-180.html
    - shard-glk:          [DMESG-FAIL][29] ([i915#118] / [i915#95]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-glk6/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-apl:          [DMESG-WARN][31] ([i915#95]) -> [PASS][32] +16 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-apl7/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-apl3/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_flip@2x-wf_vblank-ts-check@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [DMESG-WARN][33] ([i915#1982]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-glk1/igt@kms_flip@2x-wf_vblank-ts-check@ab-hdmi-a1-hdmi-a2.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-glk8/igt@kms_flip@2x-wf_vblank-ts-check@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [DMESG-WARN][35] ([i915#1982]) -> [PASS][36] +10 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-skl10/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-skl4/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][37] ([i915#1928]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][39] ([i915#173]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-iclb1/igt@kms_psr@no_drrs.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-iclb7/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][41] ([fdo#109441]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-iclb7/igt@kms_psr@psr2_primary_mmap_gtt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-tglb:         [TIMEOUT][43] -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-tglb6/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-tglb8/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][45] ([i915#31]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-kbl4/igt@kms_setmode@basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-kbl3/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][49] ([i915#1542]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-iclb4/igt@perf@blocking-parameterized.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-iclb4/igt@perf@blocking-parameterized.html

  * igt@syncobj_wait@multi-wait-for-submit-unsubmitted-submitted:
    - shard-snb:          [TIMEOUT][51] ([i915#1958]) -> [PASS][52] +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-snb6/igt@syncobj_wait@multi-wait-for-submit-unsubmitted-submitted.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-snb5/igt@syncobj_wait@multi-wait-for-submit-unsubmitted-submitted.html

  
#### Warnings ####

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-snb:          [TIMEOUT][53] ([i915#1958]) -> [SKIP][54] ([fdo#109271]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-snb6/igt@gem_exec_balancer@invalid-bonds.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-snb5/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [TIMEOUT][55] ([i915#1958]) -> [FAIL][56] ([i915#1930])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][57] ([i915#454]) -> [SKIP][58] ([i915#468])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-tglb:         [SKIP][59] ([fdo#111719]) -> [SKIP][60] ([fdo#109289] / [fdo#111719])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-tglb1/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-tglb6/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][61] ([i915#1319] / [i915#1958]) -> [TIMEOUT][62] ([i915#1319])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-kbl4/igt@kms_content_protection@atomic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-kbl3/igt@kms_content_protection@atomic.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         [TIMEOUT][63] -> [SKIP][64] ([fdo#111825])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][65] ([fdo#108145] / [i915#265]) -> [DMESG-WARN][66] ([i915#1982])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8627/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111719]: https://bugs.freedesktop.org/show_bug.cgi?id=111719
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1936]: https://gitlab.freedesktop.org/drm/intel/issues/1936
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8627 -> Patchwork_17951

  CI-20190529: 20190529
  CI_DRM_8627: 593c112156feb0f6159814f2276a32c90f243823 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5710: f524eee47930601ad7b4cba9d40c26d68dc7d250 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17951: ef8803bbb4c34b9aa3afeba137902113894fc5b8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17951/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
