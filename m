Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A664F1EA268
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 13:06:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F215F6E23F;
	Mon,  1 Jun 2020 11:06:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A03006E23D;
 Mon,  1 Jun 2020 11:06:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A4A6A47E2;
 Mon,  1 Jun 2020 11:06:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kishore Kadiyala" <kishore.kadiyala@intel.com>
Date: Mon, 01 Jun 2020 11:06:10 -0000
Message-ID: <159100957062.14889.5601085746735229343@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200601073544.11291-1-kishore.kadiyala@intel.com>
In-Reply-To: <20200601073544.11291-1-kishore.kadiyala@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_Plane_color_encoding_support_for_YCBCR=5FBT2020_?=
 =?utf-8?b?KHJldjYp?=
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

Series: drm/i915: Add Plane color encoding support for YCBCR_BT2020 (rev6)
URL   : https://patchwork.freedesktop.org/series/75660/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8560_full -> Patchwork_17827_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17827_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_ctx_isolation@preservation-s3@vecs0}:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-iclb8/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/shard-iclb3/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_17827_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs:
    - shard-apl:          [PASS][3] -> [INCOMPLETE][4] ([i915#1635])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-apl8/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/shard-apl4/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:
    - shard-apl:          [PASS][5] -> [TIMEOUT][6] ([i915#1635]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([fdo#108145] / [i915#265]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109441])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/shard-iclb1/igt@kms_psr@psr2_primary_mmap_gtt.html

  
#### Possible fixes ####

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-apl:          [FAIL][13] ([i915#54]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][15] ([i915#180]) -> [PASS][16] +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][17] ([i915#72]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][19] ([i915#180]) -> [PASS][20] +6 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * {igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1}:
    - shard-skl:          [FAIL][21] ([i915#1928]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][23] ([i915#1188]) -> [PASS][24] +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - shard-skl:          [FAIL][25] ([i915#53]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-skl9/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/shard-skl5/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][27] ([fdo#108145] / [i915#265]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][29] ([fdo#109441]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-iclb8/igt@kms_psr@psr2_cursor_render.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-kbl:          [INCOMPLETE][31] ([i915#155]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/shard-kbl2/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * {igt@perf@polling-parameterized}:
    - shard-iclb:         [FAIL][33] ([i915#1542]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-iclb6/igt@perf@polling-parameterized.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/shard-iclb2/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@kms_content_protection@lic:
    - shard-apl:          [FAIL][35] ([fdo#110321]) -> [TIMEOUT][36] ([i915#1319] / [i915#1635])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-apl2/igt@kms_content_protection@lic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/shard-apl2/igt@kms_content_protection@lic.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-apl:          [SKIP][37] ([fdo#109271]) -> [TIMEOUT][38] ([i915#1635])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-apl8/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/shard-apl4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-apl:          [FAIL][39] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][40] ([fdo#108145] / [i915#265])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8560 -> Patchwork_17827

  CI-20190529: 20190529
  CI_DRM_8560: 02fe287fdb4a3d6bceb1bb61b3c8538b4b941b3c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5687: 668a5be752186b6e08f361bac34da37309d08393 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17827: 2d67bb8cef9491f3109c6c2dbc237b5cff273ebb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
