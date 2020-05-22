Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2225F1DEB95
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2020 17:14:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45D2F6EA09;
	Fri, 22 May 2020 15:14:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0174F6EA08;
 Fri, 22 May 2020 15:14:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EE941A3C0D;
 Fri, 22 May 2020 15:14:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 22 May 2020 15:14:23 -0000
Message-ID: <159016046394.3046.9309947913715561798@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200521173348.27467-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200521173348.27467-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/execlists=3A_Shortcircuit_?=
 =?utf-8?q?queue=5Fprio=28=29_for_no_internal_levels?=
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

Series: series starting with [1/2] drm/i915/execlists: Shortcircuit queue_prio() for no internal levels
URL   : https://patchwork.freedesktop.org/series/77518/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8520_full -> Patchwork_17754_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17754_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_balancer@bonded-true-hang}:
    - shard-kbl:          [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-kbl4/igt@gem_exec_balancer@bonded-true-hang.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-kbl6/igt@gem_exec_balancer@bonded-true-hang.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8520_full and Patchwork_17754_full:

### New IGT tests (2) ###

  * igt@i915_query@engine-info:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@i915_query@engine-info-invalid:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  

Known issues
------------

  Here are the changes found in Patchwork_17754_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180] / [i915#93] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-kbl1/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-snb:          [PASS][5] -> [INCOMPLETE][6] ([i915#82])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-snb5/igt@gem_fenced_exec_thrash@2-spare-fences.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-snb1/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1436] / [i915#716])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-skl3/igt@gen9_exec_parse@allowed-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-skl9/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#54])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#54])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#72])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1188]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180] / [i915#95])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][27] ([i915#69]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-skl5/igt@gem_eio@in-flight-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-skl3/igt@gem_eio@in-flight-suspend.html

  * {igt@gem_exec_schedule@pi-userfault@bcs0}:
    - shard-glk:          [INCOMPLETE][29] ([i915#58] / [k.org#198133]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-glk5/igt@gem_exec_schedule@pi-userfault@bcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-glk2/igt@gem_exec_schedule@pi-userfault@bcs0.html

  * {igt@gem_exec_schedule@pi-userfault@rcs0}:
    - shard-glk:          [FAIL][31] ([i915#1772]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-glk5/igt@gem_exec_schedule@pi-userfault@rcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-glk2/igt@gem_exec_schedule@pi-userfault@rcs0.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
    - shard-skl:          [FAIL][33] ([i915#54]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][35] ([IGT#5]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][39] ([fdo#109441]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][41] ([i915#31]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-kbl3/igt@kms_setmode@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-kbl6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +9 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][45] ([i915#1542]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-iclb6/igt@perf@blocking-parameterized.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-iclb4/igt@perf@blocking-parameterized.html

  * {igt@sysfs_heartbeat_interval@mixed@rcs0}:
    - shard-skl:          [FAIL][47] ([i915#1731]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-skl10/igt@sysfs_heartbeat_interval@mixed@rcs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-skl1/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][49] ([i915#468]) -> [FAIL][50] ([i915#454])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [FAIL][51] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][52] ([i915#1319])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-apl3/igt@kms_content_protection@atomic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-apl1/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][53] ([i915#1319]) -> [FAIL][54] ([fdo#110321])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-apl1/igt@kms_content_protection@srm.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-apl2/igt@kms_content_protection@srm.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [FAIL][55] ([i915#608]) -> [SKIP][56] ([fdo#109642] / [fdo#111068])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/shard-iclb8/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#1772]: https://gitlab.freedesktop.org/drm/intel/issues/1772
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8520 -> Patchwork_17754

  CI-20190529: 20190529
  CI_DRM_8520: 1dd5736705657844b104b48d36677cd1096cdfc0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5669: 918d56bd0181d516e41e3505134f7a81b8fef8fb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17754: 7b21690733bd41f8d3ea0518c5ed5e035a9621f7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
