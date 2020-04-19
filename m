Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD601AFE6F
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Apr 2020 23:33:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 398A689EB7;
	Sun, 19 Apr 2020 21:33:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1A52E89EB7;
 Sun, 19 Apr 2020 21:33:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 140B1A00E6;
 Sun, 19 Apr 2020 21:33:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Date: Sun, 19 Apr 2020 21:33:23 -0000
Message-ID: <158733200305.15014.3264154545211575549@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200415193535.14597-1-matthew.s.atwood@intel.com>
In-Reply-To: <20200415193535.14597-1-matthew.s.atwood@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Wa=5F14011059788_=28rev3=29?=
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

Series: drm/i915/tgl: Wa_14011059788 (rev3)
URL   : https://patchwork.freedesktop.org/series/75990/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8322_full -> Patchwork_17363_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17363_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17363_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17363_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_mmap_offset@open-flood:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-tglb2/igt@gem_mmap_offset@open-flood.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-tglb6/igt@gem_mmap_offset@open-flood.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-kbl:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl2/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-kbl6/igt@i915_module_load@reload-with-fault-injection.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_schedule@pi-shared-iova@vecs0}:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl7/igt@gem_exec_schedule@pi-shared-iova@vecs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-skl2/igt@gem_exec_schedule@pi-shared-iova@vecs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_17363_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-apl4/igt@gem_workarounds@suspend-resume.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-apl4/igt@gem_workarounds@suspend-resume.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-random:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#54] / [i915#93] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109349])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][13] -> [INCOMPLETE][14] ([i915#155])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_mmap_write_crc@main:
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#93] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl4/igt@kms_mmap_write_crc@main.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-kbl7/igt@kms_mmap_write_crc@main.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-y:
    - shard-apl:          [PASS][19] -> [FAIL][20] ([i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-apl3/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-apl7/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-iclb7/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][23] -> [FAIL][24] ([i915#31])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl6/igt@kms_setmode@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-kbl2/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][25] ([fdo#109276]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-iclb6/igt@gem_exec_params@invalid-bsd-ring.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-iclb1/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][27] ([i915#716]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-glk8/igt@gen9_exec_parse@allowed-all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-glk7/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][29] ([i915#300]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-render-ytiled:
    - shard-glk:          [FAIL][31] ([i915#52] / [i915#54]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1}:
    - shard-skl:          [FAIL][33] ([i915#79]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +4 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * {igt@kms_flip@plain-flip-ts-check@c-edp1}:
    - shard-skl:          [FAIL][37] ([i915#34]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl9/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-skl4/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][39] ([i915#1188]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][43] ([fdo#108145] / [i915#265]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][45] ([fdo#109441]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * {igt@perf@polling-parameterized}:
    - shard-tglb:         [FAIL][47] ([i915#1542]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-tglb6/igt@perf@polling-parameterized.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-tglb5/igt@perf@polling-parameterized.html

  * {igt@sysfs_timeslice_duration@timeout@vecs0}:
    - shard-apl:          [FAIL][49] -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-apl2/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-apl8/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@i915_pm_rpm@pm-tiling:
    - shard-snb:          [SKIP][51] ([fdo#109271]) -> [INCOMPLETE][52] ([i915#82])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-snb5/igt@i915_pm_rpm@pm-tiling.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/shard-snb4/igt@i915_pm_rpm@pm-tiling.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
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
  * Linux: CI_DRM_8322 -> Patchwork_17363

  CI-20190529: 20190529
  CI_DRM_8322: fd447e6b1ee13e6a9731bddc7694552640e8a01e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5599: cdb07101dda33e2fcb0f4c2aa199c47159d88f35 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17363: 86d99a1bdf1cb620703ddbb543c340e4b8176d03 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17363/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
