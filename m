Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 322363C7A75
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 02:11:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFE356E151;
	Wed, 14 Jul 2021 00:11:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB6F96E151;
 Wed, 14 Jul 2021 00:11:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E40D7A008A;
 Wed, 14 Jul 2021 00:11:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 14 Jul 2021 00:11:54 -0000
Message-ID: <162622151490.13709.14669032957381199325@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210713205153.1896059-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210713205153.1896059-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2ht?=
 =?utf-8?q?em_helpers_for_vgem_=28rev6=29?=
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
Content-Type: multipart/mixed; boundary="===============0273236171=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0273236171==
Content-Type: multipart/alternative;
 boundary="===============5207998238519047930=="

--===============5207998238519047930==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: shmem helpers for vgem (rev6)
URL   : https://patchwork.freedesktop.org/series/90670/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10343 -> Patchwork_20593
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20593 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20593, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20593:

### IGT changes ###

#### Possible regressions ####

  * igt@prime_vgem@basic-fence-mmap:
    - fi-skl-6700k2:      [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-skl-6700k2/igt@prime_vgem@basic-fence-mmap.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-skl-6700k2/igt@prime_vgem@basic-fence-mmap.html
    - fi-hsw-4770:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-hsw-4770/igt@prime_vgem@basic-fence-mmap.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-hsw-4770/igt@prime_vgem@basic-fence-mmap.html
    - fi-cfl-8700k:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-cfl-8700k/igt@prime_vgem@basic-fence-mmap.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-cfl-8700k/igt@prime_vgem@basic-fence-mmap.html
    - fi-bxt-dsi:         [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-bxt-dsi/igt@prime_vgem@basic-fence-mmap.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-bxt-dsi/igt@prime_vgem@basic-fence-mmap.html
    - fi-cml-u2:          [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-cml-u2/igt@prime_vgem@basic-fence-mmap.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-cml-u2/igt@prime_vgem@basic-fence-mmap.html
    - fi-elk-e7500:       [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-elk-e7500/igt@prime_vgem@basic-fence-mmap.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-elk-e7500/igt@prime_vgem@basic-fence-mmap.html
    - fi-ilk-650:         [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-ilk-650/igt@prime_vgem@basic-fence-mmap.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-ilk-650/igt@prime_vgem@basic-fence-mmap.html
    - fi-ivb-3770:        [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-ivb-3770/igt@prime_vgem@basic-fence-mmap.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-ivb-3770/igt@prime_vgem@basic-fence-mmap.html
    - fi-cfl-guc:         [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-cfl-guc/igt@prime_vgem@basic-fence-mmap.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-cfl-guc/igt@prime_vgem@basic-fence-mmap.html
    - fi-kbl-soraka:      [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-kbl-soraka/igt@prime_vgem@basic-fence-mmap.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-soraka/igt@prime_vgem@basic-fence-mmap.html
    - fi-tgl-y:           [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-tgl-y/igt@prime_vgem@basic-fence-mmap.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-tgl-y/igt@prime_vgem@basic-fence-mmap.html
    - fi-bsw-kefka:       [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-bsw-kefka/igt@prime_vgem@basic-fence-mmap.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-bsw-kefka/igt@prime_vgem@basic-fence-mmap.html
    - fi-kbl-x1275:       [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-kbl-x1275/igt@prime_vgem@basic-fence-mmap.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-x1275/igt@prime_vgem@basic-fence-mmap.html
    - fi-glk-dsi:         [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-glk-dsi/igt@prime_vgem@basic-fence-mmap.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-glk-dsi/igt@prime_vgem@basic-fence-mmap.html
    - fi-kbl-8809g:       [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-kbl-8809g/igt@prime_vgem@basic-fence-mmap.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-8809g/igt@prime_vgem@basic-fence-mmap.html
    - fi-icl-y:           [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-icl-y/igt@prime_vgem@basic-fence-mmap.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-icl-y/igt@prime_vgem@basic-fence-mmap.html
    - fi-kbl-guc:         [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-kbl-guc/igt@prime_vgem@basic-fence-mmap.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-guc/igt@prime_vgem@basic-fence-mmap.html
    - fi-bsw-nick:        [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-bsw-nick/igt@prime_vgem@basic-fence-mmap.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-bsw-nick/igt@prime_vgem@basic-fence-mmap.html
    - fi-kbl-7500u:       [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-kbl-7500u/igt@prime_vgem@basic-fence-mmap.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-7500u/igt@prime_vgem@basic-fence-mmap.html
    - fi-cfl-8109u:       [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-cfl-8109u/igt@prime_vgem@basic-fence-mmap.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-cfl-8109u/igt@prime_vgem@basic-fence-mmap.html
    - fi-bwr-2160:        [PASS][41] -> [INCOMPLETE][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-bwr-2160/igt@prime_vgem@basic-fence-mmap.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-bwr-2160/igt@prime_vgem@basic-fence-mmap.html
    - fi-bdw-5557u:       [PASS][43] -> [INCOMPLETE][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-bdw-5557u/igt@prime_vgem@basic-fence-mmap.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-bdw-5557u/igt@prime_vgem@basic-fence-mmap.html
    - fi-skl-guc:         [PASS][45] -> [INCOMPLETE][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-skl-guc/igt@prime_vgem@basic-fence-mmap.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-skl-guc/igt@prime_vgem@basic-fence-mmap.html
    - fi-kbl-7567u:       [PASS][47] -> [INCOMPLETE][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-kbl-7567u/igt@prime_vgem@basic-fence-mmap.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-7567u/igt@prime_vgem@basic-fence-mmap.html
    - fi-snb-2520m:       [PASS][49] -> [INCOMPLETE][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-snb-2520m/igt@prime_vgem@basic-fence-mmap.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-snb-2520m/igt@prime_vgem@basic-fence-mmap.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][51]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-ilk-650/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][52]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-snb-2520m/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][53]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-ivb-3770/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][54]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-elk-e7500/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@prime_vgem@basic-fence-mmap:
    - {fi-tgl-1115g4}:    [PASS][55] -> [INCOMPLETE][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-tgl-1115g4/igt@prime_vgem@basic-fence-mmap.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-tgl-1115g4/igt@prime_vgem@basic-fence-mmap.html
    - {fi-jsl-1}:         [PASS][57] -> [INCOMPLETE][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-jsl-1/igt@prime_vgem@basic-fence-mmap.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-jsl-1/igt@prime_vgem@basic-fence-mmap.html
    - {fi-ehl-2}:         [PASS][59] -> [INCOMPLETE][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-ehl-2/igt@prime_vgem@basic-fence-mmap.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-ehl-2/igt@prime_vgem@basic-fence-mmap.html
    - {fi-hsw-gt1}:       [PASS][61] -> [INCOMPLETE][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-hsw-gt1/igt@prime_vgem@basic-fence-mmap.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-hsw-gt1/igt@prime_vgem@basic-fence-mmap.html
    - {fi-tgl-dsi}:       [PASS][63] -> [INCOMPLETE][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-tgl-dsi/igt@prime_vgem@basic-fence-mmap.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-tgl-dsi/igt@prime_vgem@basic-fence-mmap.html

  * igt@runner@aborted:
    - {fi-ehl-2}:         NOTRUN -> [FAIL][65]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-ehl-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_20593 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_vgem@basic-fence-mmap:
    - fi-pnv-d510:        [PASS][66] -> [INCOMPLETE][67] ([i915#299])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-pnv-d510/igt@prime_vgem@basic-fence-mmap.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-pnv-d510/igt@prime_vgem@basic-fence-mmap.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][68] ([i915#2403] / [i915#2505] / [i915#2722])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-pnv-d510/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][69] ([i915#2722] / [i915#3363] / [i915#409])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-x1275/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][70] ([i915#2722])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-bsw-kefka/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][71] ([i915#2722] / [i915#3363] / [i915#409])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-cfl-8700k/igt@runner@aborted.html
    - fi-tgl-y:           NOTRUN -> [FAIL][72] ([i915#2722] / [i915#409])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-tgl-y/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][73] ([i915#2722] / [i915#3363] / [i915#409])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-cfl-8109u/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][74] ([i915#2722] / [i915#3363] / [i915#409] / [k.org#202321])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-glk-dsi/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][75] ([i915#2722])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][76] ([i915#2722] / [i915#3363] / [i915#409])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-8809g/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][77] ([i915#2722])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-bdw-5557u/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][78] ([i915#2505] / [i915#2722])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-bwr-2160/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][79] ([i915#2722] / [i915#3363] / [i915#409])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][80] ([i915#2505] / [i915#2722])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][81] ([i915#2722] / [i915#3363] / [i915#409])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][82] ([i915#2722] / [i915#3363] / [i915#409])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][83] ([i915#2722] / [i915#3363] / [i915#409])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-cml-u2/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][84] ([i915#2722] / [i915#3363] / [i915#409])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-bxt-dsi/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][85] ([i915#2722] / [i915#3363] / [i915#409])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-cfl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][86] ([i915#409])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-icl-y/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][87] ([i915#2722] / [i915#3363] / [i915#409])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][88] ([i915#2722] / [i915#3363] / [i915#409])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][89] ([i915#2722] / [i915#3363] / [i915#409])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-skl-6700k2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (39 -> 36)
------------------------------

  Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * IGT: IGT_6137 -> IGTPW_6018
  * Linux: CI_DRM_10343 -> Patchwork_20593

  CI-20190529: 20190529
  CI_DRM_10343: 5b5a6e26ea2a5dc93aba918c28159c46a1cb3b02 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_6018: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6018/index.html
  IGT_6137: 2fee489255f7a8cd6a584373c30e3d44a07a78ea @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20593: 2fb90a33618a73f3ba8024460210bd520f60a6e7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2fb90a33618a drm/vgem: use shmem helpers
7c9f29d37c9c drm/shmem-helpers: Allocate wc pages on x86
28388a6256a1 drm/shmem-helper: Switch to vmf_insert_pfn
00c2c63016d4 dma-buf: Require VM_PFNMAP vma for mmap

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/index.html

--===============5207998238519047930==
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
<tr><td><b>Series:</b></td><td>shmem helpers for vgem (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90670/">https://patchwork.freedesktop.org/series/90670/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10343 -&gt; Patchwork_20593</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20593 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20593, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20593:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-skl-6700k2/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-skl-6700k2/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-hsw-4770/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-hsw-4770/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-cfl-8700k/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-cfl-8700k/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-bxt-dsi/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-bxt-dsi/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-cml-u2/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-cml-u2/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-elk-e7500/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-elk-e7500/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-ilk-650/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-ilk-650/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-ivb-3770/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-ivb-3770/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-cfl-guc/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-cfl-guc/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-kbl-soraka/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-soraka/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-tgl-y/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-tgl-y/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-bsw-kefka/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-bsw-kefka/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-kbl-x1275/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-x1275/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-glk-dsi/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-glk-dsi/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-kbl-8809g/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-8809g/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-icl-y/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-icl-y/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-kbl-guc/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-guc/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-bsw-nick/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-bsw-nick/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-kbl-7500u/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-7500u/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-cfl-8109u/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-cfl-8109u/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-bwr-2160/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-bwr-2160/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-bdw-5557u/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-bdw-5557u/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-skl-guc/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-skl-guc/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-kbl-7567u/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-7567u/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-snb-2520m/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-snb-2520m/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-ilk-650/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-snb-2520m/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-ivb-3770/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-elk-e7500/igt@runner@aborted.html">FAIL</a></p>
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
<p>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-tgl-1115g4/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-tgl-1115g4/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-jsl-1/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-jsl-1/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-ehl-2/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-ehl-2/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-hsw-gt1/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-hsw-gt1/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-tgl-dsi/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-tgl-dsi/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-ehl-2/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20593 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-pnv-d510/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-pnv-d510/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>)</p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-tgl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-bwr-2160/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20593/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6137 -&gt; IGTPW_6018</li>
<li>Linux: CI_DRM_10343 -&gt; Patchwork_20593</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10343: 5b5a6e26ea2a5dc93aba918c28159c46a1cb3b02 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_6018: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6018/index.html<br />
  IGT_6137: 2fee489255f7a8cd6a584373c30e3d44a07a78ea @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20593: 2fb90a33618a73f3ba8024460210bd520f60a6e7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2fb90a33618a drm/vgem: use shmem helpers<br />
7c9f29d37c9c drm/shmem-helpers: Allocate wc pages on x86<br />
28388a6256a1 drm/shmem-helper: Switch to vmf_insert_pfn<br />
00c2c63016d4 dma-buf: Require VM_PFNMAP vma for mmap</p>

</body>
</html>

--===============5207998238519047930==--

--===============0273236171==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0273236171==--
