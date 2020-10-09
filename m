Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A4A28883C
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Oct 2020 14:04:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E1BA6ECCD;
	Fri,  9 Oct 2020 12:04:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 488836ECCA;
 Fri,  9 Oct 2020 12:04:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 409C1A8836;
 Fri,  9 Oct 2020 12:04:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 09 Oct 2020 12:04:05 -0000
Message-ID: <160224504522.1828.975878216036630043@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201009102132.22770-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201009102132.22770-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/vgem=3A_Replace_vgem=5Fobject=5Ffuncs_with_the_common_drm_shme?=
 =?utf-8?q?m_helper?=
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
Content-Type: multipart/mixed; boundary="===============0009978560=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0009978560==
Content-Type: multipart/alternative;
 boundary="===============0774512081763385334=="

--===============0774512081763385334==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/vgem: Replace vgem_object_funcs with the common drm shmem helper
URL   : https://patchwork.freedesktop.org/series/82509/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9119 -> Patchwork_18666
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18666 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18666, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18666:

### IGT changes ###

#### Possible regressions ####

  * igt@prime_vgem@basic-fence-mmap:
    - fi-byt-j1900:       [PASS][1] -> [FAIL][2] +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-byt-j1900/igt@prime_vgem@basic-fence-mmap.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-byt-j1900/igt@prime_vgem@basic-fence-mmap.html
    - fi-blb-e6850:       [PASS][3] -> [INCOMPLETE][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-blb-e6850/igt@prime_vgem@basic-fence-mmap.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-blb-e6850/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - fi-bsw-kefka:       [PASS][5] -> [INCOMPLETE][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html
    - fi-ilk-650:         [PASS][7] -> [INCOMPLETE][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-ilk-650/igt@prime_vgem@basic-fence-read.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-ilk-650/igt@prime_vgem@basic-fence-read.html
    - fi-byt-j1900:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-byt-j1900/igt@prime_vgem@basic-fence-read.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-byt-j1900/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - fi-ilk-650:         [PASS][11] -> [FAIL][12] +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-ilk-650/igt@prime_vgem@basic-gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-ilk-650/igt@prime_vgem@basic-gtt.html
    - fi-elk-e7500:       [PASS][13] -> [FAIL][14] +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-elk-e7500/igt@prime_vgem@basic-gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-elk-e7500/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-read:
    - fi-bwr-2160:        [PASS][15] -> [FAIL][16] +5 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-bwr-2160/igt@prime_vgem@basic-read.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-bwr-2160/igt@prime_vgem@basic-read.html
    - fi-bsw-kefka:       [PASS][17] -> [FAIL][18] +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-bsw-kefka/igt@prime_vgem@basic-read.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-bsw-kefka/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - fi-bsw-n3050:       [PASS][19] -> [FAIL][20] +5 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-bsw-n3050/igt@prime_vgem@basic-write.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-bsw-n3050/igt@prime_vgem@basic-write.html
    - fi-pnv-d510:        [PASS][21] -> [FAIL][22] +5 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-pnv-d510/igt@prime_vgem@basic-write.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-pnv-d510/igt@prime_vgem@basic-write.html
    - fi-blb-e6850:       [PASS][23] -> [FAIL][24] +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-blb-e6850/igt@prime_vgem@basic-write.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-blb-e6850/igt@prime_vgem@basic-write.html

  * igt@vgem_basic@unload:
    - fi-cml-s:           [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-cml-s/igt@vgem_basic@unload.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-cml-s/igt@vgem_basic@unload.html
    - fi-cfl-guc:         [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-cfl-guc/igt@vgem_basic@unload.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-cfl-guc/igt@vgem_basic@unload.html
    - fi-tgl-u2:          [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-tgl-u2/igt@vgem_basic@unload.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-tgl-u2/igt@vgem_basic@unload.html
    - fi-hsw-4770:        [PASS][31] -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-hsw-4770/igt@vgem_basic@unload.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-hsw-4770/igt@vgem_basic@unload.html
    - fi-cml-u2:          [PASS][33] -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-cml-u2/igt@vgem_basic@unload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-cml-u2/igt@vgem_basic@unload.html
    - fi-snb-2600:        [PASS][35] -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-snb-2600/igt@vgem_basic@unload.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-snb-2600/igt@vgem_basic@unload.html
    - fi-gdg-551:         [PASS][37] -> [FAIL][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-gdg-551/igt@vgem_basic@unload.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-gdg-551/igt@vgem_basic@unload.html
    - fi-skl-lmem:        [PASS][39] -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-skl-lmem/igt@vgem_basic@unload.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-skl-lmem/igt@vgem_basic@unload.html
    - fi-cfl-8109u:       [PASS][41] -> [FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-cfl-8109u/igt@vgem_basic@unload.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-cfl-8109u/igt@vgem_basic@unload.html
    - fi-bsw-nick:        [PASS][43] -> [FAIL][44] +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-bsw-nick/igt@vgem_basic@unload.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-bsw-nick/igt@vgem_basic@unload.html
    - fi-bdw-5557u:       [PASS][45] -> [FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-bdw-5557u/igt@vgem_basic@unload.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-bdw-5557u/igt@vgem_basic@unload.html
    - fi-kbl-r:           [PASS][47] -> [FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-kbl-r/igt@vgem_basic@unload.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-kbl-r/igt@vgem_basic@unload.html
    - fi-kbl-7500u:       [PASS][49] -> [FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-kbl-7500u/igt@vgem_basic@unload.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-kbl-7500u/igt@vgem_basic@unload.html
    - fi-icl-u2:          [PASS][51] -> [FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-icl-u2/igt@vgem_basic@unload.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-icl-u2/igt@vgem_basic@unload.html
    - fi-skl-6600u:       [PASS][53] -> [FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-skl-6600u/igt@vgem_basic@unload.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-skl-6600u/igt@vgem_basic@unload.html
    - fi-icl-y:           [PASS][55] -> [FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-icl-y/igt@vgem_basic@unload.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-icl-y/igt@vgem_basic@unload.html
    - fi-cfl-8700k:       [PASS][57] -> [FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-cfl-8700k/igt@vgem_basic@unload.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-cfl-8700k/igt@vgem_basic@unload.html
    - fi-snb-2520m:       [PASS][59] -> [FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-snb-2520m/igt@vgem_basic@unload.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-snb-2520m/igt@vgem_basic@unload.html
    - fi-ivb-3770:        [PASS][61] -> [FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-ivb-3770/igt@vgem_basic@unload.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-ivb-3770/igt@vgem_basic@unload.html
    - fi-glk-dsi:         [PASS][63] -> [FAIL][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-glk-dsi/igt@vgem_basic@unload.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-glk-dsi/igt@vgem_basic@unload.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@vgem_basic@unload:
    - {fi-kbl-7560u}:     [PASS][65] -> [FAIL][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-kbl-7560u/igt@vgem_basic@unload.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-kbl-7560u/igt@vgem_basic@unload.html
    - {fi-ehl-1}:         [PASS][67] -> [FAIL][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-ehl-1/igt@vgem_basic@unload.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-ehl-1/igt@vgem_basic@unload.html
    - {fi-tgl-dsi}:       [PASS][69] -> [FAIL][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-tgl-dsi/igt@vgem_basic@unload.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-tgl-dsi/igt@vgem_basic@unload.html

  
Known issues
------------

  Here are the changes found in Patchwork_18666 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-bxt-dsi:         [PASS][71] -> [DMESG-WARN][72] ([i915#1635] / [i915#1982])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-bxt-dsi/igt@i915_module_load@reload.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-bxt-dsi/igt@i915_module_load@reload.html

  * igt@prime_vgem@basic-fence-read:
    - fi-elk-e7500:       [PASS][73] -> [INCOMPLETE][74] ([i915#66]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html

  * igt@vgem_basic@unload:
    - fi-bxt-dsi:         [PASS][75] -> [FAIL][76] ([i915#1635])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-bxt-dsi/igt@vgem_basic@unload.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-bxt-dsi/igt@vgem_basic@unload.html
    - fi-apl-guc:         [PASS][77] -> [FAIL][78] ([i915#1635])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-apl-guc/igt@vgem_basic@unload.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-apl-guc/igt@vgem_basic@unload.html

  
#### Possible fixes ####

  * {igt@core_hotunplug@unbind-rebind}:
    - fi-kbl-x1275:       [DMESG-WARN][79] ([i915#62] / [i915#92] / [i915#95]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-kbl-x1275/igt@core_hotunplug@unbind-rebind.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-kbl-x1275/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [DMESG-WARN][81] ([i915#1982]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-n3050:       [DMESG-WARN][83] ([i915#1982]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-icl-u2:          [DMESG-WARN][85] ([i915#1982]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [DMESG-FAIL][87] ([i915#2203]) -> [DMESG-WARN][88] ([i915#2203])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@kms_flip@basic-plain-flip@a-dp1:
    - fi-kbl-x1275:       [DMESG-WARN][89] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][90] ([i915#62] / [i915#92]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-kbl-x1275/igt@kms_flip@basic-plain-flip@a-dp1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-kbl-x1275/igt@kms_flip@basic-plain-flip@a-dp1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][91] ([i915#62] / [i915#92]) -> [DMESG-WARN][92] ([i915#62] / [i915#92] / [i915#95]) +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@vgem_basic@unload:
    - fi-skl-guc:         [DMESG-WARN][93] ([i915#2203]) -> [DMESG-FAIL][94] ([i915#2203])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-skl-guc/igt@vgem_basic@unload.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-skl-guc/igt@vgem_basic@unload.html
    - fi-kbl-guc:         [DMESG-WARN][95] ([i915#2203]) -> [DMESG-FAIL][96] ([i915#2203])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-kbl-guc/igt@vgem_basic@unload.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-kbl-guc/igt@vgem_basic@unload.html
    - fi-kbl-x1275:       [DMESG-WARN][97] ([i915#95]) -> [DMESG-FAIL][98] ([i915#62])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-kbl-x1275/igt@vgem_basic@unload.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-kbl-x1275/igt@vgem_basic@unload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (46 -> 39)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9119 -> Patchwork_18666

  CI-20190529: 20190529
  CI_DRM_9119: a3e5da35ec06db35cface113da3befab8e00e03a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5806: 6adb80cd84310b6d90a5259768d03ebb2c30fe50 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18666: bb53064b196fd3ab9c21ba669ba4eb3467cac3c1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bb53064b196f drm/vgem: Replace vgem_object_funcs with the common drm shmem helper

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/index.html

--===============0774512081763385334==
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
<tr><td><b>Series:</b></td><td>drm/vgem: Replace vgem_object_funcs with the common drm shmem helper</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82509/">https://patchwork.freedesktop.org/series/82509/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9119 -&gt; Patchwork_18666</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18666 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18666, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18666:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-byt-j1900/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-byt-j1900/igt@prime_vgem@basic-fence-mmap.html">FAIL</a> +4 similar issues</p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-blb-e6850/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-blb-e6850/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a> +1 similar issue</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-ilk-650/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-ilk-650/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a> +1 similar issue</p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-byt-j1900/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-byt-j1900/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-ilk-650/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-ilk-650/igt@prime_vgem@basic-gtt.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-elk-e7500/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-elk-e7500/igt@prime_vgem@basic-gtt.html">FAIL</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-bwr-2160/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-bwr-2160/igt@prime_vgem@basic-read.html">FAIL</a> +5 similar issues</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-bsw-kefka/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-bsw-kefka/igt@prime_vgem@basic-read.html">FAIL</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-bsw-n3050/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-bsw-n3050/igt@prime_vgem@basic-write.html">FAIL</a> +5 similar issues</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-pnv-d510/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-pnv-d510/igt@prime_vgem@basic-write.html">FAIL</a> +5 similar issues</p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-blb-e6850/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-blb-e6850/igt@prime_vgem@basic-write.html">FAIL</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-cml-s/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-cml-s/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-cfl-guc/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-cfl-guc/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-tgl-u2/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-tgl-u2/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-hsw-4770/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-hsw-4770/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-cml-u2/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-cml-u2/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-snb-2600/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-snb-2600/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-gdg-551:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-gdg-551/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-gdg-551/igt@vgem_basic@unload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-skl-lmem/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-skl-lmem/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-cfl-8109u/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-cfl-8109u/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-bsw-nick/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-bsw-nick/igt@vgem_basic@unload.html">FAIL</a> +4 similar issues</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-bdw-5557u/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-bdw-5557u/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-kbl-r/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-kbl-r/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-kbl-7500u/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-kbl-7500u/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-icl-u2/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-icl-u2/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-skl-6600u/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-skl-6600u/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-icl-y/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-icl-y/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-cfl-8700k/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-cfl-8700k/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-snb-2520m/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-snb-2520m/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-ivb-3770/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-ivb-3770/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-glk-dsi/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-glk-dsi/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>
<p>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-kbl-7560u/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-kbl-7560u/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-ehl-1/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-ehl-1/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-tgl-dsi/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-tgl-dsi/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18666 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-bxt-dsi/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-bxt-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/66">i915#66</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-bxt-dsi/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-bxt-dsi/igt@vgem_basic@unload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-apl-guc/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-apl-guc/igt@vgem_basic@unload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>{igt@core_hotunplug@unbind-rebind}:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-kbl-x1275/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-kbl-x1275/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-dp1:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-kbl-x1275/igt@kms_flip@basic-plain-flip@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-kbl-x1275/igt@kms_flip@basic-plain-flip@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-skl-guc/igt@vgem_basic@unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-skl-guc/igt@vgem_basic@unload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-kbl-guc/igt@vgem_basic@unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-kbl-guc/igt@vgem_basic@unload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9119/fi-kbl-x1275/igt@vgem_basic@unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18666/fi-kbl-x1275/igt@vgem_basic@unload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 39)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9119 -&gt; Patchwork_18666</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9119: a3e5da35ec06db35cface113da3befab8e00e03a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5806: 6adb80cd84310b6d90a5259768d03ebb2c30fe50 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18666: bb53064b196fd3ab9c21ba669ba4eb3467cac3c1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>bb53064b196f drm/vgem: Replace vgem_object_funcs with the common drm shmem helper</p>

</body>
</html>

--===============0774512081763385334==--

--===============0009978560==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0009978560==--
