Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 376FD19E8D5
	for <lists+intel-gfx@lfdr.de>; Sun,  5 Apr 2020 05:18:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 719146E195;
	Sun,  5 Apr 2020 03:18:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C9B256E191;
 Sun,  5 Apr 2020 03:18:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C230FA00C7;
 Sun,  5 Apr 2020 03:18:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Date: Sun, 05 Apr 2020 03:18:46 -0000
Message-ID: <158605672676.21318.11566035578513980741@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200404150508.111056-1-andi@etezian.org>
In-Reply-To: <20200404150508.111056-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_move_remaining_debugfs_interfaces_into_gt_=28rev5?=
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

Series: drm/i915/gt: move remaining debugfs interfaces into gt (rev5)
URL   : https://patchwork.freedesktop.org/series/75333/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8254_full -> Patchwork_17212_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17212_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17212_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17212_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-tglb3/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17212_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [PASS][2] -> [SKIP][3] ([fdo#109276])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-iclb4/igt@gem_exec_params@invalid-bsd-ring.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-iclb7/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@i915_pm_sseu@full-enable:
    - shard-apl:          [PASS][4] -> [SKIP][5] ([fdo#109271])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-apl3/igt@i915_pm_sseu@full-enable.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-apl1/igt@i915_pm_sseu@full-enable.html
    - shard-kbl:          [PASS][6] -> [SKIP][7] ([fdo#109271])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-kbl6/igt@i915_pm_sseu@full-enable.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-kbl1/igt@i915_pm_sseu@full-enable.html
    - shard-skl:          [PASS][8] -> [SKIP][9] ([fdo#109271])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-skl5/igt@i915_pm_sseu@full-enable.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-skl8/igt@i915_pm_sseu@full-enable.html
    - shard-glk:          [PASS][10] -> [SKIP][11] ([fdo#109271])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-glk1/igt@i915_pm_sseu@full-enable.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-glk2/igt@i915_pm_sseu@full-enable.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][12] -> [FAIL][13] ([i915#79])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][14] -> [INCOMPLETE][15] ([i915#221])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-kbl:          [PASS][16] -> [DMESG-WARN][17] ([i915#180]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-kbl:          [PASS][18] -> [FAIL][19] ([i915#1188])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-kbl1/igt@kms_hdr@bpc-switch-dpms.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-kbl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([i915#1188])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-iclb:         [PASS][22] -> [INCOMPLETE][23] ([i915#1185] / [i915#250])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-iclb7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][24] -> [FAIL][25] ([fdo#108145] / [i915#265])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][26] -> [SKIP][27] ([fdo#109441]) +3 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][28] -> [DMESG-WARN][29] ([i915#180]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * {igt@gem_wait@write-wait@all}:
    - shard-glk:          [FAIL][30] -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-glk1/igt@gem_wait@write-wait@all.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-glk2/igt@gem_wait@write-wait@all.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [INCOMPLETE][32] ([i915#1531]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-tglb5/igt@i915_selftest@live@requests.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-tglb3/igt@i915_selftest@live@requests.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-skl:          [INCOMPLETE][34] ([i915#69]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-skl5/igt@i915_suspend@fence-restore-tiled2untiled.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-skl10/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:
    - shard-apl:          [FAIL][36] ([i915#54] / [i915#95]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-hsw:          [INCOMPLETE][38] ([i915#61]) -> [PASS][39] +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-hsw4/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-hsw4/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][40] ([i915#54]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][42] ([i915#180]) -> [PASS][43] +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [DMESG-WARN][44] ([i915#180]) -> [PASS][45] +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][46] ([fdo#108145] / [i915#265]) -> [PASS][47] +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][48] ([fdo#109441]) -> [PASS][49] +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-iclb4/igt@kms_psr@psr2_primary_mmap_gtt.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  
#### Warnings ####

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-snb:          [SKIP][50] ([fdo#109271]) -> [INCOMPLETE][51] ([i915#82])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/shard-snb4/igt@i915_pm_rpm@system-suspend-modeset.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/shard-snb2/igt@i915_pm_rpm@system-suspend-modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1604]: https://gitlab.freedesktop.org/drm/intel/issues/1604
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8254 -> Patchwork_17212

  CI-20190529: 20190529
  CI_DRM_8254: 48a3176bdce701e44ccba0fbdf3497b0dae3ae48 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5563: 7ab7807727262b7ed7e12197b78e867287a17ef6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17212: b1842893326e6694c5f47ecef02030daadc756bb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
