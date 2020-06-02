Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3ACB1EB30E
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 03:36:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CD5F6E109;
	Tue,  2 Jun 2020 01:36:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2FF216E0EE;
 Tue,  2 Jun 2020 01:36:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2A52FA363D;
 Tue,  2 Jun 2020 01:36:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 02 Jun 2020 01:36:19 -0000
Message-ID: <159106177914.21429.9269364037735341204@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200601173058.5084-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200601173058.5084-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_wrong_CDCLK_adjustment_changes_=28rev2=29?=
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

Series: drm/i915: Fix wrong CDCLK adjustment changes (rev2)
URL   : https://patchwork.freedesktop.org/series/77654/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8566_full -> Patchwork_17834_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17834_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@perf_pmu@faulting-read@uc}:
    - shard-apl:          NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-apl4/igt@perf_pmu@faulting-read@uc.html

  
Known issues
------------

  Here are the changes found in Patchwork_17834_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@rcs0:
    - shard-apl:          [PASS][2] -> [FAIL][3] ([i915#1528])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8566/shard-apl8/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-apl8/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][4] -> [DMESG-WARN][5] ([i915#180]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8566/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#1119] / [i915#118] / [i915#95])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8566/shard-glk6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_legacy@pipe-b-torture-bo:
    - shard-tglb:         [PASS][8] -> [DMESG-WARN][9] ([i915#128])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8566/shard-tglb1/igt@kms_cursor_legacy@pipe-b-torture-bo.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-tglb5/igt@kms_cursor_legacy@pipe-b-torture-bo.html

  * igt@kms_draw_crc@fill-fb:
    - shard-apl:          [PASS][10] -> [FAIL][11] ([i915#95])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8566/shard-apl4/igt@kms_draw_crc@fill-fb.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-apl2/igt@kms_draw_crc@fill-fb.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][12] -> [FAIL][13] ([i915#1188])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8566/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
    - shard-kbl:          [PASS][14] -> [FAIL][15] ([i915#1188])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8566/shard-kbl3/igt@kms_hdr@bpc-switch-dpms.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-kbl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#109642] / [fdo#111068])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8566/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-iclb5/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([fdo#109441])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8566/shard-iclb2/igt@kms_psr@psr2_primary_render.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-iclb3/igt@kms_psr@psr2_primary_render.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [PASS][20] -> [DMESG-WARN][21] ([i915#180])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8566/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-kbl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_exec_reloc@basic-gtt-wc:
    - shard-hsw:          [DMESG-WARN][22] ([i915#1927]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8566/shard-hsw1/igt@gem_exec_reloc@basic-gtt-wc.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-hsw2/igt@gem_exec_reloc@basic-gtt-wc.html

  * igt@kms_color@pipe-a-gamma:
    - shard-hsw:          [INCOMPLETE][24] ([i915#1927] / [i915#61]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8566/shard-hsw1/igt@kms_color@pipe-a-gamma.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-hsw4/igt@kms_color@pipe-a-gamma.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][26] ([i915#180]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8566/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-glk:          [DMESG-FAIL][28] ([i915#1925] / [i915#1926]) -> [PASS][29] +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8566/shard-glk4/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-glk6/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][30] ([i915#1188]) -> [PASS][31] +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8566/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][32] ([fdo#108145] / [i915#265]) -> [PASS][33] +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8566/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][34] ([fdo#109441]) -> [PASS][35] +5 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8566/shard-iclb4/igt@kms_psr@psr2_cursor_render.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][36] ([i915#180]) -> [PASS][37] +3 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8566/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][38] ([i915#1542]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8566/shard-hsw8/igt@perf@blocking-parameterized.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-hsw1/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][40] ([i915#658]) -> [SKIP][41] ([i915#588])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8566/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][42] ([i915#454]) -> [SKIP][43] ([i915#468])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8566/shard-tglb1/igt@i915_pm_dc@dc6-psr.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [FAIL][44] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][45] ([i915#1319])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8566/shard-apl7/igt@kms_content_protection@atomic.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-apl1/igt@kms_content_protection@atomic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-apl:          [FAIL][46] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][47] ([fdo#108145] / [i915#265])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8566/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8566 -> Patchwork_17834

  CI-20190529: 20190529
  CI_DRM_8566: fed6b89dd6f3c4e2e909805815c5728b1fd65ce5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5689: 587cbed206689abbad60689d4a32bf9caf0cc124 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17834: 6bfe3f7a62bd1c9345f4789886a8030a10e81d32 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17834/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
