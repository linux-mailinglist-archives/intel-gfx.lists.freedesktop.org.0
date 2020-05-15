Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8841D5ABA
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 22:36:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8B026ED43;
	Fri, 15 May 2020 20:36:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2DF076ED42;
 Fri, 15 May 2020 20:36:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 27F31A00CC;
 Fri, 15 May 2020 20:36:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 15 May 2020 20:36:31 -0000
Message-ID: <158957499113.26210.1705747093110665373@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200514204553.27193-1-imre.deak@intel.com>
In-Reply-To: <20200514204553.27193-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_AUX_power_domain_toggling_across_TypeC_mode_resets?=
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

Series: drm/i915: Fix AUX power domain toggling across TypeC mode resets
URL   : https://patchwork.freedesktop.org/series/77280/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8488_full -> Patchwork_17669_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_17669_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17669_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17669_full:

### CI changes ###

#### Warnings ####

  * boot:
    - shard-hsw:          ([FAIL][1], [FAIL][2], [FAIL][3], [FAIL][4], [FAIL][5], [FAIL][6], [FAIL][7], [FAIL][8], [FAIL][9], [FAIL][10], [FAIL][11], [FAIL][12], [FAIL][13], [FAIL][14], [FAIL][15], [FAIL][16], [FAIL][17], [FAIL][18], [FAIL][19], [FAIL][20], [FAIL][21], [FAIL][22], [FAIL][23], [FAIL][24], [FAIL][25]) ([CI#80]) -> ([FAIL][26], [FAIL][27], [FAIL][28], [FAIL][29], [FAIL][30], [FAIL][31], [FAIL][32], [FAIL][33], [FAIL][34], [FAIL][35], [FAIL][36], [FAIL][37], [FAIL][38], [FAIL][39], [FAIL][40], [FAIL][41], [FAIL][42], [FAIL][43], [FAIL][44], [FAIL][45], [FAIL][46], [FAIL][47], [FAIL][48], [FAIL][49], [FAIL][50])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw1/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw1/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw1/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw8/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-hsw2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw7/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw7/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw8/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw8/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw8/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-hsw8/boot.html

  
Known issues
------------

  Here are the changes found in Patchwork_17669_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][51] -> [DMESG-WARN][52] ([i915#180]) +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][53] -> [DMESG-WARN][54] ([i915#180]) +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([fdo#108145] / [i915#265]) +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][57] -> [SKIP][58] ([fdo#109441])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-iclb7/igt@kms_psr@psr2_primary_mmap_gtt.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-kbl4/igt@gem_eio@in-flight-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-kbl6/igt@gem_eio@in-flight-suspend.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-skl:          [INCOMPLETE][61] ([i915#69]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-skl6/igt@gem_workarounds@suspend-resume-fd.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-skl8/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [FAIL][63] ([i915#129]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-skl6/igt@kms_color@pipe-a-ctm-green-to-red.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-skl3/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][65] ([fdo#109349]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * {igt@kms_flip@flip-vs-expired-vblank@b-edp1}:
    - shard-skl:          [FAIL][67] ([i915#79]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * {igt@kms_flip@flip-vs-suspend@a-vga1}:
    - shard-snb:          [DMESG-WARN][69] ([i915#42]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-snb2/igt@kms_flip@flip-vs-suspend@a-vga1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-snb2/igt@kms_flip@flip-vs-suspend@a-vga1.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-apl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-apl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-apl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * {igt@kms_flip@plain-flip-fb-recreate@b-edp1}:
    - shard-skl:          [FAIL][73] ([i915#1883]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][75] ([i915#123] / [i915#69]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-skl8/igt@kms_frontbuffer_tracking@psr-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-skl8/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-skl:          [FAIL][77] ([i915#53]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-skl6/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-skl3/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][79] ([fdo#108145] / [i915#265]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][81] ([fdo#109441]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc5-psr:
    - shard-snb:          [SKIP][83] ([fdo#109271]) -> [INCOMPLETE][84] ([i915#82])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-snb2/igt@i915_pm_dc@dc5-psr.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-snb2/igt@i915_pm_dc@dc5-psr.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][85] ([i915#1319]) -> [FAIL][86] ([fdo#110321] / [fdo#110336])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-apl8/igt@kms_content_protection@atomic-dpms.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-apl8/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][87] ([i915#1319]) -> [FAIL][88] ([fdo#110321])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/shard-apl2/igt@kms_content_protection@lic.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/shard-apl1/igt@kms_content_protection@lic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1373]: https://gitlab.freedesktop.org/drm/intel/issues/1373
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1883]: https://gitlab.freedesktop.org/drm/intel/issues/1883
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8488 -> Patchwork_17669

  CI-20190529: 20190529
  CI_DRM_8488: d40ec60813532e485e9c63623c91babf556cfbe3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5655: 2cc4c1edc3065590f9917930b6d049a90c4a38fd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17669: 9e1af8dc676e93ed5c881b0e8d4ffb1afd801e4e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17669/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
