Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 545F7174D7A
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Mar 2020 14:08:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A78E6E446;
	Sun,  1 Mar 2020 13:08:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BEAD96E1FB;
 Sun,  1 Mar 2020 13:08:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B6808A0071;
 Sun,  1 Mar 2020 13:08:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dan Carpenter" <dan.carpenter@oracle.com>
Date: Sun, 01 Mar 2020 13:08:09 -0000
Message-ID: <158306808971.22450.11745193328089959764@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200228141413.qfjf4abr323drlo4@kili.mountain>
In-Reply-To: <20200228141413.qfjf4abr323drlo4@kili.mountain>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Fix_return_in_assert=5Fmmap=5Foffset=28=29?=
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

Series: drm/i915/selftests: Fix return in assert_mmap_offset()
URL   : https://patchwork.freedesktop.org/series/74081/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8032_full -> Patchwork_16763_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_16763_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16763_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16763_full:

### IGT changes ###

#### Warnings ####

  * igt@kms_atomic_transition@2x-modeset-transitions-nonblocking:
    - shard-iclb:         [SKIP][1] ([fdo#109280]) -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb6/igt@kms_atomic_transition@2x-modeset-transitions-nonblocking.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-iclb7/igt@kms_atomic_transition@2x-modeset-transitions-nonblocking.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@perf@stress-open-close}:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-skl5/igt@perf@stress-open-close.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-skl1/igt@perf@stress-open-close.html

  
Known issues
------------

  Here are the changes found in Patchwork_16763_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112080]) +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-apl3/igt@gem_ctx_isolation@rcs0-s3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-apl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#110854])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-iclb5/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([i915#677]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276] / [i915#677]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-vebox:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#859])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-glk2/igt@gem_exec_schedule@pi-shared-iova-vebox.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-glk9/igt@gem_exec_schedule@pi-shared-iova-vebox.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +5 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][19] -> [FAIL][20] ([i915#644])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-tglb:         [PASS][21] -> [FAIL][22] ([i915#644])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-tglb7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-tglb1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-kbl3/igt@i915_suspend@forcewake.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-kbl6/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#54])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#221])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-skl7/igt@kms_flip@flip-vs-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-skl1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [PASS][29] -> [INCOMPLETE][30] ([i915#61])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-hsw1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#34])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-glk9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-glk9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145] / [i915#265])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][37] -> [FAIL][38] ([i915#899])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109642] / [fdo#111068])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-iclb4/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109441]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-iclb5/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109276]) +17 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-iclb:         [INCOMPLETE][45] ([i915#1291]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb8/igt@gem_ctx_persistence@close-replace-race.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-iclb4/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_schedule@implicit-write-read-bsd2:
    - shard-iclb:         [SKIP][47] ([fdo#109276] / [i915#677]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb5/igt@gem_exec_schedule@implicit-write-read-bsd2.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][49] ([i915#677]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [SKIP][51] ([fdo#112146]) -> [PASS][52] +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb4/igt@gem_exec_schedule@wide-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-iclb5/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [FAIL][53] ([i915#644]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_atomic_transition@2x-modeset-transitions-nonblocking:
    - shard-hsw:          [TIMEOUT][55] -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-hsw7/igt@kms_atomic_transition@2x-modeset-transitions-nonblocking.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-hsw4/igt@kms_atomic_transition@2x-modeset-transitions-nonblocking.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][57] ([IGT#5]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +4 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-panning-top-left-pipe-a-planes:
    - shard-skl:          [FAIL][63] -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-skl9/igt@kms_plane@plane-panning-top-left-pipe-a-planes.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-skl2/igt@kms_plane@plane-panning-top-left-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][65] ([fdo#108145]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][67] ([i915#899]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - shard-skl:          [DMESG-WARN][69] ([IGT#6]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-skl10/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-skl3/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72] +3 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb7/igt@kms_psr@psr2_cursor_render.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][73] ([fdo#112080]) -> [PASS][74] +17 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb7/igt@perf_pmu@busy-vcs1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-iclb2/igt@perf_pmu@busy-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][75] ([fdo#109276]) -> [PASS][76] +21 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb5/igt@prime_busy@hang-bsd2.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][77] ([fdo#112080]) -> [FAIL][78] ([IGT#28])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][79] ([IGT#28]) -> [SKIP][80] ([fdo#112080])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][81] ([fdo#109349]) -> [DMESG-WARN][82] ([i915#1226])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1291]: https://gitlab.freedesktop.org/drm/intel/issues/1291
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#859]: https://gitlab.freedesktop.org/drm/intel/issues/859
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8032 -> Patchwork_16763

  CI-20190529: 20190529
  CI_DRM_8032: e61f34133ad908d4b455344daa7b4edb9fcf680c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5477: 3fe5828f45fc533ba4d9ee84dbb5aea320ce61bc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16763: b5ac082a9130804ebed1ded7b0b2dc7ea28e9f84 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
