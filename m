Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 092671874F9
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 22:44:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49B9F6E047;
	Mon, 16 Mar 2020 21:44:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B7B3D6E047;
 Mon, 16 Mar 2020 21:44:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AFE58A0009;
 Mon, 16 Mar 2020 21:44:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 16 Mar 2020 21:44:15 -0000
Message-ID: <158439505571.18996.13428580738840484721@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200313162054.16009-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200313162054.16009-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_DisplayID_parser_fixes?=
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

Series: drm/edid: DisplayID parser fixes
URL   : https://patchwork.freedesktop.org/series/74689/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8137_full -> Patchwork_16968_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16968_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16968_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16968_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@bcs0-fds:
    - shard-kbl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl7/igt@gem_exec_parallel@bcs0-fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-kbl2/igt@gem_exec_parallel@bcs0-fds.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@sysfs_preempt_timeout@timeout@rcs0}:
    - shard-skl:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-skl5/igt@sysfs_preempt_timeout@timeout@rcs0.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8137_full and Patchwork_16968_full:

### New IGT tests (2) ###

  * igt@sysfs_heartbeat_interval@invalid:
    - Statuses :
    - Exec time: [None] s

  * igt@sysfs_timeslice_duration@idempotent:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_16968_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [PASS][4] -> [INCOMPLETE][5] ([i915#1402])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl6/igt@gem_ctx_persistence@close-replace-race.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-kbl4/igt@gem_ctx_persistence@close-replace-race.html
    - shard-iclb:         [PASS][6] -> [TIMEOUT][7] ([i915#1340])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb8/igt@gem_ctx_persistence@close-replace-race.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-iclb6/igt@gem_ctx_persistence@close-replace-race.html
    - shard-skl:          [PASS][8] -> [INCOMPLETE][9] ([i915#1402])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-skl6/igt@gem_ctx_persistence@close-replace-race.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-skl2/igt@gem_ctx_persistence@close-replace-race.html
    - shard-glk:          [PASS][10] -> [INCOMPLETE][11] ([i915#1402] / [i915#58] / [k.org#198133])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-glk3/igt@gem_ctx_persistence@close-replace-race.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-glk8/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#110841])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#109276] / [i915#677]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#112146]) +8 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-apl:          [PASS][18] -> [DMESG-WARN][19] ([i915#183])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-apl4/igt@gem_tiled_swapping@non-threaded.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-apl4/igt@gem_tiled_swapping@non-threaded.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][20] -> [FAIL][21] ([i915#413])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb5/igt@i915_pm_rps@reset.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-iclb4/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live@execlists:
    - shard-glk:          [PASS][22] -> [INCOMPLETE][23] ([i915#58] / [i915#656] / [k.org#198133])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-glk6/igt@i915_selftest@live@execlists.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-glk1/igt@i915_selftest@live@execlists.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-glk:          [PASS][26] -> [FAIL][27] ([i915#34])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-glk7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][28] -> [FAIL][29] ([i915#79])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-glk2/igt@kms_flip@flip-vs-expired-vblank.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-glk3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +5 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][32] -> [INCOMPLETE][33] ([i915#69])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][34] -> [SKIP][35] ([fdo#109441]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][36] -> [FAIL][37] ([i915#31])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-glk2/igt@kms_setmode@basic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-glk3/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][38] -> [FAIL][39] ([i915#31])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl7/igt@kms_setmode@basic.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-kbl2/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][40] -> [SKIP][41] ([fdo#112080]) +13 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][42] -> [SKIP][43] ([fdo#109276]) +22 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][44] ([fdo#112080]) -> [PASS][45] +12 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb5/igt@gem_busy@busy-vcs1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-iclb4/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [INCOMPLETE][46] ([i915#1402]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-tglb2/igt@gem_ctx_persistence@close-replace-race.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-tglb1/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_parallel@bcs0-fds:
    - shard-iclb:         [FAIL][48] -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb2/igt@gem_exec_parallel@bcs0-fds.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-iclb2/igt@gem_exec_parallel@bcs0-fds.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [SKIP][50] ([fdo#109276] / [i915#677]) -> [PASS][51] +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd2.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd1:
    - shard-iclb:         [SKIP][52] ([fdo#109276]) -> [PASS][53] +19 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][54] ([i915#677]) -> [PASS][55] +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][56] ([fdo#112146]) -> [PASS][57] +7 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-hsw:          [DMESG-WARN][58] ([fdo#111870]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw7/igt@gem_userptr_blits@dmabuf-unsync.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-hsw4/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][60] ([i915#180]) -> [PASS][61] +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][62] ([i915#716]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-skl3/igt@gen9_exec_parse@allowed-single.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-skl6/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][64] ([i915#447]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-iclb4/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [INCOMPLETE][66] ([i915#656]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-skl3/igt@i915_selftest@live@execlists.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-skl10/igt@i915_selftest@live@execlists.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled:
    - shard-skl:          [FAIL][68] ([fdo#108145] / [i915#177] / [i915#52] / [i915#54]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-skl5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-skl2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [DMESG-WARN][70] ([i915#180]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][72] ([i915#658]) -> [SKIP][73] ([i915#588])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][74] ([i915#468]) -> [FAIL][75] ([i915#454])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@runner@aborted:
    - shard-hsw:          ([FAIL][76], [FAIL][77], [FAIL][78], [FAIL][79], [FAIL][80], [FAIL][81], [FAIL][82], [FAIL][83]) ([fdo#111870]) -> ([FAIL][84], [FAIL][85], [FAIL][86], [FAIL][87], [FAIL][88], [FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92]) ([fdo#111870] / [i915#478])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw7/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw6/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw6/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw2/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw1/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw5/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw5/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw2/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-hsw1/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-hsw5/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-hsw2/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-hsw4/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-hsw4/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-hsw1/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-hsw2/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-hsw1/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-hsw2/igt@runner@aborted.html
    - shard-kbl:          [FAIL][93] ([i915#92]) -> ([FAIL][94], [FAIL][95]) ([i915#1389] / [i915#1402] / [i915#92])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl3/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-kbl4/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-kbl1/igt@runner@aborted.html
    - shard-skl:          ([FAIL][96], [FAIL][97]) ([i915#69]) -> [FAIL][98] ([i915#1402] / [i915#69])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-skl3/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-skl3/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/shard-skl2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1340]: https://gitlab.freedesktop.org/drm/intel/issues/1340
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#183]: https://gitlab.freedesktop.org/drm/intel/issues/183
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#478]: https://gitlab.freedesktop.org/drm/intel/issues/478
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8137 -> Patchwork_16968

  CI-20190529: 20190529
  CI_DRM_8137: 5786b5e77cc17a1b494b9bdf3c3f29eedc2e2e7d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5510: e100092d50105463f58db531fa953c70cc58bb10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16968: 609d707c7434c8dfa31c7f685efdce7d4367387c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16968/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
