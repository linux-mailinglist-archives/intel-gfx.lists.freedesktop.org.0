Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8B4187840
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 04:48:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87E4C89F03;
	Tue, 17 Mar 2020 03:48:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E5CBB89EF7;
 Tue, 17 Mar 2020 03:48:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DC2D1A00C7;
 Tue, 17 Mar 2020 03:48:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Tue, 17 Mar 2020 03:48:13 -0000
Message-ID: <158441689387.5180.8882640931610005881@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200316103759.12867-1-animesh.manna@intel.com>
In-Reply-To: <20200316103759.12867-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRFAg?=
 =?utf-8?q?Phy_compliance_auto_test_=28rev7=29?=
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

Series: DP Phy compliance auto test (rev7)
URL   : https://patchwork.freedesktop.org/series/71121/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8137_full -> Patchwork_16976_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16976_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16976_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16976_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@bcs0-fds:
    - shard-kbl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl7/igt@gem_exec_parallel@bcs0-fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-kbl6/igt@gem_exec_parallel@bcs0-fds.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@sysfs_preempt_timeout@timeout@rcs0}:
    - shard-skl:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-skl9/igt@sysfs_preempt_timeout@timeout@rcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_16976_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [PASS][4] -> [INCOMPLETE][5] ([i915#1402])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl6/igt@gem_ctx_persistence@close-replace-race.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-kbl7/igt@gem_ctx_persistence@close-replace-race.html
    - shard-skl:          [PASS][6] -> [INCOMPLETE][7] ([i915#1402])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-skl6/igt@gem_ctx_persistence@close-replace-race.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-skl8/igt@gem_ctx_persistence@close-replace-race.html
    - shard-glk:          [PASS][8] -> [INCOMPLETE][9] ([i915#1402] / [i915#58] / [k.org#198133])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-glk3/igt@gem_ctx_persistence@close-replace-race.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-glk8/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#109276] / [i915#677])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#112146]) +4 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb8/igt@gem_exec_schedule@wide-bsd.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-iclb4/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-tglb:         [PASS][14] -> [INCOMPLETE][15] ([i915#1318] / [i915#1401])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-tglb1/igt@gem_exec_whisper@basic-fds-forked.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-tglb2/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][16] -> [FAIL][17] ([i915#644])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][18] -> [INCOMPLETE][19] ([i915#58] / [k.org#198133])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-glk2/igt@gen9_exec_parse@allowed-all.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-glk2/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][20] -> [DMESG-WARN][21] ([i915#180]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#34])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][24] -> [FAIL][25] ([i915#1188])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][26] -> [DMESG-WARN][27] ([i915#180]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][28] -> [SKIP][29] ([fdo#109441]) +3 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][30] -> [FAIL][31] ([i915#31])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-glk2/igt@kms_setmode@basic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-glk2/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][32] -> [FAIL][33] ([i915#31])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl7/igt@kms_setmode@basic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-kbl3/igt@kms_setmode@basic.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [PASS][34] -> [SKIP][35] ([fdo#112080]) +7 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb1/igt@perf_pmu@init-busy-vcs1.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-iclb3/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][36] -> [SKIP][37] ([fdo#109276]) +19 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][38] ([fdo#110854]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb8/igt@gem_exec_balancer@smoke.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@bcs0-fds:
    - shard-apl:          [FAIL][40] -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-apl6/igt@gem_exec_parallel@bcs0-fds.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-apl8/igt@gem_exec_parallel@bcs0-fds.html
    - shard-tglb:         [FAIL][42] -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-tglb3/igt@gem_exec_parallel@bcs0-fds.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-tglb7/igt@gem_exec_parallel@bcs0-fds.html
    - shard-glk:          [FAIL][44] -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-glk8/igt@gem_exec_parallel@bcs0-fds.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-glk9/igt@gem_exec_parallel@bcs0-fds.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][46] ([fdo#112080]) -> [PASS][47] +16 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][48] ([fdo#109276] / [i915#677]) -> [PASS][49] +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb5/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][50] ([fdo#112146]) -> [PASS][51] +5 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][52] ([i915#677]) -> [PASS][53] +3 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-hsw:          [DMESG-WARN][54] ([fdo#111870]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw7/igt@gem_userptr_blits@dmabuf-unsync.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-hsw6/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][56] ([i915#180]) -> [PASS][57] +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][58] ([i915#716]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-skl3/igt@gen9_exec_parse@allowed-single.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-skl10/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][60] ([i915#447]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-iclb6/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [INCOMPLETE][62] ([i915#656]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-skl3/igt@i915_selftest@live@execlists.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-skl5/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][64] ([i915#72]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [DMESG-WARN][66] ([i915#180]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][68] ([fdo#109441]) -> [PASS][69] +3 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][70] ([fdo#109276]) -> [PASS][71] +20 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-iclb2/igt@prime_busy@hang-bsd2.html

  * {igt@sysfs_timeslice_duration@timeout@rcs0}:
    - shard-skl:          [FAIL][72] -> [PASS][73] +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-skl10/igt@sysfs_timeslice_duration@timeout@rcs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-skl1/igt@sysfs_timeslice_duration@timeout@rcs0.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [INCOMPLETE][74] ([i915#1402]) -> [TIMEOUT][75] ([i915#1340])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-tglb2/igt@gem_ctx_persistence@close-replace-race.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-tglb2/igt@gem_ctx_persistence@close-replace-race.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][76] ([i915#468]) -> [FAIL][77] ([i915#454])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html

  * igt@runner@aborted:
    - shard-hsw:          ([FAIL][78], [FAIL][79], [FAIL][80], [FAIL][81], [FAIL][82], [FAIL][83], [FAIL][84], [FAIL][85]) ([fdo#111870]) -> ([FAIL][86], [FAIL][87], [FAIL][88], [FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92], [FAIL][93], [FAIL][94]) ([fdo#111870] / [i915#478])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw6/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw7/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw6/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw2/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw1/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw5/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw5/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw2/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-hsw6/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-hsw4/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-hsw2/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-hsw6/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-hsw1/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-hsw1/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-hsw4/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-hsw6/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-hsw6/igt@runner@aborted.html
    - shard-kbl:          [FAIL][95] ([i915#92]) -> ([FAIL][96], [FAIL][97]) ([i915#1389] / [i915#1402] / [i915#92])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl3/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-kbl4/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-kbl7/igt@runner@aborted.html
    - shard-tglb:         [FAIL][98] ([i915#1389]) -> [FAIL][99] ([i915#1318])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-tglb2/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-tglb2/igt@runner@aborted.html
    - shard-skl:          ([FAIL][100], [FAIL][101]) ([i915#69]) -> [FAIL][102] ([i915#1402] / [i915#69])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-skl3/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-skl3/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/shard-skl8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1318]: https://gitlab.freedesktop.org/drm/intel/issues/1318
  [i915#1340]: https://gitlab.freedesktop.org/drm/intel/issues/1340
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1401]: https://gitlab.freedesktop.org/drm/intel/issues/1401
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#478]: https://gitlab.freedesktop.org/drm/intel/issues/478
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8137 -> Patchwork_16976

  CI-20190529: 20190529
  CI_DRM_8137: 5786b5e77cc17a1b494b9bdf3c3f29eedc2e2e7d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5510: e100092d50105463f58db531fa953c70cc58bb10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16976: 4ad08d0aeb29717115dee440c00328a747dff267 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16976/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
