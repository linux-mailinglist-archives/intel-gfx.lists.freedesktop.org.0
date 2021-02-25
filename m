Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B78324F00
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Feb 2021 12:19:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FB366EC92;
	Thu, 25 Feb 2021 11:19:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3B30C6EC92;
 Thu, 25 Feb 2021 11:19:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 33809AA912;
 Thu, 25 Feb 2021 11:19:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Thu, 25 Feb 2021 11:19:44 -0000
Message-ID: <161425198418.7394.7194152131994222909@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210223105951.912577-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210223105951.912577-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_dma-buf=3A_Require_VM=5FPFNMAP_vma_?=
 =?utf-8?q?for_mmap_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1594226867=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1594226867==
Content-Type: multipart/alternative;
 boundary="===============9059224167294137795=="

--===============9059224167294137795==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] dma-buf: Require VM_PFNMAP vma for mmap (rev3)
URL   : https://patchwork.freedesktop.org/series/87313/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9804 -> Patchwork_19728
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19728 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19728, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19728:

### IGT changes ###

#### Possible regressions ####

  * igt@prime_vgem@basic-fence-mmap:
    - fi-byt-j1900:       [PASS][1] -> [FAIL][2] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-byt-j1900/igt@prime_vgem@basic-fence-mmap.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-byt-j1900/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - fi-bsw-kefka:       [PASS][3] -> [INCOMPLETE][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html
    - fi-ilk-650:         [PASS][5] -> [INCOMPLETE][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-ilk-650/igt@prime_vgem@basic-fence-read.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-ilk-650/igt@prime_vgem@basic-fence-read.html
    - fi-byt-j1900:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-byt-j1900/igt@prime_vgem@basic-fence-read.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-byt-j1900/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - fi-ilk-650:         [PASS][9] -> [FAIL][10] +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-ilk-650/igt@prime_vgem@basic-gtt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-ilk-650/igt@prime_vgem@basic-gtt.html
    - fi-elk-e7500:       [PASS][11] -> [FAIL][12] +5 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-elk-e7500/igt@prime_vgem@basic-gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-elk-e7500/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-read:
    - fi-bsw-nick:        [PASS][13] -> [FAIL][14] +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-bsw-nick/igt@prime_vgem@basic-read.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bsw-nick/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - fi-pnv-d510:        [PASS][15] -> [FAIL][16] +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-pnv-d510/igt@prime_vgem@basic-write.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-pnv-d510/igt@prime_vgem@basic-write.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-ilk-650/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-kbl-x1275/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bsw-kefka/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cfl-8700k/igt@runner@aborted.html
    - fi-tgl-y:           NOTRUN -> [FAIL][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-tgl-y/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-skl-6600u/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cfl-8109u/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bsw-nick/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-snb-2520m/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][26]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][28]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][29]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cml-u2/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][30]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][31]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bxt-dsi/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][32]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-elk-e7500/igt@runner@aborted.html
    - fi-cml-s:           NOTRUN -> [FAIL][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cml-s/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][34]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cfl-guc/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][35]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][36]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-skl-6700k2/igt@runner@aborted.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][37]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-tgl-u2/igt@runner@aborted.html

  * igt@vgem_basic@create:
    - fi-skl-6700k2:      [PASS][38] -> [FAIL][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-skl-6700k2/igt@vgem_basic@create.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-skl-6700k2/igt@vgem_basic@create.html
    - fi-glk-dsi:         [PASS][40] -> [FAIL][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-glk-dsi/igt@vgem_basic@create.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-glk-dsi/igt@vgem_basic@create.html
    - fi-kbl-x1275:       [PASS][42] -> [FAIL][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-kbl-x1275/igt@vgem_basic@create.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-kbl-x1275/igt@vgem_basic@create.html
    - fi-bsw-kefka:       [PASS][44] -> [FAIL][45] +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-bsw-kefka/igt@vgem_basic@create.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bsw-kefka/igt@vgem_basic@create.html
    - fi-snb-2600:        [PASS][46] -> [FAIL][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-snb-2600/igt@vgem_basic@create.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-snb-2600/igt@vgem_basic@create.html
    - fi-bdw-5557u:       [PASS][48] -> [FAIL][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-bdw-5557u/igt@vgem_basic@create.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bdw-5557u/igt@vgem_basic@create.html
    - fi-tgl-y:           [PASS][50] -> [FAIL][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-tgl-y/igt@vgem_basic@create.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-tgl-y/igt@vgem_basic@create.html
    - fi-skl-guc:         [PASS][52] -> [FAIL][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-skl-guc/igt@vgem_basic@create.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-skl-guc/igt@vgem_basic@create.html
    - fi-cfl-8109u:       [PASS][54] -> [FAIL][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-cfl-8109u/igt@vgem_basic@create.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cfl-8109u/igt@vgem_basic@create.html
    - fi-kbl-7500u:       [PASS][56] -> [FAIL][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-kbl-7500u/igt@vgem_basic@create.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-kbl-7500u/igt@vgem_basic@create.html
    - fi-kbl-guc:         [PASS][58] -> [FAIL][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-kbl-guc/igt@vgem_basic@create.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-kbl-guc/igt@vgem_basic@create.html
    - fi-cml-u2:          [PASS][60] -> [FAIL][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-cml-u2/igt@vgem_basic@create.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cml-u2/igt@vgem_basic@create.html
    - fi-cfl-8700k:       [PASS][62] -> [FAIL][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-cfl-8700k/igt@vgem_basic@create.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cfl-8700k/igt@vgem_basic@create.html
    - fi-bxt-dsi:         [PASS][64] -> [FAIL][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-bxt-dsi/igt@vgem_basic@create.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bxt-dsi/igt@vgem_basic@create.html
    - fi-hsw-4770:        [PASS][66] -> [FAIL][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-hsw-4770/igt@vgem_basic@create.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-hsw-4770/igt@vgem_basic@create.html
    - fi-snb-2520m:       [PASS][68] -> [FAIL][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-snb-2520m/igt@vgem_basic@create.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-snb-2520m/igt@vgem_basic@create.html
    - fi-cml-s:           [PASS][70] -> [FAIL][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-cml-s/igt@vgem_basic@create.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cml-s/igt@vgem_basic@create.html
    - fi-cfl-guc:         [PASS][72] -> [FAIL][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-cfl-guc/igt@vgem_basic@create.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cfl-guc/igt@vgem_basic@create.html
    - fi-kbl-soraka:      [PASS][74] -> [FAIL][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-kbl-soraka/igt@vgem_basic@create.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-kbl-soraka/igt@vgem_basic@create.html
    - fi-tgl-u2:          [PASS][76] -> [FAIL][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-tgl-u2/igt@vgem_basic@create.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-tgl-u2/igt@vgem_basic@create.html
    - fi-skl-6600u:       [PASS][78] -> [FAIL][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-skl-6600u/igt@vgem_basic@create.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-skl-6600u/igt@vgem_basic@create.html
    - fi-ivb-3770:        [PASS][80] -> [FAIL][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-ivb-3770/igt@vgem_basic@create.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-ivb-3770/igt@vgem_basic@create.html

  * igt@vgem_basic@dmabuf-mmap:
    - fi-ivb-3770:        [PASS][82] -> [DMESG-WARN][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html
    - fi-glk-dsi:         [PASS][84] -> [DMESG-WARN][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-glk-dsi/igt@vgem_basic@dmabuf-mmap.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-glk-dsi/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-soraka:      [PASS][86] -> [DMESG-WARN][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-kbl-soraka/igt@vgem_basic@dmabuf-mmap.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-kbl-soraka/igt@vgem_basic@dmabuf-mmap.html
    - fi-elk-e7500:       [PASS][88] -> [DMESG-WARN][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html
    - fi-skl-6700k2:      [PASS][90] -> [DMESG-WARN][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-skl-6700k2/igt@vgem_basic@dmabuf-mmap.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-skl-6700k2/igt@vgem_basic@dmabuf-mmap.html
    - fi-cml-s:           [PASS][92] -> [DMESG-WARN][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-cml-s/igt@vgem_basic@dmabuf-mmap.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cml-s/igt@vgem_basic@dmabuf-mmap.html
    - fi-cfl-guc:         [PASS][94] -> [DMESG-WARN][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html
    - fi-hsw-4770:        [PASS][96] -> [DMESG-WARN][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html
    - fi-ilk-650:         [PASS][98] -> [DMESG-WARN][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html
    - fi-tgl-u2:          [PASS][100] -> [DMESG-WARN][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-tgl-u2/igt@vgem_basic@dmabuf-mmap.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-tgl-u2/igt@vgem_basic@dmabuf-mmap.html
    - fi-byt-j1900:       [PASS][102] -> [DMESG-WARN][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-byt-j1900/igt@vgem_basic@dmabuf-mmap.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-byt-j1900/igt@vgem_basic@dmabuf-mmap.html
    - fi-pnv-d510:        [PASS][104] -> [DMESG-WARN][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html
    - fi-cml-u2:          [PASS][106] -> [DMESG-WARN][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-cml-u2/igt@vgem_basic@dmabuf-mmap.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cml-u2/igt@vgem_basic@dmabuf-mmap.html
    - fi-skl-6600u:       [PASS][108] -> [DMESG-WARN][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html
    - fi-bxt-dsi:         [PASS][110] -> [DMESG-WARN][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-bxt-dsi/igt@vgem_basic@dmabuf-mmap.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bxt-dsi/igt@vgem_basic@dmabuf-mmap.html
    - fi-cfl-8700k:       [PASS][112] -> [DMESG-WARN][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html
    - fi-snb-2520m:       [PASS][114] -> [DMESG-WARN][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-snb-2520m/igt@vgem_basic@dmabuf-mmap.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-snb-2520m/igt@vgem_basic@dmabuf-mmap.html
    - fi-cfl-8109u:       [PASS][116] -> [DMESG-WARN][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html
    - fi-bdw-5557u:       [PASS][118] -> [DMESG-WARN][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-bdw-5557u/igt@vgem_basic@dmabuf-mmap.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bdw-5557u/igt@vgem_basic@dmabuf-mmap.html
    - fi-bsw-nick:        [PASS][120] -> [DMESG-WARN][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html
    - fi-skl-guc:         [PASS][122] -> [DMESG-WARN][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-skl-guc/igt@vgem_basic@dmabuf-mmap.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-skl-guc/igt@vgem_basic@dmabuf-mmap.html
    - fi-bsw-kefka:       [PASS][124] -> [DMESG-WARN][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-bsw-kefka/igt@vgem_basic@dmabuf-mmap.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bsw-kefka/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-guc:         [PASS][126] -> [DMESG-WARN][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-7500u:       [PASS][128] -> [DMESG-WARN][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-kbl-7500u/igt@vgem_basic@dmabuf-mmap.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-kbl-7500u/igt@vgem_basic@dmabuf-mmap.html
    - fi-tgl-y:           [PASS][130] -> [DMESG-WARN][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-tgl-y/igt@vgem_basic@dmabuf-mmap.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-tgl-y/igt@vgem_basic@dmabuf-mmap.html
    - fi-snb-2600:        [PASS][132] -> [DMESG-WARN][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-snb-2600/igt@vgem_basic@dmabuf-mmap.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-snb-2600/igt@vgem_basic@dmabuf-mmap.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-rkl-11500t}:    NOTRUN -> [FAIL][134]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-rkl-11500t/igt@runner@aborted.html
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][135]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-jsl-1}:         NOTRUN -> [FAIL][136]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-jsl-1/igt@runner@aborted.html

  * igt@vgem_basic@create:
    - {fi-rkl-11500t}:    [PASS][137] -> [FAIL][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-rkl-11500t/igt@vgem_basic@create.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-rkl-11500t/igt@vgem_basic@create.html
    - {fi-ehl-2}:         NOTRUN -> [FAIL][139] +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-ehl-2/igt@vgem_basic@create.html
    - {fi-jsl-1}:         [PASS][140] -> [FAIL][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-jsl-1/igt@vgem_basic@create.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-jsl-1/igt@vgem_basic@create.html
    - {fi-tgl-dsi}:       [PASS][142] -> [FAIL][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-tgl-dsi/igt@vgem_basic@create.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-tgl-dsi/igt@vgem_basic@create.html
    - {fi-hsw-gt1}:       [PASS][144] -> [FAIL][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-hsw-gt1/igt@vgem_basic@create.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-hsw-gt1/igt@vgem_basic@create.html
    - {fi-ehl-1}:         [PASS][146] -> [FAIL][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-ehl-1/igt@vgem_basic@create.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-ehl-1/igt@vgem_basic@create.html

  * igt@vgem_basic@dmabuf-mmap:
    - {fi-ehl-1}:         [PASS][148] -> [DMESG-WARN][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-ehl-1/igt@vgem_basic@dmabuf-mmap.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-ehl-1/igt@vgem_basic@dmabuf-mmap.html
    - {fi-jsl-1}:         [PASS][150] -> [DMESG-WARN][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-jsl-1/igt@vgem_basic@dmabuf-mmap.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-jsl-1/igt@vgem_basic@dmabuf-mmap.html
    - {fi-hsw-gt1}:       [PASS][152] -> [DMESG-WARN][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-hsw-gt1/igt@vgem_basic@dmabuf-mmap.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-hsw-gt1/igt@vgem_basic@dmabuf-mmap.html
    - {fi-tgl-dsi}:       [PASS][154] -> [DMESG-WARN][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-tgl-dsi/igt@vgem_basic@dmabuf-mmap.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-tgl-dsi/igt@vgem_basic@dmabuf-mmap.html
    - {fi-ehl-2}:         NOTRUN -> [DMESG-WARN][156]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-ehl-2/igt@vgem_basic@dmabuf-mmap.html
    - {fi-rkl-11500t}:    [PASS][157] -> [DMESG-WARN][158]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-rkl-11500t/igt@vgem_basic@dmabuf-mmap.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-rkl-11500t/igt@vgem_basic@dmabuf-mmap.html

  
Known issues
------------

  Here are the changes found in Patchwork_19728 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][159] -> [DMESG-WARN][160] ([i915#402])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][161] ([i915#2403] / [i915#2505])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-pnv-d510/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][162] ([k.org#202321])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-glk-dsi/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][163] ([i915#2369])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bdw-5557u/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][164] ([i915#2505])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-hsw-4770/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][165] ([i915#698])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-snb-2600/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][166] ([i915#2505])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-byt-j1900/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [DMESG-WARN][167] ([i915#402]) -> [PASS][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#698]: https://gitlab.freedesktop.org/drm/intel/issues/698
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (42 -> 38)
------------------------------

  Additional (1): fi-ehl-2 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9804 -> Patchwork_19728

  CI-20190529: 20190529
  CI_DRM_9804: 0ed1d18cdc37ecf5e07f009a9788ea9ad74677a8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6015: aa44cddf4ef689f8a3726fcbeedc03f08b12bd82 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19728: 93fc58ee63d1e8a1289b265f4d6b75a18b222945 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

93fc58ee63d1 drm/vgem: use shmem helpers
b71cc38b23b9 dma-buf: Require VM_PFNMAP vma for mmap

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/index.html

--===============9059224167294137795==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] dma-buf: Require VM_PFNMAP vma for mmap (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87313/">https://patchwork.freedesktop.org/series/87313/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9804 -&gt; Patchwork_19728</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19728 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19728, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19728:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-byt-j1900/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-byt-j1900/igt@prime_vgem@basic-fence-mmap.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a> +1 similar issue</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-ilk-650/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-ilk-650/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a> +1 similar issue</p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-byt-j1900/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-byt-j1900/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-ilk-650/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-ilk-650/igt@prime_vgem@basic-gtt.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-elk-e7500/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-elk-e7500/igt@prime_vgem@basic-gtt.html">FAIL</a> +5 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-bsw-nick/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bsw-nick/igt@prime_vgem@basic-read.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-pnv-d510/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-pnv-d510/igt@prime_vgem@basic-write.html">FAIL</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-ilk-650/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-tgl-y/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-skl-6600u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bsw-nick/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-snb-2520m/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-kbl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cml-u2/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-ivb-3770/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-elk-e7500/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cml-s/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cfl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-skl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-tgl-u2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@create:</p>
<ul>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-skl-6700k2/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-skl-6700k2/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-glk-dsi/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-glk-dsi/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-kbl-x1275/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-kbl-x1275/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-bsw-kefka/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bsw-kefka/igt@vgem_basic@create.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-snb-2600/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-snb-2600/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-bdw-5557u/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bdw-5557u/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-tgl-y/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-tgl-y/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-skl-guc/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-skl-guc/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-cfl-8109u/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cfl-8109u/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-kbl-7500u/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-kbl-7500u/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-kbl-guc/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-kbl-guc/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-cml-u2/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cml-u2/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-cfl-8700k/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cfl-8700k/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-bxt-dsi/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bxt-dsi/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-hsw-4770/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-hsw-4770/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-snb-2520m/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-snb-2520m/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-cml-s/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cml-s/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-cfl-guc/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cfl-guc/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-kbl-soraka/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-kbl-soraka/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-tgl-u2/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-tgl-u2/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-skl-6600u/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-skl-6600u/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-ivb-3770/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-ivb-3770/igt@vgem_basic@create.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-mmap:</p>
<ul>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-glk-dsi/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-glk-dsi/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-kbl-soraka/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-kbl-soraka/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-skl-6700k2/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-skl-6700k2/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-cml-s/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cml-s/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-tgl-u2/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-tgl-u2/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-byt-j1900/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-byt-j1900/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-cml-u2/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cml-u2/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-bxt-dsi/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bxt-dsi/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-snb-2520m/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-snb-2520m/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-bdw-5557u/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bdw-5557u/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-skl-guc/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-skl-guc/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-bsw-kefka/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bsw-kefka/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-kbl-7500u/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-kbl-7500u/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-tgl-y/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-tgl-y/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-snb-2600/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-snb-2600/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
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
<p>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-rkl-11500t/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@create:</p>
<ul>
<li>
<p>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-rkl-11500t/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-rkl-11500t/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-ehl-2/igt@vgem_basic@create.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-jsl-1/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-jsl-1/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-tgl-dsi/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-tgl-dsi/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-hsw-gt1/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-hsw-gt1/igt@vgem_basic@create.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-ehl-1/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-ehl-1/igt@vgem_basic@create.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-mmap:</p>
<ul>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-ehl-1/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-ehl-1/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-jsl-1/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-jsl-1/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-hsw-gt1/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-hsw-gt1/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-tgl-dsi/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-tgl-dsi/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-ehl-2/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-rkl-11500t/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-rkl-11500t/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19728 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/698">i915#698</a>)</p>
</li>
<li>
<p>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-byt-j1900/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_vgem@basic-fence-flip:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9804/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19728/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 38)</h2>
<p>Additional (1): fi-ehl-2 <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9804 -&gt; Patchwork_19728</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9804: 0ed1d18cdc37ecf5e07f009a9788ea9ad74677a8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6015: aa44cddf4ef689f8a3726fcbeedc03f08b12bd82 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19728: 93fc58ee63d1e8a1289b265f4d6b75a18b222945 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>93fc58ee63d1 drm/vgem: use shmem helpers<br />
b71cc38b23b9 dma-buf: Require VM_PFNMAP vma for mmap</p>

</body>
</html>

--===============9059224167294137795==--

--===============1594226867==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1594226867==--
