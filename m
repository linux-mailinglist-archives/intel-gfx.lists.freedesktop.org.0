Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D6620D589
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 21:29:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 401B989F6F;
	Mon, 29 Jun 2020 19:29:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9F0C489F6E;
 Mon, 29 Jun 2020 19:29:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 779EAA00E7;
 Mon, 29 Jun 2020 19:29:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 29 Jun 2020 19:29:33 -0000
Message-ID: <159345897346.746.605384504129217508@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200629101256.13039-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200629101256.13039-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=5D_drm/i915/gem=3A_Move_obj-=3Elut=5Fli?=
 =?utf-8?q?st_under_its_own_lock_=28rev3=29?=
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

Series: series starting with [v2] drm/i915/gem: Move obj->lut_list under its own lock (rev3)
URL   : https://patchwork.freedesktop.org/series/78889/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8673 -> Patchwork_18035
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18035 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18035, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18035:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload:
    - fi-kbl-8809g:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-kbl-8809g/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-kbl-8809g/igt@i915_module_load@reload.html
    - fi-cml-u2:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-cml-u2/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-cml-u2/igt@i915_module_load@reload.html
    - fi-cfl-8700k:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-cfl-8700k/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-cfl-8700k/igt@i915_module_load@reload.html
    - fi-apl-guc:         [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-apl-guc/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-apl-guc/igt@i915_module_load@reload.html
    - fi-snb-2520m:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-snb-2520m/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-snb-2520m/igt@i915_module_load@reload.html
    - fi-bxt-dsi:         [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-bxt-dsi/igt@i915_module_load@reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-bxt-dsi/igt@i915_module_load@reload.html
    - fi-hsw-4770:        [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-hsw-4770/igt@i915_module_load@reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-hsw-4770/igt@i915_module_load@reload.html
    - fi-kbl-soraka:      [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-kbl-soraka/igt@i915_module_load@reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-kbl-soraka/igt@i915_module_load@reload.html
    - fi-whl-u:           [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-whl-u/igt@i915_module_load@reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-whl-u/igt@i915_module_load@reload.html
    - fi-cml-s:           [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-cml-s/igt@i915_module_load@reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-cml-s/igt@i915_module_load@reload.html
    - fi-cfl-guc:         [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-cfl-guc/igt@i915_module_load@reload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-cfl-guc/igt@i915_module_load@reload.html
    - fi-bsw-n3050:       [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-bsw-n3050/igt@i915_module_load@reload.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-bsw-n3050/igt@i915_module_load@reload.html
    - fi-ivb-3770:        [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-ivb-3770/igt@i915_module_load@reload.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-ivb-3770/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-bsw-kefka/igt@i915_module_load@reload.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-bsw-kefka/igt@i915_module_load@reload.html
    - fi-tgl-y:           [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-tgl-y/igt@i915_module_load@reload.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-tgl-y/igt@i915_module_load@reload.html
    - fi-skl-guc:         [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-skl-guc/igt@i915_module_load@reload.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-skl-guc/igt@i915_module_load@reload.html
    - fi-kbl-guc:         [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-kbl-guc/igt@i915_module_load@reload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-kbl-guc/igt@i915_module_load@reload.html
    - fi-cfl-8109u:       [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-cfl-8109u/igt@i915_module_load@reload.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-cfl-8109u/igt@i915_module_load@reload.html
    - fi-icl-y:           [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-icl-y/igt@i915_module_load@reload.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-icl-y/igt@i915_module_load@reload.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-icl-u2:          [DMESG-WARN][39] ([i915#289]) -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-icl-u2/igt@i915_module_load@reload.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-icl-u2/igt@i915_module_load@reload.html
    - fi-tgl-u2:          [DMESG-WARN][41] ([i915#402]) -> [INCOMPLETE][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-tgl-u2/igt@i915_module_load@reload.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-tgl-u2/igt@i915_module_load@reload.html
    - fi-kbl-x1275:       [DMESG-WARN][43] ([i915#62] / [i915#92] / [i915#95]) -> [INCOMPLETE][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-kbl-x1275/igt@i915_module_load@reload.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-kbl-x1275/igt@i915_module_load@reload.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [PASS][45] -> [INCOMPLETE][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-tgl-dsi/igt@i915_module_load@reload.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-tgl-dsi/igt@i915_module_load@reload.html
    - {fi-kbl-7560u}:     [PASS][47] -> [INCOMPLETE][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-kbl-7560u/igt@i915_module_load@reload.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-kbl-7560u/igt@i915_module_load@reload.html
    - {fi-ehl-1}:         [PASS][49] -> [INCOMPLETE][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-ehl-1/igt@i915_module_load@reload.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-ehl-1/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_18035 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-skl-6600u:       [PASS][51] -> [INCOMPLETE][52] ([i915#69])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-skl-6600u/igt@i915_module_load@reload.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-skl-6600u/igt@i915_module_load@reload.html
    - fi-byt-n2820:       [PASS][53] -> [INCOMPLETE][54] ([i915#45])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-byt-n2820/igt@i915_module_load@reload.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-byt-n2820/igt@i915_module_load@reload.html
    - fi-glk-dsi:         [PASS][55] -> [INCOMPLETE][56] ([i915#58] / [k.org#198133])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-glk-dsi/igt@i915_module_load@reload.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-glk-dsi/igt@i915_module_load@reload.html
    - fi-snb-2600:        [PASS][57] -> [INCOMPLETE][58] ([i915#82])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-snb-2600/igt@i915_module_load@reload.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-snb-2600/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [PASS][59] -> [INCOMPLETE][60] ([i915#45])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
    - fi-bsw-nick:        [PASS][61] -> [INCOMPLETE][62] ([i915#392])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-icl-u2:          [PASS][63] -> [DMESG-WARN][64] ([i915#1982])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [PASS][65] -> [DMESG-WARN][66] ([i915#402])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-tgl-y/igt@vgem_basic@setversion.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-tgl-y/igt@vgem_basic@setversion.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-byt-n2820:       [DMESG-WARN][67] ([i915#1982]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-byt-n2820/igt@i915_pm_rpm@basic-pci-d3-state.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-byt-n2820/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@coherency:
    - fi-gdg-551:         [DMESG-FAIL][69] ([i915#1748]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-gdg-551/igt@i915_selftest@live@coherency.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-gdg-551/igt@i915_selftest@live@coherency.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [DMESG-WARN][71] ([i915#62] / [i915#92] / [i915#95]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-tgl-y:           [DMESG-WARN][73] ([i915#1982]) -> [PASS][74] +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-tgl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-tgl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-bsw-n3050:       [DMESG-WARN][75] ([i915#1982]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - fi-icl-u2:          [DMESG-WARN][77] ([i915#1982]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [DMESG-WARN][79] ([i915#402]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][81] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][82] ([i915#62] / [i915#92]) +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][83] ([i915#62] / [i915#92]) -> [DMESG-WARN][84] ([i915#62] / [i915#92] / [i915#95]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1748]: https://gitlab.freedesktop.org/drm/intel/issues/1748
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (45 -> 39)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * Linux: CI_DRM_8673 -> Patchwork_18035

  CI-20190529: 20190529
  CI_DRM_8673: ae0a2b45fe022c02a2779c2ae8c83473763c1feb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5718: af1ef32bfae90bcdbaf1b5d84c61ff4e04368505 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18035: cfb7c88fb6fe6d3b949e5e5f0ec3d73237f56f0f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cfb7c88fb6fe drm/i915: Switch to object allocations for page directories
ae5a264ca1f5 drm/i915: Preallocate stashes for vma page-directories
c199e797c70d drm/i915: Export ppgtt_bind_vma
9e557cde27e4 drm/i915/gem: Drop forced struct_mutex from shrinker_taints_mutex
00af2c29ea68 drm/i915/gem: Split the context's obj:vma lut into its own mutex
c39cf9cd78da drm/i915/gem: Move obj->lut_list under its own lock

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18035/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
