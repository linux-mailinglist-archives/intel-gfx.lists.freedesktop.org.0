Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9602C1C13FA
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 15:39:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8C5C6E2B8;
	Fri,  1 May 2020 13:39:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 55FEC6E2B6;
 Fri,  1 May 2020 13:39:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 50BD6A47E6;
 Fri,  1 May 2020 13:39:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 01 May 2020 13:39:14 -0000
Message-ID: <158834035432.18945.280999562555041592@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200501101900.22543-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200501101900.22543-1-chris@chris-wilson.co.uk>
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
URL   : https://patchwork.freedesktop.org/series/76813/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8405_full -> Patchwork_17538_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17538_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_reloc@basic-parallel}:
    - shard-hsw:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-hsw7/igt@gem_exec_reloc@basic-parallel.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-hsw6/igt@gem_exec_reloc@basic-parallel.html
    - shard-kbl:          [PASS][3] -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-kbl6/igt@gem_exec_reloc@basic-parallel.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-kbl6/igt@gem_exec_reloc@basic-parallel.html
    - shard-snb:          [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-snb1/igt@gem_exec_reloc@basic-parallel.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-snb1/igt@gem_exec_reloc@basic-parallel.html
    - shard-tglb:         [PASS][7] -> [TIMEOUT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-tglb2/igt@gem_exec_reloc@basic-parallel.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-tglb5/igt@gem_exec_reloc@basic-parallel.html
    - shard-skl:          NOTRUN -> [INCOMPLETE][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-skl9/igt@gem_exec_reloc@basic-parallel.html
    - shard-apl:          [PASS][10] -> [TIMEOUT][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-apl7/igt@gem_exec_reloc@basic-parallel.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-apl3/igt@gem_exec_reloc@basic-parallel.html
    - shard-iclb:         [PASS][12] -> [TIMEOUT][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-iclb5/igt@gem_exec_reloc@basic-parallel.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-iclb6/igt@gem_exec_reloc@basic-parallel.html
    - shard-glk:          [PASS][14] -> [TIMEOUT][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-glk5/igt@gem_exec_reloc@basic-parallel.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-glk2/igt@gem_exec_reloc@basic-parallel.html

  * {igt@gem_mmap_offset@ptrace@gtt}:
    - shard-snb:          NOTRUN -> [FAIL][16] +3 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-snb1/igt@gem_mmap_offset@ptrace@gtt.html

  
Known issues
------------

  Here are the changes found in Patchwork_17538_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#54])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([IGT#5])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#1188])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl9/igt@kms_hdr@bpc-switch.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180] / [i915#93] / [i915#95])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * {igt@gem_exec_reloc@basic-many-active@bcs0}:
    - shard-skl:          [FAIL][33] -> [PASS][34] +6 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl1/igt@gem_exec_reloc@basic-many-active@bcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-skl3/igt@gem_exec_reloc@basic-many-active@bcs0.html

  * {igt@gem_exec_reloc@basic-many-active@rcs0}:
    - shard-apl:          [FAIL][35] -> [PASS][36] +7 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-apl2/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-apl2/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-tglb:         [FAIL][37] -> [PASS][38] +9 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-tglb6/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-tglb3/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-glk:          [FAIL][39] -> [PASS][40] +7 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-glk7/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-glk7/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-hsw:          [INCOMPLETE][41] ([i915#61]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-hsw6/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-hsw1/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * {igt@gem_exec_reloc@basic-many-active@vcs0}:
    - shard-kbl:          [FAIL][43] -> [PASS][44] +9 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-kbl4/igt@gem_exec_reloc@basic-many-active@vcs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-kbl7/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * {igt@gem_exec_reloc@basic-spin@vcs0}:
    - shard-snb:          [FAIL][45] ([i915#757]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-snb4/igt@gem_exec_reloc@basic-spin@vcs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-snb6/igt@gem_exec_reloc@basic-spin@vcs0.html

  * {igt@gem_exec_reloc@basic-wide-active@rcs0}:
    - shard-snb:          [INCOMPLETE][47] ([i915#82]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-snb2/igt@gem_exec_reloc@basic-wide-active@rcs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-snb5/igt@gem_exec_reloc@basic-wide-active@rcs0.html
    - shard-iclb:         [FAIL][49] -> [PASS][50] +7 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@rcs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-iclb7/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * {igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2}:
    - shard-glk:          [FAIL][51] ([i915#79]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@b-edp1}:
    - shard-skl:          [INCOMPLETE][53] ([i915#198]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +9 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][59] ([i915#1188]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][61] ([i915#69]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64] +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][65] ([i915#588]) -> [SKIP][66] ([i915#658])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-snb:          [INCOMPLETE][67] ([i915#82]) -> [SKIP][68] ([fdo#109271])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-snb5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/shard-snb1/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#757]: https://gitlab.freedesktop.org/drm/intel/issues/757
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8405 -> Patchwork_17538

  CI-20190529: 20190529
  CI_DRM_8405: 83efffba539b475ce7e3fb96aeae7ee744309ff7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5623: 8838c73169ea249e6e86aaed35e5178f60f4ef7d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17538: 91008ee19b392a99ff3cc190aa6c12b2c1959c11 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17538/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
