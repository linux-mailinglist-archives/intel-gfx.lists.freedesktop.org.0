Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E73B18A8BC
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 23:58:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B43896E989;
	Wed, 18 Mar 2020 22:58:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 02C016E985;
 Wed, 18 Mar 2020 22:58:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F035FA0118;
 Wed, 18 Mar 2020 22:58:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 18 Mar 2020 22:58:37 -0000
Message-ID: <158457231795.25102.12929076670536331182@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200318154959.9017-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200318154959.9017-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Reject_dumb_buffers_when_driver/device_doesn=27t_support_mo?=
 =?utf-8?q?desetting_=28rev2=29?=
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

Series: drm: Reject dumb buffers when driver/device doesn't support modesetting (rev2)
URL   : https://patchwork.freedesktop.org/series/74841/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8154 -> Patchwork_17015
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17015 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17015, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17015:

### IGT changes ###

#### Possible regressions ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-kbl-8809g:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-kbl-8809g/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@gem_ringfill@basic-default-forked:
    - fi-hsw-peppy:       [PASS][2] -> [FAIL][3] +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-hsw-peppy/igt@gem_ringfill@basic-default-forked.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-hsw-peppy/igt@gem_ringfill@basic-default-forked.html
    - fi-kbl-x1275:       [PASS][4] -> [FAIL][5] +18 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-kbl-x1275/igt@gem_ringfill@basic-default-forked.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-kbl-x1275/igt@gem_ringfill@basic-default-forked.html

  * igt@i915_selftest@live@blt:
    - fi-snb-2520m:       [PASS][6] -> [DMESG-FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-snb-2520m/igt@i915_selftest@live@blt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-snb-2520m/igt@i915_selftest@live@blt.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-kbl-7500u:       [PASS][8] -> [FAIL][9] +18 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-kbl-7500u/igt@prime_vgem@basic-fence-flip.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-kbl-7500u/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - fi-byt-j1900:       [PASS][10] -> [FAIL][11] +18 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-byt-j1900/igt@prime_vgem@basic-fence-mmap.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-byt-j1900/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - fi-bsw-kefka:       [PASS][12] -> [FAIL][13] +17 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html
    - fi-cml-s:           [PASS][14] -> [FAIL][15] +18 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-cml-s/igt@prime_vgem@basic-fence-read.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-cml-s/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-fence-wait-default:
    - fi-cfl-8109u:       [PASS][16] -> [FAIL][17] +18 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-cfl-8109u/igt@prime_vgem@basic-fence-wait-default.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-cfl-8109u/igt@prime_vgem@basic-fence-wait-default.html
    - fi-bsw-nick:        [PASS][18] -> [FAIL][19] +17 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-bsw-nick/igt@prime_vgem@basic-fence-wait-default.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-bsw-nick/igt@prime_vgem@basic-fence-wait-default.html

  * igt@prime_vgem@basic-gtt:
    - fi-ilk-650:         [PASS][20] -> [FAIL][21] +18 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-ilk-650/igt@prime_vgem@basic-gtt.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-ilk-650/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-read:
    - fi-kbl-guc:         [PASS][22] -> [FAIL][23] +17 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-kbl-guc/igt@prime_vgem@basic-read.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-kbl-guc/igt@prime_vgem@basic-read.html
    - fi-icl-guc:         [PASS][24] -> [FAIL][25] +18 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-icl-guc/igt@prime_vgem@basic-read.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-icl-guc/igt@prime_vgem@basic-read.html
    - fi-bwr-2160:        [PASS][26] -> [FAIL][27] +13 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-bwr-2160/igt@prime_vgem@basic-read.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-bwr-2160/igt@prime_vgem@basic-read.html
    - fi-bdw-5557u:       [PASS][28] -> [FAIL][29] +18 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-bdw-5557u/igt@prime_vgem@basic-read.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-bdw-5557u/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-sync-default:
    - fi-hsw-4770:        [PASS][30] -> [FAIL][31] +18 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-hsw-4770/igt@prime_vgem@basic-sync-default.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-hsw-4770/igt@prime_vgem@basic-sync-default.html
    - fi-bxt-dsi:         [PASS][32] -> [FAIL][33] +18 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-bxt-dsi/igt@prime_vgem@basic-sync-default.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-bxt-dsi/igt@prime_vgem@basic-sync-default.html
    - fi-cml-u2:          [PASS][34] -> [FAIL][35] +18 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-cml-u2/igt@prime_vgem@basic-sync-default.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-cml-u2/igt@prime_vgem@basic-sync-default.html

  * igt@prime_vgem@basic-wait-default:
    - fi-icl-dsi:         [PASS][36] -> [FAIL][37] +18 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-icl-dsi/igt@prime_vgem@basic-wait-default.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-icl-dsi/igt@prime_vgem@basic-wait-default.html
    - fi-pnv-d510:        [PASS][38] -> [FAIL][39] +18 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-pnv-d510/igt@prime_vgem@basic-wait-default.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-pnv-d510/igt@prime_vgem@basic-wait-default.html

  * igt@prime_vgem@basic-write:
    - fi-skl-lmem:        [PASS][40] -> [FAIL][41] +18 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-skl-lmem/igt@prime_vgem@basic-write.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-skl-lmem/igt@prime_vgem@basic-write.html
    - fi-bsw-n3050:       [PASS][42] -> [FAIL][43] +17 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-bsw-n3050/igt@prime_vgem@basic-write.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-bsw-n3050/igt@prime_vgem@basic-write.html
    - fi-kbl-soraka:      [PASS][44] -> [FAIL][45] +18 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-kbl-soraka/igt@prime_vgem@basic-write.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-kbl-soraka/igt@prime_vgem@basic-write.html
    - fi-skl-6600u:       [PASS][46] -> [FAIL][47] +18 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-skl-6600u/igt@prime_vgem@basic-write.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-skl-6600u/igt@prime_vgem@basic-write.html

  * igt@vgem_basic@dmabuf-export:
    - fi-glk-dsi:         [PASS][48] -> [FAIL][49] +18 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-glk-dsi/igt@vgem_basic@dmabuf-export.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-glk-dsi/igt@vgem_basic@dmabuf-export.html
    - fi-apl-guc:         [PASS][50] -> [FAIL][51] +18 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-apl-guc/igt@vgem_basic@dmabuf-export.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-apl-guc/igt@vgem_basic@dmabuf-export.html
    - fi-kbl-8809g:       [PASS][52] -> [FAIL][53] +17 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-kbl-8809g/igt@vgem_basic@dmabuf-export.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-kbl-8809g/igt@vgem_basic@dmabuf-export.html
    - fi-snb-2520m:       [PASS][54] -> [FAIL][55] +17 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-snb-2520m/igt@vgem_basic@dmabuf-export.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-snb-2520m/igt@vgem_basic@dmabuf-export.html
    - fi-cfl-8700k:       [PASS][56] -> [FAIL][57] +18 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-cfl-8700k/igt@vgem_basic@dmabuf-export.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-cfl-8700k/igt@vgem_basic@dmabuf-export.html
    - fi-gdg-551:         [PASS][58] -> [FAIL][59] +13 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-gdg-551/igt@vgem_basic@dmabuf-export.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-gdg-551/igt@vgem_basic@dmabuf-export.html

  * igt@vgem_basic@dmabuf-fence:
    - fi-cfl-guc:         [PASS][60] -> [FAIL][61] +18 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-cfl-guc/igt@vgem_basic@dmabuf-fence.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-cfl-guc/igt@vgem_basic@dmabuf-fence.html
    - fi-skl-guc:         NOTRUN -> [FAIL][62] +18 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-skl-guc/igt@vgem_basic@dmabuf-fence.html

  * igt@vgem_basic@dmabuf-mmap:
    - fi-ivb-3770:        [PASS][63] -> [FAIL][64] +18 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html

  * igt@vgem_basic@mmap:
    - fi-skl-6700k2:      [PASS][65] -> [FAIL][66] +18 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-skl-6700k2/igt@vgem_basic@mmap.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-skl-6700k2/igt@vgem_basic@mmap.html
    - fi-elk-e7500:       [PASS][67] -> [FAIL][68] +18 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-elk-e7500/igt@vgem_basic@mmap.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-elk-e7500/igt@vgem_basic@mmap.html
    - fi-blb-e6850:       [PASS][69] -> [FAIL][70] +18 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-blb-e6850/igt@vgem_basic@mmap.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-blb-e6850/igt@vgem_basic@mmap.html
    - fi-icl-y:           [PASS][71] -> [FAIL][72] +18 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-icl-y/igt@vgem_basic@mmap.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-icl-y/igt@vgem_basic@mmap.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-kbl-8809g:       [DMESG-WARN][73] ([i915#1209]) -> [FAIL][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-kbl-8809g/igt@amdgpu/amd_prime@i915-to-amd.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-kbl-8809g/igt@amdgpu/amd_prime@i915-to-amd.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-hsw-peppy:       [SKIP][75] ([fdo#109271]) -> [FAIL][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-hsw-peppy/igt@prime_vgem@basic-fence-flip.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-hsw-peppy/igt@prime_vgem@basic-fence-flip.html
    - fi-bsw-kefka:       [SKIP][77] ([fdo#109271]) -> [FAIL][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-bsw-kefka/igt@prime_vgem@basic-fence-flip.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-bsw-kefka/igt@prime_vgem@basic-fence-flip.html
    - fi-snb-2520m:       [SKIP][79] ([fdo#109271]) -> [FAIL][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-snb-2520m/igt@prime_vgem@basic-fence-flip.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-snb-2520m/igt@prime_vgem@basic-fence-flip.html
    - fi-bsw-n3050:       [SKIP][81] ([fdo#109271]) -> [FAIL][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-bsw-n3050/igt@prime_vgem@basic-fence-flip.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-bsw-n3050/igt@prime_vgem@basic-fence-flip.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@prime_vgem@basic-fence-flip:
    - {fi-tgl-dsi}:       [PASS][83] -> [FAIL][84] +18 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-tgl-dsi/igt@prime_vgem@basic-fence-flip.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-tgl-dsi/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - {fi-tgl-u}:         [PASS][85] -> [FAIL][86] +18 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-tgl-u/igt@prime_vgem@basic-fence-mmap.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-tgl-u/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-write:
    - {fi-ehl-1}:         [PASS][87] -> [FAIL][88] +18 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-ehl-1/igt@prime_vgem@basic-write.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-ehl-1/igt@prime_vgem@basic-write.html

  * igt@vgem_basic@dmabuf-fence:
    - {fi-kbl-7560u}:     [PASS][89] -> [FAIL][90] +18 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-kbl-7560u/igt@vgem_basic@dmabuf-fence.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-kbl-7560u/igt@vgem_basic@dmabuf-fence.html

  
Known issues
------------

  Here are the changes found in Patchwork_17015 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [PASS][91] -> [DMESG-FAIL][92] ([fdo#108569])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-icl-y/igt@i915_selftest@live@execlists.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-icl-y/igt@i915_selftest@live@execlists.html
    - fi-cml-u2:          [PASS][93] -> [INCOMPLETE][94] ([i915#1430] / [i915#283] / [i915#656])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-cml-u2/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][95] -> [FAIL][96] ([i915#323])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@active:
    - {fi-tgl-dsi}:       [DMESG-FAIL][97] -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-tgl-dsi/igt@i915_selftest@live@active.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-tgl-dsi/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@execlists:
    - {fi-kbl-7560u}:     [INCOMPLETE][99] ([fdo#112259] / [i915#1430] / [i915#656]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-kbl-7560u/igt@i915_selftest@live@execlists.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/fi-kbl-7560u/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#1430]: https://gitlab.freedesktop.org/drm/intel/issues/1430
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (47 -> 40)
------------------------------

  Additional (1): fi-skl-guc 
  Missing    (8): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-snb-2600 fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8154 -> Patchwork_17015

  CI-20190529: 20190529
  CI_DRM_8154: 937a904e393752c47b8dfdeed993f04fd75af74d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5522: bd2b01af69c9720d54e68a8702a23e4ff3637746 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17015: 775151da89f986f40425eaf1c43867fe27764813 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

775151da89f9 drm: Reject dumb buffers when driver/device doesn't support modesetting

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17015/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
