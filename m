Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AEE14CFE0
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 18:50:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 070216E416;
	Wed, 29 Jan 2020 17:50:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 443096E416;
 Wed, 29 Jan 2020 17:50:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3F1F0A0119;
 Wed, 29 Jan 2020 17:50:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 29 Jan 2020 17:50:50 -0000
Message-ID: <158032025025.5460.9699307699470210778@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200129082410.1691996-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200129082410.1691996-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZGlz?=
 =?utf-8?q?able_drm=5Fglobal=5Fmutex_for_most_drivers?=
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

Series: disable drm_global_mutex for most drivers
URL   : https://patchwork.freedesktop.org/series/72711/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7838 -> Patchwork_16311
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16311 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16311, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16311:

### IGT changes ###

#### Possible regressions ####

  * igt@core_auth@basic-auth:
    - fi-kbl-r:           [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-kbl-r/igt@core_auth@basic-auth.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-kbl-r/igt@core_auth@basic-auth.html
    - fi-bwr-2160:        NOTRUN -> [DMESG-WARN][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-bwr-2160/igt@core_auth@basic-auth.html
    - fi-bdw-5557u:       [PASS][4] -> [DMESG-WARN][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-bdw-5557u/igt@core_auth@basic-auth.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-bdw-5557u/igt@core_auth@basic-auth.html
    - fi-skl-guc:         [PASS][6] -> [DMESG-WARN][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-skl-guc/igt@core_auth@basic-auth.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-skl-guc/igt@core_auth@basic-auth.html
    - fi-kbl-8809g:       [PASS][8] -> [DMESG-WARN][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-kbl-8809g/igt@core_auth@basic-auth.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-kbl-8809g/igt@core_auth@basic-auth.html
    - fi-kbl-guc:         [PASS][10] -> [DMESG-WARN][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-kbl-guc/igt@core_auth@basic-auth.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-kbl-guc/igt@core_auth@basic-auth.html
    - fi-icl-dsi:         [PASS][12] -> [DMESG-WARN][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-icl-dsi/igt@core_auth@basic-auth.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-icl-dsi/igt@core_auth@basic-auth.html
    - fi-kbl-7500u:       [PASS][14] -> [DMESG-WARN][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-kbl-7500u/igt@core_auth@basic-auth.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-kbl-7500u/igt@core_auth@basic-auth.html
    - fi-icl-u2:          [PASS][16] -> [DMESG-WARN][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-icl-u2/igt@core_auth@basic-auth.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-icl-u2/igt@core_auth@basic-auth.html
    - fi-hsw-4770:        [PASS][18] -> [DMESG-WARN][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-hsw-4770/igt@core_auth@basic-auth.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-hsw-4770/igt@core_auth@basic-auth.html
    - fi-byt-j1900:       [PASS][20] -> [DMESG-WARN][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-byt-j1900/igt@core_auth@basic-auth.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-byt-j1900/igt@core_auth@basic-auth.html
    - fi-cfl-8700k:       [PASS][22] -> [DMESG-WARN][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-cfl-8700k/igt@core_auth@basic-auth.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-cfl-8700k/igt@core_auth@basic-auth.html
    - fi-whl-u:           [PASS][24] -> [DMESG-WARN][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-whl-u/igt@core_auth@basic-auth.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-whl-u/igt@core_auth@basic-auth.html
    - fi-pnv-d510:        [PASS][26] -> [DMESG-WARN][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-pnv-d510/igt@core_auth@basic-auth.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-pnv-d510/igt@core_auth@basic-auth.html
    - fi-snb-2520m:       [PASS][28] -> [DMESG-WARN][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-snb-2520m/igt@core_auth@basic-auth.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-snb-2520m/igt@core_auth@basic-auth.html
    - fi-cml-u2:          [PASS][30] -> [DMESG-WARN][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-cml-u2/igt@core_auth@basic-auth.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-cml-u2/igt@core_auth@basic-auth.html
    - fi-skl-6700k2:      [PASS][32] -> [DMESG-WARN][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-skl-6700k2/igt@core_auth@basic-auth.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-skl-6700k2/igt@core_auth@basic-auth.html
    - fi-bxt-dsi:         [PASS][34] -> [DMESG-WARN][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-bxt-dsi/igt@core_auth@basic-auth.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-bxt-dsi/igt@core_auth@basic-auth.html
    - fi-byt-n2820:       NOTRUN -> [DMESG-WARN][36]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-byt-n2820/igt@core_auth@basic-auth.html
    - fi-cfl-guc:         [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-cfl-guc/igt@core_auth@basic-auth.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-cfl-guc/igt@core_auth@basic-auth.html
    - fi-skl-6770hq:      [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-skl-6770hq/igt@core_auth@basic-auth.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-skl-6770hq/igt@core_auth@basic-auth.html
    - fi-icl-guc:         [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-icl-guc/igt@core_auth@basic-auth.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-icl-guc/igt@core_auth@basic-auth.html
    - fi-elk-e7500:       [PASS][43] -> [DMESG-WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-elk-e7500/igt@core_auth@basic-auth.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-elk-e7500/igt@core_auth@basic-auth.html
    - fi-ilk-650:         [PASS][45] -> [DMESG-WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-ilk-650/igt@core_auth@basic-auth.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-ilk-650/igt@core_auth@basic-auth.html
    - fi-kbl-soraka:      [PASS][47] -> [DMESG-WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-kbl-soraka/igt@core_auth@basic-auth.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-kbl-soraka/igt@core_auth@basic-auth.html
    - fi-cml-s:           [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-cml-s/igt@core_auth@basic-auth.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-cml-s/igt@core_auth@basic-auth.html
    - fi-hsw-peppy:       [PASS][51] -> [DMESG-WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-hsw-peppy/igt@core_auth@basic-auth.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-hsw-peppy/igt@core_auth@basic-auth.html
    - fi-icl-u3:          [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-icl-u3/igt@core_auth@basic-auth.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-icl-u3/igt@core_auth@basic-auth.html
    - fi-hsw-4770r:       [PASS][55] -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-hsw-4770r/igt@core_auth@basic-auth.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-hsw-4770r/igt@core_auth@basic-auth.html
    - fi-kbl-x1275:       [PASS][57] -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-kbl-x1275/igt@core_auth@basic-auth.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-kbl-x1275/igt@core_auth@basic-auth.html
    - fi-icl-y:           [PASS][59] -> [DMESG-WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-icl-y/igt@core_auth@basic-auth.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-icl-y/igt@core_auth@basic-auth.html
    - fi-gdg-551:         [PASS][61] -> [DMESG-WARN][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-gdg-551/igt@core_auth@basic-auth.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-gdg-551/igt@core_auth@basic-auth.html
    - fi-glk-dsi:         [PASS][63] -> [DMESG-WARN][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-glk-dsi/igt@core_auth@basic-auth.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-glk-dsi/igt@core_auth@basic-auth.html
    - fi-cfl-8109u:       [PASS][65] -> [DMESG-WARN][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-cfl-8109u/igt@core_auth@basic-auth.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-cfl-8109u/igt@core_auth@basic-auth.html
    - fi-blb-e6850:       [PASS][67] -> [DMESG-WARN][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-blb-e6850/igt@core_auth@basic-auth.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-blb-e6850/igt@core_auth@basic-auth.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][69]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-ilk-650/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][70]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-pnv-d510/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][71]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-kbl-x1275/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][72]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-cfl-8700k/igt@runner@aborted.html
    - fi-hsw-4770r:       NOTRUN -> [FAIL][73]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-hsw-4770r/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][74]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-cfl-8109u/igt@runner@aborted.html
    - fi-hsw-peppy:       NOTRUN -> [FAIL][75]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-hsw-peppy/igt@runner@aborted.html
    - fi-gdg-551:         NOTRUN -> [FAIL][76]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-gdg-551/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][77]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-kbl-8809g/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][78]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-snb-2520m/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][79]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-kbl-r/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][80]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-bdw-5557u/igt@runner@aborted.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][81]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-byt-n2820/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][82]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][83]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][84]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-kbl-guc/igt@runner@aborted.html
    - fi-whl-u:           NOTRUN -> [FAIL][85]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-whl-u/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][86]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-bxt-dsi/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][87]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-elk-e7500/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][88]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-cfl-guc/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][89]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-blb-e6850/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-soraka:      [FAIL][90] ([fdo#109383] / [fdo#111012]) -> [FAIL][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-kbl-soraka/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-kbl-soraka/igt@runner@aborted.html
    - fi-byt-j1900:       [FAIL][92] ([i915#816]) -> [FAIL][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-byt-j1900/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-byt-j1900/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@core_auth@basic-auth:
    - {fi-tgl-u}:         [PASS][94] -> [DMESG-WARN][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-tgl-u/igt@core_auth@basic-auth.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-tgl-u/igt@core_auth@basic-auth.html
    - {fi-ehl-1}:         [PASS][96] -> [DMESG-WARN][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-ehl-1/igt@core_auth@basic-auth.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-ehl-1/igt@core_auth@basic-auth.html

  * igt@runner@aborted:
    - {fi-ehl-1}:         NOTRUN -> [FAIL][98]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-ehl-1/igt@runner@aborted.html
    - {fi-tgl-u}:         NOTRUN -> [FAIL][99]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-tgl-u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16311 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - fi-tgl-y:           [PASS][100] -> [DMESG-WARN][101] ([CI#94])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-tgl-y/igt@core_auth@basic-auth.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-tgl-y/igt@core_auth@basic-auth.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-cml-s:           [FAIL][102] ([fdo#111012] / [fdo#111764] / [i915#577]) -> [FAIL][103] ([i915#577])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-cml-s/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/fi-cml-s/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109383]: https://bugs.freedesktop.org/show_bug.cgi?id=109383
  [fdo#111012]: https://bugs.freedesktop.org/show_bug.cgi?id=111012
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [i915#577]: https://gitlab.freedesktop.org/drm/intel/issues/577
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (50 -> 42)
------------------------------

  Additional (2): fi-byt-n2820 fi-bwr-2160 
  Missing    (10): fi-ilk-m540 fi-bdw-samus fi-bsw-n3050 fi-hsw-4200u fi-ivb-3770 fi-skl-lmem fi-kbl-7560u fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7838 -> Patchwork_16311

  CI-20190529: 20190529
  CI_DRM_7838: d3d96beea538c8de906a1c4d7e6793a47d17a471 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5404: 4147bab8e3dcaf11bd657b5fb4c109708e94e60c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16311: bffddad1dd65b0f70ac76ec748f1c61a6d987744 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bffddad1dd65 drm: Nerv drm_global_mutex BKL for good drivers
7c9238faf93b drm: Push drm_global_mutex locking in drm_open
ca5ca224d1e1 drm/client: Rename _force to _locked
42ee1c03e770 drm/fbdev-helper: don't force restores
4c86ec07f811 drm: Complain if drivers still use the ->load callback

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16311/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
