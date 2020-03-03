Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D050177BB9
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 17:17:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B89316E059;
	Tue,  3 Mar 2020 16:17:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BA0E26E059;
 Tue,  3 Mar 2020 16:17:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B002EA3ECB;
 Tue,  3 Mar 2020 16:17:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Tue, 03 Mar 2020 16:17:47 -0000
Message-ID: <158325226769.15378.8862455847568536456@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200303000859.29339-1-manasi.d.navare@intel.com>
In-Reply-To: <20200303000859.29339-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/dp=3A_Add_function_to_parse_EDID_descriptors_for_adaptive_sync?=
 =?utf-8?q?_limits_=28rev2=29?=
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

Series: drm/dp: Add function to parse EDID descriptors for adaptive sync limits (rev2)
URL   : https://patchwork.freedesktop.org/series/68488/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8050_full -> Patchwork_16790_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16790_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16790_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16790_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-skl:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl7/igt@gem_exec_schedule@pi-common-bsd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-skl8/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-iclb:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb1/igt@gem_exec_whisper@basic-fds-priority.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-iclb8/igt@gem_exec_whisper@basic-fds-priority.html

  
Known issues
------------

  Here are the changes found in Patchwork_16790_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112080]) +8 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@implicit-read-write-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +7 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd1.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb8/igt@gem_exec_schedule@preempt-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-iclb4/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#716])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl1/igt@gen9_exec_parse@allowed-single.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-skl10/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#54])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#49])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1188])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl7/igt@kms_hdr@bpc-switch.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-skl6/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#899])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][35] -> [FAIL][36] ([i915#31])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-apl7/igt@kms_setmode@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-apl8/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [PASS][37] -> [INCOMPLETE][38] ([i915#69]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl5/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-skl10/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [SKIP][39] ([fdo#112080]) -> [PASS][40] +4 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb5/igt@gem_busy@extended-parallel-vcs1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-iclb4/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd:
    - shard-skl:          [INCOMPLETE][41] ([i915#1197] / [i915#1239]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-skl:          [FAIL][43] ([i915#679]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][45] ([fdo#109276] / [i915#677]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb5/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][47] ([fdo#112146]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][49] ([fdo#109276]) -> [PASS][50] +14 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb3/igt@gem_exec_schedule@independent-bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_psr@primary_mmap_gtt:
    - shard-tglb:         [SKIP][55] ([i915#668]) -> [PASS][56] +4 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-tglb5/igt@kms_psr@primary_mmap_gtt.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-tglb8/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][57] ([fdo#109441]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-a:
    - shard-snb:          [SKIP][59] ([fdo#109271]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-snb5/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-snb4/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][61] ([i915#69]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-skl8/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-skl2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-snb:          [SKIP][63] ([fdo#109271]) -> [INCOMPLETE][64] ([i915#82])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/shard-snb2/igt@i915_pm_dc@dc6-psr.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/shard-snb2/igt@i915_pm_dc@dc6-psr.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (9 -> 10)
------------------------------

  Additional (1): pig-skl-6260u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8050 -> Patchwork_16790

  CI-20190529: 20190529
  CI_DRM_8050: 422d76f5669ce8b7cd0c579f60628877159cbe7c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5484: 91b36b61e76901a2bd09fe93ac7bf7b8a60f258c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16790: 2495771ecf20343ab2818cd325a319fb42577522 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16790/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
