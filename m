Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F68E392247
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 23:47:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26BCD8864B;
	Wed, 26 May 2021 21:47:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 74FA78864B;
 Wed, 26 May 2021 21:47:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6DFCCA7DFB;
 Wed, 26 May 2021 21:47:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 26 May 2021 21:47:29 -0000
Message-ID: <162206564942.13407.1075978001018374813@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210526144736.3277595-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210526144736.3277595-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_dma-buf=3A_Require_VM=5FPFNMAP_vma_?=
 =?utf-8?q?for_mmap?=
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
Content-Type: multipart/mixed; boundary="===============1955790333=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1955790333==
Content-Type: multipart/alternative;
 boundary="===============4776983074688896260=="

--===============4776983074688896260==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] dma-buf: Require VM_PFNMAP vma for mmap
URL   : https://patchwork.freedesktop.org/series/90615/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10138 -> Patchwork_20208
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20208 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20208, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20208:

### IGT changes ###

#### Possible regressions ####

  * igt@prime_vgem@basic-fence-mmap:
    - fi-bsw-nick:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bsw-nick/igt@prime_vgem@basic-fence-mmap.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bsw-nick/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - fi-bsw-kefka:       [PASS][3] -> [INCOMPLETE][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html
    - fi-ilk-650:         [PASS][5] -> [INCOMPLETE][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-ilk-650/igt@prime_vgem@basic-fence-read.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-ilk-650/igt@prime_vgem@basic-fence-read.html
    - fi-elk-e7500:       [PASS][7] -> [INCOMPLETE][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html
    - fi-bwr-2160:        [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bwr-2160/igt@prime_vgem@basic-fence-read.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bwr-2160/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - fi-ilk-650:         [PASS][11] -> [FAIL][12] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-ilk-650/igt@prime_vgem@basic-gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-ilk-650/igt@prime_vgem@basic-gtt.html
    - fi-elk-e7500:       [PASS][13] -> [FAIL][14] +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-elk-e7500/igt@prime_vgem@basic-gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-elk-e7500/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-read:
    - fi-bwr-2160:        [PASS][15] -> [FAIL][16] +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bwr-2160/igt@prime_vgem@basic-read.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bwr-2160/igt@prime_vgem@basic-read.html
    - fi-bsw-nick:        [PASS][17] -> [FAIL][18] +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bsw-nick/igt@prime_vgem@basic-read.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bsw-nick/igt@prime_vgem@basic-read.html
    - fi-bsw-kefka:       [PASS][19] -> [FAIL][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bsw-kefka/igt@prime_vgem@basic-read.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bsw-kefka/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - fi-pnv-d510:        [PASS][21] -> [FAIL][22] +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-pnv-d510/igt@prime_vgem@basic-write.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-pnv-d510/igt@prime_vgem@basic-write.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-ilk-650/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-snb-2520m/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-ivb-3770/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][26]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-elk-e7500/igt@runner@aborted.html

  * igt@vgem_basic@dmabuf-mmap:
    - fi-ivb-3770:        [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html
    - fi-glk-dsi:         [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-glk-dsi/igt@vgem_basic@dmabuf-mmap.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-glk-dsi/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-soraka:      [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-soraka/igt@vgem_basic@dmabuf-mmap.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-kbl-soraka/igt@vgem_basic@dmabuf-mmap.html
    - fi-elk-e7500:       [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html
    - fi-skl-6700k2:      [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-skl-6700k2/igt@vgem_basic@dmabuf-mmap.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-skl-6700k2/igt@vgem_basic@dmabuf-mmap.html
    - fi-cfl-guc:         [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html
    - fi-hsw-4770:        [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html
    - fi-ilk-650:         [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html
    - fi-tgl-u2:          [PASS][43] -> [DMESG-WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-tgl-u2/igt@vgem_basic@dmabuf-mmap.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-tgl-u2/igt@vgem_basic@dmabuf-mmap.html
    - fi-pnv-d510:        [PASS][45] -> [DMESG-WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html
    - fi-cml-u2:          [PASS][47] -> [DMESG-WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-cml-u2/igt@vgem_basic@dmabuf-mmap.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-cml-u2/igt@vgem_basic@dmabuf-mmap.html
    - fi-skl-6600u:       [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html
    - fi-icl-u2:          [PASS][51] -> [DMESG-WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-icl-u2/igt@vgem_basic@dmabuf-mmap.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-icl-u2/igt@vgem_basic@dmabuf-mmap.html
    - fi-cfl-8700k:       [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html
    - fi-snb-2520m:       [PASS][55] -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-snb-2520m/igt@vgem_basic@dmabuf-mmap.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-snb-2520m/igt@vgem_basic@dmabuf-mmap.html
    - fi-icl-y:           [PASS][57] -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-icl-y/igt@vgem_basic@dmabuf-mmap.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-icl-y/igt@vgem_basic@dmabuf-mmap.html
    - fi-cfl-8109u:       [PASS][59] -> [DMESG-WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-7567u:       [PASS][61] -> [DMESG-WARN][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-7567u/igt@vgem_basic@dmabuf-mmap.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-kbl-7567u/igt@vgem_basic@dmabuf-mmap.html
    - fi-bsw-nick:        [PASS][63] -> [DMESG-WARN][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-r:           [PASS][65] -> [DMESG-WARN][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-r/igt@vgem_basic@dmabuf-mmap.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-kbl-r/igt@vgem_basic@dmabuf-mmap.html
    - fi-bwr-2160:        [PASS][67] -> [DMESG-WARN][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bwr-2160/igt@vgem_basic@dmabuf-mmap.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bwr-2160/igt@vgem_basic@dmabuf-mmap.html
    - fi-bsw-kefka:       [PASS][69] -> [DMESG-WARN][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bsw-kefka/igt@vgem_basic@dmabuf-mmap.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bsw-kefka/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-guc:         [PASS][71] -> [DMESG-WARN][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-7500u:       [PASS][73] -> [DMESG-WARN][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-7500u/igt@vgem_basic@dmabuf-mmap.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-kbl-7500u/igt@vgem_basic@dmabuf-mmap.html
    - fi-tgl-y:           [PASS][75] -> [DMESG-WARN][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-tgl-y/igt@vgem_basic@dmabuf-mmap.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-tgl-y/igt@vgem_basic@dmabuf-mmap.html
    - fi-snb-2600:        [PASS][77] -> [DMESG-WARN][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-snb-2600/igt@vgem_basic@dmabuf-mmap.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-snb-2600/igt@vgem_basic@dmabuf-mmap.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-bsw-kefka:       [FAIL][79] ([fdo#109271] / [i915#1436]) -> [FAIL][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bsw-kefka/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bsw-kefka/igt@runner@aborted.html
    - fi-tgl-y:           [FAIL][81] ([i915#1436] / [i915#2966]) -> [FAIL][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-tgl-y/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-tgl-y/igt@runner@aborted.html
    - fi-bsw-nick:        [FAIL][83] ([fdo#109271] / [i915#1436]) -> [FAIL][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bsw-nick/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bsw-nick/igt@runner@aborted.html
    - fi-icl-y:           [FAIL][85] ([i915#2782]) -> [FAIL][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-icl-y/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-icl-y/igt@runner@aborted.html
    - fi-tgl-u2:          [FAIL][87] ([i915#1436] / [i915#2966]) -> [FAIL][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-tgl-u2/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-tgl-u2/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-rkl-11500t}:    [FAIL][89] ([i915#3462]) -> [FAIL][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-rkl-11500t/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-rkl-11500t/igt@runner@aborted.html
    - {fi-tgl-dsi}:       [FAIL][91] ([i915#1436] / [i915#2966]) -> [FAIL][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-tgl-dsi/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-jsl-1}:         [FAIL][93] ([i915#1222]) -> [FAIL][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-jsl-1/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-jsl-1/igt@runner@aborted.html
    - {fi-ehl-2}:         [FAIL][95] ([i915#1222]) -> [FAIL][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-ehl-2/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-ehl-2/igt@runner@aborted.html

  * igt@vgem_basic@dmabuf-mmap:
    - {fi-ehl-1}:         [PASS][97] -> [DMESG-WARN][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-ehl-1/igt@vgem_basic@dmabuf-mmap.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-ehl-1/igt@vgem_basic@dmabuf-mmap.html
    - {fi-jsl-1}:         [PASS][99] -> [DMESG-WARN][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-jsl-1/igt@vgem_basic@dmabuf-mmap.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-jsl-1/igt@vgem_basic@dmabuf-mmap.html
    - {fi-hsw-gt1}:       [PASS][101] -> [DMESG-WARN][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-hsw-gt1/igt@vgem_basic@dmabuf-mmap.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-hsw-gt1/igt@vgem_basic@dmabuf-mmap.html
    - {fi-tgl-dsi}:       [PASS][103] -> [DMESG-WARN][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-tgl-dsi/igt@vgem_basic@dmabuf-mmap.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-tgl-dsi/igt@vgem_basic@dmabuf-mmap.html
    - {fi-ehl-2}:         [PASS][105] -> [DMESG-WARN][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-ehl-2/igt@vgem_basic@dmabuf-mmap.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-ehl-2/igt@vgem_basic@dmabuf-mmap.html
    - {fi-rkl-11500t}:    [PASS][107] -> [DMESG-WARN][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-rkl-11500t/igt@vgem_basic@dmabuf-mmap.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-rkl-11500t/igt@vgem_basic@dmabuf-mmap.html

  
Known issues
------------

  Here are the changes found in Patchwork_20208 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_vgem@basic-fence-read:
    - fi-pnv-d510:        [PASS][109] -> [INCOMPLETE][110] ([i915#299])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-pnv-d510/igt@prime_vgem@basic-fence-read.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-pnv-d510/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-write:
    - fi-bsw-kefka:       [PASS][111] -> [FAIL][112] ([i915#3314])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bsw-kefka/igt@prime_vgem@basic-write.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bsw-kefka/igt@prime_vgem@basic-write.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][113] ([i915#2403] / [i915#2505])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-pnv-d510/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][114] ([i915#2505])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bwr-2160/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][115] ([i915#2505])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-hsw-4770/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][116] ([i915#698])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-snb-2600/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-x1275:       [FAIL][117] ([i915#1436] / [i915#3363]) -> [FAIL][118] ([i915#3363])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-x1275/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-kbl-x1275/igt@runner@aborted.html
    - fi-skl-6600u:       [FAIL][119] ([i915#1436] / [i915#3363]) -> [FAIL][120] ([i915#3363])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-skl-6600u/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-skl-6600u/igt@runner@aborted.html
    - fi-icl-u2:          [FAIL][121] ([i915#2426] / [i915#2782] / [i915#3363]) -> [FAIL][122] ([i915#3363])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-icl-u2/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-icl-u2/igt@runner@aborted.html
    - fi-glk-dsi:         [FAIL][123] ([i915#2426] / [i915#3363] / [k.org#202321]) -> [FAIL][124] ([i915#3363] / [k.org#202321])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-glk-dsi/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-glk-dsi/igt@runner@aborted.html
    - fi-kbl-r:           [FAIL][125] ([i915#1436] / [i915#3363]) -> [FAIL][126] ([i915#3363])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-r/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-kbl-r/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][127] ([i915#1436] / [i915#3363]) -> [FAIL][128] ([i915#3363])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-soraka/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7500u:       [FAIL][129] ([i915#1436] / [i915#3363]) -> [FAIL][130] ([i915#3363])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-7500u/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         [FAIL][131] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][132] ([i915#3363])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-guc/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-u2:          [FAIL][133] ([i915#2082] / [i915#2426] / [i915#3363] / [i915#3462]) -> [FAIL][134] ([i915#3363])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-cml-u2/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-cml-u2/igt@runner@aborted.html
    - fi-kbl-7567u:       [FAIL][135] ([i915#1436] / [i915#3363]) -> [FAIL][136] ([i915#3363])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-7567u/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-6700k2:      [FAIL][137] ([i915#1436] / [i915#3363]) -> [FAIL][138] ([i915#3363])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-skl-6700k2/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-skl-6700k2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#3314]: https://gitlab.freedesktop.org/drm/intel/issues/3314
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#698]: https://gitlab.freedesktop.org/drm/intel/issues/698
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-cml-drallion fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10138 -> Patchwork_20208

  CI-20190529: 20190529
  CI_DRM_10138: 041f69e539b30565783cd1298842cc269f5005cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6094: f62d8953c0bc5ed68ea978662e62f9dbb46cf101 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20208: 5e43991e6cc7a06a975518fef476e194d7abfa33 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5e43991e6cc7 drm/shmem-helper: Align to page size in dumb_create
36acbf8befae drm/vgem: use shmem helpers
9b58329fed19 dma-buf: Require VM_PFNMAP vma for mmap

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/index.html

--===============4776983074688896260==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] dma-buf: Require VM_PFNMAP vma for mmap</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90615/">https://patchwork.freedesktop.org/series/90615/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10138 -&gt; Patchwork_20208</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20208 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20208, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20208:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bsw-nick/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bsw-nick/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a> +1 similar issue</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-ilk-650/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-ilk-650/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a> +1 similar issue</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a> +1 similar issue</p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bwr-2160/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bwr-2160/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-ilk-650/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-ilk-650/igt@prime_vgem@basic-gtt.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-elk-e7500/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-elk-e7500/igt@prime_vgem@basic-gtt.html">FAIL</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bwr-2160/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bwr-2160/igt@prime_vgem@basic-read.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bsw-nick/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bsw-nick/igt@prime_vgem@basic-read.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bsw-kefka/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bsw-kefka/igt@prime_vgem@basic-read.html">FAIL</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-pnv-d510/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-pnv-d510/igt@prime_vgem@basic-write.html">FAIL</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-ilk-650/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-snb-2520m/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-ivb-3770/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-elk-e7500/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-mmap:</p>
<ul>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-glk-dsi/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-glk-dsi/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-soraka/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-kbl-soraka/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-skl-6700k2/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-skl-6700k2/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-tgl-u2/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-tgl-u2/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-cml-u2/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-cml-u2/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-icl-u2/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-icl-u2/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-snb-2520m/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-snb-2520m/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-icl-y/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-icl-y/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-7567u/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-kbl-7567u/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-r/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-kbl-r/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bwr-2160/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bwr-2160/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bsw-kefka/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bsw-kefka/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-7500u/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-kbl-7500u/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-tgl-y/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-tgl-y/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-snb-2600/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-snb-2600/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-tgl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2966">i915#2966</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-tgl-y/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bsw-nick/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-icl-y/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2966">i915#2966</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-tgl-u2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-rkl-11500t/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-rkl-11500t/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2966">i915#2966</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-jsl-1/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1222">i915#1222</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-ehl-2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1222">i915#1222</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-ehl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-mmap:</p>
<ul>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-ehl-1/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-ehl-1/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-jsl-1/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-jsl-1/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-hsw-gt1/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-hsw-gt1/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-tgl-dsi/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-tgl-dsi/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-ehl-2/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-ehl-2/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-rkl-11500t/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-rkl-11500t/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20208 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-pnv-d510/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-pnv-d510/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bsw-kefka/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bsw-kefka/igt@prime_vgem@basic-write.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3314">i915#3314</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-bwr-2160/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/698">i915#698</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20208/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-cml-drallion fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10138 -&gt; Patchwork_20208</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10138: 041f69e539b30565783cd1298842cc269f5005cb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6094: f62d8953c0bc5ed68ea978662e62f9dbb46cf101 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20208: 5e43991e6cc7a06a975518fef476e194d7abfa33 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5e43991e6cc7 drm/shmem-helper: Align to page size in dumb_create<br />
36acbf8befae drm/vgem: use shmem helpers<br />
9b58329fed19 dma-buf: Require VM_PFNMAP vma for mmap</p>

</body>
</html>

--===============4776983074688896260==--

--===============1955790333==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1955790333==--
