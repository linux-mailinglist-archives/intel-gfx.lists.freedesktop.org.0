Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 342611C9912
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 20:15:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88B786E19C;
	Thu,  7 May 2020 18:15:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 969596E186;
 Thu,  7 May 2020 18:15:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 90AC5A00FD;
 Thu,  7 May 2020 18:15:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Thu, 07 May 2020 18:15:34 -0000
Message-ID: <158887533458.2188.7886243717093778972@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200507134122.17732-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20200507134122.17732-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gen12=3A_Add_aux_table_invalidate_for_all_engines_=28rev2?=
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

Series: drm/i915/gen12: Add aux table invalidate for all engines (rev2)
URL   : https://patchwork.freedesktop.org/series/77038/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8444_full -> Patchwork_17601_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17601_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17601_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17601_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@engines-queued@vcs1:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-tglb6/igt@gem_ctx_persistence@engines-queued@vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-tglb2/igt@gem_ctx_persistence@engines-queued@vcs1.html

  * igt@gem_exec_balancer@bonded-slice:
    - shard-kbl:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-kbl7/igt@gem_exec_balancer@bonded-slice.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-kbl1/igt@gem_exec_balancer@bonded-slice.html

  * igt@runner@aborted:
    - shard-kbl:          NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-kbl1/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_flip@dpms-vs-vblank-race@c-hdmi-a1}:
    - shard-glk:          [PASS][6] -> [FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-glk8/igt@kms_flip@dpms-vs-vblank-race@c-hdmi-a1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-glk5/igt@kms_flip@dpms-vs-vblank-race@c-hdmi-a1.html

  
Known issues
------------

  Here are the changes found in Patchwork_17601_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][8] -> [DMESG-WARN][9] ([i915#180]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [PASS][10] -> [FAIL][11] ([i915#129])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-skl5/igt@kms_color@pipe-a-ctm-green-to-red.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-skl7/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_cursor_legacy@all-pipes-torture-bo:
    - shard-tglb:         [PASS][12] -> [DMESG-WARN][13] ([i915#128])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-tglb7/igt@kms_cursor_legacy@all-pipes-torture-bo.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-tglb8/igt@kms_cursor_legacy@all-pipes-torture-bo.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#49])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][16] -> [FAIL][17] ([i915#1188])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][18] -> [FAIL][19] ([fdo#108145] / [i915#265])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#109441]) +4 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][22] -> [FAIL][23] ([i915#31])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-apl7/igt@kms_setmode@basic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-apl1/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][24] ([i915#180]) -> [PASS][25] +3 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-apl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][26] ([i915#72]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@pipe-c-torture-bo:
    - shard-hsw:          [DMESG-WARN][28] ([i915#128]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-hsw5/igt@kms_cursor_legacy@pipe-c-torture-bo.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-hsw6/igt@kms_cursor_legacy@pipe-c-torture-bo.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][30] ([fdo#109349]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:
    - shard-kbl:          [FAIL][32] ([i915#177] / [i915#52] / [i915#54] / [i915#93] / [i915#95]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-kbl7/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-kbl7/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html

  * {igt@kms_flip@flip-vs-rmfb-interruptible@c-vga1}:
    - shard-hsw:          [INCOMPLETE][34] ([i915#61]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-hsw4/igt@kms_flip@flip-vs-rmfb-interruptible@c-vga1.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-hsw1/igt@kms_flip@flip-vs-rmfb-interruptible@c-vga1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][36] ([i915#1188]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-skl1/igt@kms_hdr@bpc-switch.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-skl3/igt@kms_hdr@bpc-switch.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][38] ([fdo#109642] / [fdo#111068]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-iclb3/igt@kms_psr2_su@frontbuffer.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][40] ([fdo#109441]) -> [PASS][41] +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][42] ([i915#31]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-hsw1/igt@kms_setmode@basic.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-hsw7/igt@kms_setmode@basic.html
    - shard-kbl:          [FAIL][44] ([i915#31]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-kbl4/igt@kms_setmode@basic.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-kbl2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][46] ([i915#180]) -> [PASS][47] +4 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][48] ([i915#69]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-skl4/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-skl5/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][50] ([i915#1542]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-hsw6/igt@perf@blocking-parameterized.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-hsw4/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][52] ([i915#658]) -> [SKIP][53] ([i915#588])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-snb:          [SKIP][54] ([fdo#109271]) -> [INCOMPLETE][55] ([i915#82])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-snb6/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-snb2/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [FAIL][56] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][57] ([i915#1319])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-apl4/igt@kms_content_protection@atomic.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-apl8/igt@kms_content_protection@atomic.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][58] ([i915#180]) -> [INCOMPLETE][59] ([i915#155] / [i915#794])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8444 -> Patchwork_17601

  CI-20190529: 20190529
  CI_DRM_8444: 39544482386ac801dc4140df00a7e7e5bbea4d8a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5638: 50868ab3c532a86aa147fb555b69a1078c572b13 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17601: e20a34365bd65217187425abcc1fbba0528a8003 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17601/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
