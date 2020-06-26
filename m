Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D981820B124
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 14:10:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9DF06E049;
	Fri, 26 Jun 2020 12:10:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0939A6E049;
 Fri, 26 Jun 2020 12:10:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 019EAA00C7;
 Fri, 26 Jun 2020 12:10:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 26 Jun 2020 12:10:32 -0000
Message-ID: <159317343298.22985.15998832950658752373@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200625001120.22810-1-lucas.demarchi@intel.com>
In-Reply-To: <20200625001120.22810-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZGlz?=
 =?utf-8?q?play/ddi=3A_keep_register_indexes_in_a_table?=
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

Series: display/ddi: keep register indexes in a table
URL   : https://patchwork.freedesktop.org/series/78806/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8665 -> Patchwork_18023
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18023 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18023, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18023/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18023:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-hsw-4770:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/fi-hsw-4770/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18023/fi-hsw-4770/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-tgl-y:           NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18023/fi-tgl-y/igt@runner@aborted.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18023/fi-tgl-u2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_18023 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18023/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [DMESG-WARN][7] ([i915#1982]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/fi-byt-j1900/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18023/fi-byt-j1900/igt@i915_module_load@reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - {fi-kbl-7560u}:     [DMESG-WARN][9] ([i915#1982]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18023/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - {fi-tgl-dsi}:       [DMESG-WARN][11] ([i915#1982]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/fi-tgl-dsi/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18023/fi-tgl-dsi/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Warnings ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#62] / [i915#92]) -> [DMESG-WARN][14] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18023/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-kbl-x1275:       [DMESG-WARN][15] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][16] ([i915#62] / [i915#92]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18023/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (44 -> 37)
------------------------------

  Additional (1): fi-tgl-y 
  Missing    (8): fi-ilk-m540 fi-ehl-1 fi-hsw-4200u fi-byt-squawks fi-icl-u2 fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8665 -> Patchwork_18023

  CI-20190529: 20190529
  CI_DRM_8665: 2cb786fa6506e20b5cb2a10decda11454111e026 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5717: 725bf2dae51f0087eaa64f1931a2ef9d22f070dd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18023: 8e1bf7ebdffd468b4f30978f703d89324e4791b8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8e1bf7ebdffd drm/i915/display: replace port to phy conversions in intel_ddi.c
90085cc968a8 drm/i915/display: use port_info in intel_ddi_init
4bb4855c4a15 drm/i915/display: add phy, vbt and ddi indexes
50167b8d3287 drm/i915/display: start description-based ddi initialization
f1e31b8bd6eb drm/i915/display: fix comment on skl straps
1c318e3abcdc drm/i915: move ICL port F hack to intel_bios

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18023/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
