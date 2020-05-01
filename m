Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D90B21C0DE6
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 07:52:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48C2D6E22E;
	Fri,  1 May 2020 05:52:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A869D6E22E;
 Fri,  1 May 2020 05:52:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A2D3AA47EE;
 Fri,  1 May 2020 05:52:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Fri, 01 May 2020 05:52:10 -0000
Message-ID: <158831233063.18945.12823601139052339577@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200423075902.21892-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200423075902.21892-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgU0FH?=
 =?utf-8?q?V_support_for_Gen12+_=28rev32=29?=
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

Series: SAGV support for Gen12+ (rev32)
URL   : https://patchwork.freedesktop.org/series/75129/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8403_full -> Patchwork_17531_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17531_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#1436] / [i915#716])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-kbl7/igt@gen9_exec_parse@allowed-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/shard-kbl7/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#52] / [i915#54])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-skl2/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/shard-skl10/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#1188])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([fdo#108145] / [i915#265])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109441])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/shard-iclb7/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-apl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/shard-apl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][17] ([i915#72]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-glk5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/shard-glk1/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-hsw:          [FAIL][19] ([IGT#5]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-hsw1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/shard-hsw7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][21] ([i915#180]) -> [PASS][22] +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * {igt@kms_flip@flip-vs-suspend@a-dp1}:
    - shard-kbl:          [INCOMPLETE][23] ([i915#155]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-kbl3/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][25] ([i915#1188]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-skl5/igt@kms_hdr@bpc-switch.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/shard-skl6/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][27] ([i915#899]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][29] ([fdo#109441]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-iclb8/igt@kms_psr@psr2_basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][33] ([i915#658]) -> [SKIP][34] ([i915#588])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][35] ([i915#468]) -> [FAIL][36] ([i915#454]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/shard-tglb1/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-FAIL][37] ([i915#180] / [i915#95]) -> [FAIL][38] ([i915#93] / [i915#95])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          [FAIL][39] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][40] ([fdo#108145] / [i915#265])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][41] ([i915#31]) -> [FAIL][42] ([i915#31] / [i915#95])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-apl8/igt@kms_setmode@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/shard-apl7/igt@kms_setmode@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8403 -> Patchwork_17531

  CI-20190529: 20190529
  CI_DRM_8403: 09978e99929f6e5acfe1e959f6499a134f210887 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5619: 94de923ca8d4cc8f532b8062d87aaad9da6ef956 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17531: d476c016bc161fca38b14532185fe96d7cab1e04 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
