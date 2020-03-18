Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB82A189AB5
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 12:33:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5F886E896;
	Wed, 18 Mar 2020 11:33:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 65ADC6E896;
 Wed, 18 Mar 2020 11:33:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5E10CA0094;
 Wed, 18 Mar 2020 11:33:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Wed, 18 Mar 2020 11:33:39 -0000
Message-ID: <158453121935.25100.3681565132167482421@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200304125118.12335-1-anshuman.gupta@intel.com>
In-Reply-To: <20200304125118.12335-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/edp=3A_Ignore_short_pulse_when_panel_powered_off_=28rev3?=
 =?utf-8?q?=29?=
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

Series: drm/i915/edp: Ignore short pulse when panel powered off (rev3)
URL   : https://patchwork.freedesktop.org/series/74265/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8145_full -> Patchwork_17004_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17004_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#977])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-tglb2/igt@gem_busy@close-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-tglb2/igt@gem_busy@close-race.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#677])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [i915#677]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +19 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-iclb4/igt@gem_exec_schedule@out-order-bsd2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-iclb5/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-tglb:         [PASS][11] -> [TIMEOUT][12] ([i915#1408])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-tglb7/igt@gem_exec_whisper@basic-fds-priority.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-tglb1/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-apl2/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-random:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#54])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-256x85-random.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-256x85-random.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#72])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([IGT#5])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#52] / [i915#54])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-skl2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#79])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [PASS][27] -> [INCOMPLETE][28] ([i915#61])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-hsw6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109642] / [fdo#111068])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-iclb4/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#173])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-iclb3/igt@kms_psr@no_drrs.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-iclb2/igt@kms_psr@psr2_basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-iclb5/igt@kms_psr@psr2_basic.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][37] -> [FAIL][38] ([i915#31])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-apl8/igt@kms_setmode@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-apl8/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#112080]) +17 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-iclb3/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][41] ([fdo#110841]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][43] ([fdo#110854]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][45] ([fdo#112080]) -> [PASS][46] +16 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [SKIP][47] ([fdo#109276] / [i915#677]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-iclb3/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][49] ([i915#677]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [SKIP][51] ([fdo#112146]) -> [PASS][52] +6 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-iclb3/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-skl:          [FAIL][53] -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-skl10/igt@gem_exec_whisper@basic-queues-priority.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-skl8/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_color@pipe-a-legacy-gamma:
    - shard-skl:          [FAIL][57] ([fdo#108145] / [i915#71]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-skl2/igt@kms_color@pipe-a-legacy-gamma.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-skl4/igt@kms_color@pipe-a-legacy-gamma.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-apl8/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-iclb:         [INCOMPLETE][61] ([i915#1185] / [i915#250]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][63] ([fdo#108145] / [i915#265]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][67] ([fdo#109276]) -> [PASS][68] +25 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-iclb3/igt@prime_busy@hang-bsd2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-iclb4/igt@prime_busy@hang-bsd2.html

  * {igt@sysfs_timeslice_duration@timeout@rcs0}:
    - shard-skl:          [FAIL][69] ([i915#1459]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-skl3/igt@sysfs_timeslice_duration@timeout@rcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-skl6/igt@sysfs_timeslice_duration@timeout@rcs0.html

  
#### Warnings ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][71] ([i915#716]) -> [INCOMPLETE][72] ([i915#58] / [k.org#198133])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-glk5/igt@gen9_exec_parse@allowed-all.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-glk3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-snb:          [INCOMPLETE][73] ([i915#82]) -> [SKIP][74] ([fdo#109271])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8145/shard-snb4/igt@i915_pm_dc@dc5-psr.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/shard-snb6/igt@i915_pm_dc@dc5-psr.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1408]: https://gitlab.freedesktop.org/drm/intel/issues/1408
  [i915#1459]: https://gitlab.freedesktop.org/drm/intel/issues/1459
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#71]: https://gitlab.freedesktop.org/drm/intel/issues/71
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#977]: https://gitlab.freedesktop.org/drm/intel/issues/977
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8145 -> Patchwork_17004

  CI-20190529: 20190529
  CI_DRM_8145: 5e893da0b8c2bfec015c5eaa7981e1ffab1d7c9c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5518: ee05a571255783837b18d626c4dff6cd9613cee2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17004: 868d9767077c45136ca958c1011e25d4b19e48cb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17004/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
