Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEC012BC8E
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Dec 2019 05:59:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81A3F6E133;
	Sat, 28 Dec 2019 04:59:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 473526E133;
 Sat, 28 Dec 2019 04:59:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1F6CCA0093;
 Sat, 28 Dec 2019 04:59:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Sat, 28 Dec 2019 04:59:07 -0000
Message-ID: <157750914709.776.1133046125265301775@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191228031204.10189-1-manasi.d.navare@intel.com>
In-Reply-To: <20191228031204.10189-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2Cv6=2C1/3=5D_drm/i915/dp=3A_Make_sure_?=
 =?utf-8?q?all_tiled_connectors_get_added_to_the_state_with_full_modeset?=
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

Series: series starting with [CI,v6,1/3] drm/i915/dp: Make sure all tiled connectors get added to the state with full modeset
URL   : https://patchwork.freedesktop.org/series/71445/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7644_full -> Patchwork_15936_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15936_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-apl4/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-apl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-apl:          [PASS][3] -> [FAIL][4] ([i915#679])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-apl2/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-apl1/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-persistence:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb1/igt@gem_ctx_persistence@vcs1-persistence.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-iclb8/igt@gem_ctx_persistence@vcs1-persistence.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#69])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl7/igt@gem_eio@in-flight-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-skl7/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112080]) +5 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +7 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb1/igt@gem_exec_schedule@fifo-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-iclb7/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@independent-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb8/igt@gem_exec_schedule@independent-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-iclb1/igt@gem_exec_schedule@independent-bsd.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#109])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl3/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-skl9/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-random:
    - shard-hsw:          [PASS][17] -> [DMESG-WARN][18] ([IGT#6])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-hsw8/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-hsw6/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#54])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#34])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][27] -> [FAIL][28] ([i915#31])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-kbl1/igt@kms_setmode@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-kbl2/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][29] ([fdo#112080]) -> [PASS][30] +6 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb8/igt@gem_busy@busy-vcs1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-apl:          [FAIL][31] ([i915#679]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-apl6/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-apl4/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-skl:          [FAIL][33] ([i915#679]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl1/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-skl10/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][35] ([fdo#109276] / [fdo#112080]) -> [PASS][36] +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_eio@kms:
    - shard-glk:          [INCOMPLETE][37] ([i915#58] / [k.org#198133]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-glk2/igt@gem_eio@kms.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-glk2/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [FAIL][39] ([i915#232]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-snb7/igt@gem_eio@reset-stress.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-snb2/igt@gem_eio@reset-stress.html

  * {igt@gem_exec_schedule@pi-common-bsd}:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@pi-ringfull-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb2/igt@gem_exec_schedule@pi-ringfull-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-iclb6/igt@gem_exec_schedule@pi-ringfull-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-apl:          [TIMEOUT][45] ([i915#530]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][47] ([i915#644]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-skl9/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-skl:          [DMESG-WARN][49] ([i915#716]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-skl8/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding:
    - shard-skl:          [FAIL][51] ([i915#54]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][53] ([i915#79]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][55] ([i915#79]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][61] ([fdo#108145] / [i915#265]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][63] ([i915#31]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-apl1/igt@kms_setmode@basic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-apl8/igt@kms_setmode@basic.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][65] ([fdo#109276]) -> [PASS][66] +12 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][67] ([IGT#28]) -> [SKIP][68] ([fdo#109276] / [fdo#112080])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7644 -> Patchwork_15936

  CI-20190529: 20190529
  CI_DRM_7644: 103086964d18ac22a8e333b9ea7649f67c468f7b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15936: 1bfacdc68aeb61dcef5050478e608894fee9c181 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15936/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
