Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 475B11C4FC3
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 09:59:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF2816E13B;
	Tue,  5 May 2020 07:59:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3014689FBC;
 Tue,  5 May 2020 07:59:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 29756A0BC6;
 Tue,  5 May 2020 07:59:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 05 May 2020 07:59:40 -0000
Message-ID: <158866558013.25911.17938169860699453155@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200504180507.6017-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200504180507.6017-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Small_tidy_of_gen8+_breadcrumb_emission?=
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

Series: drm/i915/gt: Small tidy of gen8+ breadcrumb emission
URL   : https://patchwork.freedesktop.org/series/76918/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8422_full -> Patchwork_17573_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17573_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-apl1/igt@gem_workarounds@suspend-resume.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17573/shard-apl4/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [PASS][3] -> [DMESG-WARN][4] ([i915#716])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-skl9/igt@gen9_exec_parse@allowed-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17573/shard-skl7/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#54] / [i915#93] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17573/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#54])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17573/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#72])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17573/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#177] / [i915#52] / [i915#54])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17573/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-apl2/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17573/shard-apl1/igt@kms_flip_tiling@flip-changes-tiling-y.html
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#699] / [i915#93] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-kbl6/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17573/shard-kbl4/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17573/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17573/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@bcs0}:
    - shard-kbl:          [DMESG-WARN][21] ([i915#180]) -> [PASS][22] +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17573/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][23] ([i915#300]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17573/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * {igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][25] ([i915#34]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17573/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][27] ([fdo#108145] / [i915#265]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17573/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][29] ([fdo#109441]) -> [PASS][30] +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-iclb4/igt@kms_psr@psr2_primary_page_flip.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17573/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][31] ([i915#468]) -> [FAIL][32] ([i915#454])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17573/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1823]: https://gitlab.freedesktop.org/drm/intel/issues/1823
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8422 -> Patchwork_17573

  CI-20190529: 20190529
  CI_DRM_8422: 0ca0fee447b032331962bc5c717786bdb3594bd9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5628: 652a3fd8966345fa5498904ce80a2027a6782783 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17573: db12f2b422f468c0354ffd75c2e8449721dea5a3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17573/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
