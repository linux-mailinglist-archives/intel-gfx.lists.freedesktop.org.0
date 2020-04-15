Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E54621AAD32
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 18:13:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31BB86EA28;
	Wed, 15 Apr 2020 16:13:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9D8AD6EA28;
 Wed, 15 Apr 2020 16:13:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A6C8A47E2;
 Wed, 15 Apr 2020 16:13:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Wed, 15 Apr 2020 16:13:31 -0000
Message-ID: <158696721162.21014.12249516726280130058@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200414194956.164323-1-jose.souza@intel.com>
In-Reply-To: <20200414194956.164323-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv5=2C1/8=5D_drm/i915/display=3A_Move_out_c?=
 =?utf-8?q?ode_to_return_the_digital=5Fport_of_the_aux_ch?=
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

Series: series starting with [v5,1/8] drm/i915/display: Move out code to return the digital_port of the aux ch
URL   : https://patchwork.freedesktop.org/series/75941/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8298_full -> Patchwork_17300_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17300_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17300_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17300_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-tglb5/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-tglb7/igt@i915_module_load@reload-with-fault-injection.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8298_full and Patchwork_17300_full:

### New IGT tests (27) ###

  * igt@kms_plane_cursor@pipe-a-overlay-size-128:
    - Statuses : 7 pass(s)
    - Exec time: [1.66, 3.68] s

  * igt@kms_plane_cursor@pipe-a-overlay-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [1.65, 3.65] s

  * igt@kms_plane_cursor@pipe-a-overlay-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [1.65, 3.66] s

  * igt@kms_plane_cursor@pipe-a-primary-size-128:
    - Statuses : 8 pass(s)
    - Exec time: [1.63, 3.46] s

  * igt@kms_plane_cursor@pipe-a-primary-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [1.63, 3.44] s

  * igt@kms_plane_cursor@pipe-a-primary-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [1.63, 3.55] s

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - Statuses : 8 pass(s)
    - Exec time: [1.65, 3.67] s

  * igt@kms_plane_cursor@pipe-a-viewport-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [1.65, 3.68] s

  * igt@kms_plane_cursor@pipe-a-viewport-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [1.64, 3.67] s

  * igt@kms_plane_cursor@pipe-b-overlay-size-128:
    - Statuses : 8 pass(s)
    - Exec time: [2.22, 4.88] s

  * igt@kms_plane_cursor@pipe-b-overlay-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [2.22, 4.88] s

  * igt@kms_plane_cursor@pipe-b-overlay-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [2.23, 4.83] s

  * igt@kms_plane_cursor@pipe-b-primary-size-128:
    - Statuses : 8 pass(s)
    - Exec time: [2.22, 4.68] s

  * igt@kms_plane_cursor@pipe-b-primary-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [2.19, 4.67] s

  * igt@kms_plane_cursor@pipe-b-primary-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [2.21, 4.60] s

  * igt@kms_plane_cursor@pipe-b-viewport-size-128:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_plane_cursor@pipe-b-viewport-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [2.23, 4.87] s

  * igt@kms_plane_cursor@pipe-b-viewport-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [2.27, 4.85] s

  * igt@kms_plane_cursor@pipe-c-overlay-size-128:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.86] s

  * igt@kms_plane_cursor@pipe-c-overlay-size-256:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.94] s

  * igt@kms_plane_cursor@pipe-c-overlay-size-64:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.60] s

  * igt@kms_plane_cursor@pipe-c-primary-size-128:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.61] s

  * igt@kms_plane_cursor@pipe-c-primary-size-256:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.70] s

  * igt@kms_plane_cursor@pipe-c-primary-size-64:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.66] s

  * igt@kms_plane_cursor@pipe-c-viewport-size-128:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.87] s

  * igt@kms_plane_cursor@pipe-c-viewport-size-256:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.82] s

  * igt@kms_plane_cursor@pipe-c-viewport-size-64:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.96] s

  

Known issues
------------

  Here are the changes found in Patchwork_17300_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_atomic_transition@1x-modeset-transitions:
    - shard-snb:          [PASS][3] -> [SKIP][4] ([fdo#109271]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-snb2/igt@kms_atomic_transition@1x-modeset-transitions.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-snb6/igt@kms_atomic_transition@1x-modeset-transitions.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@pipe-b-torture-bo:
    - shard-snb:          [PASS][7] -> [DMESG-WARN][8] ([i915#128])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-snb2/igt@kms_cursor_legacy@pipe-b-torture-bo.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-snb1/igt@kms_cursor_legacy@pipe-b-torture-bo.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#34])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-glk4/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#221])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#34])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180] / [i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#31])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl7/igt@kms_setmode@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-skl1/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][25] ([fdo#109276]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb7/igt@gem_exec_params@invalid-bsd-ring.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-iclb4/igt@gem_exec_params@invalid-bsd-ring.html

  * {igt@gem_wait@write-wait@all}:
    - shard-skl:          [FAIL][27] ([i915#1676]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl2/igt@gem_wait@write-wait@all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-skl1/igt@gem_wait@write-wait@all.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][29] ([i915#79]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][33] ([fdo#108145] / [i915#265]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][35] ([fdo#109441]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][39] ([i915#1542]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-hsw6/igt@perf@blocking-parameterized.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-hsw2/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-FAIL][41] ([i915#180] / [i915#95]) -> [FAIL][42] ([i915#93] / [i915#95])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          [FAIL][43] ([fdo#108145] / [i915#265]) -> [FAIL][44] ([fdo#108145] / [i915#265] / [i915#95])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          [FAIL][45] ([fdo#108145] / [i915#265] / [i915#93] / [i915#95]) -> [FAIL][46] ([fdo#108145] / [i915#265])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
    - shard-apl:          [FAIL][47] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][48] ([fdo#108145] / [i915#265])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1532]: https://gitlab.freedesktop.org/drm/intel/issues/1532
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1676]: https://gitlab.freedesktop.org/drm/intel/issues/1676
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8298 -> Patchwork_17300

  CI-20190529: 20190529
  CI_DRM_8298: 17f82f0c2857d0b442adbdb62eb44b61d0f5b775 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5589: 31962324ac86f029e2841e56e97c42cf9d572956 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17300: 640ead5d9bb4a3b6e0c45de906737a0452ed3959 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17300/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
