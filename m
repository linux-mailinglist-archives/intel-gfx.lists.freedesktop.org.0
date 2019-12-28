Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A08512BC18
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Dec 2019 02:22:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6891A6E0DA;
	Sat, 28 Dec 2019 01:22:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 316186E0DA;
 Sat, 28 Dec 2019 01:22:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1E708A0138;
 Sat, 28 Dec 2019 01:22:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Sat, 28 Dec 2019 01:22:10 -0000
Message-ID: <157749613009.777.3627854233248418453@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191227235147.32366-1-imre.deak@intel.com>
In-Reply-To: <20191227235147.32366-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/3=5D_drm/i915=3A_Add_support_for_no?=
 =?utf-8?q?n-power-of-2_FB_plane_alignment_=28rev2=29?=
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

Series: series starting with [v2,1/3] drm/i915: Add support for non-power-of-2 FB plane alignment (rev2)
URL   : https://patchwork.freedesktop.org/series/71444/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7644 -> Patchwork_15935
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15935/index.html

Known issues
------------

  Here are the changes found in Patchwork_15935 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_tiled_blits@basic:
    - fi-byt-n2820:       [PASS][1] -> [FAIL][2] ([i915#832])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-byt-n2820/igt@gem_tiled_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15935/fi-byt-n2820/igt@gem_tiled_blits@basic.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [PASS][3] -> [INCOMPLETE][4] ([i915#671])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15935/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][5] -> [DMESG-FAIL][6] ([i915#725])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15935/fi-ivb-3770/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-lmem:        [INCOMPLETE][7] ([i915#671]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15935/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-bxt-dsi:         [DMESG-WARN][9] ([i915#889]) -> [INCOMPLETE][10] ([fdo#103927])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15935/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][11] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][12] ([i915#62] / [i915#92]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15935/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#62] / [i915#92]) -> [DMESG-WARN][14] ([i915#62] / [i915#92] / [i915#95]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15935/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (42 -> 43)
------------------------------

  Additional (8): fi-byt-j1900 fi-hsw-peppy fi-ilk-650 fi-gdg-551 fi-kbl-8809g fi-blb-e6850 fi-kbl-r fi-snb-2600 
  Missing    (7): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7644 -> Patchwork_15935

  CI-20190529: 20190529
  CI_DRM_7644: 103086964d18ac22a8e333b9ea7649f67c468f7b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15935: 0da4bd71dd5acb05648abadf42113d8d9cbaaf38 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0da4bd71dd5a drm/i915: Add debug message for FB plane[0].offset!=0 error
7a13dc270b8a drm/i915/tgl: Make sure a semiplanar UV plane is tile row size aligned
58f02cd86f46 drm/i915: Add support for non-power-of-2 FB plane alignment

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15935/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
