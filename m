Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 925BA12BBF0
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Dec 2019 01:32:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94F596E0EA;
	Sat, 28 Dec 2019 00:32:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 593706E0E0;
 Sat, 28 Dec 2019 00:32:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 48E78A00E6;
 Sat, 28 Dec 2019 00:32:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Sat, 28 Dec 2019 00:32:42 -0000
Message-ID: <157749316226.775.8224642695120663921@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191227235147.32366-1-imre.deak@intel.com>
In-Reply-To: <20191227235147.32366-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_Add_support_for_non-pow?=
 =?utf-8?q?er-of-2_FB_plane_alignment?=
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

Series: series starting with [1/3] drm/i915: Add support for non-power-of-2 FB plane alignment
URL   : https://patchwork.freedesktop.org/series/71444/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7644 -> Patchwork_15934
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15934 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15934, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15934:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_busy@basic-flip-pipe-a:
    - fi-ivb-3770:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-ivb-3770/igt@kms_busy@basic-flip-pipe-a.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-ivb-3770/igt@kms_busy@basic-flip-pipe-a.html
    - fi-ilk-650:         NOTRUN -> [DMESG-WARN][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-ilk-650/igt@kms_busy@basic-flip-pipe-a.html
    - fi-snb-2600:        NOTRUN -> [DMESG-WARN][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-snb-2600/igt@kms_busy@basic-flip-pipe-a.html
    - fi-bsw-kefka:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-bsw-kefka/igt@kms_busy@basic-flip-pipe-a.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-bsw-kefka/igt@kms_busy@basic-flip-pipe-a.html
    - fi-hsw-peppy:       NOTRUN -> [DMESG-WARN][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-hsw-peppy/igt@kms_busy@basic-flip-pipe-a.html
    - fi-bdw-5557u:       [PASS][8] -> [DMESG-WARN][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-bdw-5557u/igt@kms_busy@basic-flip-pipe-a.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-bdw-5557u/igt@kms_busy@basic-flip-pipe-a.html
    - fi-snb-2520m:       [PASS][10] -> [DMESG-WARN][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-snb-2520m/igt@kms_busy@basic-flip-pipe-a.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-snb-2520m/igt@kms_busy@basic-flip-pipe-a.html
    - fi-hsw-4770:        [PASS][12] -> [DMESG-WARN][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-hsw-4770/igt@kms_busy@basic-flip-pipe-a.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-hsw-4770/igt@kms_busy@basic-flip-pipe-a.html
    - fi-byt-n2820:       [PASS][14] -> [DMESG-WARN][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-byt-n2820/igt@kms_busy@basic-flip-pipe-a.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-byt-n2820/igt@kms_busy@basic-flip-pipe-a.html
    - fi-elk-e7500:       [PASS][16] -> [DMESG-WARN][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-elk-e7500/igt@kms_busy@basic-flip-pipe-a.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-elk-e7500/igt@kms_busy@basic-flip-pipe-a.html
    - fi-byt-j1900:       NOTRUN -> [DMESG-WARN][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-byt-j1900/igt@kms_busy@basic-flip-pipe-a.html

  * igt@kms_busy@basic-flip-pipe-c:
    - fi-bsw-n3050:       [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-bsw-n3050/igt@kms_busy@basic-flip-pipe-c.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-bsw-n3050/igt@kms_busy@basic-flip-pipe-c.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-pnv-d510/igt@runner@aborted.html
    - fi-hsw-peppy:       NOTRUN -> [FAIL][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-hsw-peppy/igt@runner@aborted.html
    - fi-gdg-551:         NOTRUN -> [FAIL][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-gdg-551/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-snb-2520m/igt@runner@aborted.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-byt-n2820/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][26]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-hsw-4770/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-snb-2600/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][28]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-ivb-3770/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][29]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-byt-j1900/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][30]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-blb-e6850/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15934 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [PASS][31] -> [INCOMPLETE][32] ([i915#671])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][33] -> [SKIP][34] ([fdo#109271])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-bsw-nick:        [PASS][35] -> [DMESG-FAIL][36] ([i915#723])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-bsw-nick/igt@i915_selftest@live_blt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-bsw-nick/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [PASS][37] -> [INCOMPLETE][38] ([i915#424])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
    - fi-cfl-guc:         [PASS][39] -> [INCOMPLETE][40] ([fdo#106070] / [i915#424])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6770hq:      [INCOMPLETE][41] ([i915#671]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-lmem:        [INCOMPLETE][43] ([i915#671]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6600u:       [DMESG-WARN][45] ([i915#889]) -> [PASS][46] +13 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_client:
    - fi-skl-6600u:       [DMESG-WARN][47] -> [PASS][48] +9 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-skl-6600u/igt@i915_selftest@live_client.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-skl-6600u/igt@i915_selftest@live_client.html

  * igt@i915_selftest@live_gt_engines:
    - fi-bxt-dsi:         [DMESG-FAIL][49] ([i915#889]) -> [PASS][50] +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-bxt-dsi/igt@i915_selftest@live_gt_engines.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-bxt-dsi/igt@i915_selftest@live_gt_engines.html

  * igt@i915_selftest@live_gt_lrc:
    - fi-skl-6600u:       [DMESG-FAIL][51] ([i915#889]) -> [PASS][52] +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html

  * igt@i915_selftest@live_hugepages:
    - fi-bxt-dsi:         [DMESG-WARN][53] -> [PASS][54] +9 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-bxt-dsi/igt@i915_selftest@live_hugepages.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-bxt-dsi/igt@i915_selftest@live_hugepages.html

  * igt@i915_selftest@live_mman:
    - fi-bxt-dsi:         [DMESG-WARN][55] ([i915#889]) -> [PASS][56] +13 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-bxt-dsi/igt@i915_selftest@live_mman.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-bxt-dsi/igt@i915_selftest@live_mman.html

  * igt@i915_selftest@live_reset:
    - fi-skl-6600u:       [DMESG-FAIL][57] -> [PASS][58] +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-skl-6600u/igt@i915_selftest@live_reset.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-skl-6600u/igt@i915_selftest@live_reset.html
    - fi-bxt-dsi:         [DMESG-FAIL][59] -> [PASS][60] +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-bxt-dsi/igt@i915_selftest@live_reset.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-bxt-dsi/igt@i915_selftest@live_reset.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][61] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][62] ([i915#62] / [i915#92]) +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][63] ([i915#62] / [i915#92]) -> [DMESG-WARN][64] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#723]: https://gitlab.freedesktop.org/drm/intel/issues/723
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (42 -> 42)
------------------------------

  Additional (8): fi-byt-j1900 fi-hsw-peppy fi-ilk-650 fi-gdg-551 fi-kbl-8809g fi-blb-e6850 fi-kbl-r fi-snb-2600 
  Missing    (8): fi-hsw-4770r fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7644 -> Patchwork_15934

  CI-20190529: 20190529
  CI_DRM_7644: 103086964d18ac22a8e333b9ea7649f67c468f7b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15934: 80df0ef0833e4d109e47cbf329160cbcb2dd1645 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

80df0ef0833e drm/i915: Add debug message for FB plane[0].offset!=0 error
0f0022b981cb drm/i915/tgl: Make sure a semiplanar UV plane is tile row size aligned
ed691a592743 drm/i915: Add support for non-power-of-2 FB plane alignment

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15934/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
