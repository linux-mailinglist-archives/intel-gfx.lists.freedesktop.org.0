Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CCF1EA66F
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 17:02:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B43F56E0A8;
	Mon,  1 Jun 2020 15:01:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2BD3489D79;
 Mon,  1 Jun 2020 15:01:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 27169A66C7;
 Mon,  1 Jun 2020 15:01:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Mon, 01 Jun 2020 15:01:58 -0000
Message-ID: <159102371813.14891.9318720909371907928@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200601101516.21018-1-anshuman.gupta@intel.com>
In-Reply-To: <20200601101516.21018-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_lpsp_with_hdmi/dp_outputs?=
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

Series: drm/i915: lpsp with hdmi/dp outputs
URL   : https://patchwork.freedesktop.org/series/77866/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8561_full -> Patchwork_17829_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17829_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17829_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17829_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_hdmi_inject@inject-audio:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-tglb1/igt@kms_hdmi_inject@inject-audio.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-tglb3/igt@kms_hdmi_inject@inject-audio.html

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-tglb3/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17829_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-skl:          [PASS][4] -> [FAIL][5] ([i915#1528])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-skl9/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-skl9/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-glk:          [PASS][6] -> [TIMEOUT][7] ([i915#1958]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-glk5/igt@gem_fenced_exec_thrash@no-spare-fences.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-glk6/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][8] -> [FAIL][9] ([i915#454])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-kbl:          [PASS][10] -> [INCOMPLETE][11] ([i915#151] / [i915#155])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-kbl7/igt@i915_pm_rpm@system-suspend-execbuf.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-kbl6/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#1119] / [i915#118] / [i915#95]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-glk5/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-glk:          [PASS][14] -> [DMESG-WARN][15] ([i915#1926])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-glk9/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-glk8/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [PASS][16] -> [DMESG-WARN][17] ([i915#180])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][18] -> [FAIL][19] ([fdo#108145] / [i915#265])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#109441])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-iclb4/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][22] -> [FAIL][23] ([i915#31])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-hsw6/igt@kms_setmode@basic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-hsw8/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-apl8/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-apl8/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@rcs0}:
    - shard-apl:          [DMESG-WARN][26] ([i915#180]) -> [PASS][27] +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-apl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-apl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-apl:          [FAIL][28] ([i915#1930]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-apl8/igt@gem_exec_reloc@basic-concurrent0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-apl8/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-hsw:          [DMESG-WARN][30] ([i915#128]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-hsw4/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-hsw1/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * {igt@kms_flip@flip-vs-suspend@a-edp1}:
    - shard-skl:          [INCOMPLETE][32] ([i915#198]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-skl1/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-skl2/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-kbl:          [FAIL][34] ([i915#699] / [i915#93] / [i915#95]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-kbl6/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-kbl4/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][36] ([i915#1188]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-skl5/igt@kms_hdr@bpc-switch.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-skl5/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][38] ([fdo#108145] / [i915#265]) -> [PASS][39] +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][40] ([fdo#109441]) -> [PASS][41] +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][42] ([i915#180]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-kbl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][44] ([i915#1542]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-hsw6/igt@perf@blocking-parameterized.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-hsw2/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][46] ([i915#454]) -> [SKIP][47] ([i915#468])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-tglb5/igt@i915_pm_dc@dc6-psr.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_chamelium@dp-hpd:
    - shard-glk:          [SKIP][48] ([fdo#109271] / [fdo#111827]) -> [TIMEOUT][49] ([i915#1958])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-glk5/igt@kms_chamelium@dp-hpd.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-glk6/igt@kms_chamelium@dp-hpd.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [FAIL][50] ([fdo#110321]) -> [TIMEOUT][51] ([i915#1319] / [i915#1635]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8561/shard-apl7/igt@kms_content_protection@lic.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/shard-apl1/igt@kms_content_protection@lic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8561 -> Patchwork_17829

  CI-20190529: 20190529
  CI_DRM_8561: 989e079eb7172d7423686cab0dd5d4e47a48f3e1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5688: 33c8411480b4945e44188f82cd6c3a0d53b40485 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17829: 78f04fcced9a26b870739cbc213801bd1b570606 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17829/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
