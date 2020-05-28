Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E93F71E6C0F
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 22:08:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 591C46E5C5;
	Thu, 28 May 2020 20:08:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BE93A6E204;
 Thu, 28 May 2020 20:08:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B722CA47E8;
 Thu, 28 May 2020 20:08:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Thu, 28 May 2020 20:08:24 -0000
Message-ID: <159069650471.685.17653804565452323859@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200520130030.1014994-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200520130030.1014994-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/23=5D_Revert_=22drm/i915/gem=3A_Drop_re?=
 =?utf-8?q?location_slowpath=22=2E_=28rev2=29?=
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

Series: series starting with [01/23] Revert "drm/i915/gem: Drop relocation slowpath". (rev2)
URL   : https://patchwork.freedesktop.org/series/77472/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8549 -> Patchwork_17805
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17805 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17805, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17805:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-lmem:        [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-pnv-d510/igt@runner@aborted.html
    - fi-gdg-551:         NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-gdg-551/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-snb-2520m/igt@runner@aborted.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-byt-n2820/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-ivb-3770/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-byt-j1900/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-elk-e7500/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-blb-e6850/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gem_contexts:
    - {fi-kbl-7560u}:     [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-kbl-7560u/igt@i915_selftest@live@gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-kbl-7560u/igt@i915_selftest@live@gem_contexts.html

  * {igt@i915_selftest@live@gem_execbuf}:
    - fi-skl-6600u:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-skl-6600u/igt@i915_selftest@live@gem_execbuf.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-skl-6600u/igt@i915_selftest@live@gem_execbuf.html
    - fi-cfl-8109u:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-cfl-8109u/igt@i915_selftest@live@gem_execbuf.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-cfl-8109u/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-7500u:       [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-kbl-7500u/igt@i915_selftest@live@gem_execbuf.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-kbl-7500u/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-guc:         [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-kbl-guc/igt@i915_selftest@live@gem_execbuf.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-kbl-guc/igt@i915_selftest@live@gem_execbuf.html
    - fi-bsw-nick:        [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-8809g:       [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-kbl-8809g/igt@i915_selftest@live@gem_execbuf.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-kbl-8809g/igt@i915_selftest@live@gem_execbuf.html
    - fi-icl-y:           [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-icl-y/igt@i915_selftest@live@gem_execbuf.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-icl-y/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-r:           [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-kbl-r/igt@i915_selftest@live@gem_execbuf.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-kbl-r/igt@i915_selftest@live@gem_execbuf.html
    - fi-blb-e6850:       [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-blb-e6850/igt@i915_selftest@live@gem_execbuf.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-blb-e6850/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-x1275:       [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-kbl-x1275/igt@i915_selftest@live@gem_execbuf.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-kbl-x1275/igt@i915_selftest@live@gem_execbuf.html
    - fi-cml-s:           [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-cml-s/igt@i915_selftest@live@gem_execbuf.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-cml-s/igt@i915_selftest@live@gem_execbuf.html
    - fi-tgl-y:           [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-tgl-y/igt@i915_selftest@live@gem_execbuf.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-tgl-y/igt@i915_selftest@live@gem_execbuf.html
    - fi-cfl-guc:         [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-cfl-guc/igt@i915_selftest@live@gem_execbuf.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-cfl-guc/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-soraka:      [PASS][41] -> [INCOMPLETE][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-kbl-soraka/igt@i915_selftest@live@gem_execbuf.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-kbl-soraka/igt@i915_selftest@live@gem_execbuf.html
    - fi-bsw-n3050:       [PASS][43] -> [INCOMPLETE][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html
    - fi-ivb-3770:        [PASS][45] -> [INCOMPLETE][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-ivb-3770/igt@i915_selftest@live@gem_execbuf.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-ivb-3770/igt@i915_selftest@live@gem_execbuf.html
    - fi-skl-lmem:        [PASS][47] -> [INCOMPLETE][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-skl-lmem/igt@i915_selftest@live@gem_execbuf.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-skl-lmem/igt@i915_selftest@live@gem_execbuf.html
    - fi-ilk-650:         [PASS][49] -> [INCOMPLETE][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-ilk-650/igt@i915_selftest@live@gem_execbuf.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-ilk-650/igt@i915_selftest@live@gem_execbuf.html
    - fi-icl-guc:         [PASS][51] -> [INCOMPLETE][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-icl-guc/igt@i915_selftest@live@gem_execbuf.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-icl-guc/igt@i915_selftest@live@gem_execbuf.html
    - fi-cfl-8700k:       [PASS][53] -> [INCOMPLETE][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-cfl-8700k/igt@i915_selftest@live@gem_execbuf.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-cfl-8700k/igt@i915_selftest@live@gem_execbuf.html
    - fi-bxt-dsi:         [PASS][55] -> [INCOMPLETE][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-bxt-dsi/igt@i915_selftest@live@gem_execbuf.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-bxt-dsi/igt@i915_selftest@live@gem_execbuf.html
    - fi-hsw-4770:        [PASS][57] -> [INCOMPLETE][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-hsw-4770/igt@i915_selftest@live@gem_execbuf.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-hsw-4770/igt@i915_selftest@live@gem_execbuf.html
    - {fi-tgl-u}:         [PASS][59] -> [INCOMPLETE][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-tgl-u/igt@i915_selftest@live@gem_execbuf.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-tgl-u/igt@i915_selftest@live@gem_execbuf.html
    - fi-skl-6700k2:      [PASS][61] -> [INCOMPLETE][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-skl-6700k2/igt@i915_selftest@live@gem_execbuf.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-skl-6700k2/igt@i915_selftest@live@gem_execbuf.html
    - fi-icl-u2:          [PASS][63] -> [INCOMPLETE][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-icl-u2/igt@i915_selftest@live@gem_execbuf.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-icl-u2/igt@i915_selftest@live@gem_execbuf.html
    - {fi-tgl-dsi}:       [PASS][65] -> [INCOMPLETE][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-tgl-dsi/igt@i915_selftest@live@gem_execbuf.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-tgl-dsi/igt@i915_selftest@live@gem_execbuf.html
    - fi-snb-2520m:       [PASS][67] -> [INCOMPLETE][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html
    - fi-whl-u:           [PASS][69] -> [INCOMPLETE][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-whl-u/igt@i915_selftest@live@gem_execbuf.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-whl-u/igt@i915_selftest@live@gem_execbuf.html
    - fi-apl-guc:         [PASS][71] -> [INCOMPLETE][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-apl-guc/igt@i915_selftest@live@gem_execbuf.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-apl-guc/igt@i915_selftest@live@gem_execbuf.html
    - fi-skl-guc:         [PASS][73] -> [INCOMPLETE][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-skl-guc/igt@i915_selftest@live@gem_execbuf.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-skl-guc/igt@i915_selftest@live@gem_execbuf.html
    - fi-bdw-5557u:       [PASS][75] -> [INCOMPLETE][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-bdw-5557u/igt@i915_selftest@live@gem_execbuf.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-bdw-5557u/igt@i915_selftest@live@gem_execbuf.html
    - fi-bwr-2160:        [PASS][77] -> [INCOMPLETE][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-bwr-2160/igt@i915_selftest@live@gem_execbuf.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-bwr-2160/igt@i915_selftest@live@gem_execbuf.html
    - {fi-kbl-7560u}:     [PASS][79] -> [INCOMPLETE][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-kbl-7560u/igt@i915_selftest@live@gem_execbuf.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-kbl-7560u/igt@i915_selftest@live@gem_execbuf.html

  
Known issues
------------

  Here are the changes found in Patchwork_17805 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-bsw-kefka:       [PASS][81] -> [INCOMPLETE][82] ([i915#1909])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/fi-bsw-kefka/igt@i915_module_load@reload.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/fi-bsw-kefka/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#1909]: https://gitlab.freedesktop.org/drm/intel/issues/1909
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (50 -> 43)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8549 -> Patchwork_17805

  CI-20190529: 20190529
  CI_DRM_8549: e50e9c6bf4efd00b02d91ff470993bbd0db94f67 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5682: e5371a99a877be134c6ad5361a5f03843a66f775 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17805: 07aa2ba0b4452fd485c8a86a4b4c0ff0181652de @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

07aa2ba0b445 drm/i915: Ensure we hold the pin mutex
653a74d11741 drm/i915: Add ww locking to pin_to_display_plane
a213e785a229 drm/i915: Add ww locking to vm_fault_gtt
238eed520bff drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
6ff9944cb187 drm/i915: Use ww pinning for intel_context_create_request()
43ec8d9fdd0d drm/i915/selftests: Fix locking inversion in lrc selftest.
c4ecc3f83b68 drm/i915: Dirty hack to fix selftests locking inversion
e275216d5a7b drm/i915: Convert i915_perf to ww locking as well
0a8312f18acd drm/i915: Kill last user of intel_context_create_request outside of selftests
ee11c6a35842 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
be4ae42ef97a drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
acc7cf29898a drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
5252cb40e5b1 drm/i915: Pin engine before pinning all objects, v4.
702fdc1c44ab drm/i915: Nuke arguments to eb_pin_engine
ae010588e8f7 drm/i915: Add ww context handling to context_barrier_task
456650be2110 drm/i915: Use ww locking in intel_renderstate.
e4ec453ceb93 drm/i915: Use per object locking in execbuf, v10.
1c64f1102879 drm/i915/gem: Make eb_add_lut interruptible wait on object lock.
f044defb7a38 Revert "drm/i915/gem: Split eb_vma into its own allocation"
ef08f55abbdc drm/i915: Parse command buffer earlier in eb_relocate(slow)
e8da908480c7 drm/i915: Remove locking from i915_gem_object_prepare_read/write
a6440b9f94ef drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
d9487c8b0b0d Revert "drm/i915/gem: Drop relocation slowpath".

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17805/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
