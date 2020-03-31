Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69036198BA0
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 07:15:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D29226E16F;
	Tue, 31 Mar 2020 05:15:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 45CB16E16F;
 Tue, 31 Mar 2020 05:15:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 33FD2A0099;
 Tue, 31 Mar 2020 05:15:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Oliver Barta" <o.barta89@gmail.com>
Date: Tue, 31 Mar 2020 05:15:48 -0000
Message-ID: <158563174818.5567.17980240667364455092@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200328104100.12162-1-oliver.barta@aptiv.com>
In-Reply-To: <20200328104100.12162-1-oliver.barta@aptiv.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_HDCP=3A_fix_Ri_prime_check_done_during_link_check_=28r?=
 =?utf-8?q?ev2=29?=
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

Series: drm/i915: HDCP: fix Ri prime check done during link check (rev2)
URL   : https://patchwork.freedesktop.org/series/74152/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8214_full -> Patchwork_17130_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17130_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +13 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-iclb3/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2:
    - shard-kbl:          [PASS][3] -> [FAIL][4] ([i915#1528])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-kbl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-kbl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-iclb3/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-iclb3/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +19 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-hsw:          [PASS][13] -> [TIMEOUT][14] ([i915#1526])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-hsw6/igt@i915_pm_rc6_residency@rc6-idle.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-hsw7/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#151] / [i915#69])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-skl9/igt@i915_pm_rpm@system-suspend-modeset.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-skl10/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +5 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#72])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#117] / [i915#133])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-glk3/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-glk5/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#52] / [i915#54])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#79])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-glk8/igt@kms_flip@flip-vs-expired-vblank.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-glk2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#79])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-apl8/igt@kms_flip@flip-vs-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-apl6/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109642] / [fdo#111068])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-iclb3/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-iclb3/igt@kms_psr@psr2_primary_mmap_gtt.html

  
#### Possible fixes ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [SKIP][35] ([fdo#112080]) -> [PASS][36] +10 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-iclb6/igt@gem_busy@extended-parallel-vcs1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-iclb4/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][37] ([fdo#109276] / [i915#677]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][39] ([i915#677]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][41] ([fdo#109276]) -> [PASS][42] +18 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +7 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@i915_selftest@live@requests:
    - shard-iclb:         [INCOMPLETE][45] ([i915#1505]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-iclb8/igt@i915_selftest@live@requests.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-iclb3/igt@i915_selftest@live@requests.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][49] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [FAIL][51] ([i915#46]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +7 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][55] ([fdo#108145]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@cursor_render:
    - shard-tglb:         [SKIP][57] ([i915#668]) -> [PASS][58] +5 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-tglb6/igt@kms_psr@cursor_render.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-tglb6/igt@kms_psr@cursor_render.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][59] ([fdo#109441]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][61] ([i915#31]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-apl4/igt@kms_setmode@basic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-apl1/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][63] ([i915#468]) -> [FAIL][64] ([i915#454])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-tglb5/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - shard-iclb:         [INCOMPLETE][65] ([i915#189]) -> [SKIP][66] ([i915#1316])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8214/shard-iclb4/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/shard-iclb4/igt@i915_pm_rpm@debugfs-forcewake-user.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#117]: https://gitlab.freedesktop.org/drm/intel/issues/117
  [i915#1316]: https://gitlab.freedesktop.org/drm/intel/issues/1316
  [i915#133]: https://gitlab.freedesktop.org/drm/intel/issues/133
  [i915#1505]: https://gitlab.freedesktop.org/drm/intel/issues/1505
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1526]: https://gitlab.freedesktop.org/drm/intel/issues/1526
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8214 -> Patchwork_17130

  CI-20190529: 20190529
  CI_DRM_8214: a2b99403233148c1940fc972caef2a5c456d11b2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5545: 9e5bfd10d56f81b98e0229c6bb14670221fd0b54 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17130: e4fabe623ddbb9cc86fcd304182bc0f6c2bde4a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17130/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
