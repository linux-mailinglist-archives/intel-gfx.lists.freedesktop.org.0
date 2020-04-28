Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4B21BCCEF
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 22:04:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AC466E9BD;
	Tue, 28 Apr 2020 20:04:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0BD0F6E891;
 Tue, 28 Apr 2020 20:04:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 056F3A47EB;
 Tue, 28 Apr 2020 20:04:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 28 Apr 2020 20:04:35 -0000
Message-ID: <158810427599.17772.5642295282153188852@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200428114307.5153-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200428114307.5153-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Tweak_the_tolerance_for_clock_ticks_to_12=2E?=
 =?utf-8?q?5=25?=
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

Series: drm/i915/selftests: Tweak the tolerance for clock ticks to 12.5%
URL   : https://patchwork.freedesktop.org/series/76593/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8383_full -> Patchwork_17494_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17494_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8383/shard-apl6/igt@gem_softpin@noreloc-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17494/shard-apl4/igt@gem_softpin@noreloc-s3.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8383/shard-kbl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17494/shard-kbl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#54] / [i915#93] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8383/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17494/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_cursor_legacy@pipe-b-torture-move:
    - shard-tglb:         [PASS][7] -> [DMESG-WARN][8] ([i915#128])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8383/shard-tglb7/igt@kms_cursor_legacy@pipe-b-torture-move.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17494/shard-tglb3/igt@kms_cursor_legacy@pipe-b-torture-move.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109441]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8383/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17494/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html

  
#### Possible fixes ####

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          [FAIL][11] ([i915#1119] / [i915#118] / [i915#95]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8383/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17494/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_cursor_legacy@pipe-c-torture-move:
    - shard-tglb:         [DMESG-WARN][13] ([i915#128]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8383/shard-tglb5/igt@kms_cursor_legacy@pipe-c-torture-move.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17494/shard-tglb5/igt@kms_cursor_legacy@pipe-c-torture-move.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
    - shard-glk:          [FAIL][15] ([i915#52] / [i915#54]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8383/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17494/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html

  * {igt@kms_flip@flip-vs-suspend@a-dp1}:
    - shard-apl:          [DMESG-WARN][17] ([i915#180]) -> [PASS][18] +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8383/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17494/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
    - shard-skl:          [FAIL][19] ([i915#49]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8383/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17494/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][21] ([i915#1188]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8383/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17494/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][23] ([fdo#108145] / [i915#265]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8383/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17494/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][25] ([i915#173]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8383/shard-iclb1/igt@kms_psr@no_drrs.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17494/shard-iclb7/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][27] ([fdo#109441]) -> [PASS][28] +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8383/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17494/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][29] ([i915#31]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8383/shard-skl1/igt@kms_setmode@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17494/shard-skl10/igt@kms_setmode@basic.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][31] ([i915#1542]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8383/shard-hsw6/igt@perf@blocking-parameterized.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17494/shard-hsw2/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-snb:          [INCOMPLETE][33] ([i915#82]) -> [SKIP][34] ([fdo#109271])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8383/shard-snb5/igt@i915_pm_dc@dc6-psr.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17494/shard-snb5/igt@i915_pm_dc@dc6-psr.html
    - shard-tglb:         [SKIP][35] ([i915#468]) -> [FAIL][36] ([i915#454])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8383/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17494/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][37] ([i915#1515]) -> [FAIL][38] ([i915#1515])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8383/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17494/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
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
  * Linux: CI_DRM_8383 -> Patchwork_17494

  CI-20190529: 20190529
  CI_DRM_8383: eabaf1c8c936459e3682422353b2c53608700657 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5614: d095827add11d4e8158b87683971ee659749d9a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17494: eda53d9cd0705c3a275ec16706221bac70602273 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17494/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
