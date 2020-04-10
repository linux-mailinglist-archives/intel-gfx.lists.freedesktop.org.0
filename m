Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCBC1A4A29
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2020 21:10:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A551D6ED38;
	Fri, 10 Apr 2020 19:09:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 165046E291;
 Fri, 10 Apr 2020 19:09:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0F3BBA0091;
 Fri, 10 Apr 2020 19:09:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 10 Apr 2020 19:09:57 -0000
Message-ID: <158654579702.10044.8453891830073047838@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200410144328.15286-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200410144328.15286-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Flush_async_power_domains_on_probe_failure?=
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

Series: drm/i915: Flush async power domains on probe failure
URL   : https://patchwork.freedesktop.org/series/75805/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8290_full -> Patchwork_17277_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17277_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17277_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17277_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-skl6/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-skl2/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-tglb3/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-tglb7/igt@i915_module_load@reload-with-fault-injection.html
    - shard-iclb:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-iclb7/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-iclb3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@runner@aborted:
    - shard-snb:          NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-snb2/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8290_full and Patchwork_17277_full:

### New IGT tests (1) ###

  * igt@gem_userptr_blits@process-exit-mmap:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_17277_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-apl:          [PASS][8] -> [FAIL][9] ([i915#1517] / [i915#1528])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-apl7/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-apl3/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][10] -> [DMESG-WARN][11] ([i915#180]) +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-apl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          [PASS][12] -> [INCOMPLETE][13] ([i915#58] / [k.org#198133])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html
    - shard-snb:          [PASS][14] -> [INCOMPLETE][15] ([i915#82])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html
    - shard-hsw:          [PASS][16] -> [INCOMPLETE][17] ([i915#61])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-hsw2/igt@i915_module_load@reload-with-fault-injection.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-hsw7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [PASS][18] -> [DMESG-WARN][19] ([i915#180])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-kbl3/igt@i915_suspend@sysfs-reader.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-kbl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
    - shard-apl:          [PASS][20] -> [FAIL][21] ([i915#54] / [i915#95])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][22] -> [FAIL][23] ([i915#72])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][24] -> [INCOMPLETE][25] ([i915#221])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-skl7/igt@kms_flip@flip-vs-suspend.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-skl2/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([i915#34])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-skl9/igt@kms_flip@plain-flip-fb-recreate.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-skl3/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-glk:          [PASS][28] -> [FAIL][29] ([i915#118] / [i915#95])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-glk8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-glk1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [PASS][30] -> [INCOMPLETE][31] ([i915#69])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([fdo#108145] / [i915#265])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][34] -> [FAIL][35] ([i915#31])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-apl1/igt@kms_setmode@basic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-apl2/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * {igt@gem_exec_schedule@pi-distinct-iova@vecs0}:
    - shard-glk:          [FAIL][36] -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-glk1/igt@gem_exec_schedule@pi-distinct-iova@vecs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-glk5/igt@gem_exec_schedule@pi-distinct-iova@vecs0.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-kbl:          [DMESG-WARN][38] ([i915#183]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-kbl4/igt@gem_tiled_swapping@non-threaded.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-kbl3/igt@gem_tiled_swapping@non-threaded.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][40] ([i915#180]) -> [PASS][41] +6 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-render-ytiled:
    - shard-glk:          [FAIL][42] ([i915#52] / [i915#54]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][44] ([i915#79]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-glk5/igt@kms_flip@flip-vs-expired-vblank.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-glk3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][46] ([i915#1188]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-skl8/igt@kms_hdr@bpc-switch.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-apl:          [DMESG-WARN][48] ([i915#180]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][50] ([fdo#108145] / [i915#265]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][52] ([i915#173]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-iclb1/igt@kms_psr@no_drrs.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-iclb4/igt@kms_psr@no_drrs.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-snb:          [SKIP][54] ([fdo#109271]) -> [INCOMPLETE][55] ([i915#82])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-snb5/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-snb4/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][56] ([i915#468]) -> [FAIL][57] ([i915#454])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][58] ([i915#454]) -> [SKIP][59] ([i915#468])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [INCOMPLETE][60] ([i915#1531]) -> [INCOMPLETE][61] ([i915#1531] / [i915#1658])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-tglb1/igt@i915_selftest@live@requests.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-tglb7/igt@i915_selftest@live@requests.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-FAIL][62] ([i915#180] / [i915#95]) -> [FAIL][63] ([i915#93] / [i915#95])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          [FAIL][64] ([fdo#108145] / [i915#265]) -> [FAIL][65] ([fdo#108145] / [i915#265] / [i915#95])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1517]: https://gitlab.freedesktop.org/drm/intel/issues/1517
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1658]: https://gitlab.freedesktop.org/drm/intel/issues/1658
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#183]: https://gitlab.freedesktop.org/drm/intel/issues/183
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8290 -> Patchwork_17277

  CI-20190529: 20190529
  CI_DRM_8290: dd69e63dc11c8fdabcc029b27f16e80be504ffc8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5587: 628878f89c61fd628c4a65076f634b099d360b85 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17277: a52e41b23f79b32beb773a42b5a5b08b8915a274 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17277/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
