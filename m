Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9FB23E36C
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Aug 2020 23:13:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6463E6E919;
	Thu,  6 Aug 2020 21:13:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9D6FC6E917;
 Thu,  6 Aug 2020 21:13:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9839BA47EB;
 Thu,  6 Aug 2020 21:13:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 06 Aug 2020 21:13:41 -0000
Message-ID: <159674842159.5531.7877655372729870797@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200806143338.15864-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200806143338.15864-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Prevent_selecting_0_for_our_random_width/ali?=
 =?utf-8?b?Z24gKHJldjMp?=
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
Content-Type: multipart/mixed; boundary="===============1857526552=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1857526552==
Content-Type: multipart/alternative;
 boundary="===============4450747673902562752=="

--===============4450747673902562752==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Prevent selecting 0 for our random width/align (rev3)
URL   : https://patchwork.freedesktop.org/series/80348/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8848_full -> Patchwork_18315_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18315_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18315_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18315_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-skl1/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-skl6/igt@kms_flip@flip-vs-suspend@a-edp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_18315_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_engines@execute-allforone:
    - shard-snb:          [PASS][3] -> [TIMEOUT][4] ([i915#1958]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-snb6/igt@gem_ctx_engines@execute-allforone.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-snb5/igt@gem_ctx_engines@execute-allforone.html

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +6 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#1528])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-skl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-glk:          [PASS][9] -> [DMESG-WARN][10] ([i915#118] / [i915#95]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-glk2/igt@gem_ctx_shared@q-smoketest-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-glk5/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-iclb:         [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-iclb4/igt@gem_exec_whisper@basic-contexts-forked.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-iclb2/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#1436] / [i915#716])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-glk3/igt@gen9_exec_parse@allowed-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-glk8/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#198])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-skl1/igt@i915_suspend@debugfs-reader.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-skl5/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [PASS][17] -> [DMESG-FAIL][18] ([i915#118] / [i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-glk4/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +17 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-skl1/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-skl7/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge:
    - shard-glk:          [PASS][21] -> [DMESG-WARN][22] ([i915#1982])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-glk7/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-glk3/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#79]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#79])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack:
    - shard-tglb:         [PASS][27] -> [DMESG-WARN][28] ([i915#1982]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109642] / [fdo#111068])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-iclb5/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@nop:
    - shard-iclb:         [INCOMPLETE][35] ([i915#2268]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-iclb2/igt@gem_exec_balancer@nop.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-iclb8/igt@gem_exec_balancer@nop.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][39] ([i915#1982]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-kbl4/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-dp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-kbl1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-iclb:         [DMESG-WARN][41] ([i915#1982]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_plane@plane-panning-bottom-right-pipe-a-planes:
    - shard-skl:          [DMESG-WARN][43] ([i915#1982]) -> [PASS][44] +7 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-skl1/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-skl5/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][45] ([fdo#108145] / [i915#265]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][47] ([fdo#109441]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-iclb4/igt@kms_psr@psr2_cursor_render.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][49] ([i915#1930]) -> [TIMEOUT][50] ([i915#1958])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-snb:          [SKIP][51] ([fdo#109271]) -> [INCOMPLETE][52] ([i915#82])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-snb1/igt@i915_pm_dc@dc5-psr.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-snb5/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [FAIL][53] ([i915#1899]) -> [DMESG-FAIL][54] ([i915#1982])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-skl10/igt@i915_pm_dc@dc6-psr.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-skl3/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [DMESG-WARN][55] ([i915#1982]) -> [FAIL][56] ([fdo#108145] / [i915#265])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-yf:
    - shard-snb:          [SKIP][57] ([fdo#109271]) -> [TIMEOUT][58] ([i915#1958]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-snb6/igt@kms_plane_lowres@pipe-a-tiling-yf.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-snb5/igt@kms_plane_lowres@pipe-a-tiling-yf.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1899]: https://gitlab.freedesktop.org/drm/intel/issues/1899
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2268]: https://gitlab.freedesktop.org/drm/intel/issues/2268
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8848 -> Patchwork_18315

  CI-20190529: 20190529
  CI_DRM_8848: f39035176cb854c6d620af7614a60a485ee26818 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5760: 53d2ddd2f5f7beb98a996d7f2c3976c87d4da01f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18315: c336a5012f0f1f5b93e83d27a4c577a3c1bc1d1d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/index.html

--===============4450747673902562752==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Prevent selecting 0 for our random width/align (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/80348/">https://patchwork.freedesktop.org/series/80348/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8848_full -&gt; Patchwork_18315_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18315_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18315_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18315_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip@flip-vs-suspend@a-edp1:<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-skl1/igt@kms_flip@flip-vs-suspend@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-skl6/igt@kms_flip@flip-vs-suspend@a-edp1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18315_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_engines@execute-allforone:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-snb6/igt@gem_ctx_engines@execute-allforone.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-snb5/igt@gem_ctx_engines@execute-allforone.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process@render:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-skl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1528">i915#1528</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-smoketest-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-glk2/igt@gem_ctx_shared@q-smoketest-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-glk5/igt@gem_ctx_shared@q-smoketest-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-iclb4/igt@gem_exec_whisper@basic-contexts-forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-iclb2/igt@gem_exec_whisper@basic-contexts-forked.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-glk3/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-glk8/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-skl1/igt@i915_suspend@debugfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-skl5/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-glk4/igt@kms_big_fb@linear-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-skl1/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-skl7/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-glk7/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-glk3/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-iclb5/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@nop:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-iclb2/igt@gem_exec_balancer@nop.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2268">i915#2268</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-iclb8/igt@gem_exec_balancer@nop.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-kbl4/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-kbl1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-pipe-a-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-skl1/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-skl5/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-iclb4/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1930">i915#1930</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-snb1/igt@i915_pm_dc@dc5-psr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-snb5/igt@i915_pm_dc@dc5-psr.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-skl10/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1899">i915#1899</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-skl3/igt@i915_pm_dc@dc6-psr.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-yf:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8848/shard-snb6/igt@kms_plane_lowres@pipe-a-tiling-yf.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18315/shard-snb5/igt@kms_plane_lowres@pipe-a-tiling-yf.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8848 -&gt; Patchwork_18315</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8848: f39035176cb854c6d620af7614a60a485ee26818 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5760: 53d2ddd2f5f7beb98a996d7f2c3976c87d4da01f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18315: c336a5012f0f1f5b93e83d27a4c577a3c1bc1d1d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============4450747673902562752==--

--===============1857526552==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1857526552==--
