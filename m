Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD1E1AFE32
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Apr 2020 22:40:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D53C56E0BF;
	Sun, 19 Apr 2020 20:40:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CD6C26E0BF;
 Sun, 19 Apr 2020 20:40:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B8BC7A0088;
 Sun, 19 Apr 2020 20:40:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
Date: Sun, 19 Apr 2020 20:40:01 -0000
Message-ID: <158732880172.15015.3552255629929691772@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200417152244.77623-1-michael.j.ruhl@intel.com>
In-Reply-To: <20200417152244.77623-1-michael.j.ruhl@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Refactor_dma_mask_usage_to_a_common_helper?=
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

Series: drm/i915: Refactor dma mask usage to a common helper
URL   : https://patchwork.freedesktop.org/series/76104/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8322_full -> Patchwork_17355_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17355_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-edp1}:
    - shard-skl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_17355_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          [PASS][2] -> [INCOMPLETE][3] ([i915#58] / [k.org#198133])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-glk6/igt@i915_module_load@reload-with-fault-injection.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-glk2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [PASS][4] -> [FAIL][5] ([i915#1066])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-snb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-snb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][6] -> [DMESG-WARN][7] ([i915#180]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-apl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-random:
    - shard-kbl:          [PASS][8] -> [FAIL][9] ([i915#54] / [i915#93] / [i915#95])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - shard-skl:          [PASS][10] -> [FAIL][11] ([i915#54])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109349])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-tglb:         [PASS][14] -> [SKIP][15] ([i915#668])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-tglb7/igt@kms_fbcon_fbt@psr-suspend.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-tglb6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][16] -> [INCOMPLETE][17] ([i915#155])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_mmap_write_crc@main:
    - shard-kbl:          [PASS][18] -> [FAIL][19] ([i915#93] / [i915#95])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl4/igt@kms_mmap_write_crc@main.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-kbl4/igt@kms_mmap_write_crc@main.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][20] -> [DMESG-WARN][21] ([i915#180]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([fdo#108145] / [i915#265])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][24] -> [FAIL][25] ([i915#173])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-iclb3/igt@kms_psr@no_drrs.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][26] -> [SKIP][27] ([fdo#109441]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-iclb6/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][28] -> [FAIL][29] ([i915#31])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl6/igt@kms_setmode@basic.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-kbl2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-iclb:         [PASS][30] -> [INCOMPLETE][31] ([i915#1185])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-iclb2/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-iclb3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  
#### Possible fixes ####

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][32] ([i915#300]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-render-ytiled:
    - shard-glk:          [FAIL][34] ([i915#52] / [i915#54]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-glk4/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1}:
    - shard-skl:          [FAIL][36] ([i915#79]) -> [PASS][37] +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][38] ([i915#180]) -> [PASS][39] +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * {igt@kms_flip@plain-flip-ts-check@c-edp1}:
    - shard-skl:          [FAIL][40] ([i915#34]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl9/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-skl1/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][42] ([i915#180]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][44] ([fdo#108145] / [i915#265]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][46] ([fdo#109642] / [fdo#111068]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-iclb7/igt@kms_psr2_su@frontbuffer.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][48] ([fdo#109441]) -> [PASS][49] +3 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * {igt@perf@polling-small-buf}:
    - shard-iclb:         [FAIL][50] -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-iclb3/igt@perf@polling-small-buf.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-iclb4/igt@perf@polling-small-buf.html

  * {igt@sysfs_timeslice_duration@timeout@vecs0}:
    - shard-apl:          [FAIL][52] -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-apl2/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/shard-apl3/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1066]: https://gitlab.freedesktop.org/drm/intel/issues/1066
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
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
  * Linux: CI_DRM_8322 -> Patchwork_17355

  CI-20190529: 20190529
  CI_DRM_8322: fd447e6b1ee13e6a9731bddc7694552640e8a01e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5599: cdb07101dda33e2fcb0f4c2aa199c47159d88f35 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17355: f02e648584585c3b3d8da4049e2e4fb41b8026a3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17355/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
