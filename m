Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 004551253EE
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 21:55:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33F82895B9;
	Wed, 18 Dec 2019 20:55:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AEEEA895B9;
 Wed, 18 Dec 2019 20:54:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A8445A363B;
 Wed, 18 Dec 2019 20:54:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Wed, 18 Dec 2019 20:54:59 -0000
Message-ID: <157670249966.8355.16129371788766938696@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191218161105.30638-1-imre.deak@intel.com>
In-Reply-To: <20191218161105.30638-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Render/media_decompression_support_=28rev2=29?=
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

Series: drm/i915/tgl: Render/media decompression support (rev2)
URL   : https://patchwork.freedesktop.org/series/71125/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7599 -> Patchwork_15830
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15830 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15830, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15830:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - fi-hsw-peppy:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-hsw-peppy/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-hsw-peppy/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-blb-e6850:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-blb-e6850/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-blb-e6850/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-icl-u2:          [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-icl-u2/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-icl-u2/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-glk-dsi:         [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-glk-dsi/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-glk-dsi/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-pnv-d510:        [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-pnv-d510/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-pnv-d510/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-kbl-x1275:       [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-kbl-x1275/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-kbl-x1275/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-apl-guc:         [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-apl-guc/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-apl-guc/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-bsw-kefka:       [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-bsw-kefka/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-bsw-kefka/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-bdw-5557u:       [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-bdw-5557u/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-bdw-5557u/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-skl-6770hq:      [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-skl-6770hq/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-skl-6770hq/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-tgl-y:           [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-tgl-y/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-tgl-y/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-skl-6600u/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-kbl-guc:         [PASS][24] -> [FAIL][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-kbl-guc/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-kbl-guc/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-bsw-nick:        [PASS][26] -> [FAIL][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-bsw-nick/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-bsw-nick/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-kbl-8809g:       [PASS][28] -> [FAIL][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-kbl-8809g/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-kbl-8809g/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-skl-lmem:        [PASS][30] -> [FAIL][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-skl-lmem/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-skl-lmem/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-kbl-r:           [PASS][32] -> [FAIL][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-kbl-r/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-kbl-r/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-cml-u2:          [PASS][34] -> [FAIL][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-cml-u2/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-cml-u2/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][36]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-byt-n2820/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-icl-guc:         [PASS][37] -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-icl-guc/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-icl-guc/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-bxt-dsi:         [PASS][39] -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-bxt-dsi/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-bxt-dsi/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-byt-j1900:       [PASS][41] -> [FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-byt-j1900/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-byt-j1900/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-hsw-4770:        [PASS][43] -> [FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-hsw-4770/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-hsw-4770/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-cfl-guc:         [PASS][45] -> [FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-cfl-guc/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-cfl-guc/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-whl-u:           [PASS][47] -> [FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-whl-u/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-whl-u/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-icl-u3:          [PASS][49] -> [FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-icl-u3/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-icl-u3/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-skl-guc:         [PASS][51] -> [FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-skl-guc/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-skl-guc/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-bsw-n3050:       [PASS][53] -> [FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-bsw-n3050/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-bsw-n3050/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-ivb-3770:        [PASS][55] -> [FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-ivb-3770/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-ivb-3770/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-ilk-650:         [PASS][57] -> [FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-ilk-650/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-ilk-650/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-elk-e7500:       [PASS][59] -> [FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-elk-e7500/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-elk-e7500/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-cfl-8700k:       [PASS][61] -> [FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-cfl-8700k/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-cfl-8700k/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-icl-y:           [PASS][63] -> [FAIL][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-icl-y/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-icl-y/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - fi-hsw-4770r:       [PASS][65] -> [FAIL][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-hsw-4770r/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-hsw-4770r/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  
Known issues
------------

  Here are the changes found in Patchwork_15830 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [PASS][67] -> [FAIL][68] ([i915#178])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][69] -> [DMESG-FAIL][70] ([i915#770])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [PASS][71] -> [INCOMPLETE][72] ([i915#45])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][73] ([i915#816]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-u}:         [INCOMPLETE][75] ([fdo#111593]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-tgl-u/igt@gem_exec_gttfill@basic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-tgl-u/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][77] ([i915#725]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][79] ([i915#424]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][81] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][82] ([fdo#107139] / [i915#62] / [i915#92])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][83] ([i915#725]) -> [DMESG-FAIL][84] ([i915#770])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][85] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][86] ([i915#62] / [i915#92]) +4 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][87] ([i915#62] / [i915#92]) -> [DMESG-WARN][88] ([i915#62] / [i915#92] / [i915#95]) +7 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (48 -> 40)
------------------------------

  Additional (1): fi-skl-6600u 
  Missing    (9): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bwr-2160 fi-gdg-551 fi-byt-clapper fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7599 -> Patchwork_15830

  CI-20190529: 20190529
  CI_DRM_7599: 03dfaf2e5f39b632d0187544f3c988b8596f11b0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15830: 210d9ea8c440bfc29b443a3af46f937662264594 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

210d9ea8c440 drm/i915/tgl: Add Clear Color support for TGL Render Decompression
5a820e552d62 drm/framebuffer: Format modifier for Intel Gen 12 render compression with Clear Color
cd33cb3884df drm/i915/tgl: Gen-12 display can decompress surfaces compressed by the media engine
3afe4941ecb1 drm/fb: Extend format_info member arrays to handle four planes
4d6d5ce67a4f drm/framebuffer: Format modifier for Intel Gen-12 media compression
10830ae44aa5 drm/i915: Make sure CCS YUV semiplanar format checks work
e528f5592152 drm/i915: Make sure Y slave planes get all the required state
136d04c5ec63 drm/i915: Skip rotated offset adjustment for unsupported modifiers
82ec90bd848a drm/i915/tgl: Make sure FBs have a correct CCS plane stride
81a7b00d91e6 drm/i915/tgl: Gen-12 render decompression
8648416c288f drm/i915: Add helpers to select correct ccs/aux planes
efa1d8e8a1af drm/i915: Extract framebufer CCS offset checks into a function
1d89d4a9f731 drm/i915: Move CCS stride alignment W/A inside intel_fb_stride_alignment
23ba997a14b1 drm/i915: Use intel_tile_height() instead of re-implementing
20f56e60829c drm/framebuffer: Format modifier for Intel Gen-12 render compression

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15830/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
