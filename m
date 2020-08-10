Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0605E240500
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Aug 2020 13:03:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F046789E0C;
	Mon, 10 Aug 2020 11:03:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EDDA289DFB;
 Mon, 10 Aug 2020 11:03:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DAD2FA0118;
 Mon, 10 Aug 2020 11:03:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Mon, 10 Aug 2020 11:03:15 -0000
Message-ID: <159705739586.17063.13563614995898000877@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Correct_the_locking_hierarchy_in_gem=2E?=
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
Content-Type: multipart/mixed; boundary="===============0345715432=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0345715432==
Content-Type: multipart/alternative;
 boundary="===============0930172431146750849=="

--===============0930172431146750849==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Correct the locking hierarchy in gem.
URL   : https://patchwork.freedesktop.org/series/80465/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8862 -> Patchwork_18331
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18331 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18331, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18331:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy@all:
    - fi-ilk-650:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-ilk-650/igt@gem_busy@busy@all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-ilk-650/igt@gem_busy@busy@all.html
    - fi-kbl-x1275:       [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-kbl-x1275/igt@gem_busy@busy@all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-x1275/igt@gem_busy@busy@all.html
    - fi-bsw-kefka:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-bsw-kefka/igt@gem_busy@busy@all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bsw-kefka/igt@gem_busy@busy@all.html
    - fi-bdw-gvtdvm:      [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-bdw-gvtdvm/igt@gem_busy@busy@all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bdw-gvtdvm/igt@gem_busy@busy@all.html
    - fi-cfl-8700k:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-cfl-8700k/igt@gem_busy@busy@all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-cfl-8700k/igt@gem_busy@busy@all.html
    - fi-skl-6600u:       [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-skl-6600u/igt@gem_busy@busy@all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-skl-6600u/igt@gem_busy@busy@all.html
    - fi-cfl-8109u:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-cfl-8109u/igt@gem_busy@busy@all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-cfl-8109u/igt@gem_busy@busy@all.html
    - fi-icl-u2:          [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-icl-u2/igt@gem_busy@busy@all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-icl-u2/igt@gem_busy@busy@all.html
    - fi-bsw-nick:        [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-bsw-nick/igt@gem_busy@busy@all.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bsw-nick/igt@gem_busy@busy@all.html
    - fi-snb-2520m:       [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-snb-2520m/igt@gem_busy@busy@all.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-snb-2520m/igt@gem_busy@busy@all.html
    - fi-skl-lmem:        [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-skl-lmem/igt@gem_busy@busy@all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-skl-lmem/igt@gem_busy@busy@all.html
    - fi-kbl-r:           [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-kbl-r/igt@gem_busy@busy@all.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-r/igt@gem_busy@busy@all.html
    - fi-bdw-5557u:       [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-bdw-5557u/igt@gem_busy@busy@all.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bdw-5557u/igt@gem_busy@busy@all.html
    - fi-bwr-2160:        [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-bwr-2160/igt@gem_busy@busy@all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bwr-2160/igt@gem_busy@busy@all.html
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][29]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-soraka/igt@gem_busy@busy@all.html
    - fi-hsw-4770:        [PASS][30] -> [INCOMPLETE][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-hsw-4770/igt@gem_busy@busy@all.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-hsw-4770/igt@gem_busy@busy@all.html
    - fi-kbl-7500u:       [PASS][32] -> [INCOMPLETE][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-kbl-7500u/igt@gem_busy@busy@all.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-7500u/igt@gem_busy@busy@all.html
    - fi-kbl-guc:         [PASS][34] -> [INCOMPLETE][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-kbl-guc/igt@gem_busy@busy@all.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-guc/igt@gem_busy@busy@all.html
    - fi-cml-u2:          [PASS][36] -> [INCOMPLETE][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-cml-u2/igt@gem_busy@busy@all.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-cml-u2/igt@gem_busy@busy@all.html
    - fi-ivb-3770:        [PASS][38] -> [INCOMPLETE][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-ivb-3770/igt@gem_busy@busy@all.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-ivb-3770/igt@gem_busy@busy@all.html
    - fi-byt-j1900:       [PASS][40] -> [INCOMPLETE][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-byt-j1900/igt@gem_busy@busy@all.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-byt-j1900/igt@gem_busy@busy@all.html
    - fi-cml-s:           [PASS][42] -> [INCOMPLETE][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-cml-s/igt@gem_busy@busy@all.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-cml-s/igt@gem_busy@busy@all.html
    - fi-icl-y:           [PASS][44] -> [INCOMPLETE][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-icl-y/igt@gem_busy@busy@all.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-icl-y/igt@gem_busy@busy@all.html
    - fi-skl-guc:         [PASS][46] -> [INCOMPLETE][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-skl-guc/igt@gem_busy@busy@all.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-skl-guc/igt@gem_busy@busy@all.html
    - fi-skl-6700k2:      [PASS][48] -> [INCOMPLETE][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-skl-6700k2/igt@gem_busy@busy@all.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-skl-6700k2/igt@gem_busy@busy@all.html
    - fi-bsw-n3050:       [PASS][50] -> [INCOMPLETE][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-bsw-n3050/igt@gem_busy@busy@all.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bsw-n3050/igt@gem_busy@busy@all.html
    - fi-tgl-u2:          [PASS][52] -> [INCOMPLETE][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-tgl-u2/igt@gem_busy@busy@all.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-tgl-u2/igt@gem_busy@busy@all.html
    - fi-blb-e6850:       [PASS][54] -> [INCOMPLETE][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-blb-e6850/igt@gem_busy@busy@all.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-blb-e6850/igt@gem_busy@busy@all.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][56]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-ilk-650/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][57]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-pnv-d510/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][58]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-x1275/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][59]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][60]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bdw-gvtdvm/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][61]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-cfl-8700k/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][62]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-skl-6600u/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][63]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][64]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-icl-u2/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][65]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bsw-nick/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][66]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-snb-2520m/igt@runner@aborted.html
    - fi-skl-lmem:        NOTRUN -> [FAIL][67]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-skl-lmem/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][68]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-r/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][69]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bdw-5557u/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][70]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bwr-2160/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][71]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][72]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][73]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][74]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-guc/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][75]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-snb-2600/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][76]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-cml-u2/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][77]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-ivb-3770/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][78]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-byt-j1900/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][79]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-elk-e7500/igt@runner@aborted.html
    - fi-cml-s:           NOTRUN -> [FAIL][80]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-cml-s/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][81]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-icl-y/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][82]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][83]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-skl-6700k2/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][84]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bsw-n3050/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][85]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-blb-e6850/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-tgl-u2:          [FAIL][86] ([i915#1233] / [i915#2110]) -> [FAIL][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-tgl-u2/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-tgl-u2/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_busy@busy@all:
    - {fi-tgl-dsi}:       [PASS][88] -> [INCOMPLETE][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-tgl-dsi/igt@gem_busy@busy@all.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-tgl-dsi/igt@gem_busy@busy@all.html
    - {fi-ehl-1}:         [PASS][90] -> [INCOMPLETE][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-ehl-1/igt@gem_busy@busy@all.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-ehl-1/igt@gem_busy@busy@all.html
    - {fi-kbl-7560u}:     [PASS][92] -> [INCOMPLETE][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-kbl-7560u/igt@gem_busy@busy@all.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-7560u/igt@gem_busy@busy@all.html

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][94]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-ehl-1}:         NOTRUN -> [FAIL][95]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-ehl-1/igt@runner@aborted.html
    - {fi-kbl-7560u}:     NOTRUN -> [FAIL][96]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-7560u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_18331 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy@all:
    - fi-pnv-d510:        [PASS][97] -> [INCOMPLETE][98] ([i915#299])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-pnv-d510/igt@gem_busy@busy@all.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-pnv-d510/igt@gem_busy@busy@all.html
    - fi-apl-guc:         [PASS][99] -> [DMESG-FAIL][100] ([i915#1635])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-apl-guc/igt@gem_busy@busy@all.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-apl-guc/igt@gem_busy@busy@all.html
    - fi-snb-2600:        [PASS][101] -> [INCOMPLETE][102] ([i915#82])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-snb-2600/igt@gem_busy@busy@all.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-snb-2600/igt@gem_busy@busy@all.html
    - fi-bxt-dsi:         [PASS][103] -> [INCOMPLETE][104] ([i915#1635])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-bxt-dsi/igt@gem_busy@busy@all.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bxt-dsi/igt@gem_busy@busy@all.html
    - fi-elk-e7500:       [PASS][105] -> [INCOMPLETE][106] ([i915#66])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-elk-e7500/igt@gem_busy@busy@all.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-elk-e7500/igt@gem_busy@busy@all.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (42 -> 37)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * IGT: IGT_5765 -> IGTPW_4868
  * Linux: CI_DRM_8862 -> Patchwork_18331

  CI-20190529: 20190529
  CI_DRM_8862: 147f0d3f7239756494adef31518f87e60a970878 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4868: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4868/index.html
  IGT_5765: 9f0977284d54ed37496260988dfcd6d2ad72dd1e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18331: 1745c824bca2a33f6ebc2babb66150c80749ba28 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1745c824bca2 drm/i915: Add ww locking to pin_to_display_plane
927b287eeffb drm/i915: Add ww locking to vm_fault_gtt
bf3e3ae1d022 drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v3.
869646e75ad8 drm/i915: Use ww pinning for intel_context_create_request()
b7a6a41b9a52 drm/i915/selftests: Fix locking inversion in lrc selftest.
46c296c2801b drm/i915: Dirty hack to fix selftests locking inversion
7c6d6850069b drm/i915: Convert i915_perf to ww locking as well
9fd13dda52fb drm/i915: Kill last user of intel_context_create_request outside of selftests
9048195cf6c7 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
7fb4d865bd7c drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
081dd6905a83 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
afe888b894cd drm/i915: Pin engine before pinning all objects, v5.
aaf565ab7bd0 drm/i915: Nuke arguments to eb_pin_engine
26aaa764574d drm/i915: Add ww context handling to context_barrier_task
5151defa01f4 drm/i915: Use ww locking in intel_renderstate.
211c5c005fbd drm/i915: make lockdep slightly happier about execbuf.
3ae1cd89fbf8 drm/i915: Use per object locking in execbuf, v12.
ace3c9d14a74 drm/i915: Parse command buffer earlier in eb_relocate(slow)
3907a97afcff drm/i915: Remove locking from i915_gem_object_prepare_read/write
40964880b649 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
3a4990fc1872 Revert "drm/i915/gem: Split eb_vma into its own allocation"
2a596bce4dc9 Revert "drm/i915/gem: Drop relocation slowpath".
6191ac1c5f4f drm/i915: Revert relocation chaining commits.
3f559a19757d Revert "drm/i915/gem: Async GPU relocations only"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/index.html

--===============0930172431146750849==
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
<tr><td><b>Series:</b></td><td>drm/i915: Correct the locking hierarchy in gem.</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/80465/">https://patchwork.freedesktop.org/series/80465/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8862 -&gt; Patchwork_18331</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18331 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18331, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18331:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_busy@busy@all:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-ilk-650/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-ilk-650/igt@gem_busy@busy@all.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-kbl-x1275/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-x1275/igt@gem_busy@busy@all.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-bsw-kefka/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bsw-kefka/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-bdw-gvtdvm/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bdw-gvtdvm/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-cfl-8700k/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-cfl-8700k/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-skl-6600u/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-skl-6600u/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-cfl-8109u/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-cfl-8109u/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-icl-u2/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-icl-u2/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-bsw-nick/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bsw-nick/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-snb-2520m/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-snb-2520m/igt@gem_busy@busy@all.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-skl-lmem/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-skl-lmem/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-kbl-r/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-r/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-bdw-5557u/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bdw-5557u/igt@gem_busy@busy@all.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-bwr-2160/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bwr-2160/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-soraka/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-hsw-4770/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-hsw-4770/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-kbl-7500u/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-7500u/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-kbl-guc/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-guc/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-cml-u2/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-cml-u2/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-ivb-3770/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-ivb-3770/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-byt-j1900/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-byt-j1900/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-cml-s/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-cml-s/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-icl-y/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-icl-y/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-skl-guc/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-skl-guc/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-skl-6700k2/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-skl-6700k2/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-bsw-n3050/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bsw-n3050/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-tgl-u2/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-tgl-u2/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-blb-e6850/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-blb-e6850/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-ilk-650/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-pnv-d510/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-skl-6600u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-icl-u2/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bsw-nick/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-snb-2520m/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-lmem:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-skl-lmem/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-r/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bwr-2160/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-hsw-4770/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-snb-2600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-cml-u2/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-ivb-3770/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-byt-j1900/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-elk-e7500/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-cml-s/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-icl-y/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-skl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-blb-e6850/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1233">i915#1233</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2110</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-tgl-u2/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_busy@busy@all:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-tgl-dsi/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-tgl-dsi/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-ehl-1/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-ehl-1/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-kbl-7560u/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-7560u/igt@gem_busy@busy@all.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-ehl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-kbl-7560u}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-kbl-7560u/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18331 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_busy@busy@all:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-pnv-d510/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-pnv-d510/igt@gem_busy@busy@all.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-apl-guc/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-apl-guc/igt@gem_busy@busy@all.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-snb-2600/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-snb-2600/igt@gem_busy@busy@all.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-bxt-dsi/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-bxt-dsi/igt@gem_busy@busy@all.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8862/fi-elk-e7500/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18331/fi-elk-e7500/igt@gem_busy@busy@all.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/66">i915#66</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_5765 -&gt; IGTPW_4868</li>
<li>Linux: CI_DRM_8862 -&gt; Patchwork_18331</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8862: 147f0d3f7239756494adef31518f87e60a970878 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_4868: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4868/index.html<br />
  IGT_5765: 9f0977284d54ed37496260988dfcd6d2ad72dd1e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18331: 1745c824bca2a33f6ebc2babb66150c80749ba28 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1745c824bca2 drm/i915: Add ww locking to pin_to_display_plane<br />
927b287eeffb drm/i915: Add ww locking to vm_fault_gtt<br />
bf3e3ae1d022 drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v3.<br />
869646e75ad8 drm/i915: Use ww pinning for intel_context_create_request()<br />
b7a6a41b9a52 drm/i915/selftests: Fix locking inversion in lrc selftest.<br />
46c296c2801b drm/i915: Dirty hack to fix selftests locking inversion<br />
7c6d6850069b drm/i915: Convert i915_perf to ww locking as well<br />
9fd13dda52fb drm/i915: Kill last user of intel_context_create_request outside of selftests<br />
9048195cf6c7 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.<br />
7fb4d865bd7c drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.<br />
081dd6905a83 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex<br />
afe888b894cd drm/i915: Pin engine before pinning all objects, v5.<br />
aaf565ab7bd0 drm/i915: Nuke arguments to eb_pin_engine<br />
26aaa764574d drm/i915: Add ww context handling to context_barrier_task<br />
5151defa01f4 drm/i915: Use ww locking in intel_renderstate.<br />
211c5c005fbd drm/i915: make lockdep slightly happier about execbuf.<br />
3ae1cd89fbf8 drm/i915: Use per object locking in execbuf, v12.<br />
ace3c9d14a74 drm/i915: Parse command buffer earlier in eb_relocate(slow)<br />
3907a97afcff drm/i915: Remove locking from i915_gem_object_prepare_read/write<br />
40964880b649 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.<br />
3a4990fc1872 Revert "drm/i915/gem: Split eb_vma into its own allocation"<br />
2a596bce4dc9 Revert "drm/i915/gem: Drop relocation slowpath".<br />
6191ac1c5f4f drm/i915: Revert relocation chaining commits.<br />
3f559a19757d Revert "drm/i915/gem: Async GPU relocations only"</p>

</body>
</html>

--===============0930172431146750849==--

--===============0345715432==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0345715432==--
