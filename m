Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CB31E4BFC
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 19:35:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 781546E372;
	Wed, 27 May 2020 17:35:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 736526E191;
 Wed, 27 May 2020 17:35:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 65587A47EA;
 Wed, 27 May 2020 17:35:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 27 May 2020 17:35:21 -0000
Message-ID: <159060092141.341.3849780528194951940@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200527130214.1239-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200527130214.1239-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Prevent_timeslicing_into_unpreemptible_requests_=28?=
 =?utf-8?q?rev3=29?=
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

Series: drm/i915/gt: Prevent timeslicing into unpreemptible requests (rev3)
URL   : https://patchwork.freedesktop.org/series/77697/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8543_full -> Patchwork_17790_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17790_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17790_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17790_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-hsw:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-hsw2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17790_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1:
    - shard-tglb:         [PASS][2] -> [FAIL][3] ([i915#1528])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb8/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-tglb3/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [PASS][4] -> [DMESG-WARN][5] ([i915#180])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-kbl4/igt@gem_eio@in-flight-suspend.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-kbl7/igt@gem_eio@in-flight-suspend.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          [PASS][6] -> [INCOMPLETE][7] ([i915#69])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-skl3/igt@i915_pm_backlight@fade_with_suspend.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-skl8/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-glk:          [PASS][8] -> [DMESG-WARN][9] ([i915#1926])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-glk9/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-glk5/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-apl:          [PASS][10] -> [FAIL][11] ([i915#1181] / [i915#95])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-apl1/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-apl6/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled:
    - shard-hsw:          [PASS][12] -> [DMESG-WARN][13] ([i915#1927])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-hsw7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-hsw2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [PASS][14] -> [DMESG-WARN][15] ([i915#180])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-apl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][16] -> [FAIL][17] ([fdo#108145] / [i915#265]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][18] -> [FAIL][19] ([i915#31])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-apl8/igt@kms_setmode@basic.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-apl2/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen:
    - shard-skl:          [FAIL][20] ([i915#54]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen.html

  * igt@kms_cursor_legacy@pipe-b-torture-bo:
    - shard-tglb:         [DMESG-WARN][22] ([i915#128]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-tglb8/igt@kms_cursor_legacy@pipe-b-torture-bo.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-tglb3/igt@kms_cursor_legacy@pipe-b-torture-bo.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][24] ([i915#180]) -> [PASS][25] +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-kbl:          [DMESG-WARN][26] ([i915#180]) -> [PASS][27] +7 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][28] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - shard-skl:          [FAIL][30] ([i915#53]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-skl10/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-skl5/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][32] ([fdo#108145] / [i915#265]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][34] ([fdo#109441]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-iclb6/igt@kms_psr@psr2_cursor_plane_move.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][36] ([i915#31]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-hsw7/igt@kms_setmode@basic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-hsw6/igt@kms_setmode@basic.html

  * {igt@sysfs_heartbeat_interval@mixed@bcs0}:
    - shard-skl:          [FAIL][38] ([i915#1731]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-skl5/igt@sysfs_heartbeat_interval@mixed@bcs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-skl1/igt@sysfs_heartbeat_interval@mixed@bcs0.html

  
#### Warnings ####

  * igt@i915_pm_backlight@fade:
    - shard-glk:          [TIMEOUT][40] -> [SKIP][41] ([fdo#109271]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-glk5/igt@i915_pm_backlight@fade.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-glk2/igt@i915_pm_backlight@fade.html
    - shard-apl:          [TIMEOUT][42] ([i915#1635]) -> [SKIP][43] ([fdo#109271]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-apl3/igt@i915_pm_backlight@fade.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-apl6/igt@i915_pm_backlight@fade.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][44] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][45] ([i915#1319])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-apl2/igt@kms_content_protection@legacy.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-apl6/igt@kms_content_protection@legacy.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-apl:          [TIMEOUT][46] ([i915#1635]) -> [FAIL][47] ([fdo#108145] / [i915#265])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1181]: https://gitlab.freedesktop.org/drm/intel/issues/1181
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8543 -> Patchwork_17790

  CI-20190529: 20190529
  CI_DRM_8543: 3fcc7e306e95013f1f4c527e0dda96197e1243bf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5680: f7e3772175c53f0c910f4513831791cb5bdcab04 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17790: 0ac958b512be6cde56f9898fd392844f9285bbb4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17790/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
