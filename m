Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F7A13E8F2
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 18:35:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EADAD6EE54;
	Thu, 16 Jan 2020 17:35:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9212A6E231;
 Thu, 16 Jan 2020 17:35:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8966EA47E0;
 Thu, 16 Jan 2020 17:35:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Thu, 16 Jan 2020 17:35:20 -0000
Message-ID: <157919612055.12912.16036172986465579908@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1579010266.git.jani.nikula@intel.com>
In-Reply-To: <cover.1579010266.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_eDP_DPCD_aux_backlight_fixes_=28rev5=29?=
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

Series: drm/i915: eDP DPCD aux backlight fixes (rev5)
URL   : https://patchwork.freedesktop.org/series/69914/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7739_full -> Patchwork_16093_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16093_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16093_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16093_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_cs_tlb@vcs0:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-tglb4/igt@gem_cs_tlb@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-tglb4/igt@gem_cs_tlb@vcs0.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@i915_pm_rc6_residency@rc6-idle}:
    - shard-hsw:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-hsw5/igt@i915_pm_rc6_residency@rc6-idle.html

  
Known issues
------------

  Here are the changes found in Patchwork_16093_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [PASS][4] -> [INCOMPLETE][5] ([i915#977])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-tglb5/igt@gem_busy@close-race.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-tglb6/igt@gem_busy@close-race.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][6] -> [DMESG-WARN][7] ([i915#180]) +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-reset:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#109276] / [fdo#112080])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-iclb2/igt@gem_ctx_isolation@vcs1-reset.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-iclb5/igt@gem_ctx_isolation@vcs1-reset.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#679])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-glk9/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-glk5/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#110841])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [PASS][14] -> [FAIL][15] ([i915#232])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-snb4/igt@gem_eio@reset-stress.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-snb6/igt@gem_eio@reset-stress.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-hsw:          [PASS][16] -> [FAIL][17] ([i915#694])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-hsw2/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-hsw5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([fdo#111593] / [i915#472])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-tglb5/igt@gem_exec_gttfill@basic.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-tglb8/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [PASS][20] -> [INCOMPLETE][21] ([i915#472] / [i915#476])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-tglb1/igt@gem_exec_parallel@basic.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-tglb9/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_reuse@single:
    - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([i915#472])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-tglb4/igt@gem_exec_reuse@single.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-tglb8/igt@gem_exec_reuse@single.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][24] -> [SKIP][25] ([fdo#109276]) +12 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-iclb3/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][26] -> [SKIP][27] ([i915#677]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][28] -> [SKIP][29] ([fdo#112146]) +5 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [PASS][30] -> [INCOMPLETE][31] ([i915#463] / [i915#472])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-tglb2/igt@gem_exec_schedule@smoketest-bsd1.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-tglb6/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [PASS][32] -> [INCOMPLETE][33] ([i915#472] / [i915#707])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-tglb7/igt@gem_sync@basic-each.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-tglb3/igt@gem_sync@basic-each.html

  * igt@i915_pm_rpm@cursor:
    - shard-skl:          [PASS][34] -> [INCOMPLETE][35] ([i915#151])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-skl2/igt@i915_pm_rpm@cursor.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-skl9/igt@i915_pm_rpm@cursor.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][36] -> [FAIL][37] ([i915#413])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-iclb1/igt@i915_pm_rps@waitboost.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-iclb1/igt@i915_pm_rps@waitboost.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [PASS][38] -> [DMESG-WARN][39] ([i915#109]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-skl7/igt@kms_color@pipe-b-ctm-0-25.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-skl3/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen:
    - shard-tglb:         [PASS][40] -> [FAIL][41] ([fdo#111703])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-tglb9/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([i915#34])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-skl3/igt@kms_flip@plain-flip-fb-recreate.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-skl2/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [PASS][44] -> [FAIL][45] ([i915#49])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][46] -> [DMESG-WARN][47] ([i915#180]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-position-covered-pipe-c-planes:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#247])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-skl6/igt@kms_plane@plane-position-covered-pipe-c-planes.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-skl4/igt@kms_plane@plane-position-covered-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([fdo#108145] / [i915#265])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][52] -> [SKIP][53] ([fdo#109441]) +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-iclb5/igt@kms_psr@psr2_sprite_render.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][54] -> [SKIP][55] ([fdo#112080]) +5 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-iclb8/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-skl:          [FAIL][56] ([i915#679]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-skl9/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-skl8/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-hostile-preempt:
    - shard-iclb:         [SKIP][58] ([fdo#109276] / [fdo#112080]) -> [PASS][59] +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-iclb6/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-iclb2/igt@gem_ctx_persistence@vcs1-hostile-preempt.html

  * igt@gem_eio@in-flight-1us:
    - shard-tglb:         [INCOMPLETE][60] ([i915#534] / [i915#707]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-tglb6/igt@gem_eio@in-flight-1us.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-tglb4/igt@gem_eio@in-flight-1us.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][62] ([i915#677]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-iclb3/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-render:
    - shard-tglb:         [INCOMPLETE][64] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][65] +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-render.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-render.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][66] ([fdo#112146]) -> [PASS][67] +5 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [INCOMPLETE][68] ([i915#463] / [i915#472]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-tglb2/igt@gem_exec_schedule@smoketest-all.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-tglb4/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][70] ([i915#472] / [i915#707]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-tglb6/igt@gem_exec_schedule@smoketest-bsd2.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-tglb8/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-hsw:          [TIMEOUT][72] ([fdo#112271] / [i915#530]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-hsw1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][74] ([i915#707] / [i915#796]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-tglb3/igt@gem_pipe_control_store_loop@reused-buffer.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-tglb1/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][76] ([i915#644]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [INCOMPLETE][78] ([i915#470] / [i915#472]) -> [PASS][79] +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-tglb3/igt@gem_sync@basic-all.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-tglb5/igt@gem_sync@basic-all.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-hsw:          [FAIL][80] ([i915#694]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-hsw7/igt@gen7_exec_parse@basic-offset.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-hsw1/igt@gen7_exec_parse@basic-offset.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [DMESG-WARN][82] ([i915#716]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-kbl7/igt@gen9_exec_parse@allowed-all.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-kbl6/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][84] ([i915#447]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-iclb6/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][86] ([i915#180]) -> [PASS][87] +4 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-apl2/igt@i915_suspend@sysfs-reader.html

  * igt@kms_color@pipe-b-ctm-0-5:
    - shard-skl:          [DMESG-WARN][88] ([i915#109]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-skl9/igt@kms_color@pipe-b-ctm-0-5.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-skl8/igt@kms_color@pipe-b-ctm-0-5.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][90] ([i915#72]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][92] ([i915#79]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-glk3/igt@kms_flip@flip-vs-expired-vblank.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-glk4/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][94] ([i915#79]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [INCOMPLETE][96] ([fdo#103927]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][98] ([i915#34]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         [FAIL][100] ([i915#49]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][102] ([fdo#108145]) -> [PASS][103] +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][104] ([fdo#109441]) -> [PASS][105] +2 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-tglb:         [FAIL][106] ([i915#31]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-tglb3/igt@kms_setmode@basic.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-tglb1/igt@kms_setmode@basic.html
    - shard-apl:          [FAIL][108] ([i915#31]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-apl1/igt@kms_setmode@basic.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-apl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][110] ([i915#180]) -> [PASS][111] +10 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][112] ([fdo#112080]) -> [PASS][113] +9 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][114] ([fdo#109276]) -> [PASS][115] +12 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][116] ([i915#468]) -> [FAIL][117] ([i915#454])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@i2c:
    - shard-snb:          [INCOMPLETE][118] ([i915#82]) -> [SKIP][119] ([fdo#109271])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-snb2/igt@i915_pm_rpm@i2c.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-snb5/igt@i915_pm_rpm@i2c.html

  * igt@kms_plane@pixel-format-pipe-c-planes-source-clamping:
    - shard-tglb:         [FAIL][120] ([i915#576] / [i915#598]) -> [FAIL][121] ([i915#598])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-tglb5/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-tglb3/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][122], [FAIL][123]) ([i915#716] / [i915#974]) -> [FAIL][124] ([i915#974])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-kbl2/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7739/shard-kbl7/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/shard-kbl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111703]: https://bugs.freedesktop.org/show_bug.cgi?id=111703
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#247]: https://gitlab.freedesktop.org/drm/intel/issues/247
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#534]: https://gitlab.freedesktop.org/drm/intel/issues/534
  [i915#576]: https://gitlab.freedesktop.org/drm/intel/issues/576
  [i915#598]: https://gitlab.freedesktop.org/drm/intel/issues/598
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974
  [i915#977]: https://gitlab.freedesktop.org/drm/intel/issues/977


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7739 -> Patchwork_16093

  CI-20190529: 20190529
  CI_DRM_7739: 757c25a357ea6e34d5eba9b6efee6f45e7961334 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5365: e9ec0ed63b25c86861ffac3c8601cc4d1b910b65 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16093: 213de11f3073d76fce7ecd3d521cbf86f9dd1269 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16093/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
