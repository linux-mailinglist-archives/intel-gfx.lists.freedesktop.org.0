Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF5C1415B1
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2020 04:20:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48C466F9A5;
	Sat, 18 Jan 2020 03:20:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8ACD76F9A4;
 Sat, 18 Jan 2020 03:20:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7ACFEA0096;
 Sat, 18 Jan 2020 03:20:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 18 Jan 2020 03:20:50 -0000
Message-ID: <157931765047.11510.4533010176819943561@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200117220038.3409820-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200117220038.3409820-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Store_mmap=5Foffsets_in_an_rbtree_rather_than_a_pl?=
 =?utf-8?q?ain_list_=28rev2=29?=
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

Series: drm/i915/gem: Store mmap_offsets in an rbtree rather than a plain list (rev2)
URL   : https://patchwork.freedesktop.org/series/72221/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7769 -> Patchwork_16162
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16162 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16162, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16162:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy-all:
    - fi-bsw-nick:        NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-bsw-nick/igt@gem_busy@busy-all.html
    - fi-bsw-kefka:       NOTRUN -> [INCOMPLETE][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-bsw-kefka/igt@gem_busy@busy-all.html
    - fi-hsw-4770r:       NOTRUN -> [DMESG-WARN][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-hsw-4770r/igt@gem_busy@busy-all.html
    - fi-hsw-peppy:       NOTRUN -> [DMESG-WARN][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-hsw-peppy/igt@gem_busy@busy-all.html
    - fi-pnv-d510:        [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-pnv-d510/igt@gem_busy@busy-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-pnv-d510/igt@gem_busy@busy-all.html
    - fi-cfl-8700k:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-cfl-8700k/igt@gem_busy@busy-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-cfl-8700k/igt@gem_busy@busy-all.html
    - fi-snb-2520m:       NOTRUN -> [DMESG-WARN][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-snb-2520m/igt@gem_busy@busy-all.html
    - fi-blb-e6850:       [PASS][10] -> [DMESG-WARN][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-blb-e6850/igt@gem_busy@busy-all.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-blb-e6850/igt@gem_busy@busy-all.html
    - fi-elk-e7500:       [PASS][12] -> [DMESG-WARN][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-elk-e7500/igt@gem_busy@busy-all.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-elk-e7500/igt@gem_busy@busy-all.html
    - fi-cfl-guc:         [PASS][14] -> [INCOMPLETE][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-cfl-guc/igt@gem_busy@busy-all.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-cfl-guc/igt@gem_busy@busy-all.html
    - fi-hsw-4770:        [PASS][16] -> [DMESG-WARN][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-hsw-4770/igt@gem_busy@busy-all.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-hsw-4770/igt@gem_busy@busy-all.html
    - fi-bsw-n3050:       NOTRUN -> [INCOMPLETE][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-bsw-n3050/igt@gem_busy@busy-all.html
    - fi-ilk-650:         [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-ilk-650/igt@gem_busy@busy-all.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-ilk-650/igt@gem_busy@busy-all.html
    - fi-whl-u:           [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-whl-u/igt@gem_busy@busy-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-whl-u/igt@gem_busy@busy-all.html
    - fi-byt-j1900:       [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-byt-j1900/igt@gem_busy@busy-all.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-byt-j1900/igt@gem_busy@busy-all.html
    - fi-snb-2600:        NOTRUN -> [DMESG-WARN][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-snb-2600/igt@gem_busy@busy-all.html

  * igt@gem_mmap_gtt@basic:
    - fi-gdg-551:         [PASS][26] -> [DMESG-WARN][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-gdg-551/igt@gem_mmap_gtt@basic.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-gdg-551/igt@gem_mmap_gtt@basic.html

  * igt@runner@aborted:
    - fi-kbl-x1275:       NOTRUN -> [FAIL][28]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-kbl-x1275/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][29]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-bsw-kefka/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][30]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-cfl-8700k/igt@runner@aborted.html
    - fi-gdg-551:         NOTRUN -> [FAIL][31]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-gdg-551/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][32]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-bsw-nick/igt@runner@aborted.html
    - fi-apl-guc:         NOTRUN -> [FAIL][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-apl-guc/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][34]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-kbl-r/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][35]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][36]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][37]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-kbl-guc/igt@runner@aborted.html
    - fi-whl-u:           NOTRUN -> [FAIL][38]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-whl-u/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][39]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-bxt-dsi/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][40]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-cfl-guc/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][41]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-bsw-n3050/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][42] ([i915#858]) -> [FAIL][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-kbl-8809g/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-kbl-8809g/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-kbl-7560u}:     NOTRUN -> [FAIL][44]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-kbl-7560u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16162 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-all:
    - fi-bdw-5557u:       [PASS][45] -> [INCOMPLETE][46] ([i915#667])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-bdw-5557u/igt@gem_busy@busy-all.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-bdw-5557u/igt@gem_busy@busy-all.html
    - fi-kbl-8809g:       [PASS][47] -> [INCOMPLETE][48] ([i915#667])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-kbl-8809g/igt@gem_busy@busy-all.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-kbl-8809g/igt@gem_busy@busy-all.html
    - fi-icl-guc:         [PASS][49] -> [INCOMPLETE][50] ([i915#140])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-icl-guc/igt@gem_busy@busy-all.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-icl-guc/igt@gem_busy@busy-all.html
    - fi-skl-6770hq:      [PASS][51] -> [INCOMPLETE][52] ([i915#667])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-skl-6770hq/igt@gem_busy@busy-all.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-skl-6770hq/igt@gem_busy@busy-all.html
    - fi-icl-dsi:         [PASS][53] -> [INCOMPLETE][54] ([i915#140])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-icl-dsi/igt@gem_busy@busy-all.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-icl-dsi/igt@gem_busy@busy-all.html
    - fi-kbl-guc:         [PASS][55] -> [INCOMPLETE][56] ([i915#667])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-kbl-guc/igt@gem_busy@busy-all.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-kbl-guc/igt@gem_busy@busy-all.html
    - fi-kbl-7500u:       [PASS][57] -> [INCOMPLETE][58] ([i915#667])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-kbl-7500u/igt@gem_busy@busy-all.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-kbl-7500u/igt@gem_busy@busy-all.html
    - fi-kbl-x1275:       [PASS][59] -> [INCOMPLETE][60] ([i915#667])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-kbl-x1275/igt@gem_busy@busy-all.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-kbl-x1275/igt@gem_busy@busy-all.html
    - fi-icl-u2:          [PASS][61] -> [INCOMPLETE][62] ([i915#140])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-icl-u2/igt@gem_busy@busy-all.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-icl-u2/igt@gem_busy@busy-all.html
    - fi-icl-y:           [PASS][63] -> [INCOMPLETE][64] ([i915#140])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-icl-y/igt@gem_busy@busy-all.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-icl-y/igt@gem_busy@busy-all.html
    - fi-apl-guc:         [PASS][65] -> [INCOMPLETE][66] ([fdo#103927])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-apl-guc/igt@gem_busy@busy-all.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-apl-guc/igt@gem_busy@busy-all.html
    - fi-glk-dsi:         [PASS][67] -> [INCOMPLETE][68] ([i915#58] / [k.org#198133])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-glk-dsi/igt@gem_busy@busy-all.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-glk-dsi/igt@gem_busy@busy-all.html
    - fi-cml-s:           [PASS][69] -> [INCOMPLETE][70] ([i915#283])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-cml-s/igt@gem_busy@busy-all.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-cml-s/igt@gem_busy@busy-all.html
    - fi-skl-6700k2:      [PASS][71] -> [INCOMPLETE][72] ([i915#667])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-skl-6700k2/igt@gem_busy@busy-all.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-skl-6700k2/igt@gem_busy@busy-all.html
    - fi-skl-guc:         [PASS][73] -> [INCOMPLETE][74] ([i915#667])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-skl-guc/igt@gem_busy@busy-all.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-skl-guc/igt@gem_busy@busy-all.html
    - fi-icl-u3:          [PASS][75] -> [INCOMPLETE][76] ([i915#140])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-icl-u3/igt@gem_busy@busy-all.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-icl-u3/igt@gem_busy@busy-all.html
    - fi-cml-u2:          [PASS][77] -> [INCOMPLETE][78] ([i915#283])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-cml-u2/igt@gem_busy@busy-all.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-cml-u2/igt@gem_busy@busy-all.html
    - fi-bxt-dsi:         [PASS][79] -> [INCOMPLETE][80] ([fdo#103927])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-bxt-dsi/igt@gem_busy@busy-all.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-bxt-dsi/igt@gem_busy@busy-all.html
    - fi-kbl-soraka:      [PASS][81] -> [INCOMPLETE][82] ([i915#667])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-kbl-soraka/igt@gem_busy@busy-all.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-kbl-soraka/igt@gem_busy@busy-all.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-cml-s:           [FAIL][83] ([fdo#111764] / [i915#577]) -> [FAIL][84] ([fdo#111893] / [i915#577])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-cml-s/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/fi-cml-s/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#111893]: https://bugs.freedesktop.org/show_bug.cgi?id=111893
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#577]: https://gitlab.freedesktop.org/drm/intel/issues/577
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#858]: https://gitlab.freedesktop.org/drm/intel/issues/858
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (42 -> 42)
------------------------------

  Additional (9): fi-hsw-4770r fi-hsw-peppy fi-snb-2520m fi-kbl-r fi-bsw-kefka fi-kbl-7560u fi-bsw-nick fi-skl-6600u fi-snb-2600 
  Missing    (9): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ivb-3770 fi-skl-lmem fi-byt-n2820 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7769 -> Patchwork_16162

  CI-20190529: 20190529
  CI_DRM_7769: 15e78429922635916a012ba594255cf07a5b07ad @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5372: 0d00a27fbbd4d4a77d24499ea9811e07e65eb0ac @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16162: a9954bbab8d032c65b2af034e91628ba7152dbcd @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16162/build_32bit.log

  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
Kernel: arch/x86/boot/bzImage is ready  (#1)
  Building modules, stage 2.
  MODPOST 122 modules
ERROR: "__udivdi3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
scripts/Makefile.modpost:93: recipe for target '__modpost' failed
make[1]: *** [__modpost] Error 1
Makefile:1282: recipe for target 'modules' failed
make: *** [modules] Error 2


== Linux commits ==

a9954bbab8d0 drm/i915/gem: Store mmap_offsets in an rbtree rather than a plain list

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16162/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
