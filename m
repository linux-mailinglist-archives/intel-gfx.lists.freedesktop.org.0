Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB9E35DFC2
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 15:09:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C98089B57;
	Tue, 13 Apr 2021 13:09:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E119489B27;
 Tue, 13 Apr 2021 13:09:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D6509A73C7;
 Tue, 13 Apr 2021 13:09:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 13 Apr 2021 13:09:28 -0000
Message-ID: <161831936887.8795.6353823941705166444@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210413094937.3736541-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210413094937.3736541-1-daniel.vetter@ffwll.ch>
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
Content-Type: multipart/mixed; boundary="===============1126882939=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1126882939==
Content-Type: multipart/alternative;
 boundary="===============8088422034422064192=="

--===============8088422034422064192==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] dma-buf: Require VM_PFNMAP vma for mmap
URL   : https://patchwork.freedesktop.org/series/89003/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9963 -> Patchwork_19923
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19923 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19923, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19923:

### IGT changes ###

#### Possible regressions ####

  * igt@prime_vgem@basic-fence-mmap:
    - fi-bwr-2160:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bwr-2160/igt@prime_vgem@basic-fence-mmap.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bwr-2160/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - fi-bsw-kefka:       [PASS][3] -> [INCOMPLETE][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html
    - fi-ilk-650:         [PASS][5] -> [INCOMPLETE][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-ilk-650/igt@prime_vgem@basic-fence-read.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-ilk-650/igt@prime_vgem@basic-fence-read.html
    - fi-elk-e7500:       [PASS][7] -> [INCOMPLETE][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html
    - fi-bsw-nick:        [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bsw-nick/igt@prime_vgem@basic-fence-read.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bsw-nick/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - fi-ilk-650:         [PASS][11] -> [FAIL][12] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-ilk-650/igt@prime_vgem@basic-gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-ilk-650/igt@prime_vgem@basic-gtt.html
    - fi-elk-e7500:       [PASS][13] -> [FAIL][14] +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-elk-e7500/igt@prime_vgem@basic-gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-elk-e7500/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-read:
    - fi-bwr-2160:        [PASS][15] -> [FAIL][16] +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bwr-2160/igt@prime_vgem@basic-read.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bwr-2160/igt@prime_vgem@basic-read.html
    - fi-bsw-nick:        [PASS][17] -> [FAIL][18] +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bsw-nick/igt@prime_vgem@basic-read.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bsw-nick/igt@prime_vgem@basic-read.html
    - fi-bsw-kefka:       [PASS][19] -> [FAIL][20] +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bsw-kefka/igt@prime_vgem@basic-read.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bsw-kefka/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - fi-pnv-d510:        [PASS][21] -> [FAIL][22] +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-pnv-d510/igt@prime_vgem@basic-write.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-pnv-d510/igt@prime_vgem@basic-write.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-ilk-650/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-x1275/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bsw-kefka/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][26]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-cfl-8700k/igt@runner@aborted.html
    - fi-tgl-y:           NOTRUN -> [FAIL][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-tgl-y/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][28]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-skl-6600u/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][29]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][30]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-icl-u2/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][31]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bsw-nick/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][32]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-snb-2520m/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-r/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][34]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bdw-5557u/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][35]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][36]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][37]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][38]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-cml-u2/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][39]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][40]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bxt-dsi/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][41]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-elk-e7500/igt@runner@aborted.html
    - fi-cml-s:           NOTRUN -> [FAIL][42]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-cml-s/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][43]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-cfl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][44]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-icl-y/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][45]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][46]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][47]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-skl-6700k2/igt@runner@aborted.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][48]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-tgl-u2/igt@runner@aborted.html

  * igt@vgem_basic@dmabuf-mmap:
    - fi-ivb-3770:        [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html
    - fi-glk-dsi:         [PASS][51] -> [DMESG-WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-glk-dsi/igt@vgem_basic@dmabuf-mmap.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-glk-dsi/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-soraka:      [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-kbl-soraka/igt@vgem_basic@dmabuf-mmap.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-soraka/igt@vgem_basic@dmabuf-mmap.html
    - fi-elk-e7500:       [PASS][55] -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html
    - fi-skl-6700k2:      [PASS][57] -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-skl-6700k2/igt@vgem_basic@dmabuf-mmap.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-skl-6700k2/igt@vgem_basic@dmabuf-mmap.html
    - fi-cml-s:           [PASS][59] -> [DMESG-WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-cml-s/igt@vgem_basic@dmabuf-mmap.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-cml-s/igt@vgem_basic@dmabuf-mmap.html
    - fi-cfl-guc:         [PASS][61] -> [DMESG-WARN][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html
    - fi-hsw-4770:        [PASS][63] -> [DMESG-WARN][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html
    - fi-ilk-650:         [PASS][65] -> [DMESG-WARN][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html
    - fi-tgl-u2:          [PASS][67] -> [DMESG-WARN][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-tgl-u2/igt@vgem_basic@dmabuf-mmap.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-tgl-u2/igt@vgem_basic@dmabuf-mmap.html
    - fi-pnv-d510:        [PASS][69] -> [DMESG-WARN][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html
    - fi-cml-u2:          [PASS][71] -> [DMESG-WARN][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-cml-u2/igt@vgem_basic@dmabuf-mmap.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-cml-u2/igt@vgem_basic@dmabuf-mmap.html
    - fi-skl-6600u:       [PASS][73] -> [DMESG-WARN][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html
    - fi-icl-u2:          [PASS][75] -> [DMESG-WARN][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-icl-u2/igt@vgem_basic@dmabuf-mmap.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-icl-u2/igt@vgem_basic@dmabuf-mmap.html
    - fi-bxt-dsi:         [PASS][77] -> [DMESG-WARN][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bxt-dsi/igt@vgem_basic@dmabuf-mmap.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bxt-dsi/igt@vgem_basic@dmabuf-mmap.html
    - fi-cfl-8700k:       [PASS][79] -> [DMESG-WARN][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html
    - fi-snb-2520m:       [PASS][81] -> [DMESG-WARN][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-snb-2520m/igt@vgem_basic@dmabuf-mmap.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-snb-2520m/igt@vgem_basic@dmabuf-mmap.html
    - fi-icl-y:           [PASS][83] -> [DMESG-WARN][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-icl-y/igt@vgem_basic@dmabuf-mmap.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-icl-y/igt@vgem_basic@dmabuf-mmap.html
    - fi-cfl-8109u:       [PASS][85] -> [DMESG-WARN][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-7567u:       [PASS][87] -> [DMESG-WARN][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-kbl-7567u/igt@vgem_basic@dmabuf-mmap.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-7567u/igt@vgem_basic@dmabuf-mmap.html
    - fi-bdw-5557u:       [PASS][89] -> [DMESG-WARN][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bdw-5557u/igt@vgem_basic@dmabuf-mmap.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bdw-5557u/igt@vgem_basic@dmabuf-mmap.html
    - fi-bsw-nick:        [PASS][91] -> [DMESG-WARN][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-8809g:       [PASS][93] -> [DMESG-WARN][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-kbl-8809g/igt@vgem_basic@dmabuf-mmap.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-8809g/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-r:           [PASS][95] -> [DMESG-WARN][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-kbl-r/igt@vgem_basic@dmabuf-mmap.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-r/igt@vgem_basic@dmabuf-mmap.html
    - fi-skl-guc:         [PASS][97] -> [DMESG-WARN][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-skl-guc/igt@vgem_basic@dmabuf-mmap.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-skl-guc/igt@vgem_basic@dmabuf-mmap.html
    - fi-bwr-2160:        [PASS][99] -> [DMESG-WARN][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bwr-2160/igt@vgem_basic@dmabuf-mmap.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bwr-2160/igt@vgem_basic@dmabuf-mmap.html
    - fi-bsw-kefka:       [PASS][101] -> [DMESG-WARN][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bsw-kefka/igt@vgem_basic@dmabuf-mmap.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bsw-kefka/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-guc:         [PASS][103] -> [DMESG-WARN][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-7500u:       [PASS][105] -> [DMESG-WARN][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-kbl-7500u/igt@vgem_basic@dmabuf-mmap.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-7500u/igt@vgem_basic@dmabuf-mmap.html
    - fi-tgl-y:           [PASS][107] -> [DMESG-WARN][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-tgl-y/igt@vgem_basic@dmabuf-mmap.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-tgl-y/igt@vgem_basic@dmabuf-mmap.html
    - fi-snb-2600:        [PASS][109] -> [DMESG-WARN][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-snb-2600/igt@vgem_basic@dmabuf-mmap.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-snb-2600/igt@vgem_basic@dmabuf-mmap.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][111] ([i915#2947]) -> [FAIL][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-kbl-8809g/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-8809g/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-rkl-11500t}:    NOTRUN -> [FAIL][113]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-rkl-11500t/igt@runner@aborted.html
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][114]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-jsl-1}:         NOTRUN -> [FAIL][115]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-jsl-1/igt@runner@aborted.html
    - {fi-ehl-2}:         NOTRUN -> [FAIL][116]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-ehl-2/igt@runner@aborted.html

  * igt@vgem_basic@dmabuf-mmap:
    - {fi-ehl-1}:         [PASS][117] -> [DMESG-WARN][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-ehl-1/igt@vgem_basic@dmabuf-mmap.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-ehl-1/igt@vgem_basic@dmabuf-mmap.html
    - {fi-jsl-1}:         [PASS][119] -> [DMESG-WARN][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-jsl-1/igt@vgem_basic@dmabuf-mmap.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-jsl-1/igt@vgem_basic@dmabuf-mmap.html
    - {fi-hsw-gt1}:       [PASS][121] -> [DMESG-WARN][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-hsw-gt1/igt@vgem_basic@dmabuf-mmap.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-hsw-gt1/igt@vgem_basic@dmabuf-mmap.html
    - {fi-tgl-dsi}:       [PASS][123] -> [DMESG-WARN][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-tgl-dsi/igt@vgem_basic@dmabuf-mmap.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-tgl-dsi/igt@vgem_basic@dmabuf-mmap.html
    - {fi-ehl-2}:         [PASS][125] -> [DMESG-WARN][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-ehl-2/igt@vgem_basic@dmabuf-mmap.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-ehl-2/igt@vgem_basic@dmabuf-mmap.html
    - {fi-rkl-11500t}:    [PASS][127] -> [DMESG-WARN][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-rkl-11500t/igt@vgem_basic@dmabuf-mmap.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-rkl-11500t/igt@vgem_basic@dmabuf-mmap.html

  
Known issues
------------

  Here are the changes found in Patchwork_19923 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_vgem@basic-fence-read:
    - fi-pnv-d510:        [PASS][129] -> [INCOMPLETE][130] ([i915#299])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-pnv-d510/igt@prime_vgem@basic-fence-read.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-pnv-d510/igt@prime_vgem@basic-fence-read.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][131] ([i915#2403] / [i915#2505])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-pnv-d510/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][132] ([k.org#202321])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-glk-dsi/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][133] ([i915#2505])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bwr-2160/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][134] ([i915#2505])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-hsw-4770/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][135] ([i915#698])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-snb-2600/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-soraka:      [DMESG-WARN][136] ([i915#1982] / [i915#262]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#2947]: https://gitlab.freedesktop.org/drm/intel/issues/2947
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#698]: https://gitlab.freedesktop.org/drm/intel/issues/698
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (47 -> 42)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9963 -> Patchwork_19923

  CI-20190529: 20190529
  CI_DRM_9963: f71c7917b4b6d6c093f1e65e62acd3360d96e63a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6063: d3b7f74ce5df6fdea03e490b7c64f0c6bfe76f03 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19923: 1f0d8b68a89402c2c91d3ade74cf1e38ecc5f793 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1f0d8b68a894 drm/shmem-helper: Align to page size in dumb_create
5961f2709211 drm/vgem: use shmem helpers
8ed494629919 dma-buf: Require VM_PFNMAP vma for mmap

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/index.html

--===============8088422034422064192==
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
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89003/">https://patchwork.freedesktop.org/series/89003/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9963 -&gt; Patchwork_19923</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19923 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19923, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19923:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bwr-2160/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bwr-2160/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a> +1 similar issue</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-ilk-650/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-ilk-650/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a> +1 similar issue</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a> +1 similar issue</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bsw-nick/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bsw-nick/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-ilk-650/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-ilk-650/igt@prime_vgem@basic-gtt.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-elk-e7500/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-elk-e7500/igt@prime_vgem@basic-gtt.html">FAIL</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bwr-2160/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bwr-2160/igt@prime_vgem@basic-read.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bsw-nick/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bsw-nick/igt@prime_vgem@basic-read.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bsw-kefka/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bsw-kefka/igt@prime_vgem@basic-read.html">FAIL</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-pnv-d510/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-pnv-d510/igt@prime_vgem@basic-write.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-ilk-650/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-tgl-y/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-skl-6600u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-icl-u2/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bsw-nick/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-snb-2520m/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-r/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-cml-u2/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-ivb-3770/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-elk-e7500/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-cml-s/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-cfl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-icl-y/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-skl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-tgl-u2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-mmap:</p>
<ul>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-glk-dsi/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-glk-dsi/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-kbl-soraka/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-soraka/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-skl-6700k2/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-skl-6700k2/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-cml-s/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-cml-s/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-tgl-u2/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-tgl-u2/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-cml-u2/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-cml-u2/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-icl-u2/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-icl-u2/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bxt-dsi/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bxt-dsi/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-snb-2520m/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-snb-2520m/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-icl-y/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-icl-y/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-kbl-7567u/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-7567u/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bdw-5557u/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bdw-5557u/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-kbl-8809g/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-8809g/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-kbl-r/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-r/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-skl-guc/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-skl-guc/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bwr-2160/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bwr-2160/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bsw-kefka/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bsw-kefka/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-kbl-7500u/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-7500u/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-tgl-y/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-tgl-y/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-snb-2600/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-snb-2600/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2947">i915#2947</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a></li>
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
<p>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-rkl-11500t/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-ehl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-mmap:</p>
<ul>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-ehl-1/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-ehl-1/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-jsl-1/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-jsl-1/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-hsw-gt1/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-hsw-gt1/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-tgl-dsi/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-tgl-dsi/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-ehl-2/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-ehl-2/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-rkl-11500t/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-rkl-11500t/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19923 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-pnv-d510/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-pnv-d510/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-bwr-2160/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/698">i915#698</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19923/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (47 -&gt; 42)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9963 -&gt; Patchwork_19923</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9963: f71c7917b4b6d6c093f1e65e62acd3360d96e63a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6063: d3b7f74ce5df6fdea03e490b7c64f0c6bfe76f03 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19923: 1f0d8b68a89402c2c91d3ade74cf1e38ecc5f793 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1f0d8b68a894 drm/shmem-helper: Align to page size in dumb_create<br />
5961f2709211 drm/vgem: use shmem helpers<br />
8ed494629919 dma-buf: Require VM_PFNMAP vma for mmap</p>

</body>
</html>

--===============8088422034422064192==--

--===============1126882939==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1126882939==--
