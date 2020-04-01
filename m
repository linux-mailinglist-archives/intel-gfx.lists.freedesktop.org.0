Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C43F819AE9E
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 17:18:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3735D6E956;
	Wed,  1 Apr 2020 15:18:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7474989E05;
 Wed,  1 Apr 2020 15:18:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6D89CA0099;
 Wed,  1 Apr 2020 15:18:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 Apr 2020 15:18:28 -0000
Message-ID: <158575430842.25628.7696756228949607046@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200331120502.14713-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200331120502.14713-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Include_a_few_tracek_for_timeslicing?=
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

Series: drm/i915/gt: Include a few tracek for timeslicing
URL   : https://patchwork.freedesktop.org/series/75317/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8228_full -> Patchwork_17158_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17158_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17158_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17158_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-kbl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl2/igt@gem_mmap_gtt@big-copy-odd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-kbl6/igt@gem_mmap_gtt@big-copy-odd.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb}:
    - shard-glk:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-glk3/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
    - shard-skl:          NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8228_full and Patchwork_17158_full:

### New IGT tests (1) ###

  * igt@gem_exec_capture@capture:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_17158_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112080]) +6 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_schedule@implicit-write-read-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb8/igt@gem_exec_schedule@implicit-write-read-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb3/igt@gem_exec_schedule@smoketest-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-iclb4/igt@gem_exec_schedule@smoketest-bsd.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +5 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl7/igt@i915_suspend@forcewake.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-kbl2/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109349])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109276]) +7 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-iclb6/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [SKIP][25] ([fdo#109276] / [i915#677]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][27] ([i915#677]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-bsd:
    - shard-iclb:         [SKIP][29] ([fdo#112146]) -> [PASS][30] +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb4/igt@gem_exec_schedule@preempt-other-bsd.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-iclb6/igt@gem_exec_schedule@preempt-other-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][31] ([fdo#109276]) -> [PASS][32] +11 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-apl7/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [DMESG-WARN][35] -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl8/igt@gen9_exec_parse@allowed-all.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-skl7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_selftest@live@execlists:
    - shard-apl:          [INCOMPLETE][37] ([i915#656]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl8/igt@i915_selftest@live@execlists.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-apl4/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [INCOMPLETE][39] ([i915#1531]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-tglb8/igt@i915_selftest@live@requests.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-tglb7/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:
    - shard-glk:          [FAIL][41] ([i915#118] / [i915#70] / [i915#95]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk8/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-glk2/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html

  * igt@kms_draw_crc@draw-method-rgb565-render-untiled:
    - shard-glk:          [FAIL][43] ([i915#52] / [i915#54]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk5/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-glk4/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][45] ([i915#1188]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [INCOMPLETE][47] ([i915#155]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][49] ([fdo#108145]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][51] ([fdo#108145] / [i915#265]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][53] ([fdo#109642] / [fdo#111068]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb7/igt@kms_psr2_su@frontbuffer.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][55] ([fdo#112080]) -> [PASS][56] +13 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb3/igt@perf_pmu@init-busy-vcs1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-iclb4/igt@perf_pmu@init-busy-vcs1.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][57] ([i915#454]) -> [SKIP][58] ([i915#468])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][59] ([i915#165] / [i915#180]) -> [DMESG-WARN][60] ([i915#180])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [DMESG-WARN][61] ([i915#180]) -> [INCOMPLETE][62] ([i915#155])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - shard-apl:          [FAIL][63] ([fdo#108145] / [i915#95]) -> [FAIL][64] ([fdo#108145])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][65], [FAIL][66]) ([i915#1423] / [i915#529]) -> [FAIL][67] ([i915#1423])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl8/igt@runner@aborted.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl1/igt@runner@aborted.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/shard-apl7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8228 -> Patchwork_17158

  CI-20190529: 20190529
  CI_DRM_8228: 1f33fcd4f840355af75a61ce7204f39bafc52018 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5548: d9e70dc1b35633b7d5c81cbfa165e331189eb260 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17158: 4174b93dfb0038366d84304435d6f22dd921feb2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
