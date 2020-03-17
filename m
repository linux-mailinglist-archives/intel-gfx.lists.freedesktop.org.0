Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4B71877F5
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 04:03:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 369C66E237;
	Tue, 17 Mar 2020 03:03:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 256A56E029;
 Tue, 17 Mar 2020 03:03:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1E12FA008A;
 Tue, 17 Mar 2020 03:03:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mario Kleiner" <mario.kleiner.de@gmail.com>
Date: Tue, 17 Mar 2020 03:03:10 -0000
Message-ID: <158441419009.5179.9215515666783126208@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200316042340.4783-1-mario.kleiner.de@gmail.com>
In-Reply-To: <20200316042340.4783-1-mario.kleiner.de@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_Add_dpcd_link=5Frate_quirk_for_Apple_15=22_MBP_2017?=
 =?utf-8?q?_=28rev3=29?=
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

Series: drm/i915/dp: Add dpcd link_rate quirk for Apple 15" MBP 2017 (rev3)
URL   : https://patchwork.freedesktop.org/series/74100/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8137_full -> Patchwork_16974_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16974_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@sysfs_preempt_timeout@timeout@rcs0}:
    - shard-skl:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-skl2/igt@sysfs_preempt_timeout@timeout@rcs0.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8137_full and Patchwork_16974_full:

### New IGT tests (6) ###

  * igt@sysfs_heartbeat_interval@idempotent:
    - Statuses :
    - Exec time: [None] s

  * igt@sysfs_heartbeat_interval@off:
    - Statuses :
    - Exec time: [None] s

  * igt@sysfs_heartbeat_interval@precise:
    - Statuses :
    - Exec time: [None] s

  * igt@sysfs_preempt_timeout@idempotent:
    - Statuses :
    - Exec time: [None] s

  * igt@sysfs_timeslice_duration@idempotent:
    - Statuses :
    - Exec time: [None] s

  * igt@sysfs_timeslice_duration@timeout:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_16974_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [PASS][2] -> [INCOMPLETE][3] ([i915#1402])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl6/igt@gem_ctx_persistence@close-replace-race.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-kbl6/igt@gem_ctx_persistence@close-replace-race.html
    - shard-iclb:         [PASS][4] -> [INCOMPLETE][5] ([i915#1402])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb8/igt@gem_ctx_persistence@close-replace-race.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-iclb5/igt@gem_ctx_persistence@close-replace-race.html
    - shard-glk:          [PASS][6] -> [INCOMPLETE][7] ([i915#1402] / [i915#58] / [k.org#198133])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-glk3/igt@gem_ctx_persistence@close-replace-race.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-glk4/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#110841])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#112146]) +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb8/igt@gem_exec_schedule@wide-bsd.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-iclb:         [PASS][12] -> [INCOMPLETE][13] ([i915#1318] / [i915#1401])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb3/igt@gem_exec_whisper@basic-fds-forked.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-iclb4/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#644])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][16] -> [INCOMPLETE][17] ([i915#300])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][18] -> [DMESG-WARN][19] ([i915#180]) +9 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([i915#34])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#1188])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][26] -> [FAIL][27] ([i915#173])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb2/igt@kms_psr@no_drrs.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][28] -> [SKIP][29] ([fdo#109441]) +3 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][30] -> [FAIL][31] ([i915#31])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-apl2/igt@kms_setmode@basic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-apl1/igt@kms_setmode@basic.html
    - shard-glk:          [PASS][32] -> [FAIL][33] ([i915#31])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-glk2/igt@kms_setmode@basic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-glk3/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][34] -> [FAIL][35] ([i915#31])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl7/igt@kms_setmode@basic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-kbl4/igt@kms_setmode@basic.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [PASS][36] -> [SKIP][37] ([fdo#112080]) +6 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb1/igt@perf_pmu@init-busy-vcs1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-iclb8/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][38] -> [SKIP][39] ([fdo#109276]) +11 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][40] ([fdo#112080]) -> [PASS][41] +12 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb5/igt@gem_busy@busy-vcs1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-apl:          [INCOMPLETE][42] ([fdo#103927] / [i915#1402]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-apl1/igt@gem_ctx_persistence@close-replace-race.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-apl1/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][44] ([fdo#110854]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb8/igt@gem_exec_balancer@smoke.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@bcs0-fds:
    - shard-tglb:         [FAIL][46] -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-tglb3/igt@gem_exec_parallel@bcs0-fds.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-tglb6/igt@gem_exec_parallel@bcs0-fds.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [SKIP][48] ([fdo#109276] / [i915#677]) -> [PASS][49] +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd2.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd1:
    - shard-iclb:         [SKIP][50] ([fdo#109276]) -> [PASS][51] +11 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][52] ([i915#677]) -> [PASS][53] +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [SKIP][54] ([fdo#112146]) -> [PASS][55] +3 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-iclb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][56] ([i915#180]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][58] ([i915#716]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-skl3/igt@gen9_exec_parse@allowed-single.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-skl5/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][60] ([i915#447]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-iclb6/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [INCOMPLETE][62] ([i915#656]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-skl3/igt@i915_selftest@live@execlists.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-skl8/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][64] ([i915#72]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][66] ([fdo#109349]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [DMESG-WARN][68] ([i915#180]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][70] ([fdo#109441]) -> [PASS][71] +3 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb8/igt@kms_psr@psr2_no_drrs.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][72] ([i915#468]) -> [FAIL][73] ([i915#454])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][74] ([i915#92]) -> ([FAIL][75], [FAIL][76]) ([i915#1389] / [i915#1402] / [i915#92])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl3/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-kbl1/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-kbl6/igt@runner@aborted.html
    - shard-apl:          ([FAIL][77], [FAIL][78]) ([fdo#103927] / [i915#1402]) -> [FAIL][79] ([fdo#103927])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-apl3/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-apl1/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/shard-apl2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1318]: https://gitlab.freedesktop.org/drm/intel/issues/1318
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1401]: https://gitlab.freedesktop.org/drm/intel/issues/1401
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
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
  * Linux: CI_DRM_8137 -> Patchwork_16974

  CI-20190529: 20190529
  CI_DRM_8137: 5786b5e77cc17a1b494b9bdf3c3f29eedc2e2e7d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5510: e100092d50105463f58db531fa953c70cc58bb10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16974: 3d21f79cfaf691c090222cc2db9655b6379ef2d3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
