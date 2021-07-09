Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E39ED3C28D7
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 20:08:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B7676E949;
	Fri,  9 Jul 2021 18:08:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A248D6E941;
 Fri,  9 Jul 2021 18:08:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9D66EA8836;
 Fri,  9 Jul 2021 18:08:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Fri, 09 Jul 2021 18:08:52 -0000
Message-ID: <162585413263.9811.8780614835361208235@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210709154256.12005-1-tzimmermann@suse.de>
In-Reply-To: <20210709154256.12005-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/vgem=3A_Restore_mmap_functionality?=
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
Content-Type: multipart/mixed; boundary="===============0504466149=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0504466149==
Content-Type: multipart/alternative;
 boundary="===============7003758768004592952=="

--===============7003758768004592952==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/vgem: Restore mmap functionality
URL   : https://patchwork.freedesktop.org/series/92373/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10326 -> Patchwork_20565
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20565 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20565, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20565:

### IGT changes ###

#### Possible regressions ####

  * igt@prime_vgem@basic-fence-mmap:
    - fi-hsw-4770:        [PASS][1] -> [CRASH][2] +6 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-hsw-4770/igt@prime_vgem@basic-fence-mmap.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-hsw-4770/igt@prime_vgem@basic-fence-mmap.html
    - fi-cfl-8700k:       [PASS][3] -> [CRASH][4] +6 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cfl-8700k/igt@prime_vgem@basic-fence-mmap.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cfl-8700k/igt@prime_vgem@basic-fence-mmap.html
    - fi-bxt-dsi:         [PASS][5] -> [CRASH][6] +6 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bxt-dsi/igt@prime_vgem@basic-fence-mmap.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bxt-dsi/igt@prime_vgem@basic-fence-mmap.html
    - fi-cml-u2:          [PASS][7] -> [CRASH][8] +6 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cml-u2/igt@prime_vgem@basic-fence-mmap.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cml-u2/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - fi-bsw-kefka:       [PASS][9] -> [CRASH][10] +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html
    - fi-cml-s:           [PASS][11] -> [CRASH][12] +6 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cml-s/igt@prime_vgem@basic-fence-read.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cml-s/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - fi-ilk-650:         [PASS][13] -> [CRASH][14] +6 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-ilk-650/igt@prime_vgem@basic-gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-ilk-650/igt@prime_vgem@basic-gtt.html
    - fi-cfl-guc:         [PASS][15] -> [CRASH][16] +6 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cfl-guc/igt@prime_vgem@basic-gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cfl-guc/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-read:
    - fi-kbl-guc:         [PASS][17] -> [CRASH][18] +6 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-guc/igt@prime_vgem@basic-read.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-guc/igt@prime_vgem@basic-read.html
    - fi-bwr-2160:        [PASS][19] -> [CRASH][20] +6 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bwr-2160/igt@prime_vgem@basic-read.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bwr-2160/igt@prime_vgem@basic-read.html
    - fi-kbl-r:           [PASS][21] -> [CRASH][22] +6 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-r/igt@prime_vgem@basic-read.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-r/igt@prime_vgem@basic-read.html
    - fi-kbl-8809g:       [PASS][23] -> [CRASH][24] +6 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-8809g/igt@prime_vgem@basic-read.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-8809g/igt@prime_vgem@basic-read.html
    - fi-bsw-nick:        [PASS][25] -> [CRASH][26] +6 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bsw-nick/igt@prime_vgem@basic-read.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bsw-nick/igt@prime_vgem@basic-read.html
    - fi-bdw-5557u:       NOTRUN -> [CRASH][27] +7 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bdw-5557u/igt@prime_vgem@basic-read.html
    - fi-cfl-8109u:       [PASS][28] -> [CRASH][29] +6 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cfl-8109u/igt@prime_vgem@basic-read.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cfl-8109u/igt@prime_vgem@basic-read.html
    - fi-skl-guc:         [PASS][30] -> [CRASH][31] +6 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-skl-guc/igt@prime_vgem@basic-read.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-skl-guc/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - fi-kbl-soraka:      [PASS][32] -> [CRASH][33] +6 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-soraka/igt@prime_vgem@basic-write.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-soraka/igt@prime_vgem@basic-write.html
    - fi-pnv-d510:        [PASS][34] -> [CRASH][35] +6 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-pnv-d510/igt@prime_vgem@basic-write.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-pnv-d510/igt@prime_vgem@basic-write.html
    - fi-skl-6600u:       [PASS][36] -> [CRASH][37] +6 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-skl-6600u/igt@prime_vgem@basic-write.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-skl-6600u/igt@prime_vgem@basic-write.html

  * igt@vgem_basic@dmabuf-mmap:
    - fi-ivb-3770:        [PASS][38] -> [CRASH][39] +6 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html
    - fi-glk-dsi:         [PASS][40] -> [CRASH][41] +6 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-glk-dsi/igt@vgem_basic@dmabuf-mmap.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-glk-dsi/igt@vgem_basic@dmabuf-mmap.html

  * igt@vgem_basic@mmap:
    - fi-skl-6700k2:      [PASS][42] -> [CRASH][43] +6 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-skl-6700k2/igt@vgem_basic@mmap.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-skl-6700k2/igt@vgem_basic@mmap.html
    - fi-elk-e7500:       [PASS][44] -> [CRASH][45] +6 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-elk-e7500/igt@vgem_basic@mmap.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-elk-e7500/igt@vgem_basic@mmap.html
    - fi-kbl-7567u:       [PASS][46] -> [CRASH][47] +6 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-7567u/igt@vgem_basic@mmap.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-7567u/igt@vgem_basic@mmap.html
    - fi-icl-y:           [PASS][48] -> [CRASH][49] +6 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-icl-y/igt@vgem_basic@mmap.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-icl-y/igt@vgem_basic@mmap.html
    - fi-snb-2520m:       [PASS][50] -> [CRASH][51] +6 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-snb-2520m/igt@vgem_basic@mmap.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-snb-2520m/igt@vgem_basic@mmap.html
    - fi-tgl-y:           [PASS][52] -> [CRASH][53] +6 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-tgl-y/igt@vgem_basic@mmap.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-tgl-y/igt@vgem_basic@mmap.html
    - fi-kbl-x1275:       [PASS][54] -> [CRASH][55] +6 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-x1275/igt@vgem_basic@mmap.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-x1275/igt@vgem_basic@mmap.html
    - fi-kbl-7500u:       [PASS][56] -> [CRASH][57] +6 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-7500u/igt@vgem_basic@mmap.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-7500u/igt@vgem_basic@mmap.html

  * igt@vgem_basic@unload:
    - fi-bdw-5557u:       NOTRUN -> [DMESG-WARN][58]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bdw-5557u/igt@vgem_basic@unload.html

  
#### Warnings ####

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        [SKIP][59] ([fdo#109271]) -> [CRASH][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-pnv-d510/igt@prime_vgem@basic-userptr.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-pnv-d510/igt@prime_vgem@basic-userptr.html
    - fi-tgl-y:           [SKIP][61] ([i915#3301]) -> [CRASH][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-tgl-y/igt@prime_vgem@basic-userptr.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-tgl-y/igt@prime_vgem@basic-userptr.html
    - fi-cfl-8700k:       [SKIP][63] ([fdo#109271]) -> [CRASH][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html
    - fi-skl-6600u:       [SKIP][65] ([fdo#109271]) -> [CRASH][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-skl-6600u/igt@prime_vgem@basic-userptr.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-skl-6600u/igt@prime_vgem@basic-userptr.html
    - fi-cml-s:           [SKIP][67] ([i915#3301]) -> [CRASH][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cml-s/igt@prime_vgem@basic-userptr.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cml-s/igt@prime_vgem@basic-userptr.html
    - fi-bsw-kefka:       [SKIP][69] ([fdo#109271]) -> [CRASH][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bsw-kefka/igt@prime_vgem@basic-userptr.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bsw-kefka/igt@prime_vgem@basic-userptr.html
    - fi-ilk-650:         [SKIP][71] ([fdo#109271]) -> [CRASH][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-ilk-650/igt@prime_vgem@basic-userptr.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-ilk-650/igt@prime_vgem@basic-userptr.html
    - fi-elk-e7500:       [SKIP][73] ([fdo#109271]) -> [CRASH][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-elk-e7500/igt@prime_vgem@basic-userptr.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-elk-e7500/igt@prime_vgem@basic-userptr.html
    - fi-kbl-7567u:       [SKIP][75] ([fdo#109271]) -> [CRASH][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-7567u/igt@prime_vgem@basic-userptr.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-7567u/igt@prime_vgem@basic-userptr.html
    - fi-skl-guc:         [SKIP][77] ([fdo#109271]) -> [CRASH][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-skl-guc/igt@prime_vgem@basic-userptr.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-skl-guc/igt@prime_vgem@basic-userptr.html
    - fi-cfl-guc:         [SKIP][79] ([fdo#109271]) -> [CRASH][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cfl-guc/igt@prime_vgem@basic-userptr.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cfl-guc/igt@prime_vgem@basic-userptr.html
    - fi-bxt-dsi:         [SKIP][81] ([fdo#109271]) -> [CRASH][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html
    - fi-ivb-3770:        [SKIP][83] ([fdo#109271]) -> [CRASH][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-ivb-3770/igt@prime_vgem@basic-userptr.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-ivb-3770/igt@prime_vgem@basic-userptr.html
    - fi-skl-6700k2:      [SKIP][85] ([fdo#109271]) -> [CRASH][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html
    - fi-icl-y:           [SKIP][87] ([i915#3301]) -> [CRASH][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-icl-y/igt@prime_vgem@basic-userptr.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-icl-y/igt@prime_vgem@basic-userptr.html
    - fi-cml-u2:          [SKIP][89] ([i915#3301]) -> [CRASH][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cml-u2/igt@prime_vgem@basic-userptr.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cml-u2/igt@prime_vgem@basic-userptr.html
    - fi-hsw-4770:        [SKIP][91] ([fdo#109271]) -> [CRASH][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-hsw-4770/igt@prime_vgem@basic-userptr.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-hsw-4770/igt@prime_vgem@basic-userptr.html
    - fi-kbl-7500u:       [SKIP][93] ([fdo#109271]) -> [CRASH][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html
    - fi-kbl-soraka:      [SKIP][95] ([fdo#109271]) -> [CRASH][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-soraka/igt@prime_vgem@basic-userptr.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-soraka/igt@prime_vgem@basic-userptr.html
    - fi-kbl-guc:         [SKIP][97] ([fdo#109271]) -> [CRASH][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-guc/igt@prime_vgem@basic-userptr.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-guc/igt@prime_vgem@basic-userptr.html
    - fi-kbl-8809g:       [SKIP][99] ([fdo#109271]) -> [CRASH][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-8809g/igt@prime_vgem@basic-userptr.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-8809g/igt@prime_vgem@basic-userptr.html
    - fi-kbl-r:           [SKIP][101] ([fdo#109271]) -> [CRASH][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-r/igt@prime_vgem@basic-userptr.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-r/igt@prime_vgem@basic-userptr.html
    - fi-cfl-8109u:       [SKIP][103] ([fdo#109271]) -> [CRASH][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html
    - fi-bsw-nick:        [SKIP][105] ([fdo#109271]) -> [CRASH][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bsw-nick/igt@prime_vgem@basic-userptr.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bsw-nick/igt@prime_vgem@basic-userptr.html
    - fi-glk-dsi:         [SKIP][107] ([fdo#109271]) -> [CRASH][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-glk-dsi/igt@prime_vgem@basic-userptr.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-glk-dsi/igt@prime_vgem@basic-userptr.html
    - fi-kbl-x1275:       [SKIP][109] ([fdo#109271]) -> [CRASH][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html
    - fi-snb-2520m:       [SKIP][111] ([fdo#109271]) -> [CRASH][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-snb-2520m/igt@prime_vgem@basic-userptr.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-snb-2520m/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       [FAIL][113] ([i915#1602] / [i915#2029]) -> [FAIL][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bdw-5557u/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bdw-5557u/igt@runner@aborted.html
    - fi-ivb-3770:        [FAIL][115] ([i915#3744]) -> [FAIL][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-ivb-3770/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-ivb-3770/igt@runner@aborted.html

  * igt@vgem_basic@unload:
    - fi-kbl-7567u:       [INCOMPLETE][117] ([i915#3744]) -> [DMESG-WARN][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-7567u/igt@vgem_basic@unload.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-7567u/igt@vgem_basic@unload.html
    - fi-cml-s:           [INCOMPLETE][119] ([i915#3744]) -> [DMESG-WARN][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cml-s/igt@vgem_basic@unload.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cml-s/igt@vgem_basic@unload.html
    - fi-elk-e7500:       [INCOMPLETE][121] ([i915#3744]) -> [DMESG-WARN][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-elk-e7500/igt@vgem_basic@unload.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-elk-e7500/igt@vgem_basic@unload.html
    - fi-skl-6700k2:      [INCOMPLETE][123] ([i915#3744]) -> [DMESG-WARN][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-skl-6700k2/igt@vgem_basic@unload.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-skl-6700k2/igt@vgem_basic@unload.html
    - fi-skl-guc:         [INCOMPLETE][125] ([i915#3744]) -> [DMESG-WARN][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-skl-guc/igt@vgem_basic@unload.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-skl-guc/igt@vgem_basic@unload.html
    - fi-cfl-guc:         [INCOMPLETE][127] ([i915#3744]) -> [DMESG-WARN][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cfl-guc/igt@vgem_basic@unload.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cfl-guc/igt@vgem_basic@unload.html
    - fi-hsw-4770:        [INCOMPLETE][129] ([i915#3744]) -> [DMESG-WARN][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-hsw-4770/igt@vgem_basic@unload.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-hsw-4770/igt@vgem_basic@unload.html
    - fi-ilk-650:         [INCOMPLETE][131] ([i915#3744]) -> [DMESG-WARN][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-ilk-650/igt@vgem_basic@unload.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-ilk-650/igt@vgem_basic@unload.html
    - fi-cml-u2:          [INCOMPLETE][133] ([i915#3744]) -> [DMESG-WARN][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cml-u2/igt@vgem_basic@unload.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cml-u2/igt@vgem_basic@unload.html
    - fi-bxt-dsi:         [INCOMPLETE][135] ([i915#3744]) -> [DMESG-WARN][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bxt-dsi/igt@vgem_basic@unload.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bxt-dsi/igt@vgem_basic@unload.html
    - fi-kbl-soraka:      [INCOMPLETE][137] ([i915#3744]) -> [DMESG-WARN][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-soraka/igt@vgem_basic@unload.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-soraka/igt@vgem_basic@unload.html
    - fi-cfl-8109u:       [INCOMPLETE][139] ([i915#3744]) -> [DMESG-WARN][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cfl-8109u/igt@vgem_basic@unload.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cfl-8109u/igt@vgem_basic@unload.html
    - fi-bsw-nick:        [INCOMPLETE][141] ([i915#3744]) -> [DMESG-WARN][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bsw-nick/igt@vgem_basic@unload.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bsw-nick/igt@vgem_basic@unload.html
    - fi-kbl-8809g:       [INCOMPLETE][143] ([i915#3744]) -> [DMESG-WARN][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-8809g/igt@vgem_basic@unload.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-8809g/igt@vgem_basic@unload.html
    - fi-kbl-r:           [INCOMPLETE][145] ([i915#3744]) -> [DMESG-WARN][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-r/igt@vgem_basic@unload.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-r/igt@vgem_basic@unload.html
    - fi-bwr-2160:        [INCOMPLETE][147] ([i915#3744]) -> [DMESG-WARN][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bwr-2160/igt@vgem_basic@unload.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bwr-2160/igt@vgem_basic@unload.html
    - fi-bsw-kefka:       [INCOMPLETE][149] ([i915#3744]) -> [INCOMPLETE][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bsw-kefka/igt@vgem_basic@unload.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bsw-kefka/igt@vgem_basic@unload.html
    - fi-kbl-guc:         [INCOMPLETE][151] ([i915#3744]) -> [DMESG-WARN][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-guc/igt@vgem_basic@unload.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-guc/igt@vgem_basic@unload.html
    - fi-kbl-7500u:       [INCOMPLETE][153] ([i915#3744]) -> [DMESG-WARN][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-7500u/igt@vgem_basic@unload.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-7500u/igt@vgem_basic@unload.html
    - fi-kbl-x1275:       [INCOMPLETE][155] ([i915#3744]) -> [DMESG-WARN][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-x1275/igt@vgem_basic@unload.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-x1275/igt@vgem_basic@unload.html
    - fi-skl-6600u:       [INCOMPLETE][157] ([i915#3744]) -> [DMESG-WARN][158]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-skl-6600u/igt@vgem_basic@unload.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-skl-6600u/igt@vgem_basic@unload.html
    - fi-tgl-y:           [INCOMPLETE][159] ([i915#3744]) -> [DMESG-WARN][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-tgl-y/igt@vgem_basic@unload.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-tgl-y/igt@vgem_basic@unload.html
    - fi-icl-y:           [INCOMPLETE][161] ([i915#3744]) -> [DMESG-WARN][162]
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-icl-y/igt@vgem_basic@unload.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-icl-y/igt@vgem_basic@unload.html
    - fi-cfl-8700k:       [INCOMPLETE][163] ([i915#3744]) -> [DMESG-WARN][164]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cfl-8700k/igt@vgem_basic@unload.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cfl-8700k/igt@vgem_basic@unload.html
    - fi-snb-2520m:       [INCOMPLETE][165] ([i915#3744]) -> [DMESG-WARN][166]
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-snb-2520m/igt@vgem_basic@unload.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-snb-2520m/igt@vgem_basic@unload.html
    - fi-ivb-3770:        [INCOMPLETE][167] ([i915#3744]) -> [DMESG-WARN][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-ivb-3770/igt@vgem_basic@unload.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-ivb-3770/igt@vgem_basic@unload.html
    - fi-glk-dsi:         [INCOMPLETE][169] ([i915#3744]) -> [DMESG-WARN][170]
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-glk-dsi/igt@vgem_basic@unload.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-glk-dsi/igt@vgem_basic@unload.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@prime_vgem@basic-fence-mmap:
    - {fi-tgl-1115g4}:    [PASS][171] -> [CRASH][172] +6 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-tgl-1115g4/igt@prime_vgem@basic-fence-mmap.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-tgl-1115g4/igt@prime_vgem@basic-fence-mmap.html
    - {fi-jsl-1}:         [PASS][173] -> [CRASH][174] +6 similar issues
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-jsl-1/igt@prime_vgem@basic-fence-mmap.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-jsl-1/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-userptr:
    - {fi-hsw-gt1}:       [SKIP][175] ([fdo#109271]) -> [CRASH][176]
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-hsw-gt1/igt@prime_vgem@basic-userptr.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-hsw-gt1/igt@prime_vgem@basic-userptr.html
    - {fi-ehl-2}:         [SKIP][177] ([i915#3301]) -> [CRASH][178]
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-ehl-2/igt@prime_vgem@basic-userptr.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-ehl-2/igt@prime_vgem@basic-userptr.html
    - {fi-tgl-1115g4}:    [SKIP][179] ([i915#3301]) -> [CRASH][180]
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html
    - {fi-jsl-1}:         [SKIP][181] ([i915#3301]) -> [CRASH][182]
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-jsl-1/igt@prime_vgem@basic-userptr.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-jsl-1/igt@prime_vgem@basic-userptr.html
    - {fi-tgl-dsi}:       [SKIP][183] ([i915#3301]) -> [CRASH][184]
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html

  * igt@prime_vgem@basic-write:
    - {fi-ehl-2}:         [PASS][185] -> [CRASH][186] +6 similar issues
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-ehl-2/igt@prime_vgem@basic-write.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-ehl-2/igt@prime_vgem@basic-write.html

  * igt@vgem_basic@mmap:
    - {fi-tgl-dsi}:       [PASS][187] -> [CRASH][188] +6 similar issues
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-tgl-dsi/igt@vgem_basic@mmap.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-tgl-dsi/igt@vgem_basic@mmap.html
    - {fi-hsw-gt1}:       [PASS][189] -> [CRASH][190] +6 similar issues
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-hsw-gt1/igt@vgem_basic@mmap.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-hsw-gt1/igt@vgem_basic@mmap.html

  * igt@vgem_basic@unload:
    - {fi-ehl-2}:         [INCOMPLETE][191] ([i915#3744]) -> [DMESG-WARN][192]
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-ehl-2/igt@vgem_basic@unload.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-ehl-2/igt@vgem_basic@unload.html
    - {fi-jsl-1}:         [INCOMPLETE][193] ([i915#3744]) -> [DMESG-WARN][194]
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-jsl-1/igt@vgem_basic@unload.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-jsl-1/igt@vgem_basic@unload.html
    - {fi-tgl-1115g4}:    [INCOMPLETE][195] ([i915#3744]) -> [DMESG-WARN][196]
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-tgl-1115g4/igt@vgem_basic@unload.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-tgl-1115g4/igt@vgem_basic@unload.html
    - {fi-hsw-gt1}:       [INCOMPLETE][197] ([i915#3744]) -> [DMESG-WARN][198]
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-hsw-gt1/igt@vgem_basic@unload.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-hsw-gt1/igt@vgem_basic@unload.html
    - {fi-tgl-dsi}:       [INCOMPLETE][199] ([i915#3744]) -> [DMESG-WARN][200]
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-tgl-dsi/igt@vgem_basic@unload.html
   [200]: https://intel-

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/index.html

--===============7003758768004592952==
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
<tr><td><b>Series:</b></td><td>drm/vgem: Restore mmap functionality</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92373/">https://patchwork.freedesktop.org/series/92373/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10326 -&gt; Patchwork_20565</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20565 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20565, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20565:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-hsw-4770/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-hsw-4770/igt@prime_vgem@basic-fence-mmap.html">CRASH</a> +6 similar issues</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cfl-8700k/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cfl-8700k/igt@prime_vgem@basic-fence-mmap.html">CRASH</a> +6 similar issues</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bxt-dsi/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bxt-dsi/igt@prime_vgem@basic-fence-mmap.html">CRASH</a> +6 similar issues</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cml-u2/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cml-u2/igt@prime_vgem@basic-fence-mmap.html">CRASH</a> +6 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html">CRASH</a> +6 similar issues</p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cml-s/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cml-s/igt@prime_vgem@basic-fence-read.html">CRASH</a> +6 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-ilk-650/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-ilk-650/igt@prime_vgem@basic-gtt.html">CRASH</a> +6 similar issues</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cfl-guc/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cfl-guc/igt@prime_vgem@basic-gtt.html">CRASH</a> +6 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-guc/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-guc/igt@prime_vgem@basic-read.html">CRASH</a> +6 similar issues</p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bwr-2160/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bwr-2160/igt@prime_vgem@basic-read.html">CRASH</a> +6 similar issues</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-r/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-r/igt@prime_vgem@basic-read.html">CRASH</a> +6 similar issues</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-8809g/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-8809g/igt@prime_vgem@basic-read.html">CRASH</a> +6 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bsw-nick/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bsw-nick/igt@prime_vgem@basic-read.html">CRASH</a> +6 similar issues</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bdw-5557u/igt@prime_vgem@basic-read.html">CRASH</a> +7 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cfl-8109u/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cfl-8109u/igt@prime_vgem@basic-read.html">CRASH</a> +6 similar issues</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-skl-guc/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-skl-guc/igt@prime_vgem@basic-read.html">CRASH</a> +6 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-soraka/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-soraka/igt@prime_vgem@basic-write.html">CRASH</a> +6 similar issues</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-pnv-d510/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-pnv-d510/igt@prime_vgem@basic-write.html">CRASH</a> +6 similar issues</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-skl-6600u/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-skl-6600u/igt@prime_vgem@basic-write.html">CRASH</a> +6 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-mmap:</p>
<ul>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html">CRASH</a> +6 similar issues</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-glk-dsi/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-glk-dsi/igt@vgem_basic@dmabuf-mmap.html">CRASH</a> +6 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@mmap:</p>
<ul>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-skl-6700k2/igt@vgem_basic@mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-skl-6700k2/igt@vgem_basic@mmap.html">CRASH</a> +6 similar issues</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-elk-e7500/igt@vgem_basic@mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-elk-e7500/igt@vgem_basic@mmap.html">CRASH</a> +6 similar issues</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-7567u/igt@vgem_basic@mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-7567u/igt@vgem_basic@mmap.html">CRASH</a> +6 similar issues</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-icl-y/igt@vgem_basic@mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-icl-y/igt@vgem_basic@mmap.html">CRASH</a> +6 similar issues</p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-snb-2520m/igt@vgem_basic@mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-snb-2520m/igt@vgem_basic@mmap.html">CRASH</a> +6 similar issues</p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-tgl-y/igt@vgem_basic@mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-tgl-y/igt@vgem_basic@mmap.html">CRASH</a> +6 similar issues</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-x1275/igt@vgem_basic@mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-x1275/igt@vgem_basic@mmap.html">CRASH</a> +6 similar issues</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-7500u/igt@vgem_basic@mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-7500u/igt@vgem_basic@mmap.html">CRASH</a> +6 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bdw-5557u/igt@vgem_basic@unload.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-tgl-y/igt@prime_vgem@basic-userptr.html">SKIP</a> ([i915#3301]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-tgl-y/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-skl-6600u/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-skl-6600u/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cml-s/igt@prime_vgem@basic-userptr.html">SKIP</a> ([i915#3301]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cml-s/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bsw-kefka/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bsw-kefka/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-ilk-650/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-ilk-650/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-elk-e7500/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-elk-e7500/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-7567u/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-7567u/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-skl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-skl-guc/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cfl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cfl-guc/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-ivb-3770/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-ivb-3770/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-icl-y/igt@prime_vgem@basic-userptr.html">SKIP</a> ([i915#3301]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-icl-y/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cml-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> ([i915#3301]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cml-u2/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-hsw-4770/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-hsw-4770/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-soraka/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-soraka/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-guc/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-8809g/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-8809g/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-r/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-r/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bsw-nick/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bsw-nick/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-glk-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-glk-dsi/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-snb-2520m/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-snb-2520m/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> ([i915#1602] / [i915#2029]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-ivb-3770/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-7567u/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-7567u/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cml-s/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cml-s/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-elk-e7500/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-elk-e7500/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-skl-6700k2/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-skl-6700k2/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-skl-guc/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-skl-guc/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cfl-guc/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cfl-guc/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-hsw-4770/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-hsw-4770/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-ilk-650/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-ilk-650/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cml-u2/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cml-u2/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bxt-dsi/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bxt-dsi/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-soraka/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-soraka/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cfl-8109u/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cfl-8109u/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bsw-nick/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bsw-nick/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-8809g/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-8809g/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-r/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-r/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bwr-2160/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bwr-2160/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bsw-kefka/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-bsw-kefka/igt@vgem_basic@unload.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-guc/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-guc/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-7500u/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-7500u/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-kbl-x1275/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-kbl-x1275/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-skl-6600u/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-skl-6600u/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-tgl-y/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-tgl-y/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-icl-y/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-icl-y/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-cfl-8700k/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-cfl-8700k/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-snb-2520m/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-snb-2520m/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-ivb-3770/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-ivb-3770/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-glk-dsi/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-glk-dsi/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>
<p>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-tgl-1115g4/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-tgl-1115g4/igt@prime_vgem@basic-fence-mmap.html">CRASH</a> +6 similar issues</p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-jsl-1/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-jsl-1/igt@prime_vgem@basic-fence-mmap.html">CRASH</a> +6 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-hsw-gt1/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-hsw-gt1/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-ehl-2/igt@prime_vgem@basic-userptr.html">SKIP</a> ([i915#3301]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-ehl-2/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html">SKIP</a> ([i915#3301]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-jsl-1/igt@prime_vgem@basic-userptr.html">SKIP</a> ([i915#3301]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-jsl-1/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a> ([i915#3301]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html">CRASH</a></p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-ehl-2/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-ehl-2/igt@prime_vgem@basic-write.html">CRASH</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@mmap:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-tgl-dsi/igt@vgem_basic@mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-tgl-dsi/igt@vgem_basic@mmap.html">CRASH</a> +6 similar issues</p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-hsw-gt1/igt@vgem_basic@mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-hsw-gt1/igt@vgem_basic@mmap.html">CRASH</a> +6 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-ehl-2/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-ehl-2/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-jsl-1/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-jsl-1/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-tgl-1115g4/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-tgl-1115g4/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-hsw-gt1/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20565/fi-hsw-gt1/igt@vgem_basic@unload.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-tgl-dsi/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744]) -&gt; <a href="https://intel-">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7003758768004592952==--

--===============0504466149==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0504466149==--
