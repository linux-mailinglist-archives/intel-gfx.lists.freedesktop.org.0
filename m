Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D8E198A51
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 05:02:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 409A46E526;
	Tue, 31 Mar 2020 03:02:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B987C6E526;
 Tue, 31 Mar 2020 03:02:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B28AAA0118;
 Tue, 31 Mar 2020 03:02:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 31 Mar 2020 03:02:43 -0000
Message-ID: <158562376370.5564.3712029417673591948@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200330095425.29113-1-imre.deak@intel.com>
In-Reply-To: <20200330095425.29113-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Add_a_retry_counter_for?=
 =?utf-8?q?_hotplug_detect_retries?=
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

Series: series starting with [1/2] drm/i915: Add a retry counter for hotplug detect retries
URL   : https://patchwork.freedesktop.org/series/75224/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8213_full -> Patchwork_17125_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17125_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [i915#677]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112146]) +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276]) +17 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-iclb4/igt@gem_exec_schedule@promotion-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-iclb8/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#69])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-skl10/igt@gem_workarounds@suspend-resume-context.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-skl8/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][9] -> [DMESG-WARN][10] ([i915#716])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-glk7/igt@gen9_exec_parse@allowed-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-glk3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [PASS][11] -> [TIMEOUT][12] ([i915#1526])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-snb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-snb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@live@execlists:
    - shard-apl:          [PASS][13] -> [INCOMPLETE][14] ([i915#656])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-apl2/igt@i915_selftest@live@execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-apl3/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#54])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#221])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-skl7/igt@kms_flip@flip-vs-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-skl5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#1188])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-iclb5/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#112080]) +9 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][31] ([fdo#112080]) -> [PASS][32] +14 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [SKIP][33] ([fdo#109276] / [i915#677]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][35] ([i915#677]) -> [PASS][36] +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][37] ([fdo#112146]) -> [PASS][38] +5 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +5 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@live@requests:
    - shard-iclb:         [INCOMPLETE][41] ([i915#1505]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-iclb6/igt@i915_selftest@live@requests.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-iclb7/igt@i915_selftest@live@requests.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
    - shard-apl:          [FAIL][45] ([i915#54] / [i915#95]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][47] ([fdo#109349]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][49] ([fdo#108145]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][51] ([i915#173]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-iclb1/igt@kms_psr@no_drrs.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-iclb3/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][53] ([fdo#109441]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-iclb3/igt@kms_psr@psr2_cursor_render.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][55] ([i915#31]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-hsw1/igt@kms_setmode@basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-hsw2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-query-forked-hang:
    - shard-snb:          [SKIP][57] ([fdo#109271]) -> [PASS][58] +5 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-snb1/igt@kms_vblank@pipe-a-query-forked-hang.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-snb4/igt@kms_vblank@pipe-a-query-forked-hang.html

  * {igt@perf@polling-parameterized}:
    - shard-iclb:         [FAIL][59] ([i915#1542]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-iclb5/igt@perf@polling-parameterized.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-iclb4/igt@perf@polling-parameterized.html
    - shard-hsw:          [FAIL][61] ([i915#1542]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-hsw6/igt@perf@polling-parameterized.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-hsw1/igt@perf@polling-parameterized.html
    - shard-tglb:         [FAIL][63] ([i915#1542]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-tglb5/igt@perf@polling-parameterized.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-tglb3/igt@perf@polling-parameterized.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][65] ([fdo#109276]) -> [PASS][66] +18 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-iclb5/igt@prime_busy@hang-bsd2.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-apl:          [FAIL][67] ([i915#1423] / [i915#1485]) -> ([FAIL][68], [FAIL][69]) ([i915#1423] / [i915#1485] / [i915#529])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8213/shard-apl3/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-apl3/igt@runner@aborted.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/shard-apl8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1485]: https://gitlab.freedesktop.org/drm/intel/issues/1485
  [i915#1505]: https://gitlab.freedesktop.org/drm/intel/issues/1505
  [i915#1526]: https://gitlab.freedesktop.org/drm/intel/issues/1526
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8213 -> Patchwork_17125

  CI-20190529: 20190529
  CI_DRM_8213: 3cebf14c87d0d4508d4cc9c49db14061af752c37 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5544: 477c562fc9932939083d732b77dd7b083c6bc0a1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17125: fa5ee4c1786539998360fd6f6f4796fdb26882ed @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17125/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
