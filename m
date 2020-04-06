Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C31219F711
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 15:37:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F5FA6E37F;
	Mon,  6 Apr 2020 13:37:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 164796E095;
 Mon,  6 Apr 2020 13:37:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 103ECA00CC;
 Mon,  6 Apr 2020 13:37:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 06 Apr 2020 13:37:08 -0000
Message-ID: <158618022803.4192.12951694421624903334@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200406091254.17675-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200406091254.17675-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm/i915=3A_Make_exclusive_awaits_o?=
 =?utf-8?q?n_i915=5Factive_optional?=
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

Series: series starting with [1/5] drm/i915: Make exclusive awaits on i915_active optional
URL   : https://patchwork.freedesktop.org/series/75535/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8259_full -> Patchwork_17215_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17215_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_schedule@pi-shared-iova@vecs0}:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-skl10/igt@gem_exec_schedule@pi-shared-iova@vecs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-skl6/igt@gem_exec_schedule@pi-shared-iova@vecs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_17215_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@processes:
    - shard-apl:          [PASS][3] -> [FAIL][4] ([i915#1528])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-apl7/igt@gem_ctx_persistence@processes.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-apl1/igt@gem_ctx_persistence@processes.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-apl2/igt@i915_suspend@forcewake.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-apl4/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#54])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-apl3/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#52] / [i915#54]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#1188])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-skl10/igt@kms_hdr@bpc-switch.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-skl5/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([fdo#108145] / [i915#265])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][19] -> [FAIL][20] ([i915#31])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-apl1/igt@kms_setmode@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-apl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-iclb:         [PASS][21] -> [INCOMPLETE][22] ([i915#1185])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-iclb5/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-iclb3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#456] / [i915#460])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-tglb1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-tglb5/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][25] ([fdo#109276]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-iclb3/igt@gem_exec_params@invalid-bsd-ring.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-iclb1/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [FAIL][27] ([i915#1066]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-snb7/igt@i915_pm_rc6_residency@rc6-idle.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-snb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge:
    - shard-snb:          [SKIP][29] ([fdo#109271]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-snb2/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-snb4/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-glk:          [DMESG-WARN][31] ([i915#128]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-glk5/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-glk8/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-apl4/igt@kms_flip@flip-vs-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-apl7/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][37] ([fdo#108145] / [i915#265]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][39] ([fdo#109642] / [fdo#111068]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-iclb1/igt@kms_psr2_su@frontbuffer.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][41] ([i915#31]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-skl8/igt@kms_setmode@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-skl2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][43] ([i915#69]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-skl8/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-skl9/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][45] ([i915#468]) -> [FAIL][46] ([i915#454])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-snb:          [SKIP][47] ([fdo#109271]) -> [INCOMPLETE][48] ([i915#82])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/shard-snb2/igt@i915_pm_rpm@system-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/shard-snb4/igt@i915_pm_rpm@system-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1066]: https://gitlab.freedesktop.org/drm/intel/issues/1066
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8259 -> Patchwork_17215

  CI-20190529: 20190529
  CI_DRM_8259: 450fc86b62651336f9b5fde79c068df7b4c95aa4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5571: da79d5fa2ebed237f0561a54b4b63bae6f21503a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17215: ebe467224a3cead105b9218f06a161f63fc1366f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17215/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
