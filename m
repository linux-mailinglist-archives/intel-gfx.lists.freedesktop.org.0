Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6ECE1C50B4
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 10:44:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8DE56E196;
	Tue,  5 May 2020 08:44:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 063A06E17C;
 Tue,  5 May 2020 08:44:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F40F9A0078;
 Tue,  5 May 2020 08:44:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 05 May 2020 08:44:17 -0000
Message-ID: <158866825799.25914.14232220851580864417@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200504180745.15645-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200504180745.15645-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Stop_holding_onto_the_pinned=5Fdefault=5Fstate_=28r?=
 =?utf-8?q?ev2=29?=
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

Series: drm/i915/gt: Stop holding onto the pinned_default_state (rev2)
URL   : https://patchwork.freedesktop.org/series/76738/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8422_full -> Patchwork_17574_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17574_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-apl7/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17574/shard-apl4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-kbl:          [PASS][3] -> [FAIL][4] ([i915#1479] / [i915#1772])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-kbl1/igt@gem_exec_whisper@basic-queues-forked.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17574/shard-kbl1/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [PASS][5] -> [DMESG-WARN][6] ([i915#716])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-skl9/igt@gen9_exec_parse@allowed-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17574/shard-skl10/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17574/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-apl2/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17574/shard-apl6/igt@kms_flip_tiling@flip-changes-tiling-y.html
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#699] / [i915#93] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-kbl6/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17574/shard-kbl2/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#1188])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-skl4/igt@kms_hdr@bpc-switch.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17574/shard-skl6/igt@kms_hdr@bpc-switch.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109441]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17574/shard-iclb8/igt@kms_psr@psr2_sprite_blt.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@bcs0}:
    - shard-kbl:          [DMESG-WARN][17] ([i915#180]) -> [PASS][18] +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17574/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html
    - shard-apl:          [DMESG-WARN][19] ([i915#180]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-apl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17574/shard-apl2/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][21] ([fdo#109276]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-iclb6/igt@gem_exec_params@invalid-bsd-ring.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17574/shard-iclb2/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][23] ([i915#300]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17574/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-hsw:          [SKIP][25] ([fdo#109271]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-hsw6/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17574/shard-hsw1/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * {igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][27] ([i915#34]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17574/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][29] ([fdo#108145] / [i915#265]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17574/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][31] ([fdo#109642] / [fdo#111068]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-iclb4/igt@kms_psr2_su@frontbuffer.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17574/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][33] ([fdo#109441]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17574/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][35] ([i915#1542]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-hsw6/igt@perf@polling-parameterized.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17574/shard-hsw2/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][37] ([i915#468]) -> [FAIL][38] ([i915#454])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17574/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@cursor:
    - shard-snb:          [SKIP][39] ([fdo#109271]) -> [INCOMPLETE][40] ([i915#82])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-snb2/igt@i915_pm_rpm@cursor.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17574/shard-snb1/igt@i915_pm_rpm@cursor.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1479]: https://gitlab.freedesktop.org/drm/intel/issues/1479
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1772]: https://gitlab.freedesktop.org/drm/intel/issues/1772
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
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
  * Linux: CI_DRM_8422 -> Patchwork_17574

  CI-20190529: 20190529
  CI_DRM_8422: 0ca0fee447b032331962bc5c717786bdb3594bd9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5628: 652a3fd8966345fa5498904ce80a2027a6782783 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17574: ca23be75c4c21a2a54eec2b4836307b869e4356f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17574/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
