Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E53198CFD
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 09:34:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BC716E560;
	Tue, 31 Mar 2020 07:34:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 438A56E55E;
 Tue, 31 Mar 2020 07:34:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3BE0CA00E7;
 Tue, 31 Mar 2020 07:34:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Tue, 31 Mar 2020 07:34:53 -0000
Message-ID: <158564009324.5567.7836096569497425992@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200328000422.98978-1-Jason@zx2c4.com>
In-Reply-To: <20200328000422.98978-1-Jason@zx2c4.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_check_to_see_if_the_FPU_is_available_before_using_it?=
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

Series: drm/i915: check to see if the FPU is available before using it
URL   : https://patchwork.freedesktop.org/series/75249/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8217_full -> Patchwork_17134_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17134_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +10 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-iclb2/igt@gem_busy@extended-parallel-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-iclb5/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [i915#677]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +6 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-iclb3/igt@gem_exec_schedule@preempt-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-iclb4/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_workarounds@suspend-resume:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-kbl7/igt@gem_workarounds@suspend-resume.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-kbl2/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [PASS][11] -> [TIMEOUT][12] ([i915#1526])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-snb5/igt@i915_pm_rc6_residency@rc6-idle.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-snb6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#39])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-glk9/igt@i915_pm_rps@min-max-config-loaded.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-glk6/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#1531])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-tglb6/igt@i915_selftest@live@requests.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-tglb2/igt@i915_selftest@live@requests.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#52] / [i915#54])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-glk3/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180] / [i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#221])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-skl2/igt@kms_flip@flip-vs-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-skl4/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109276]) +22 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][31] ([fdo#112080]) -> [PASS][32] +13 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-iclb8/igt@gem_busy@busy-vcs1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][33] ([fdo#110854]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [SKIP][35] ([fdo#109276] / [i915#677]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-iclb7/igt@gem_exec_schedule@implicit-both-bsd2.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][37] ([i915#677]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-iclb3/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][39] ([fdo#112146]) -> [PASS][40] +6 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-iclb3/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-glk:          [FAIL][41] ([i915#1527]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-glk7/igt@i915_pm_rc6_residency@rc6-idle.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-glk3/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-kbl:          [FAIL][43] ([i915#1516]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-kbl4/igt@i915_pm_rc6_residency@rc6-idle.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-kbl1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [INCOMPLETE][45] ([i915#69]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-skl3/igt@kms_fbcon_fbt@psr-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-skl5/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][47] ([i915#1188]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-apl4/igt@kms_hdr@bpc-switch-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-apl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][53] ([fdo#109642] / [fdo#111068]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-iclb8/igt@kms_psr2_su@frontbuffer.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][55] ([i915#173]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-iclb1/igt@kms_psr@no_drrs.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-iclb8/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][57] ([fdo#109441]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-iclb3/igt@kms_psr@psr2_cursor_render.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][59] ([i915#31]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-skl4/igt@kms_setmode@basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-skl10/igt@kms_setmode@basic.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][61] ([fdo#109276]) -> [PASS][62] +20 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-iclb3/igt@prime_busy@hang-bsd2.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-snb:          [SKIP][63] ([fdo#109271]) -> [INCOMPLETE][64] ([i915#82]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/shard-snb4/igt@i915_pm_rpm@dpms-non-lpsp.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/shard-snb2/igt@i915_pm_rpm@dpms-non-lpsp.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1516]: https://gitlab.freedesktop.org/drm/intel/issues/1516
  [i915#1526]: https://gitlab.freedesktop.org/drm/intel/issues/1526
  [i915#1527]: https://gitlab.freedesktop.org/drm/intel/issues/1527
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  Additional (1): pig-skl-6260u 
  Missing    (1): pig-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8217 -> Patchwork_17134

  CI-20190529: 20190529
  CI_DRM_8217: f4a6243de1bb9c5be618b8d2cb4ced7610153465 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5545: 9e5bfd10d56f81b98e0229c6bb14670221fd0b54 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17134: 90ca26365082ea560e6753d808afff2033e43d9d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
