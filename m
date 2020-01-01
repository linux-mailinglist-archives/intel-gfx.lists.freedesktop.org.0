Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6F512DC62
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2020 01:14:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A65216E2A0;
	Wed,  1 Jan 2020 00:14:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 36D846E26C;
 Wed,  1 Jan 2020 00:14:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1D4F1A47E9;
 Wed,  1 Jan 2020 00:14:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 Jan 2020 00:14:35 -0000
Message-ID: <157783767509.5186.10298610345937073216@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191231233657.523408-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191231233657.523408-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/gem=3A_Extend_mmap_su?=
 =?utf-8?q?pport_for_lmem?=
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

Series: series starting with [CI,1/2] drm/i915/gem: Extend mmap support for lmem
URL   : https://patchwork.freedesktop.org/series/71534/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7660 -> Patchwork_15960
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15960 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15960, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15960:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_mman:
    - fi-gdg-551:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-gdg-551/igt@i915_selftest@live_mman.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-gdg-551/igt@i915_selftest@live_mman.html
    - fi-whl-u:           [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-whl-u/igt@i915_selftest@live_mman.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-whl-u/igt@i915_selftest@live_mman.html
    - fi-ilk-650:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-ilk-650/igt@i915_selftest@live_mman.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-ilk-650/igt@i915_selftest@live_mman.html
    - fi-bsw-n3050:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-bsw-n3050/igt@i915_selftest@live_mman.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-bsw-n3050/igt@i915_selftest@live_mman.html
    - fi-hsw-4770:        [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-hsw-4770/igt@i915_selftest@live_mman.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-hsw-4770/igt@i915_selftest@live_mman.html
    - fi-skl-guc:         [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-skl-guc/igt@i915_selftest@live_mman.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-skl-guc/igt@i915_selftest@live_mman.html
    - fi-skl-6700k2:      [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-skl-6700k2/igt@i915_selftest@live_mman.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-skl-6700k2/igt@i915_selftest@live_mman.html
    - fi-snb-2520m:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-snb-2520m/igt@i915_selftest@live_mman.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-snb-2520m/igt@i915_selftest@live_mman.html
    - fi-cfl-8700k:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-cfl-8700k/igt@i915_selftest@live_mman.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-cfl-8700k/igt@i915_selftest@live_mman.html
    - fi-hsw-peppy:       [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-hsw-peppy/igt@i915_selftest@live_mman.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-hsw-peppy/igt@i915_selftest@live_mman.html
    - fi-kbl-7500u:       NOTRUN -> [INCOMPLETE][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-kbl-7500u/igt@i915_selftest@live_mman.html
    - fi-kbl-guc:         [PASS][22] -> [INCOMPLETE][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-kbl-guc/igt@i915_selftest@live_mman.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-kbl-guc/igt@i915_selftest@live_mman.html
    - fi-bsw-kefka:       [PASS][24] -> [INCOMPLETE][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-bsw-kefka/igt@i915_selftest@live_mman.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-bsw-kefka/igt@i915_selftest@live_mman.html
    - fi-bwr-2160:        [PASS][26] -> [INCOMPLETE][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-bwr-2160/igt@i915_selftest@live_mman.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-bwr-2160/igt@i915_selftest@live_mman.html
    - fi-kbl-r:           NOTRUN -> [INCOMPLETE][28]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-kbl-r/igt@i915_selftest@live_mman.html
    - fi-bdw-5557u:       [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-bdw-5557u/igt@i915_selftest@live_mman.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-bdw-5557u/igt@i915_selftest@live_mman.html
    - fi-bsw-nick:        [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-bsw-nick/igt@i915_selftest@live_mman.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-bsw-nick/igt@i915_selftest@live_mman.html
    - fi-kbl-soraka:      [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-kbl-soraka/igt@i915_selftest@live_mman.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-kbl-soraka/igt@i915_selftest@live_mman.html
    - fi-skl-lmem:        NOTRUN -> [INCOMPLETE][35]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-skl-lmem/igt@i915_selftest@live_mman.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][36]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-pnv-d510/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][37]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-bsw-kefka/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][38]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-cfl-8700k/igt@runner@aborted.html
    - fi-hsw-peppy:       NOTRUN -> [FAIL][39]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-hsw-peppy/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][40]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-bsw-nick/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][41]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-snb-2520m/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][42]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-kbl-r/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][43]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][44]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][45]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-kbl-7500u/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][46]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-snb-2600/igt@runner@aborted.html
    - fi-whl-u:           NOTRUN -> [FAIL][47]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-whl-u/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][48]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-bsw-n3050/igt@runner@aborted.html

  
#### Warnings ####

  * igt@i915_selftest@live_mman:
    - fi-skl-6600u:       [DMESG-WARN][49] ([i915#889]) -> [INCOMPLETE][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-skl-6600u/igt@i915_selftest@live_mman.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-skl-6600u/igt@i915_selftest@live_mman.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live_mman:
    - {fi-tgl-u}:         NOTRUN -> [INCOMPLETE][51]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-tgl-u/igt@i915_selftest@live_mman.html
    - {fi-tgl-guc}:       [PASS][52] -> [INCOMPLETE][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-tgl-guc/igt@i915_selftest@live_mman.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-tgl-guc/igt@i915_selftest@live_mman.html

  
Known issues
------------

  Here are the changes found in Patchwork_15960 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [PASS][54] -> [INCOMPLETE][55] ([i915#505] / [i915#671])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_mman:
    - fi-snb-2600:        [PASS][56] -> [INCOMPLETE][57] ([i915#82])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-snb-2600/igt@i915_selftest@live_mman.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-snb-2600/igt@i915_selftest@live_mman.html
    - fi-cml-u2:          [PASS][58] -> [INCOMPLETE][59] ([i915#283])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-cml-u2/igt@i915_selftest@live_mman.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-cml-u2/igt@i915_selftest@live_mman.html
    - fi-icl-u3:          [PASS][60] -> [INCOMPLETE][61] ([i915#140])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-icl-u3/igt@i915_selftest@live_mman.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-icl-u3/igt@i915_selftest@live_mman.html
    - fi-glk-dsi:         [PASS][62] -> [INCOMPLETE][63] ([i915#58] / [k.org#198133])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-glk-dsi/igt@i915_selftest@live_mman.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-glk-dsi/igt@i915_selftest@live_mman.html
    - fi-apl-guc:         [PASS][64] -> [INCOMPLETE][65] ([fdo#103927])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-apl-guc/igt@i915_selftest@live_mman.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-apl-guc/igt@i915_selftest@live_mman.html
    - fi-icl-y:           [PASS][66] -> [INCOMPLETE][67] ([i915#140])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-icl-y/igt@i915_selftest@live_mman.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-icl-y/igt@i915_selftest@live_mman.html
    - fi-icl-u2:          [PASS][68] -> [INCOMPLETE][69] ([i915#140])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-icl-u2/igt@i915_selftest@live_mman.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-icl-u2/igt@i915_selftest@live_mman.html
    - fi-pnv-d510:        [PASS][70] -> [INCOMPLETE][71] ([i915#299])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-pnv-d510/igt@i915_selftest@live_mman.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-pnv-d510/igt@i915_selftest@live_mman.html
    - fi-icl-dsi:         [PASS][72] -> [INCOMPLETE][73] ([i915#140])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-icl-dsi/igt@i915_selftest@live_mman.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-icl-dsi/igt@i915_selftest@live_mman.html
    - fi-icl-guc:         [PASS][74] -> [INCOMPLETE][75] ([i915#140])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-icl-guc/igt@i915_selftest@live_mman.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-icl-guc/igt@i915_selftest@live_mman.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-lmem:        [DMESG-WARN][76] ([i915#889]) -> [PASS][77] +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][78] ([i915#553] / [i915#725]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-ivb-3770:        [DMESG-FAIL][80] ([i915#563]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-kbl-soraka:      [DMESG-FAIL][82] ([fdo#112406]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-kbl-soraka/igt@i915_selftest@live_gt_heartbeat.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-kbl-soraka/igt@i915_selftest@live_gt_heartbeat.html

  * igt@i915_selftest@live_sanitycheck:
    - fi-skl-lmem:        [INCOMPLETE][84] -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-skl-lmem/igt@i915_selftest@live_sanitycheck.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-skl-lmem/igt@i915_selftest@live_sanitycheck.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-bxt-dsi:         [DMESG-WARN][86] ([i915#889]) -> [INCOMPLETE][87] ([fdo#103927])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (45 -> 42)
------------------------------

  Additional (4): fi-kbl-x1275 fi-tgl-u fi-kbl-r fi-kbl-7500u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-elk-e7500 fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7660 -> Patchwork_15960

  CI-20190529: 20190529
  CI_DRM_7660: 8e0504773b4e7f0102b6926d69db3dd58e6db52e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5356: 62146738c68abfa7497b023a049163932f5a9aa0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15960: 16126f545232b3c71ca39afc7828d593835183f4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

16126f545232 drm/i915/selftests: Add selftest for memory region PF handling
e69fb2d55ec0 drm/i915/gem: Extend mmap support for lmem

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15960/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
