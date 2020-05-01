Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B7C1C19AE
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 17:36:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45E4D6ECCD;
	Fri,  1 May 2020 15:36:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A1176E049;
 Fri,  1 May 2020 15:36:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 22AA2A47DA;
 Fri,  1 May 2020 15:36:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 01 May 2020 15:36:23 -0000
Message-ID: <158834738313.18946.17330695259640460229@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200501130217.5708-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200501130217.5708-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/gem=3A_Use_chained_reloc_b?=
 =?utf-8?q?atches?=
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

Series: series starting with [1/3] drm/i915/gem: Use chained reloc batches
URL   : https://patchwork.freedesktop.org/series/76818/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8405_full -> Patchwork_17541_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17541_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_reloc@basic-parallel}:
    - shard-kbl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-kbl6/igt@gem_exec_reloc@basic-parallel.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-kbl7/igt@gem_exec_reloc@basic-parallel.html
    - shard-snb:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-snb1/igt@gem_exec_reloc@basic-parallel.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-snb4/igt@gem_exec_reloc@basic-parallel.html
    - shard-tglb:         [PASS][5] -> [TIMEOUT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-tglb2/igt@gem_exec_reloc@basic-parallel.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-tglb6/igt@gem_exec_reloc@basic-parallel.html
    - shard-apl:          [PASS][7] -> [TIMEOUT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-apl7/igt@gem_exec_reloc@basic-parallel.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-apl7/igt@gem_exec_reloc@basic-parallel.html
    - shard-iclb:         [PASS][9] -> [TIMEOUT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-iclb5/igt@gem_exec_reloc@basic-parallel.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-iclb3/igt@gem_exec_reloc@basic-parallel.html

  * {igt@gem_mmap_offset@ptrace@gtt}:
    - shard-snb:          NOTRUN -> [FAIL][11] +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-snb4/igt@gem_mmap_offset@ptrace@gtt.html

  
Known issues
------------

  Here are the changes found in Patchwork_17541_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [PASS][12] -> [INCOMPLETE][13] ([i915#151] / [i915#69])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl6/igt@i915_pm_rpm@system-suspend-execbuf.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-skl9/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][14] -> [DMESG-WARN][15] ([i915#180]) +3 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-kbl4/igt@i915_suspend@forcewake.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-kbl4/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
    - shard-skl:          [PASS][16] -> [FAIL][17] ([i915#54])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html

  * igt@kms_cursor_legacy@all-pipes-torture-bo:
    - shard-tglb:         [PASS][18] -> [DMESG-WARN][19] ([i915#128])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-tglb1/igt@kms_cursor_legacy@all-pipes-torture-bo.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-tglb8/igt@kms_cursor_legacy@all-pipes-torture-bo.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled:
    - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#52] / [i915#54])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][22] -> [DMESG-WARN][23] ([i915#180] / [i915#93] / [i915#95])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][24] -> [FAIL][25] ([i915#1188])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl9/igt@kms_hdr@bpc-switch.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-skl5/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][26] -> [DMESG-WARN][27] ([i915#180]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([fdo#108145] / [i915#265])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][30] -> [SKIP][31] ([fdo#109441]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Possible fixes ####

  * {igt@gem_exec_reloc@basic-many-active@bcs0}:
    - shard-skl:          [FAIL][32] -> [PASS][33] +6 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl1/igt@gem_exec_reloc@basic-many-active@bcs0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-skl7/igt@gem_exec_reloc@basic-many-active@bcs0.html

  * {igt@gem_exec_reloc@basic-many-active@rcs0}:
    - shard-apl:          [FAIL][34] -> [PASS][35] +7 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-apl2/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-apl6/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-tglb:         [FAIL][36] -> [PASS][37] +9 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-tglb6/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-tglb3/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-glk:          [FAIL][38] -> [PASS][39] +7 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-glk7/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-glk9/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * {igt@gem_exec_reloc@basic-many-active@vcs0}:
    - shard-kbl:          [FAIL][40] -> [PASS][41] +9 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-kbl4/igt@gem_exec_reloc@basic-many-active@vcs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-kbl4/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * {igt@gem_exec_reloc@basic-spin@vcs0}:
    - shard-snb:          [FAIL][42] ([i915#757]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-snb4/igt@gem_exec_reloc@basic-spin@vcs0.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-snb6/igt@gem_exec_reloc@basic-spin@vcs0.html

  * {igt@gem_exec_reloc@basic-wide-active@rcs0}:
    - shard-snb:          [INCOMPLETE][44] ([i915#82]) -> [PASS][45] +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-snb2/igt@gem_exec_reloc@basic-wide-active@rcs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-snb6/igt@gem_exec_reloc@basic-wide-active@rcs0.html
    - shard-iclb:         [FAIL][46] -> [PASS][47] +7 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@rcs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-iclb6/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * {igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2}:
    - shard-glk:          [FAIL][48] ([i915#79]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@b-edp1}:
    - shard-skl:          [INCOMPLETE][50] ([i915#198]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][52] ([i915#180]) -> [PASS][53] +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-kbl:          [DMESG-WARN][54] ([i915#180]) -> [PASS][55] +4 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][56] ([i915#1188]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [INCOMPLETE][58] ([i915#155]) -> [PASS][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][60] ([i915#69]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][62] ([fdo#108145] / [i915#265]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][64] ([fdo#109642] / [fdo#111068]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-iclb6/igt@kms_psr2_su@frontbuffer.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][66] ([fdo#109441]) -> [PASS][67] +2 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][68] ([i915#588]) -> [SKIP][69] ([i915#658])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-snb:          [INCOMPLETE][70] ([i915#82]) -> [SKIP][71] ([fdo#109271])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-snb5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-snb4/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-apl:          [FAIL][72] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][73] ([fdo#108145] / [i915#265])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#757]: https://gitlab.freedesktop.org/drm/intel/issues/757
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8405 -> Patchwork_17541

  CI-20190529: 20190529
  CI_DRM_8405: 83efffba539b475ce7e3fb96aeae7ee744309ff7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5623: 8838c73169ea249e6e86aaed35e5178f60f4ef7d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17541: 33804e5f45d5966bd57174bcd53fe7cc0cf1ec01 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
