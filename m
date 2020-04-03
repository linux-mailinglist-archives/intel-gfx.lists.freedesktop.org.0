Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC2719DAF5
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 18:11:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 559796E1B8;
	Fri,  3 Apr 2020 16:11:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C94FF6E1B5;
 Fri,  3 Apr 2020 16:11:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C32E8A00CC;
 Fri,  3 Apr 2020 16:11:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Date: Fri, 03 Apr 2020 16:11:44 -0000
Message-ID: <158593030478.13352.10226726612843918681@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200403010120.3067-1-ashutosh.dixit@intel.com>
In-Reply-To: <20200403010120.3067-1-ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_Do_not_clear_pollin_for_small_user_read_buffers_?=
 =?utf-8?b?KHJldjcp?=
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

Series: drm/i915/perf: Do not clear pollin for small user read buffers (rev7)
URL   : https://patchwork.freedesktop.org/series/75085/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8242_full -> Patchwork_17191_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17191_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17191_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17191_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-skl6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-skl8/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@sysfs_timeslice_duration@timeout@vcs0}:
    - shard-skl:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-skl1/igt@sysfs_timeslice_duration@timeout@vcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-skl7/igt@sysfs_timeslice_duration@timeout@vcs0.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@!opengl 1.1@max-texture-size (NEW):
    - pig-snb-2600:       NOTRUN -> [INCOMPLETE][5]
   [5]: None

  
New tests
---------

  New tests have been introduced between CI_DRM_8242_full and Patchwork_17191_full:

### New IGT tests (1) ###

  * igt@perf_pmu@faulting-read:
    - Statuses :
    - Exec time: [None] s

  


### New Piglit tests (1) ###

  * spec@!opengl 1.1@max-texture-size:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_17191_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_tiled_swapping@non-threaded:
    - shard-kbl:          [PASS][6] -> [FAIL][7] ([i915#93] / [i915#95])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-kbl7/igt@gem_tiled_swapping@non-threaded.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-kbl3/igt@gem_tiled_swapping@non-threaded.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][8] -> [DMESG-WARN][9] ([i915#180] / [i915#95])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-apl2/igt@gem_workarounds@suspend-resume-context.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-apl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_selftest@live@execlists:
    - shard-apl:          [PASS][10] -> [INCOMPLETE][11] ([i915#656])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-apl3/igt@i915_selftest@live@execlists.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-apl1/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][12] -> [DMESG-WARN][13] ([i915#180]) +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled:
    - shard-apl:          [PASS][14] -> [FAIL][15] ([i915#52] / [i915#54] / [i915#95]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-apl2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-apl4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][16] -> [DMESG-WARN][17] ([i915#180] / [i915#93] / [i915#95])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [PASS][18] -> [FAIL][19] ([i915#79])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([i915#34])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-skl3/igt@kms_flip@plain-flip-fb-recreate.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-skl9/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][22] -> [SKIP][23] ([fdo#109441]) +3 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [PASS][24] -> [INCOMPLETE][25] ([i915#69])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-skl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-skl9/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@prime_busy@after-bsd2:
    - shard-iclb:         [PASS][26] -> [SKIP][27] ([fdo#109276]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-iclb4/igt@prime_busy@after-bsd2.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-iclb5/igt@prime_busy@after-bsd2.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@bcs0}:
    - shard-kbl:          [DMESG-WARN][28] ([i915#180]) -> [PASS][29] +3 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-glk:          [FAIL][30] -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-glk5/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-glk6/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * {igt@gem_wait@wait@vecs0}:
    - shard-skl:          [FAIL][32] -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-skl7/igt@gem_wait@wait@vecs0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-skl7/igt@gem_wait@wait@vecs0.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled:
    - shard-glk:          [FAIL][34] ([i915#52] / [i915#54]) -> [PASS][35] +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - shard-glk:          [FAIL][36] ([i915#177] / [i915#52] / [i915#54]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-glk5/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][38] ([i915#79]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-glk6/igt@kms_flip@flip-vs-expired-vblank.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-glk2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][40] ([i915#34]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][42] ([fdo#108145] / [i915#265]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][44] ([fdo#109441]) -> [PASS][45] +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][46] ([i915#31]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-apl8/igt@kms_setmode@basic.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-apl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][48] ([i915#180]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-apl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@prime_busy@before-bsd2:
    - shard-iclb:         [SKIP][50] ([fdo#109276]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-iclb6/igt@prime_busy@before-bsd2.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-iclb1/igt@prime_busy@before-bsd2.html

  * {igt@sysfs_heartbeat_interval@mixed@rcs0}:
    - shard-skl:          [FAIL][52] ([i915#1459]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-skl6/igt@sysfs_heartbeat_interval@mixed@rcs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-skl8/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][54] ([i915#468]) -> [FAIL][55] ([i915#454])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-tglb5/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-apl:          [FAIL][56] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][57] ([fdo#108145] / [i915#265])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@runner@aborted:
    - shard-apl:          [FAIL][58] ([i915#1423]) -> ([FAIL][59], [FAIL][60]) ([i915#1423] / [i915#529])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8242/shard-apl2/igt@runner@aborted.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-apl1/igt@runner@aborted.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/shard-apl4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1459]: https://gitlab.freedesktop.org/drm/intel/issues/1459
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8242 -> Patchwork_17191

  CI-20190529: 20190529
  CI_DRM_8242: 07d20020ec328dc9858680651366425afa51cd59 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5560: 213062c7dcf0cbc8069cbb5f91acbc494def33fd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17191: 474c470267ad8965e4f82037aa367c5c025e88b2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
