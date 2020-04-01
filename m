Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E9119AEEB
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 17:40:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44FAB6E955;
	Wed,  1 Apr 2020 15:40:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C1C366E951;
 Wed,  1 Apr 2020 15:40:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BAB11A00C7;
 Wed,  1 Apr 2020 15:40:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Wed, 01 Apr 2020 15:40:09 -0000
Message-ID: <158575560973.25627.2987101441450335527@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200331135403.16906-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20200331135403.16906-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Report_all_failed_registers_for_ctx_isolation_=28rev2?=
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

Series: drm/i915: Report all failed registers for ctx isolation (rev2)
URL   : https://patchwork.freedesktop.org/series/75318/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8228_full -> Patchwork_17159_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17159_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb}:
    - shard-glk:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-glk3/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
    - shard-skl:          NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8228_full and Patchwork_17159_full:

### New IGT tests (1) ###

  * igt@gem_exec_capture@capture:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_17159_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [i915#677]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-iclb7/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +15 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb4/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-iclb3/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb8/igt@gem_exec_schedule@reorder-wide-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#39])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk3/igt@i915_pm_rps@min-max-config-loaded.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-glk8/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109349])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180] / [i915#93] / [i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@dpms-vs-vblank-race-interruptible:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#407])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk6/igt@kms_flip@dpms-vs-vblank-race-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-glk9/igt@kms_flip@dpms-vs-vblank-race-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#79])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#34])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#69]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#899])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +6 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#112080]) +6 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb4/igt@perf_pmu@busy-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-iclb3/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-skl:          [FAIL][39] ([i915#1528]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-skl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][41] ([fdo#112146]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-apl7/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [DMESG-WARN][45] -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl8/igt@gen9_exec_parse@allowed-all.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-skl3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_selftest@live@execlists:
    - shard-apl:          [INCOMPLETE][47] ([i915#656]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl8/igt@i915_selftest@live@execlists.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-apl1/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [INCOMPLETE][49] ([i915#1531]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-tglb8/igt@i915_selftest@live@requests.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-tglb5/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:
    - shard-glk:          [FAIL][53] ([i915#118] / [i915#70] / [i915#95]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk8/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-glk6/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html

  * igt@kms_draw_crc@draw-method-rgb565-render-untiled:
    - shard-glk:          [FAIL][55] ([i915#52] / [i915#54]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk5/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-glk5/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-glk:          [FAIL][57] ([i915#34]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk5/igt@kms_flip@plain-flip-ts-check.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-glk5/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][59] ([fdo#109441]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][61] ([fdo#112080]) -> [PASS][62] +7 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb7/igt@perf_pmu@busy-check-all-vcs1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-iclb1/igt@perf_pmu@busy-check-all-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][63] ([fdo#109276]) -> [PASS][64] +17 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][65] ([i915#454]) -> [SKIP][66] ([i915#468])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-tglb6/igt@i915_pm_dc@dc6-psr.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@pm-caching:
    - shard-snb:          [SKIP][67] ([fdo#109271]) -> [INCOMPLETE][68] ([i915#82])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-snb6/igt@i915_pm_rpm@pm-caching.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-snb6/igt@i915_pm_rpm@pm-caching.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][69] ([i915#165] / [i915#180]) -> [DMESG-WARN][70] ([i915#180])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][71], [FAIL][72]) ([i915#1423] / [i915#529]) -> [FAIL][73] ([i915#1423])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl8/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl1/igt@runner@aborted.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/shard-apl7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 9)
------------------------------

  Missing    (1): pig-skl-6260u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8228 -> Patchwork_17159

  CI-20190529: 20190529
  CI_DRM_8228: 1f33fcd4f840355af75a61ce7204f39bafc52018 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5548: d9e70dc1b35633b7d5c81cbfa165e331189eb260 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17159: 7881a7d0a88a1d5e4ec9133ae2fe53fe0ce09bd9 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17159/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
