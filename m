Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 473EC3B8835
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 20:15:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86FEB6EA67;
	Wed, 30 Jun 2021 18:15:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 26E986EA66;
 Wed, 30 Jun 2021 18:15:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1FFCDA8830;
 Wed, 30 Jun 2021 18:15:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Wed, 30 Jun 2021 18:15:13 -0000
Message-ID: <162507691309.10377.16280507577978665896@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210630130701.349458-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210630130701.349458-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_dma-buf_fixes_for_migration?=
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
Content-Type: multipart/mixed; boundary="===============0196545510=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0196545510==
Content-Type: multipart/alternative;
 boundary="===============8948199023381539445=="

--===============8948199023381539445==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: dma-buf fixes for migration
URL   : https://patchwork.freedesktop.org/series/92070/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10295 -> Patchwork_20494
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20494 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20494, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20494:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@dmabuf:
    - fi-cfl-8700k:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html
    - fi-kbl-8809g:       [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-kbl-8809g/igt@i915_selftest@live@dmabuf.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-8809g/igt@i915_selftest@live@dmabuf.html
    - fi-glk-dsi:         [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-glk-dsi/igt@i915_selftest@live@dmabuf.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-glk-dsi/igt@i915_selftest@live@dmabuf.html
    - fi-snb-2520m:       [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-snb-2520m/igt@i915_selftest@live@dmabuf.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-snb-2520m/igt@i915_selftest@live@dmabuf.html
    - fi-bsw-kefka:       [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-bsw-kefka/igt@i915_selftest@live@dmabuf.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-bsw-kefka/igt@i915_selftest@live@dmabuf.html
    - fi-cfl-guc:         [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-cfl-guc/igt@i915_selftest@live@dmabuf.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-cfl-guc/igt@i915_selftest@live@dmabuf.html
    - fi-skl-6600u:       [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-skl-6600u/igt@i915_selftest@live@dmabuf.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-skl-6600u/igt@i915_selftest@live@dmabuf.html
    - fi-cml-s:           [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-cml-s/igt@i915_selftest@live@dmabuf.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-cml-s/igt@i915_selftest@live@dmabuf.html
    - fi-pnv-d510:        [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-pnv-d510/igt@i915_selftest@live@dmabuf.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-pnv-d510/igt@i915_selftest@live@dmabuf.html
    - fi-kbl-7567u:       [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-kbl-7567u/igt@i915_selftest@live@dmabuf.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-7567u/igt@i915_selftest@live@dmabuf.html
    - fi-icl-y:           [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-icl-y/igt@i915_selftest@live@dmabuf.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-icl-y/igt@i915_selftest@live@dmabuf.html
    - fi-ilk-650:         [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-ilk-650/igt@i915_selftest@live@dmabuf.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-ilk-650/igt@i915_selftest@live@dmabuf.html
    - fi-ivb-3770:        [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-ivb-3770/igt@i915_selftest@live@dmabuf.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-ivb-3770/igt@i915_selftest@live@dmabuf.html
    - fi-skl-6700k2:      [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-skl-6700k2/igt@i915_selftest@live@dmabuf.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-skl-6700k2/igt@i915_selftest@live@dmabuf.html
    - fi-elk-e7500:       [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-elk-e7500/igt@i915_selftest@live@dmabuf.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-elk-e7500/igt@i915_selftest@live@dmabuf.html
    - fi-bxt-dsi:         [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-bxt-dsi/igt@i915_selftest@live@dmabuf.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-bxt-dsi/igt@i915_selftest@live@dmabuf.html
    - fi-hsw-4770:        [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-hsw-4770/igt@i915_selftest@live@dmabuf.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-hsw-4770/igt@i915_selftest@live@dmabuf.html
    - fi-snb-2600:        [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-snb-2600/igt@i915_selftest@live@dmabuf.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-snb-2600/igt@i915_selftest@live@dmabuf.html
    - fi-bwr-2160:        [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-bwr-2160/igt@i915_selftest@live@dmabuf.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-bwr-2160/igt@i915_selftest@live@dmabuf.html
    - fi-kbl-soraka:      [PASS][39] -> [DMESG-FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-kbl-soraka/igt@i915_selftest@live@dmabuf.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-soraka/igt@i915_selftest@live@dmabuf.html
    - fi-bsw-nick:        [PASS][41] -> [DMESG-FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-bsw-nick/igt@i915_selftest@live@dmabuf.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-bsw-nick/igt@i915_selftest@live@dmabuf.html
    - fi-kbl-7500u:       [PASS][43] -> [DMESG-FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-kbl-7500u/igt@i915_selftest@live@dmabuf.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-7500u/igt@i915_selftest@live@dmabuf.html
    - fi-kbl-guc:         [PASS][45] -> [DMESG-FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-kbl-guc/igt@i915_selftest@live@dmabuf.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-guc/igt@i915_selftest@live@dmabuf.html
    - fi-cfl-8109u:       [PASS][47] -> [DMESG-FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-cfl-8109u/igt@i915_selftest@live@dmabuf.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-cfl-8109u/igt@i915_selftest@live@dmabuf.html
    - fi-kbl-r:           [PASS][49] -> [DMESG-FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-kbl-r/igt@i915_selftest@live@dmabuf.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-r/igt@i915_selftest@live@dmabuf.html

  * igt@runner@aborted:
    - fi-snb-2520m:       NOTRUN -> [FAIL][51]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-snb-2520m/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][52]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-snb-2600/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@dmabuf:
    - {fi-tgl-dsi}:       [PASS][53] -> [DMESG-FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-tgl-dsi/igt@i915_selftest@live@dmabuf.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-tgl-dsi/igt@i915_selftest@live@dmabuf.html
    - {fi-hsw-gt1}:       [PASS][55] -> [DMESG-FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-hsw-gt1/igt@i915_selftest@live@dmabuf.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-hsw-gt1/igt@i915_selftest@live@dmabuf.html
    - {fi-ehl-2}:         [PASS][57] -> [DMESG-FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-ehl-2/igt@i915_selftest@live@dmabuf.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-ehl-2/igt@i915_selftest@live@dmabuf.html
    - {fi-tgl-1115g4}:    [PASS][59] -> [DMESG-FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-tgl-1115g4/igt@i915_selftest@live@dmabuf.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-tgl-1115g4/igt@i915_selftest@live@dmabuf.html
    - {fi-jsl-1}:         [PASS][61] -> [DMESG-FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-jsl-1/igt@i915_selftest@live@dmabuf.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-jsl-1/igt@i915_selftest@live@dmabuf.html
    - {fi-dg1-1}:         [PASS][63] -> [DMESG-FAIL][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-dg1-1/igt@i915_selftest@live@dmabuf.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-dg1-1/igt@i915_selftest@live@dmabuf.html

  * igt@runner@aborted:
    - {fi-dg1-1}:         NOTRUN -> [FAIL][65]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-dg1-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_20494 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-cml-s:           [PASS][66] -> [DMESG-FAIL][67] ([i915#2291] / [i915#541])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-cml-s/igt@i915_selftest@live@gt_heartbeat.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-cml-s/igt@i915_selftest@live@gt_heartbeat.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][68] ([fdo#109271])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-ilk-650/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][69] ([fdo#109271] / [i915#2403] / [i915#2505])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-pnv-d510/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][70] ([fdo#109271] / [i915#1436])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-bsw-kefka/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][71] ([i915#3363])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-cfl-8700k/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][72] ([i915#1436] / [i915#3363])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-skl-6600u/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][73] ([i915#3363])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-cfl-8109u/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][74] ([i915#3363] / [k.org#202321])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-glk-dsi/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][75] ([fdo#109271] / [i915#1436])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][76] ([i915#1436] / [i915#3363])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-8809g/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][77] ([i915#1436] / [i915#3363])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-r/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][78] ([i915#1602] / [i915#2029])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-bdw-5557u/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][79] ([i915#2505])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-bwr-2160/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][80] ([i915#1436] / [i915#3363])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][81] ([fdo#109271] / [i915#1436] / [i915#2505])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][82] ([i915#1436] / [i915#3363])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][83] ([i915#1436] / [i915#3363])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-guc/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][84] ([fdo#109271])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][85] ([i915#3363])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-bxt-dsi/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][86] ([fdo#109271])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-elk-e7500/igt@runner@aborted.html
    - fi-cml-s:           NOTRUN -> [FAIL][87] ([i915#3363] / [i915#3462])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-cml-s/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][88] ([i915#3363])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-cfl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][89] ([i915#2782])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-icl-y/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][90] ([i915#1436] / [i915#3363])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][91] ([i915#1436] / [i915#3363])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-skl-6700k2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#3626]: https://gitlab.freedesktop.org/drm/intel/issues/3626
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (39 -> 36)
------------------------------

  Missing    (3): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10295 -> Patchwork_20494

  CI-20190529: 20190529
  CI_DRM_10295: 683b7f160eb6993ccfc19e67e3c7111f12946bea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6124: 357d5477c93f2bdd3354afe91b89ccfd4ee4fd56 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20494: bde352ace7ae5caa0350095bf3330bb5a783dba0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bde352ace7ae drm/i915/gem: Migrate to system at dma-buf map time
3b50433924c8 drm/i915/gem: Make our dma-buf exporter dynamic

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/index.html

--===============8948199023381539445==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: dma-buf fixes for migration</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92070/">https://patchwork.freedesktop.org/series/92070/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10295 -&gt; Patchwork_20494</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20494 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20494, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20494:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-kbl-8809g/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-8809g/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-glk-dsi/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-glk-dsi/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-snb-2520m/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-snb-2520m/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-bsw-kefka/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-bsw-kefka/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-cfl-guc/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-cfl-guc/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-skl-6600u/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-skl-6600u/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-cml-s/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-cml-s/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-pnv-d510/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-pnv-d510/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-kbl-7567u/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-7567u/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-icl-y/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-icl-y/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-ilk-650/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-ilk-650/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-ivb-3770/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-ivb-3770/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-skl-6700k2/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-skl-6700k2/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-elk-e7500/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-elk-e7500/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-bxt-dsi/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-bxt-dsi/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-hsw-4770/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-hsw-4770/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-snb-2600/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-snb-2600/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-bwr-2160/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-bwr-2160/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-kbl-soraka/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-soraka/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-bsw-nick/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-bsw-nick/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-kbl-7500u/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-7500u/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-kbl-guc/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-guc/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-cfl-8109u/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-cfl-8109u/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-kbl-r/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-r/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-snb-2520m/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-snb-2600/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-tgl-dsi/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-tgl-dsi/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-hsw-gt1/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-hsw-gt1/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-ehl-2/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-ehl-2/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-tgl-1115g4/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-tgl-1115g4/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-jsl-1/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-jsl-1/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-dg1-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-dg1-1/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-dg1-1/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{fi-dg1-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-dg1-1/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20494 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-cml-s/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-cml-s/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-bwr-2160/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-elk-e7500/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20494/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Missing    (3): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10295 -&gt; Patchwork_20494</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10295: 683b7f160eb6993ccfc19e67e3c7111f12946bea @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6124: 357d5477c93f2bdd3354afe91b89ccfd4ee4fd56 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20494: bde352ace7ae5caa0350095bf3330bb5a783dba0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>bde352ace7ae drm/i915/gem: Migrate to system at dma-buf map time<br />
3b50433924c8 drm/i915/gem: Make our dma-buf exporter dynamic</p>

</body>
</html>

--===============8948199023381539445==--

--===============0196545510==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0196545510==--
