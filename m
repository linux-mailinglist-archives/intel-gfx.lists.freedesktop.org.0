Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07924181F71
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 18:28:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 715AA6E9C9;
	Wed, 11 Mar 2020 17:28:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 855906E9C4;
 Wed, 11 Mar 2020 17:28:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7DA07A41FB;
 Wed, 11 Mar 2020 17:28:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 11 Mar 2020 17:28:10 -0000
Message-ID: <158394769051.13949.3989364609374171959@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200311125903.1982-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200311125903.1982-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Take_a_copy_of_the_engines_for_context=5Fbarrier?=
 =?utf-8?b?X3Rhc2sgKHJldjIp?=
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

Series: drm/i915/gem: Take a copy of the engines for context_barrier_task (rev2)
URL   : https://patchwork.freedesktop.org/series/74583/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8120 -> Patchwork_16928
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16928 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16928, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16928:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy-all:
    - fi-bsw-nick:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-bsw-nick/igt@gem_busy@busy-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-bsw-nick/igt@gem_busy@busy-all.html
    - fi-bdw-5557u:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-bdw-5557u/igt@gem_busy@busy-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-bdw-5557u/igt@gem_busy@busy-all.html
    - fi-kbl-8809g:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-kbl-8809g/igt@gem_busy@busy-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-kbl-8809g/igt@gem_busy@busy-all.html
    - fi-icl-guc:         [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-icl-guc/igt@gem_busy@busy-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-icl-guc/igt@gem_busy@busy-all.html
    - fi-skl-6770hq:      [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-skl-6770hq/igt@gem_busy@busy-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-skl-6770hq/igt@gem_busy@busy-all.html
    - fi-bsw-kefka:       [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-bsw-kefka/igt@gem_busy@busy-all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-bsw-kefka/igt@gem_busy@busy-all.html
    - fi-icl-dsi:         [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-icl-dsi/igt@gem_busy@busy-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-icl-dsi/igt@gem_busy@busy-all.html
    - fi-kbl-guc:         [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-kbl-guc/igt@gem_busy@busy-all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-kbl-guc/igt@gem_busy@busy-all.html
    - fi-kbl-7500u:       [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-kbl-7500u/igt@gem_busy@busy-all.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-kbl-7500u/igt@gem_busy@busy-all.html
    - fi-hsw-peppy:       [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-hsw-peppy/igt@gem_busy@busy-all.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-hsw-peppy/igt@gem_busy@busy-all.html
    - fi-pnv-d510:        [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-pnv-d510/igt@gem_busy@busy-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-pnv-d510/igt@gem_busy@busy-all.html
    - fi-icl-u2:          [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-icl-u2/igt@gem_busy@busy-all.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-icl-u2/igt@gem_busy@busy-all.html
    - fi-skl-6600u:       [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-skl-6600u/igt@gem_busy@busy-all.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-skl-6600u/igt@gem_busy@busy-all.html
    - fi-cfl-8700k:       [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-cfl-8700k/igt@gem_busy@busy-all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-cfl-8700k/igt@gem_busy@busy-all.html
    - fi-icl-y:           [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-icl-y/igt@gem_busy@busy-all.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-icl-y/igt@gem_busy@busy-all.html
    - fi-apl-guc:         [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-apl-guc/igt@gem_busy@busy-all.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-apl-guc/igt@gem_busy@busy-all.html
    - fi-ivb-3770:        [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-ivb-3770/igt@gem_busy@busy-all.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-ivb-3770/igt@gem_busy@busy-all.html
    - fi-glk-dsi:         [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-glk-dsi/igt@gem_busy@busy-all.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-glk-dsi/igt@gem_busy@busy-all.html
    - fi-blb-e6850:       [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-blb-e6850/igt@gem_busy@busy-all.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-blb-e6850/igt@gem_busy@busy-all.html
    - fi-cml-s:           [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-cml-s/igt@gem_busy@busy-all.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-cml-s/igt@gem_busy@busy-all.html
    - fi-skl-6700k2:      [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-skl-6700k2/igt@gem_busy@busy-all.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-skl-6700k2/igt@gem_busy@busy-all.html
    - fi-skl-guc:         [PASS][43] -> [DMESG-WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-skl-guc/igt@gem_busy@busy-all.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-skl-guc/igt@gem_busy@busy-all.html
    - fi-cfl-guc:         [PASS][45] -> [DMESG-WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-cfl-guc/igt@gem_busy@busy-all.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-cfl-guc/igt@gem_busy@busy-all.html
    - fi-hsw-4770:        [PASS][47] -> [DMESG-WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-hsw-4770/igt@gem_busy@busy-all.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-hsw-4770/igt@gem_busy@busy-all.html
    - fi-bsw-n3050:       [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-bsw-n3050/igt@gem_busy@busy-all.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-bsw-n3050/igt@gem_busy@busy-all.html
    - fi-ilk-650:         [PASS][51] -> [DMESG-WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-ilk-650/igt@gem_busy@busy-all.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-ilk-650/igt@gem_busy@busy-all.html
    - fi-cml-u2:          [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-cml-u2/igt@gem_busy@busy-all.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-cml-u2/igt@gem_busy@busy-all.html
    - fi-byt-j1900:       [PASS][55] -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-byt-j1900/igt@gem_busy@busy-all.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-byt-j1900/igt@gem_busy@busy-all.html
    - fi-snb-2600:        [PASS][57] -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-snb-2600/igt@gem_busy@busy-all.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-snb-2600/igt@gem_busy@busy-all.html
    - fi-bxt-dsi:         [PASS][59] -> [DMESG-WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-bxt-dsi/igt@gem_busy@busy-all.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-bxt-dsi/igt@gem_busy@busy-all.html
    - fi-cfl-8109u:       [PASS][61] -> [DMESG-WARN][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-cfl-8109u/igt@gem_busy@busy-all.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-cfl-8109u/igt@gem_busy@busy-all.html
    - fi-skl-lmem:        [PASS][63] -> [DMESG-WARN][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-skl-lmem/igt@gem_busy@busy-all.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-skl-lmem/igt@gem_busy@busy-all.html
    - fi-kbl-soraka:      [PASS][65] -> [DMESG-WARN][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-kbl-soraka/igt@gem_busy@busy-all.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-kbl-soraka/igt@gem_busy@busy-all.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][67]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-pnv-d510/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][68]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-cfl-8700k/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][69]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-cfl-8109u/igt@runner@aborted.html
    - fi-hsw-peppy:       NOTRUN -> [FAIL][70]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-hsw-peppy/igt@runner@aborted.html
    - fi-gdg-551:         NOTRUN -> [FAIL][71]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-gdg-551/igt@runner@aborted.html
    - fi-apl-guc:         NOTRUN -> [FAIL][72]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-apl-guc/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][73]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][74]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][75]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][76]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-kbl-guc/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][77]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-snb-2600/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][78]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-ivb-3770/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][79]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-byt-j1900/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][80]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-cfl-guc/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][81]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-blb-e6850/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][82] ([i915#1209]) -> [FAIL][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-kbl-8809g/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-kbl-8809g/igt@runner@aborted.html
    - fi-bxt-dsi:         [FAIL][84] ([i915#529]) -> [FAIL][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-bxt-dsi/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-bxt-dsi/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_busy@busy-all:
    - {fi-ehl-1}:         [PASS][86] -> [DMESG-WARN][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-ehl-1/igt@gem_busy@busy-all.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-ehl-1/igt@gem_busy@busy-all.html
    - {fi-tgl-dsi}:       [PASS][88] -> [DMESG-WARN][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-tgl-dsi/igt@gem_busy@busy-all.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-tgl-dsi/igt@gem_busy@busy-all.html
    - {fi-tgl-u}:         [PASS][90] -> [DMESG-WARN][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-tgl-u/igt@gem_busy@busy-all.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-tgl-u/igt@gem_busy@busy-all.html

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][92]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-ehl-1}:         NOTRUN -> [FAIL][93]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-ehl-1/igt@runner@aborted.html
    - {fi-tgl-u}:         NOTRUN -> [FAIL][94]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-tgl-u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16928 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-all:
    - fi-tgl-y:           [PASS][95] -> [DMESG-WARN][96] ([CI#94])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/fi-tgl-y/igt@gem_busy@busy-all.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/fi-tgl-y/igt@gem_busy@busy-all.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529


Participating hosts (49 -> 39)
------------------------------

  Missing    (10): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-snb-2520m fi-ctg-p8600 fi-elk-e7500 fi-kbl-7560u fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8120 -> Patchwork_16928

  CI-20190529: 20190529
  CI_DRM_8120: ce66c439df71f01b018803664c4a50fc61255788 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5505: 8973d811f3fdfb4ace4aabab2095ce0309881648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16928: 4501e90d5c1643d30cf1fa7ad4ca102453388956 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4501e90d5c16 drm/i915/gem: Take a copy of the engines for context_barrier_task

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16928/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
