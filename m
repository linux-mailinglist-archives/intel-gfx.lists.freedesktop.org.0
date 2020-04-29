Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8C71BE118
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 16:33:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC5996EEB8;
	Wed, 29 Apr 2020 14:33:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 88FA96EEB7;
 Wed, 29 Apr 2020 14:33:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 829C1A0BC6;
 Wed, 29 Apr 2020 14:33:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 29 Apr 2020 14:33:17 -0000
Message-ID: <158817079753.6696.1567425713479182812@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200429103535.27781-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200429103535.27781-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/6=5D_drm/i915/gt=3A_Always_enable_b?=
 =?utf-8?q?usy-stats_for_execlists?=
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

Series: series starting with [CI,1/6] drm/i915/gt: Always enable busy-stats for execlists
URL   : https://patchwork.freedesktop.org/series/76715/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8390_full -> Patchwork_17508_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17508_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17508_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17508_full:

### IGT changes ###

#### Possible regressions ####

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-apl4/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/shard-apl2/igt@perf@gen8-unprivileged-single-ctx-counters.html

  
Known issues
------------

  Here are the changes found in Patchwork_17508_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#1436] / [i915#716])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-kbl3/igt@gen9_exec_parse@allowed-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/shard-kbl4/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_legacy@all-pipes-torture-bo:
    - shard-iclb:         [PASS][5] -> [DMESG-WARN][6] ([i915#128])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-iclb6/igt@kms_cursor_legacy@all-pipes-torture-bo.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/shard-iclb7/igt@kms_cursor_legacy@all-pipes-torture-bo.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#52] / [i915#54])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180] / [i915#93] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#49])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#1188]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +5 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-glk:          [PASS][23] -> [INCOMPLETE][24] ([i915#58] / [k.org#198133])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-glk5/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/shard-glk7/igt@perf@gen8-unprivileged-single-ctx-counters.html

  
#### Possible fixes ####

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-tglb:         [FAIL][25] ([i915#413]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-tglb2/igt@i915_pm_rps@min-max-config-loaded.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/shard-tglb1/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][27] ([IGT#5] / [i915#697]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2}:
    - shard-glk:          [FAIL][29] ([i915#79]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32] +9 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * {igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1}:
    - shard-skl:          [FAIL][35] ([i915#34]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][37] ([i915#123] / [i915#69]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-skl8/igt@kms_frontbuffer_tracking@psr-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/shard-skl3/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-b:
    - shard-snb:          [SKIP][39] ([fdo#109271]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-snb4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-b.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/shard-snb1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][41] ([fdo#108145] / [i915#265]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [SKIP][43] ([fdo#109441]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][45] ([i915#1515]) -> [FAIL][46] ([i915#1515])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8390 -> Patchwork_17508

  CI-20190529: 20190529
  CI_DRM_8390: 89473e10666c78c4df9e92c9caf03d7311c291cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5614: d095827add11d4e8158b87683971ee659749d9a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17508: f62efbcbf8a78af6c2ab2a74a9d0baa598358a3f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17508/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
