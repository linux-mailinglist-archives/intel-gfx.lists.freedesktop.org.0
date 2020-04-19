Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C341AFE3A
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Apr 2020 22:49:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04CC589DFD;
	Sun, 19 Apr 2020 20:49:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 96DE989DFD;
 Sun, 19 Apr 2020 20:49:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8E90BA47E2;
 Sun, 19 Apr 2020 20:49:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Sun, 19 Apr 2020 20:49:20 -0000
Message-ID: <158732936055.15015.7667888172755543@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200417152734.464-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200417152734.464-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Flatten_intel=5Fdp=5Fch?=
 =?utf-8?q?eck=5Fmst=5Fstatus=28=29_a_bit?=
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

Series: series starting with [1/2] drm/i915: Flatten intel_dp_check_mst_status() a bit
URL   : https://patchwork.freedesktop.org/series/76105/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8322_full -> Patchwork_17356_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17356_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#1531] / [i915#1658])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-tglb5/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-tglb8/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-random:
    - shard-kbl:          [PASS][3] -> [FAIL][4] ([i915#54] / [i915#93] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109349])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][7] -> [INCOMPLETE][8] ([i915#155])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:
    - shard-tglb:         [PASS][9] -> [SKIP][10] ([i915#668]) +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html

  * igt@kms_mmap_write_crc@main:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#93] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl4/igt@kms_mmap_write_crc@main.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-kbl1/igt@kms_mmap_write_crc@main.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#69])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-iclb:         [PASS][15] -> [INCOMPLETE][16] ([i915#1185] / [i915#250])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-iclb7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-y:
    - shard-apl:          [PASS][19] -> [FAIL][20] ([i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-apl3/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-apl1/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-iclb4/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#31])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl7/igt@kms_setmode@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-skl6/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][25] -> [FAIL][26] ([i915#31])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl6/igt@kms_setmode@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-kbl7/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][29] ([i915#716]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-glk8/igt@gen9_exec_parse@allowed-all.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-glk6/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
    - shard-apl:          [FAIL][31] ([i915#54] / [i915#95]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][33] ([i915#300]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-render-ytiled:
    - shard-glk:          [FAIL][35] ([i915#52] / [i915#54]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1}:
    - shard-skl:          [FAIL][37] ([i915#79]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +4 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * {igt@kms_flip@plain-flip-ts-check@c-edp1}:
    - shard-skl:          [FAIL][41] ([i915#34]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl9/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-skl8/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][45] ([fdo#108145] / [i915#265]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][47] ([fdo#109441]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-iclb4/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * {igt@perf@polling-parameterized}:
    - shard-tglb:         [FAIL][49] ([i915#1542]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-tglb6/igt@perf@polling-parameterized.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-tglb7/igt@perf@polling-parameterized.html

  * {igt@perf@polling-small-buf}:
    - shard-iclb:         [FAIL][51] -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-iclb3/igt@perf@polling-small-buf.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-iclb8/igt@perf@polling-small-buf.html

  * {igt@sysfs_timeslice_duration@timeout@vecs0}:
    - shard-apl:          [FAIL][53] -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-apl2/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-apl4/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@gem_workarounds@suspend-resume-context:
    - shard-kbl:          [INCOMPLETE][55] ([i915#155]) -> [INCOMPLETE][56] ([i915#155] / [i915#180])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl2/igt@gem_workarounds@suspend-resume-context.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-kbl7/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - shard-snb:          [SKIP][57] ([fdo#109271]) -> [INCOMPLETE][58] ([i915#82])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-snb1/igt@i915_pm_rpm@drm-resources-equal.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-snb5/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-apl:          [FAIL][59] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][60] ([fdo#108145] / [i915#265])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1658]: https://gitlab.freedesktop.org/drm/intel/issues/1658
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
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
  * Linux: CI_DRM_8322 -> Patchwork_17356

  CI-20190529: 20190529
  CI_DRM_8322: fd447e6b1ee13e6a9731bddc7694552640e8a01e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5599: cdb07101dda33e2fcb0f4c2aa199c47159d88f35 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17356: bdd0a32afab1c4234d6476e1e86ea4c0ef73a2f4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17356/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
