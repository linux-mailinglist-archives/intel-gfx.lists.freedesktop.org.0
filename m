Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 154BF26A9FC
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 18:39:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E44276E889;
	Tue, 15 Sep 2020 16:39:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EFDE96E11B;
 Tue, 15 Sep 2020 16:39:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DE54BA7DFB;
 Tue, 15 Sep 2020 16:39:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Tue, 15 Sep 2020 16:39:35 -0000
Message-ID: <160018797587.30601.1382075328491651866@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200915145958.19993-1-tzimmermann@suse.de>
In-Reply-To: <20200915145958.19993-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQ29u?=
 =?utf-8?q?vert_all_remaining_drivers_to_GEM_object_functions_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0826084796=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0826084796==
Content-Type: multipart/alternative;
 boundary="===============2665638790961390999=="

--===============2665638790961390999==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Convert all remaining drivers to GEM object functions (rev2)
URL   : https://patchwork.freedesktop.org/series/80593/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9012 -> Patchwork_18503
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18503 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18503, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18503:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fence@basic-busy@rcs0:
    - fi-blb-e6850:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-blb-e6850/igt@gem_exec_fence@basic-busy@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-blb-e6850/igt@gem_exec_fence@basic-busy@rcs0.html
    - fi-pnv-d510:        [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-pnv-d510/igt@gem_exec_fence@basic-busy@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-pnv-d510/igt@gem_exec_fence@basic-busy@rcs0.html

  * igt@gem_exec_fence@basic-busy@vcs0:
    - fi-ivb-3770:        [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html
    - fi-elk-e7500:       [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-elk-e7500/igt@gem_exec_fence@basic-busy@vcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-elk-e7500/igt@gem_exec_fence@basic-busy@vcs0.html
    - fi-ilk-650:         [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-ilk-650/igt@gem_exec_fence@basic-busy@vcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-ilk-650/igt@gem_exec_fence@basic-busy@vcs0.html
    - fi-byt-j1900:       [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-byt-j1900/igt@gem_exec_fence@basic-busy@vcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-byt-j1900/igt@gem_exec_fence@basic-busy@vcs0.html

  * igt@gem_exec_fence@basic-busy@vecs0:
    - fi-hsw-4770:        [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-hsw-4770/igt@gem_exec_fence@basic-busy@vecs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-hsw-4770/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-icl-u2:          [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-icl-u2/igt@gem_exec_fence@basic-busy@vecs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-icl-u2/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-cml-u2:          [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-cml-u2/igt@gem_exec_fence@basic-busy@vecs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-cml-u2/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-skl-6700k2:      [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-skl-6700k2/igt@gem_exec_fence@basic-busy@vecs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-skl-6700k2/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-cfl-8700k:       [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-cfl-8700k/igt@gem_exec_fence@basic-busy@vecs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-cfl-8700k/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-tgl-u2:          [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-tgl-u2/igt@gem_exec_fence@basic-busy@vecs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-tgl-u2/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bsw-n3050:       [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@vecs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-skl-lmem:        [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-skl-lmem/igt@gem_exec_fence@basic-busy@vecs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-skl-lmem/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-soraka:      [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@vecs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-cml-s:           [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-cml-s/igt@gem_exec_fence@basic-busy@vecs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-cml-s/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-x1275:       [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vecs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-cfl-guc:         [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-cfl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-cfl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-tgl-y:           [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-tgl-y/igt@gem_exec_fence@basic-busy@vecs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-tgl-y/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bsw-kefka:       [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-bsw-kefka/igt@gem_exec_fence@basic-busy@vecs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-bsw-kefka/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-glk-dsi:         [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-glk-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-glk-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-r:           [PASS][43] -> [DMESG-WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-kbl-r/igt@gem_exec_fence@basic-busy@vecs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-kbl-r/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-cfl-8109u:       [PASS][45] -> [DMESG-WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-cfl-8109u/igt@gem_exec_fence@basic-busy@vecs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-cfl-8109u/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-icl-y:           [PASS][47] -> [DMESG-WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-icl-y/igt@gem_exec_fence@basic-busy@vecs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-icl-y/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-guc:         [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-kbl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-kbl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bsw-nick:        [PASS][51] -> [DMESG-WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-bsw-nick/igt@gem_exec_fence@basic-busy@vecs0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-bsw-nick/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bdw-gvtdvm:      [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-busy@vecs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bdw-5557u:       [PASS][55] -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-bdw-5557u/igt@gem_exec_fence@basic-busy@vecs0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-bdw-5557u/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-7500u:       [PASS][57] -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-kbl-7500u/igt@gem_exec_fence@basic-busy@vecs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-kbl-7500u/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-skl-6600u:       [PASS][59] -> [DMESG-WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-skl-6600u/igt@gem_exec_fence@basic-busy@vecs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-skl-6600u/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-skl-guc:         [PASS][61] -> [DMESG-WARN][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-skl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-skl-guc/igt@gem_exec_fence@basic-busy@vecs0.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_fence@basic-busy@vecs0:
    - {fi-ehl-1}:         [PASS][63] -> [DMESG-WARN][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-ehl-1/igt@gem_exec_fence@basic-busy@vecs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-ehl-1/igt@gem_exec_fence@basic-busy@vecs0.html
    - {fi-tgl-dsi}:       [PASS][65] -> [DMESG-WARN][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-tgl-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-tgl-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
    - {fi-kbl-7560u}:     [PASS][67] -> [DMESG-WARN][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-kbl-7560u/igt@gem_exec_fence@basic-busy@vecs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-kbl-7560u/igt@gem_exec_fence@basic-busy@vecs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_18503 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-busy@vecs0:
    - fi-apl-guc:         [PASS][69] -> [DMESG-WARN][70] ([i915#1635])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bxt-dsi:         [PASS][71] -> [DMESG-WARN][72] ([i915#1635])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-bxt-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-bxt-dsi/igt@gem_exec_fence@basic-busy@vecs0.html

  
#### Warnings ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-x1275:       [DMESG-WARN][73] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][74] ([i915#62] / [i915#92])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html

  * igt@runner@aborted:
    - fi-tgl-u2:          [FAIL][75] ([i915#2045] / [i915#2439]) -> [FAIL][76] ([i915#2439])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-tgl-u2/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-tgl-u2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#2045]: https://gitlab.freedesktop.org/drm/intel/issues/2045
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (47 -> 40)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9012 -> Patchwork_18503

  CI-20190529: 20190529
  CI_DRM_9012: c6d96868b6c7dca0492e5e46382ea323aaf46fd9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5785: ee01acab0b6cee7be5cc4278e5d7527ec3e358ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18503: cab017216e88ef64bba31798f888a68b1aab88dc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cab017216e88 drm: Remove obsolete GEM and PRIME callbacks from struct drm_driver
308dcf21fda5 drm/xlnx: Initialize DRM driver instance with CMA helper macro
0e96620ce337 drm/xen: Introduce GEM object functions
ac18c0a1f4e6 drm/vkms: Introduce GEM object functions
8bbc5ccb9b19 drm/virtgpu: Set PRIME export function in struct drm_gem_object_funcs
716d7874560f drm/vgem: Introduce GEM object functions
cd6d5c4922a9 drm/vc4: Introduce GEM object functions
4b77e1b2c5a8 drm/tegra: Introduce GEM object functions
376266125805 drm/rockchip: Convert to drm_gem_object_funcs
8cfbfcdfaf7b drm/radeon: Introduce GEM object functions
a40c13d7fe1c drm/pl111: Introduce GEM object functions
a37cb8db61ac drm/omapdrm: Introduce GEM object functions
324848fd8dc0 drm/nouveau: Introduce GEM object functions
504106e74ccc drm/msm: Introduce GEM object funcs
ba32f8dd23b5 drm/mediatek: Introduce GEM object functions
dbfefd13964e drm/i915: Introduce GEM object functions
53210f7f0722 drm/gma500: Introduce GEM object functions
a81e48db00e5 drm/exynos: Introduce GEM object functions
c8098f5d6e95 drm/etnaviv: Introduce GEM object functions
c6ad3a511161 drm/armada: Introduce GEM object functions
3975f25bdb58 drm/amdgpu: Introduce GEM object functions

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/index.html

--===============2665638790961390999==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>Convert all remaining drivers to GEM object functions (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/80593/">https://patchwork.freedesktop.org/series/80593/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9012 -&gt; Patchwork_18503</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18503 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18503, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18503:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@rcs0:</p>
<ul>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-blb-e6850/igt@gem_exec_fence@basic-busy@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-blb-e6850/igt@gem_exec_fence@basic-busy@rcs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-pnv-d510/igt@gem_exec_fence@basic-busy@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-pnv-d510/igt@gem_exec_fence@basic-busy@rcs0.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@vcs0:</p>
<ul>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-elk-e7500/igt@gem_exec_fence@basic-busy@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-elk-e7500/igt@gem_exec_fence@basic-busy@vcs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-ilk-650/igt@gem_exec_fence@basic-busy@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-ilk-650/igt@gem_exec_fence@basic-busy@vcs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-byt-j1900/igt@gem_exec_fence@basic-busy@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-byt-j1900/igt@gem_exec_fence@basic-busy@vcs0.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@vecs0:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-hsw-4770/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-hsw-4770/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-icl-u2/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-icl-u2/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-cml-u2/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-cml-u2/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-skl-6700k2/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-skl-6700k2/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-cfl-8700k/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-cfl-8700k/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-tgl-u2/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-tgl-u2/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-skl-lmem/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-skl-lmem/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-cml-s/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-cml-s/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-cfl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-cfl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-tgl-y/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-tgl-y/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-bsw-kefka/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-bsw-kefka/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-glk-dsi/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-glk-dsi/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-kbl-r/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-kbl-r/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-cfl-8109u/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-cfl-8109u/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-icl-y/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-icl-y/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-kbl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-kbl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-bsw-nick/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-bsw-nick/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-bdw-5557u/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-bdw-5557u/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-kbl-7500u/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-kbl-7500u/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-skl-6600u/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-skl-6600u/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-skl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-skl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@vecs0:</p>
<ul>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-ehl-1/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-ehl-1/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-tgl-dsi/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-tgl-dsi/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-kbl-7560u/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-kbl-7560u/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18503 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@vecs0:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-bxt-dsi/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-bxt-dsi/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9012/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2045">i915#2045</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18503/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (47 -&gt; 40)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9012 -&gt; Patchwork_18503</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9012: c6d96868b6c7dca0492e5e46382ea323aaf46fd9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5785: ee01acab0b6cee7be5cc4278e5d7527ec3e358ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18503: cab017216e88ef64bba31798f888a68b1aab88dc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>cab017216e88 drm: Remove obsolete GEM and PRIME callbacks from struct drm_driver<br />
308dcf21fda5 drm/xlnx: Initialize DRM driver instance with CMA helper macro<br />
0e96620ce337 drm/xen: Introduce GEM object functions<br />
ac18c0a1f4e6 drm/vkms: Introduce GEM object functions<br />
8bbc5ccb9b19 drm/virtgpu: Set PRIME export function in struct drm_gem_object_funcs<br />
716d7874560f drm/vgem: Introduce GEM object functions<br />
cd6d5c4922a9 drm/vc4: Introduce GEM object functions<br />
4b77e1b2c5a8 drm/tegra: Introduce GEM object functions<br />
376266125805 drm/rockchip: Convert to drm_gem_object_funcs<br />
8cfbfcdfaf7b drm/radeon: Introduce GEM object functions<br />
a40c13d7fe1c drm/pl111: Introduce GEM object functions<br />
a37cb8db61ac drm/omapdrm: Introduce GEM object functions<br />
324848fd8dc0 drm/nouveau: Introduce GEM object functions<br />
504106e74ccc drm/msm: Introduce GEM object funcs<br />
ba32f8dd23b5 drm/mediatek: Introduce GEM object functions<br />
dbfefd13964e drm/i915: Introduce GEM object functions<br />
53210f7f0722 drm/gma500: Introduce GEM object functions<br />
a81e48db00e5 drm/exynos: Introduce GEM object functions<br />
c8098f5d6e95 drm/etnaviv: Introduce GEM object functions<br />
c6ad3a511161 drm/armada: Introduce GEM object functions<br />
3975f25bdb58 drm/amdgpu: Introduce GEM object functions</p>

</body>
</html>

--===============2665638790961390999==--

--===============0826084796==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0826084796==--
