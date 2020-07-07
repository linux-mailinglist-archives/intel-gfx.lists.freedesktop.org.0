Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C37AA216DE0
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 15:37:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42ED989C56;
	Tue,  7 Jul 2020 13:37:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 66BB589BAB;
 Tue,  7 Jul 2020 13:37:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F78AA0019;
 Tue,  7 Jul 2020 13:37:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 07 Jul 2020 13:37:52 -0000
Message-ID: <159412907235.7663.13474438910441057463@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200707104819.10877-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200707104819.10877-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/12=5D_drm/i915/gt=3A_Decouple_completed?=
 =?utf-8?q?_requests_on_unwind?=
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

Series: series starting with [01/12] drm/i915/gt: Decouple completed requests on unwind
URL   : https://patchwork.freedesktop.org/series/79183/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8709_full -> Patchwork_18093_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18093_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#1930])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-glk1/igt@gem_exec_reloc@basic-concurrent0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-glk7/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-contexts-priority:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-glk5/igt@gem_exec_whisper@basic-contexts-priority.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-glk8/igt@gem_exec_whisper@basic-contexts-priority.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1635] / [i915#95]) +13 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-apl8/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-apl7/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][7] -> [DMESG-FAIL][8] ([i915#118] / [i915#95]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-glk5/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_color@pipe-a-gamma:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#93] / [i915#95]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-kbl2/igt@kms_color@pipe-a-gamma.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-kbl4/igt@kms_color@pipe-a-gamma.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +6 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-skl7/igt@kms_color@pipe-c-ctm-0-25.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-skl2/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#49])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant:
    - shard-kbl:          [PASS][17] -> [DMESG-FAIL][18] ([fdo#108145] / [i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
    - shard-apl:          [PASS][19] -> [DMESG-FAIL][20] ([fdo#108145] / [i915#1635] / [i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145] / [i915#265]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-b-query-forked-busy:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-apl3/igt@kms_vblank@pipe-b-query-forked-busy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-apl2/igt@kms_vblank@pipe-b-query-forked-busy.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#1542])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-iclb1/igt@perf@blocking-parameterized.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-iclb3/igt@perf@blocking-parameterized.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][29] -> [FAIL][30] ([i915#1820])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-kbl6/igt@perf_pmu@semaphore-busy@rcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-kbl3/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-internal-10ms:
    - shard-apl:          [DMESG-WARN][31] ([i915#1635] / [i915#95]) -> [PASS][32] +11 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-apl4/igt@gem_eio@in-flight-internal-10ms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-apl3/igt@gem_eio@in-flight-internal-10ms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [FAIL][33] ([i915#454]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-skl9/igt@i915_pm_dc@dc6-psr.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-skl4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [INCOMPLETE][35] ([i915#198] / [i915#2110]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-skl5/igt@i915_selftest@mock@requests.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-skl9/igt@i915_selftest@mock@requests.html

  * igt@kms_cursor_legacy@pipe-b-torture-bo:
    - shard-tglb:         [DMESG-WARN][37] ([i915#128]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-tglb8/igt@kms_cursor_legacy@pipe-b-torture-bo.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-tglb1/igt@kms_cursor_legacy@pipe-b-torture-bo.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][39] ([i915#79]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-skl:          [INCOMPLETE][41] ([i915#198]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +10 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:
    - shard-tglb:         [DMESG-WARN][45] ([i915#1982]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html

  * igt@kms_plane@plane-position-covered-pipe-a-planes:
    - shard-tglb:         [DMESG-WARN][47] ([i915#402]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-tglb8/igt@kms_plane@plane-position-covered-pipe-a-planes.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-tglb1/igt@kms_plane@plane-position-covered-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant:
    - shard-skl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +4 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][51] ([i915#69]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-skl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-skl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-spin-others@vcs0:
    - shard-snb:          [WARN][53] ([i915#2036]) -> [WARN][54] ([i915#2021])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-snb6/igt@gem_exec_reloc@basic-spin-others@vcs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-snb1/igt@gem_exec_reloc@basic-spin-others@vcs0.html

  * igt@kms_cursor_crc@pipe-d-cursor-size-change:
    - shard-apl:          [SKIP][55] ([fdo#109271]) -> [SKIP][56] ([fdo#109271] / [i915#1635]) +6 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-apl8/igt@kms_cursor_crc@pipe-d-cursor-size-change.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-apl7/igt@kms_cursor_crc@pipe-d-cursor-size-change.html

  * igt@kms_plane@plane-panning-bottom-right-pipe-d-planes:
    - shard-apl:          [SKIP][57] ([fdo#109271] / [i915#1635]) -> [SKIP][58] ([fdo#109271]) +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-apl4/igt@kms_plane@plane-panning-bottom-right-pipe-d-planes.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-apl8/igt@kms_plane@plane-panning-bottom-right-pipe-d-planes.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][59], [FAIL][60], [FAIL][61]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][62] ([i915#1635] / [i915#2110])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-apl7/igt@runner@aborted.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-apl7/igt@runner@aborted.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-apl6/igt@runner@aborted.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-apl4/igt@runner@aborted.html
    - shard-skl:          ([FAIL][63], [FAIL][64]) ([i915#2110] / [i915#69]) -> [FAIL][65] ([i915#69])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-skl10/igt@runner@aborted.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8709/shard-skl5/igt@runner@aborted.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/shard-skl3/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2021]: https://gitlab.freedesktop.org/drm/intel/issues/2021
  [i915#2036]: https://gitlab.freedesktop.org/drm/intel/issues/2036
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8709 -> Patchwork_18093

  CI-20190529: 20190529
  CI_DRM_8709: b04f40402fb90e1be9f683434a9821a656be0952 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5726: 5da80efbc7a2d5bd7b30c0f9eb4b5d001c99b558 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18093: 07df3fb1ebbe9b1d764d6a13859c88408cd344f0 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18093/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
