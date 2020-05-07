Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 283021C878C
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 13:06:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDE8C6E0E4;
	Thu,  7 May 2020 11:06:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 407116E0DF;
 Thu,  7 May 2020 11:06:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 36A83A010F;
 Thu,  7 May 2020 11:06:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 07 May 2020 11:06:40 -0000
Message-ID: <158884960019.2190.3884244442927108158@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200506205758.14689-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200506205758.14689-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_Mark_concurrent_submiss?=
 =?utf-8?q?ions_with_a_weak-dependency_=28rev2=29?=
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

Series: series starting with [1/3] drm/i915: Mark concurrent submissions with a weak-dependency (rev2)
URL   : https://patchwork.freedesktop.org/series/77007/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8441_full -> Patchwork_17597_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17597_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17597_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17597_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@hibernate:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-iclb7/igt@gem_eio@hibernate.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-iclb1/igt@gem_eio@hibernate.html

  * igt@perf@oa-exponents:
    - shard-apl:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-apl1/igt@perf@oa-exponents.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-apl3/igt@perf@oa-exponents.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8441_full and Patchwork_17597_full:

### New IGT tests (4) ###

  * igt@gem_exec_fence@submit@bcs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.07] s

  * igt@gem_exec_fence@submit@vcs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.05] s

  * igt@gem_exec_fence@submit@vcs1:
    - Statuses : 3 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_fence@submit@vecs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.01, 0.06] s

  

Known issues
------------

  Here are the changes found in Patchwork_17597_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1436] / [i915#716])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-kbl1/igt@gen9_exec_parse@allowed-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-kbl2/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-iclb:         [PASS][7] -> [TIMEOUT][8] ([i915#1346])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-iclb7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-iclb1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-panning-top-left-pipe-c-planes:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#1036])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-skl10/igt@kms_plane@plane-panning-top-left-pipe-c-planes.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-skl6/igt@kms_plane@plane-panning-top-left-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([fdo#108145] / [i915#265]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109441]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#31])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-kbl6/igt@kms_setmode@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-kbl7/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@oa-exponents:
    - shard-glk:          [PASS][19] -> [INCOMPLETE][20] ([i915#58] / [k.org#198133]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-glk2/igt@perf@oa-exponents.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-glk9/igt@perf@oa-exponents.html
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#69])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-skl6/igt@perf@oa-exponents.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-skl8/igt@perf@oa-exponents.html

  * igt@perf@stress-open-close:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#1356])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-skl8/igt@perf@stress-open-close.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-skl2/igt@perf@stress-open-close.html
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#1356])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-tglb6/igt@perf@stress-open-close.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-tglb6/igt@perf@stress-open-close.html
    - shard-glk:          [PASS][27] -> [INCOMPLETE][28] ([i915#1356] / [i915#58] / [k.org#198133])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-glk8/igt@perf@stress-open-close.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-glk8/igt@perf@stress-open-close.html
    - shard-apl:          [PASS][29] -> [INCOMPLETE][30] ([i915#1356])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-apl6/igt@perf@stress-open-close.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-apl4/igt@perf@stress-open-close.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][31] ([i915#69]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-skl9/igt@gem_eio@in-flight-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-skl5/igt@gem_eio@in-flight-suspend.html

  * {igt@gem_exec_fence@submit@rcs0}:
    - shard-tglb:         [INCOMPLETE][33] ([i915#1841]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-tglb8/igt@gem_exec_fence@submit@rcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-tglb8/igt@gem_exec_fence@submit@rcs0.html
    - shard-kbl:          [INCOMPLETE][35] ([i915#1841]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-kbl6/igt@gem_exec_fence@submit@rcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-kbl7/igt@gem_exec_fence@submit@rcs0.html
    - shard-skl:          [INCOMPLETE][37] ([i915#1841]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-skl5/igt@gem_exec_fence@submit@rcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-skl8/igt@gem_exec_fence@submit@rcs0.html
    - shard-glk:          [INCOMPLETE][39] ([i915#1841] / [i915#58] / [k.org#198133]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-glk6/igt@gem_exec_fence@submit@rcs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-glk7/igt@gem_exec_fence@submit@rcs0.html
    - shard-iclb:         [INCOMPLETE][41] ([i915#1841]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-iclb7/igt@gem_exec_fence@submit@rcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-iclb1/igt@gem_exec_fence@submit@rcs0.html
    - shard-apl:          [INCOMPLETE][43] ([i915#1841]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-apl6/igt@gem_exec_fence@submit@rcs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-apl3/igt@gem_exec_fence@submit@rcs0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][45] ([i915#716]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-skl5/igt@gen9_exec_parse@allowed-single.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-skl8/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +4 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:
    - shard-skl:          [FAIL][49] ([i915#54]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][51] ([i915#300]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - shard-hsw:          [INCOMPLETE][53] ([i915#61]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-hsw7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-hsw7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic:
    - shard-glk:          [FAIL][55] ([i915#67]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-glk5/igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-glk4/igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-c-torture-bo:
    - shard-hsw:          [DMESG-WARN][57] ([i915#128]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-hsw4/igt@kms_cursor_legacy@pipe-c-torture-bo.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-hsw4/igt@kms_cursor_legacy@pipe-c-torture-bo.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1}:
    - shard-apl:          [FAIL][59] ([i915#79]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-kbl:          [FAIL][61] ([i915#699] / [i915#93] / [i915#95]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-kbl6/igt@kms_flip_tiling@flip-changes-tiling.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-kbl7/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][63] ([i915#1188]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-skl10/igt@kms_hdr@bpc-switch.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-skl2/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_lowres@pipe-a-tiling-none:
    - shard-glk:          [FAIL][67] ([i915#899]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-none.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-none.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][71] ([i915#658]) -> [SKIP][72] ([i915#588])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][73] ([i915#468]) -> [FAIL][74] ([i915#454])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][75] ([i915#454]) -> [SKIP][76] ([i915#468])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-tglb6/igt@i915_pm_dc@dc6-psr.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][77] ([i915#1515]) -> [WARN][78] ([i915#1515])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][79] ([i915#1319]) -> [FAIL][80] ([fdo#110321] / [fdo#110336])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-apl3/igt@kms_content_protection@atomic-dpms.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-apl1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][81] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][82] ([i915#1319])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-apl8/igt@kms_content_protection@legacy.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-apl8/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          [TIMEOUT][83] ([i915#1319]) -> [FAIL][84] ([fdo#110321])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-kbl7/igt@kms_content_protection@lic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/shard-kbl4/igt@kms_content_protection@lic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1036]: https://gitlab.freedesktop.org/drm/intel/issues/1036
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1346]: https://gitlab.freedesktop.org/drm/intel/issues/1346
  [i915#1356]: https://gitlab.freedesktop.org/drm/intel/issues/1356
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1841]: https://gitlab.freedesktop.org/drm/intel/issues/1841
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#67]: https://gitlab.freedesktop.org/drm/intel/issues/67
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8441 -> Patchwork_17597

  CI-20190529: 20190529
  CI_DRM_8441: 6c0ee41a7c3201ef2a89800234803a95f65989be @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5637: fdc33f7e1adc5bb6a1ba88b6233aaf224174d75a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17597: b9060fd22920f225e0556c7e171f9630ac1056b7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
