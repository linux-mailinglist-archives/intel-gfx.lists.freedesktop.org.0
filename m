Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6D11D22D3
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 01:16:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1355B6E14B;
	Wed, 13 May 2020 23:16:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6A78E6E094;
 Wed, 13 May 2020 23:16:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 61C61A00CC;
 Wed, 13 May 2020 23:16:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 13 May 2020 23:16:01 -0000
Message-ID: <158941176136.25407.10155064652219921173@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200513165937.9508-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200513165937.9508-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=5D_drm/i915/gem=3A_Remove_redundant_exe?=
 =?utf-8?q?c=5Ffence_=28rev3=29?=
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

Series: series starting with [v2] drm/i915/gem: Remove redundant exec_fence (rev3)
URL   : https://patchwork.freedesktop.org/series/77235/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8475_full -> Patchwork_17650_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17650_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_fence@syncobj-invalid-wait}:
    - shard-snb:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-snb1/igt@gem_exec_fence@syncobj-invalid-wait.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-snb4/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-tglb:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-tglb3/igt@gem_exec_fence@syncobj-invalid-wait.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-tglb2/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-skl:          NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-skl6/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-glk:          [PASS][6] -> [FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-glk4/igt@gem_exec_fence@syncobj-invalid-wait.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-glk2/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-apl:          [PASS][8] -> [FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-apl4/igt@gem_exec_fence@syncobj-invalid-wait.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-apl4/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-kbl:          [PASS][10] -> [FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-kbl1/igt@gem_exec_fence@syncobj-invalid-wait.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-kbl2/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-iclb:         [PASS][12] -> [FAIL][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-iclb2/igt@gem_exec_fence@syncobj-invalid-wait.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-iclb6/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-hsw:          [PASS][14] -> [FAIL][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-hsw4/igt@gem_exec_fence@syncobj-invalid-wait.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-hsw2/igt@gem_exec_fence@syncobj-invalid-wait.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8475_full and Patchwork_17650_full:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 8 pass(s)
    - Exec time: [0.03, 0.09] s

  

Known issues
------------

  Here are the changes found in Patchwork_17650_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [PASS][16] -> [DMESG-WARN][17] ([i915#1436] / [i915#716])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-skl1/igt@gen9_exec_parse@allowed-all.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-skl10/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-skl:          [PASS][18] -> [INCOMPLETE][19] ([i915#151] / [i915#69])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-skl9/igt@i915_pm_rpm@system-suspend.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-skl4/igt@i915_pm_rpm@system-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#72])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([IGT#5])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][24] -> [SKIP][25] ([fdo#109349])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([i915#1188])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-skl4/igt@kms_hdr@bpc-switch.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][28] -> [SKIP][29] ([fdo#109441]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-iclb6/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][30] -> [FAIL][31] ([i915#31])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-hsw4/igt@kms_setmode@basic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-hsw1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
    - shard-skl:          [FAIL][34] ([i915#54]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [DMESG-WARN][36] ([i915#180]) -> [PASS][37] +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions:
    - shard-snb:          [SKIP][38] ([fdo#109271]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-snb2/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-snb5/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-tglb:         [DMESG-WARN][40] ([i915#128]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-tglb2/igt@kms_cursor_legacy@pipe-d-torture-move.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-tglb2/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * {igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][42] ([i915#79]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-kbl:          [DMESG-WARN][44] ([i915#180]) -> [PASS][45] +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][46] ([fdo#108145] / [i915#265]) -> [PASS][47] +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][48] ([i915#173]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-iclb1/igt@kms_psr@no_drrs.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-iclb5/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][50] ([fdo#109441]) -> [PASS][51] +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-iclb4/igt@kms_psr@psr2_suspend.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][52] ([i915#69]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-skl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][54] ([i915#1542]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-hsw6/igt@perf@polling-parameterized.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-hsw7/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][56] ([i915#454]) -> [SKIP][57] ([i915#468])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [DMESG-FAIL][58] ([fdo#110321] / [i915#95]) -> [TIMEOUT][59] ([i915#1319])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-apl8/igt@kms_content_protection@atomic-dpms.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-apl4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [TIMEOUT][60] ([i915#1319]) -> [FAIL][61] ([fdo#110321] / [fdo#110336])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-apl3/igt@kms_content_protection@legacy.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/shard-apl2/igt@kms_content_protection@legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8475 -> Patchwork_17650

  CI-20190529: 20190529
  CI_DRM_8475: fdb67b76a2d3b315585813539269dac22e2305f4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5651: e54e2642f1967ca3c488db32264607df670d1dfb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17650: b67343cec0c9c6f9e2ee43eaefacd1613be851f7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
