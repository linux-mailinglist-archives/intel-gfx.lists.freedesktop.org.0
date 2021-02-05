Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AFC31117D
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 20:50:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0EA96F4BA;
	Fri,  5 Feb 2021 19:50:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A8E576F4B9;
 Fri,  5 Feb 2021 19:50:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A16EA7DFC;
 Fri,  5 Feb 2021 19:50:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 05 Feb 2021 19:50:18 -0000
Message-ID: <161255461860.1863.4308714823582636131@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210203211948.2529297-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210203211948.2529297-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUkZD?=
 =?utf-8?q?=3A_dma-buf=3A_Require_VM=5FSPECIAL_vma_for_mmap_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1372529679=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1372529679==
Content-Type: multipart/alternative;
 boundary="===============1166430409005439504=="

--===============1166430409005439504==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: RFC: dma-buf: Require VM_SPECIAL vma for mmap (rev2)
URL   : https://patchwork.freedesktop.org/series/86667/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9740 -> Patchwork_19606
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19606 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19606, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19606:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-ilk-650/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-bsw-kefka/igt@runner@aborted.html
    - fi-tgl-y:           NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-tgl-y/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-bsw-nick/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-snb-2520m/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-ivb-3770/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-elk-e7500/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-bsw-n3050/igt@runner@aborted.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-tgl-u2/igt@runner@aborted.html

  * igt@vgem_basic@dmabuf-mmap:
    - fi-ivb-3770:        [PASS][10] -> [DMESG-WARN][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html
    - fi-glk-dsi:         [PASS][12] -> [DMESG-WARN][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-glk-dsi/igt@vgem_basic@dmabuf-mmap.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-glk-dsi/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-soraka:      [PASS][14] -> [DMESG-WARN][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-kbl-soraka/igt@vgem_basic@dmabuf-mmap.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-kbl-soraka/igt@vgem_basic@dmabuf-mmap.html
    - fi-elk-e7500:       [PASS][16] -> [DMESG-WARN][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html
    - fi-skl-6700k2:      [PASS][18] -> [DMESG-WARN][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-skl-6700k2/igt@vgem_basic@dmabuf-mmap.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-skl-6700k2/igt@vgem_basic@dmabuf-mmap.html
    - fi-cml-s:           [PASS][20] -> [DMESG-WARN][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-cml-s/igt@vgem_basic@dmabuf-mmap.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-cml-s/igt@vgem_basic@dmabuf-mmap.html
    - fi-cfl-guc:         [PASS][22] -> [DMESG-WARN][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html
    - fi-hsw-4770:        [PASS][24] -> [DMESG-WARN][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html
    - fi-bsw-n3050:       [PASS][26] -> [DMESG-WARN][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-bsw-n3050/igt@vgem_basic@dmabuf-mmap.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-bsw-n3050/igt@vgem_basic@dmabuf-mmap.html
    - fi-ilk-650:         [PASS][28] -> [DMESG-WARN][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html
    - fi-tgl-u2:          [PASS][30] -> [DMESG-WARN][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-tgl-u2/igt@vgem_basic@dmabuf-mmap.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-tgl-u2/igt@vgem_basic@dmabuf-mmap.html
    - fi-byt-j1900:       NOTRUN -> [DMESG-WARN][32]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-byt-j1900/igt@vgem_basic@dmabuf-mmap.html
    - fi-pnv-d510:        [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html
    - fi-cml-u2:          [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-cml-u2/igt@vgem_basic@dmabuf-mmap.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-cml-u2/igt@vgem_basic@dmabuf-mmap.html
    - fi-skl-6600u:       [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html
    - fi-bxt-dsi:         [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-bxt-dsi/igt@vgem_basic@dmabuf-mmap.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-bxt-dsi/igt@vgem_basic@dmabuf-mmap.html
    - fi-cfl-8700k:       [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html
    - fi-snb-2520m:       [PASS][43] -> [DMESG-WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-snb-2520m/igt@vgem_basic@dmabuf-mmap.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-snb-2520m/igt@vgem_basic@dmabuf-mmap.html
    - fi-icl-y:           [PASS][45] -> [DMESG-WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-icl-y/igt@vgem_basic@dmabuf-mmap.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-icl-y/igt@vgem_basic@dmabuf-mmap.html
    - fi-cfl-8109u:       [PASS][47] -> [DMESG-WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html
    - fi-bdw-5557u:       [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-bdw-5557u/igt@vgem_basic@dmabuf-mmap.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-bdw-5557u/igt@vgem_basic@dmabuf-mmap.html
    - fi-bsw-nick:        [PASS][51] -> [DMESG-WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-r:           [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-kbl-r/igt@vgem_basic@dmabuf-mmap.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-kbl-r/igt@vgem_basic@dmabuf-mmap.html
    - fi-skl-guc:         [PASS][55] -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-skl-guc/igt@vgem_basic@dmabuf-mmap.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-skl-guc/igt@vgem_basic@dmabuf-mmap.html
    - fi-bsw-kefka:       [PASS][57] -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-bsw-kefka/igt@vgem_basic@dmabuf-mmap.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-bsw-kefka/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-guc:         [PASS][59] -> [DMESG-WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-7500u:       [PASS][61] -> [DMESG-WARN][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-kbl-7500u/igt@vgem_basic@dmabuf-mmap.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-kbl-7500u/igt@vgem_basic@dmabuf-mmap.html
    - fi-tgl-y:           [PASS][63] -> [DMESG-WARN][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-tgl-y/igt@vgem_basic@dmabuf-mmap.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-tgl-y/igt@vgem_basic@dmabuf-mmap.html
    - fi-snb-2600:        [PASS][65] -> [DMESG-WARN][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-snb-2600/igt@vgem_basic@dmabuf-mmap.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-snb-2600/igt@vgem_basic@dmabuf-mmap.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][67]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-tgl-dsi/igt@runner@aborted.html

  * igt@vgem_basic@dmabuf-mmap:
    - {fi-ehl-1}:         [PASS][68] -> [DMESG-WARN][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-ehl-1/igt@vgem_basic@dmabuf-mmap.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-ehl-1/igt@vgem_basic@dmabuf-mmap.html
    - {fi-hsw-gt1}:       [PASS][70] -> [DMESG-WARN][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-hsw-gt1/igt@vgem_basic@dmabuf-mmap.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-hsw-gt1/igt@vgem_basic@dmabuf-mmap.html
    - {fi-tgl-dsi}:       [PASS][72] -> [DMESG-WARN][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-tgl-dsi/igt@vgem_basic@dmabuf-mmap.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-tgl-dsi/igt@vgem_basic@dmabuf-mmap.html
    - {fi-rkl-11500t}:    [PASS][74] -> [DMESG-WARN][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-rkl-11500t/igt@vgem_basic@dmabuf-mmap.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-rkl-11500t/igt@vgem_basic@dmabuf-mmap.html

  
Known issues
------------

  Here are the changes found in Patchwork_19606 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-byt-j1900:       NOTRUN -> [SKIP][76] ([fdo#109271]) +9 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-byt-j1900:       NOTRUN -> [SKIP][77] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][78] ([i915#2403] / [i915#2505])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-pnv-d510/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][79] ([i915#2295])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-kbl-x1275/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][80] ([i915#2295])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-cfl-8700k/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][81] ([i915#2295])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-skl-6600u/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][82] ([i915#2295])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-cfl-8109u/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][83] ([i915#2295] / [k.org#202321])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-glk-dsi/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][84] ([i915#2295])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-kbl-r/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][85] ([i915#2369])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-bdw-5557u/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][86] ([i915#2295])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][87] ([i915#2295] / [i915#2505])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][88] ([i915#2295])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][89] ([i915#2295])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-kbl-guc/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][90] ([i915#698])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-snb-2600/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][91] ([i915#2295])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-cml-u2/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][92] ([i915#2295])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-bxt-dsi/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][93] ([i915#2505])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-byt-j1900/igt@runner@aborted.html
    - fi-cml-s:           NOTRUN -> [FAIL][94] ([i915#2295])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-cml-s/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][95] ([i915#2295])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-cfl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][96] ([i915#2295] / [i915#2724])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-icl-y/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][97] ([i915#2295])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][98] ([i915#2295])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-skl-6700k2/igt@runner@aborted.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [PASS][99] -> [DMESG-WARN][100] ([i915#402]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-tgl-y/igt@vgem_basic@setversion.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-tgl-y/igt@vgem_basic@setversion.html

  
#### Possible fixes ####

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [DMESG-WARN][101] ([i915#402]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#698]: https://gitlab.freedesktop.org/drm/intel/issues/698
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (43 -> 38)
------------------------------

  Additional (1): fi-byt-j1900 
  Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9740 -> Patchwork_19606

  CI-20190529: 20190529
  CI_DRM_9740: d0d6b3dabc3c5f35990abedf7361eb27f7123f4d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5993: b1225ec25d5671a985c5bb48739111d2e8a723cf @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19606: a259cff180fc8c3bfcd3961ccfb3fd777f6fe12c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a259cff180fc RFC: dma-buf: Require VM_PFNMAP vma for mmap

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/index.html

--===============1166430409005439504==
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
<tr><td><b>Series:</b></td><td>RFC: dma-buf: Require VM_SPECIAL vma for mmap (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86667/">https://patchwork.freedesktop.org/series/86667/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9740 -&gt; Patchwork_19606</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19606 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19606, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19606:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-ilk-650/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-tgl-y/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-bsw-nick/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-snb-2520m/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-ivb-3770/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-elk-e7500/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-tgl-u2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-mmap:</p>
<ul>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-glk-dsi/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-glk-dsi/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-kbl-soraka/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-kbl-soraka/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-skl-6700k2/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-skl-6700k2/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-cml-s/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-cml-s/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-bsw-n3050/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-bsw-n3050/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-tgl-u2/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-tgl-u2/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-byt-j1900/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-cml-u2/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-cml-u2/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-bxt-dsi/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-bxt-dsi/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-snb-2520m/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-snb-2520m/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-icl-y/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-icl-y/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-bdw-5557u/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-bdw-5557u/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-kbl-r/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-kbl-r/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-skl-guc/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-skl-guc/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-bsw-kefka/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-bsw-kefka/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-kbl-7500u/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-kbl-7500u/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-tgl-y/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-tgl-y/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-snb-2600/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-snb-2600/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
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
<li>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-mmap:</p>
<ul>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-ehl-1/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-ehl-1/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-hsw-gt1/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-hsw-gt1/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-tgl-dsi/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-tgl-dsi/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-rkl-11500t/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-rkl-11500t/igt@vgem_basic@dmabuf-mmap.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19606 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/698">i915#698</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-byt-j1900/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@setversion:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-tgl-y/igt@vgem_basic@setversion.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-tgl-y/igt@vgem_basic@setversion.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_self_import@basic-with_one_bo_two_files:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19606/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Additional (1): fi-byt-j1900 <br />
  Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9740 -&gt; Patchwork_19606</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9740: d0d6b3dabc3c5f35990abedf7361eb27f7123f4d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5993: b1225ec25d5671a985c5bb48739111d2e8a723cf @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19606: a259cff180fc8c3bfcd3961ccfb3fd777f6fe12c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a259cff180fc RFC: dma-buf: Require VM_PFNMAP vma for mmap</p>

</body>
</html>

--===============1166430409005439504==--

--===============1372529679==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1372529679==--
