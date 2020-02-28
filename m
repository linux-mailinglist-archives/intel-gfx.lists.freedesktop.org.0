Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B07D0173CFE
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 17:33:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 895F56F47D;
	Fri, 28 Feb 2020 16:33:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 791D26F478;
 Fri, 28 Feb 2020 16:33:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 72700A0088;
 Fri, 28 Feb 2020 16:33:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 28 Feb 2020 16:33:54 -0000
Message-ID: <158290763444.7475.6697081242295509403@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/20=5D_drm/i915=3A_Skip_barriers_inside_?=
 =?utf-8?q?waits_=28rev4=29?=
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

Series: series starting with [01/20] drm/i915: Skip barriers inside waits (rev4)
URL   : https://patchwork.freedesktop.org/series/73999/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8018_full -> Patchwork_16731_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16731_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16731_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16731_full:

### IGT changes ###

#### Possible regressions ####

  * {igt@i915_selftest@perf@request} (NEW):
    - shard-iclb:         NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-iclb2/igt@i915_selftest@perf@request.html
    - shard-skl:          NOTRUN -> [INCOMPLETE][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-skl1/igt@i915_selftest@perf@request.html
    - shard-tglb:         NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-tglb7/igt@i915_selftest@perf@request.html

  * {igt@i915_selftest@perf_request} (NEW):
    - shard-iclb:         NOTRUN -> [SKIP][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-iclb1/igt@i915_selftest@perf_request.html

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-tglb7/igt@runner@aborted.html

  
#### Warnings ####

  * igt@i915_selftest@live@gt_lrc:
    - shard-tglb:         [DMESG-FAIL][6] ([i915#1233]) -> [DMESG-FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-tglb1/igt@i915_selftest@live@gt_lrc.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-tglb3/igt@i915_selftest@live@gt_lrc.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8018_full and Patchwork_16731_full:

### New IGT tests (6) ###

  * igt@drm_mm@all:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_selftest@mock:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_selftest@perf:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_selftest@perf@request:
    - Statuses : 7 incomplete(s)
    - Exec time: [0.0] s

  * igt@i915_selftest@perf_request:
    - Statuses : 4 skip(s)
    - Exec time: [0.0] s

  * igt@kms_selftest@all:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_16731_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-snb:          [PASS][8] -> [FAIL][9] ([i915#1148])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-snb2/igt@gem_ctx_exec@basic-nohangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-snb2/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [PASS][10] -> [INCOMPLETE][11] ([fdo#103665] / [i915#1291])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-kbl4/igt@gem_ctx_persistence@close-replace-race.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-kbl4/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_shared@exec-shared-gtt-bsd1:
    - shard-tglb:         [PASS][12] -> [FAIL][13] ([i915#616])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-tglb6/igt@gem_ctx_shared@exec-shared-gtt-bsd1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-tglb1/igt@gem_ctx_shared@exec-shared-gtt-bsd1.html

  * igt@gem_exec_schedule@implicit-read-write-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([i915#677])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#112146])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][18] -> [FAIL][19] ([i915#413])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb2/igt@i915_pm_rps@waitboost.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-iclb6/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live@hangcheck:
    - shard-apl:          [PASS][20] -> [INCOMPLETE][21] ([fdo#103927])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-apl7/igt@i915_selftest@live@hangcheck.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-apl3/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][22] -> [DMESG-WARN][23] ([i915#180])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-kbl3/igt@i915_suspend@forcewake.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-kbl2/igt@i915_suspend@forcewake.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([i915#52] / [i915#54])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][28] -> [INCOMPLETE][29] ([i915#69])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-skl5/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][30] -> [FAIL][31] ([i915#1188]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([fdo#108145])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][34] -> [SKIP][35] ([fdo#109441]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-iclb6/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][36] -> [FAIL][37] ([i915#31])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-apl2/igt@kms_setmode@basic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-apl6/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][38] -> [FAIL][39] ([i915#31])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-kbl2/igt@kms_setmode@basic.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-kbl3/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-query-forked-hang:
    - shard-kbl:          [PASS][40] -> [DMESG-WARN][41] ([i915#62] / [i915#92]) +5 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-kbl7/igt@kms_vblank@pipe-b-query-forked-hang.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-kbl6/igt@kms_vblank@pipe-b-query-forked-hang.html

  * igt@perf_pmu@busy-accuracy-2-vcs1:
    - shard-iclb:         [PASS][42] -> [SKIP][43] ([fdo#112080]) +10 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb2/igt@perf_pmu@busy-accuracy-2-vcs1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-iclb6/igt@perf_pmu@busy-accuracy-2-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][44] -> [SKIP][45] ([fdo#109276]) +23 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][46] ([fdo#110841]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-independent-blt:
    - shard-tglb:         [FAIL][48] -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-tglb7/igt@gem_ctx_shared@q-independent-blt.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-tglb6/igt@gem_ctx_shared@q-independent-blt.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [FAIL][50] ([i915#1277]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-tglb1/igt@gem_exec_balancer@hang.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-tglb3/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][52] ([fdo#112080]) -> [PASS][53] +10 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][54] ([fdo#109276] / [i915#677]) -> [PASS][55] +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][56] ([i915#677]) -> [PASS][57] +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][58] ([fdo#112146]) -> [PASS][59] +6 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][60] ([i915#644]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [DMESG-WARN][62] ([i915#180]) -> [PASS][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-kbl3/igt@i915_suspend@fence-restore-untiled.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-kbl1/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen:
    - shard-skl:          [FAIL][64] ([i915#54]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][66] ([fdo#108145]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][68] ([fdo#109441]) -> [PASS][69] +4 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb4/igt@kms_psr@psr2_no_drrs.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][70] ([i915#180]) -> [PASS][71] +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][72] ([fdo#109276]) -> [PASS][73] +15 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][74] ([i915#716]) -> [INCOMPLETE][75] ([i915#58] / [k.org#198133])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-glk9/igt@gen9_exec_parse@allowed-all.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-glk3/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][76] ([fdo#109349]) -> [DMESG-WARN][77] ([i915#1226])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-kbl:          [DMESG-WARN][78] ([i915#180]) -> [DMESG-WARN][79] ([i915#62] / [i915#92])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-kbl2/igt@kms_flip@flip-vs-suspend.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/shard-kbl6/igt@kms_flip@flip-vs-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1148]: https://gitlab.freedesktop.org/drm/intel/issues/1148
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#1291]: https://gitlab.freedesktop.org/drm/intel/issues/1291
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#616]: https://gitlab.freedesktop.org/drm/intel/issues/616
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8018 -> Patchwork_16731

  CI-20190529: 20190529
  CI_DRM_8018: d2d7fd43fafd159b7d9d957340e4ed9775ab20b0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5473: d22b3507ff2678a05d69d47c0ddf6f0e72ee7ffd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16731: 720aff89c6c8efa0deb0c662afc100e8a713db0a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
