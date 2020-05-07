Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F7F1C9D3A
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 23:24:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA0776EA69;
	Thu,  7 May 2020 21:24:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 998206EA60;
 Thu,  7 May 2020 21:24:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 92D93A00CC;
 Thu,  7 May 2020 21:24:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 07 May 2020 21:24:47 -0000
Message-ID: <158888668757.2190.13471309195560588291@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200507152338.7452-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200507152338.7452-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=5D_drm/i915=3A_Mark_concurrent_submissi?=
 =?utf-8?q?ons_with_a_weak-dependency_=28rev3=29?=
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

Series: series starting with [v2] drm/i915: Mark concurrent submissions with a weak-dependency (rev3)
URL   : https://patchwork.freedesktop.org/series/77045/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8444_full -> Patchwork_17606_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17606_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17606_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17606_full:

### IGT changes ###

#### Possible regressions ####

  * igt@perf@oa-exponents:
    - shard-apl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-apl6/igt@perf@oa-exponents.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-apl6/igt@perf@oa-exponents.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8444_full and Patchwork_17606_full:

### New IGT tests (12) ###

  * igt@gem_exec_fence@submit3@bcs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_exec_fence@submit3@vcs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_exec_fence@submit3@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [0.01] s

  * igt@gem_exec_fence@submit3@vecs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_exec_fence@submit67@bcs0:
    - Statuses : 2 pass(s)
    - Exec time: [0.54, 0.72] s

  * igt@gem_exec_fence@submit67@vcs0:
    - Statuses : 2 pass(s)
    - Exec time: [0.56, 0.68] s

  * igt@gem_exec_fence@submit67@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [0.57, 0.70] s

  * igt@gem_exec_fence@submit67@vecs0:
    - Statuses : 2 pass(s)
    - Exec time: [0.56, 0.70] s

  * igt@gem_exec_fence@submit@bcs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.06] s

  * igt@gem_exec_fence@submit@vcs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.05] s

  * igt@gem_exec_fence@submit@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [0.01] s

  * igt@gem_exec_fence@submit@vecs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.01, 0.06] s

  

Known issues
------------

  Here are the changes found in Patchwork_17606_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:
    - shard-apl:          [PASS][3] -> [FAIL][4] ([i915#52] / [i915#54] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-apl2/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-apl8/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#49])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([fdo#108145] / [i915#265])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109441]) +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#31])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-apl7/igt@kms_setmode@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-apl7/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@enable-disable:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#69]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-skl5/igt@perf@enable-disable.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-skl10/igt@perf@enable-disable.html

  * igt@perf@oa-exponents:
    - shard-glk:          [PASS][19] -> [INCOMPLETE][20] ([i915#58] / [k.org#198133])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-glk4/igt@perf@oa-exponents.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-glk4/igt@perf@oa-exponents.html

  * igt@perf@stress-open-close:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#1356])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-skl7/igt@perf@stress-open-close.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-skl5/igt@perf@stress-open-close.html
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#1356])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-tglb1/igt@perf@stress-open-close.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-tglb1/igt@perf@stress-open-close.html
    - shard-glk:          [PASS][25] -> [INCOMPLETE][26] ([i915#1356] / [i915#58] / [k.org#198133])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-glk2/igt@perf@stress-open-close.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-glk6/igt@perf@stress-open-close.html
    - shard-apl:          [PASS][27] -> [INCOMPLETE][28] ([i915#1356])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-apl2/igt@perf@stress-open-close.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-apl8/igt@perf@stress-open-close.html

  
#### Possible fixes ####

  * {igt@gem_exec_fence@submit3@rcs0}:
    - shard-iclb:         [INCOMPLETE][29] ([i915#1846]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-iclb5/igt@gem_exec_fence@submit3@rcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-iclb5/igt@gem_exec_fence@submit3@rcs0.html
    - shard-apl:          [INCOMPLETE][31] ([i915#1846]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-apl6/igt@gem_exec_fence@submit3@rcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-apl4/igt@gem_exec_fence@submit3@rcs0.html
    - shard-glk:          [INCOMPLETE][33] ([i915#58] / [k.org#198133]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-glk6/igt@gem_exec_fence@submit3@rcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-glk7/igt@gem_exec_fence@submit3@rcs0.html
    - shard-tglb:         [INCOMPLETE][35] ([i915#1846]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-tglb5/igt@gem_exec_fence@submit3@rcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-tglb1/igt@gem_exec_fence@submit3@rcs0.html
    - shard-skl:          [INCOMPLETE][37] ([i915#1846]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-skl6/igt@gem_exec_fence@submit3@rcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-skl3/igt@gem_exec_fence@submit3@rcs0.html
    - shard-kbl:          [INCOMPLETE][39] ([i915#1846]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-kbl3/igt@gem_exec_fence@submit3@rcs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-kbl4/igt@gem_exec_fence@submit3@rcs0.html

  * {igt@gem_exec_fence@submit@rcs0}:
    - shard-tglb:         [INCOMPLETE][41] ([i915#1841]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-tglb2/igt@gem_exec_fence@submit@rcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-tglb5/igt@gem_exec_fence@submit@rcs0.html
    - shard-kbl:          [INCOMPLETE][43] ([i915#1841]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-kbl1/igt@gem_exec_fence@submit@rcs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-kbl2/igt@gem_exec_fence@submit@rcs0.html
    - shard-skl:          [INCOMPLETE][45] ([i915#1841]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-skl4/igt@gem_exec_fence@submit@rcs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-skl5/igt@gem_exec_fence@submit@rcs0.html
    - shard-glk:          [INCOMPLETE][47] ([i915#1841] / [i915#58] / [k.org#198133]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-glk8/igt@gem_exec_fence@submit@rcs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-glk9/igt@gem_exec_fence@submit@rcs0.html
    - shard-iclb:         [INCOMPLETE][49] ([i915#1841]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-iclb3/igt@gem_exec_fence@submit@rcs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-iclb6/igt@gem_exec_fence@submit@rcs0.html
    - shard-apl:          [INCOMPLETE][51] ([i915#1841]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-apl2/igt@gem_exec_fence@submit@rcs0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-apl8/igt@gem_exec_fence@submit@rcs0.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][53] ([fdo#109276]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-iclb8/igt@gem_exec_params@invalid-bsd-ring.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-iclb4/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][57] ([i915#72]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@pipe-c-torture-bo:
    - shard-hsw:          [DMESG-WARN][59] ([i915#128]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-hsw5/igt@kms_cursor_legacy@pipe-c-torture-bo.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-hsw8/igt@kms_cursor_legacy@pipe-c-torture-bo.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:
    - shard-kbl:          [FAIL][61] ([i915#177] / [i915#52] / [i915#54] / [i915#93] / [i915#95]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-kbl7/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-kbl1/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html

  * {igt@kms_flip@flip-vs-rmfb-interruptible@c-vga1}:
    - shard-hsw:          [INCOMPLETE][63] ([i915#61]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-hsw4/igt@kms_flip@flip-vs-rmfb-interruptible@c-vga1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-hsw6/igt@kms_flip@flip-vs-rmfb-interruptible@c-vga1.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-kbl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66] +5 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][67] ([i915#1188]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][69] ([fdo#108145] / [i915#265]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-iclb7/igt@kms_psr@psr2_cursor_plane_onoff.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][73] ([i915#69]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-skl4/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-skl5/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][75] ([i915#1542]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-hsw6/igt@perf@blocking-parameterized.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-hsw1/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][77] ([i915#658]) -> [SKIP][78] ([i915#588])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][79] ([i915#454]) -> [SKIP][80] ([i915#468])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-snb:          [SKIP][81] ([fdo#109271]) -> [INCOMPLETE][82] ([i915#82])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-snb6/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-snb1/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][83] ([i915#1319]) -> [FAIL][84] ([fdo#110321] / [i915#93] / [i915#95])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-kbl1/igt@kms_content_protection@srm.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-kbl2/igt@kms_content_protection@srm.html
    - shard-apl:          [FAIL][85] ([fdo#110321] / [i915#95]) -> [TIMEOUT][86] ([i915#1319])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-apl2/igt@kms_content_protection@srm.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-apl8/igt@kms_content_protection@srm.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][87] ([fdo#109642] / [fdo#111068]) -> [FAIL][88] ([i915#608])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-iclb4/igt@kms_psr2_su@page_flip.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][89] ([i915#180]) -> [INCOMPLETE][90] ([i915#155] / [i915#794])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1356]: https://gitlab.freedesktop.org/drm/intel/issues/1356
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1841]: https://gitlab.freedesktop.org/drm/intel/issues/1841
  [i915#1846]: https://gitlab.freedesktop.org/drm/intel/issues/1846
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8444 -> Patchwork_17606

  CI-20190529: 20190529
  CI_DRM_8444: 39544482386ac801dc4140df00a7e7e5bbea4d8a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5638: 50868ab3c532a86aa147fb555b69a1078c572b13 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17606: 51e347e643d7b35e05340cc9c7adbb9852a6a1ae @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
