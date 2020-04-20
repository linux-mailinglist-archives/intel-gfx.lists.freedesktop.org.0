Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCBB1B10C7
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 17:54:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D4CE6E7D7;
	Mon, 20 Apr 2020 15:54:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4603B6E7D3;
 Mon, 20 Apr 2020 15:54:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 43C93A00E6;
 Mon, 20 Apr 2020 15:54:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 20 Apr 2020 15:54:38 -0000
Message-ID: <158739807827.29874.6023657546911244951@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200420090914.14679-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200420090914.14679-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915/selftests=3A_Verify_freque?=
 =?utf-8?q?ncy_scaling_with_RPS?=
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

Series: series starting with [1/4] drm/i915/selftests: Verify frequency scaling with RPS
URL   : https://patchwork.freedesktop.org/series/76184/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8327_full -> Patchwork_17376_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17376_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17376_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17376_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_psr@sprite_render:
    - shard-tglb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-tglb7/igt@kms_psr@sprite_render.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-tglb3/igt@kms_psr@sprite_render.html

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-tglb3/igt@runner@aborted.html

  
#### Warnings ####

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          [DMESG-FAIL][4] ([i915#1744]) -> [DMESG-FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-skl4/igt@i915_selftest@live@gt_pm.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-skl8/igt@i915_selftest@live@gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_17376_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-tglb:         [PASS][6] -> [INCOMPLETE][7] ([i915#750])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-tglb5/igt@gem_exec_whisper@basic-queues-priority-all.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-tglb3/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][8] -> [FAIL][9] ([i915#454])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-kbl:          [PASS][10] -> [FAIL][11] ([i915#1119] / [i915#93] / [i915#95])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-kbl1/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-kbl3/igt@kms_big_fb@linear-32bpp-rotate-0.html
    - shard-apl:          [PASS][12] -> [FAIL][13] ([i915#1119] / [i915#95])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-apl3/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-apl8/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][14] -> [FAIL][15] ([i915#54])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][16] -> [DMESG-WARN][17] ([i915#180]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen:
    - shard-tglb:         [PASS][18] -> [SKIP][19] ([i915#668]) +6 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([i915#1188])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [PASS][22] -> [INCOMPLETE][23] ([i915#69])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][26] -> [FAIL][27] ([i915#173])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-iclb4/igt@kms_psr@no_drrs.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][28] -> [SKIP][29] ([fdo#109441]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][30] -> [FAIL][31] ([i915#31])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-kbl2/igt@kms_setmode@basic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-kbl1/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@i915_suspend@fence-restore-untiled:
    - shard-skl:          [INCOMPLETE][32] ([i915#69]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-skl1/igt@i915_suspend@fence-restore-untiled.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-skl9/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-skl:          [FAIL][34] ([i915#54]) -> [PASS][35] +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][36] ([i915#180]) -> [PASS][37] +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-kbl:          [DMESG-WARN][38] ([i915#180]) -> [PASS][39] +8 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][40] ([i915#1188]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][42] ([fdo#108145] / [i915#265]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][44] ([fdo#109441]) -> [PASS][45] +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-iclb6/igt@kms_psr@psr2_cursor_plane_move.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][46] ([i915#31]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-apl1/igt@kms_setmode@basic.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-apl3/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][48] ([i915#588]) -> [SKIP][49] ([i915#658])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][50] ([i915#454]) -> [SKIP][51] ([i915#668])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@gt_pm:
    - shard-tglb:         [DMESG-FAIL][52] ([i915#1725]) -> [DMESG-FAIL][53] ([i915#1744])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-tglb6/igt@i915_selftest@live@gt_pm.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/shard-tglb5/igt@i915_selftest@live@gt_pm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1725]: https://gitlab.freedesktop.org/drm/intel/issues/1725
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#1744]: https://gitlab.freedesktop.org/drm/intel/issues/1744
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8327 -> Patchwork_17376

  CI-20190529: 20190529
  CI_DRM_8327: 17e0a63ab93b19ea2bfccd9a0425c93e52a65246 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17376: 589884d12beb98e0c84eb0026628ccb93ed0b946 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
