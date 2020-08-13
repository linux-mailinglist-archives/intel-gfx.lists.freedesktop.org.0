Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2752437EA
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Aug 2020 11:47:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBFB36E199;
	Thu, 13 Aug 2020 09:47:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F20976E117;
 Thu, 13 Aug 2020 09:47:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E9D43A363D;
 Thu, 13 Aug 2020 09:47:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Thu, 13 Aug 2020 09:47:39 -0000
Message-ID: <159731205992.14256.4322502373220427882@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200813083644.31711-1-tzimmermann@suse.de>
In-Reply-To: <20200813083644.31711-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQ29u?=
 =?utf-8?q?vert_all_remaining_drivers_to_GEM_object_functions?=
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
Content-Type: multipart/mixed; boundary="===============0302964547=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0302964547==
Content-Type: multipart/alternative;
 boundary="===============7921063712806388219=="

--===============7921063712806388219==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Convert all remaining drivers to GEM object functions
URL   : https://patchwork.freedesktop.org/series/80593/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8880 -> Patchwork_18353
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18353 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18353, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18353:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fence@basic-busy@rcs0:
    - fi-blb-e6850:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-blb-e6850/igt@gem_exec_fence@basic-busy@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-blb-e6850/igt@gem_exec_fence@basic-busy@rcs0.html
    - fi-pnv-d510:        [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-pnv-d510/igt@gem_exec_fence@basic-busy@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-pnv-d510/igt@gem_exec_fence@basic-busy@rcs0.html

  * igt@gem_exec_fence@basic-busy@vcs0:
    - fi-ivb-3770:        [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html
    - fi-elk-e7500:       [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-elk-e7500/igt@gem_exec_fence@basic-busy@vcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-elk-e7500/igt@gem_exec_fence@basic-busy@vcs0.html
    - fi-ilk-650:         [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-ilk-650/igt@gem_exec_fence@basic-busy@vcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-ilk-650/igt@gem_exec_fence@basic-busy@vcs0.html
    - fi-byt-j1900:       [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-byt-j1900/igt@gem_exec_fence@basic-busy@vcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-byt-j1900/igt@gem_exec_fence@basic-busy@vcs0.html

  * igt@gem_exec_fence@basic-busy@vecs0:
    - fi-hsw-4770:        [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-hsw-4770/igt@gem_exec_fence@basic-busy@vecs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-hsw-4770/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-cml-u2:          [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-cml-u2/igt@gem_exec_fence@basic-busy@vecs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-cml-u2/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-skl-6700k2:      [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-skl-6700k2/igt@gem_exec_fence@basic-busy@vecs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-skl-6700k2/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-cfl-8700k:       [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-cfl-8700k/igt@gem_exec_fence@basic-busy@vecs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-cfl-8700k/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-tgl-u2:          [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-tgl-u2/igt@gem_exec_fence@basic-busy@vecs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-tgl-u2/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bsw-n3050:       [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@vecs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-skl-lmem:        [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-skl-lmem/igt@gem_exec_fence@basic-busy@vecs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-skl-lmem/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-soraka:      [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@vecs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-cml-s:           [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-cml-s/igt@gem_exec_fence@basic-busy@vecs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-cml-s/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-x1275:       [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vecs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bsw-kefka:       [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-bsw-kefka/igt@gem_exec_fence@basic-busy@vecs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bsw-kefka/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-r:           [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-kbl-r/igt@gem_exec_fence@basic-busy@vecs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-r/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-cfl-8109u:       [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-cfl-8109u/igt@gem_exec_fence@basic-busy@vecs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-cfl-8109u/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-icl-y:           [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-icl-y/igt@gem_exec_fence@basic-busy@vecs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-icl-y/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-guc:         [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-kbl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bsw-nick:        [PASS][43] -> [DMESG-WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-bsw-nick/igt@gem_exec_fence@basic-busy@vecs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bsw-nick/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bdw-gvtdvm:      [PASS][45] -> [DMESG-WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-busy@vecs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bdw-5557u:       [PASS][47] -> [DMESG-WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-bdw-5557u/igt@gem_exec_fence@basic-busy@vecs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bdw-5557u/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-7500u:       [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-kbl-7500u/igt@gem_exec_fence@basic-busy@vecs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-7500u/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-skl-6600u:       [PASS][51] -> [DMESG-WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-skl-6600u/igt@gem_exec_fence@basic-busy@vecs0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-skl-6600u/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-skl-guc:         [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-skl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-skl-guc/igt@gem_exec_fence@basic-busy@vecs0.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][55]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-ilk-650/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][56]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-pnv-d510/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][57]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-x1275/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][58]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][59]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bdw-gvtdvm/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][60]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-cfl-8700k/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][61]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-skl-6600u/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][62]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-cfl-8109u/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][63]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bsw-nick/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][64]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-snb-2520m/igt@runner@aborted.html
    - fi-skl-lmem:        NOTRUN -> [FAIL][65]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-skl-lmem/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][66]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-r/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][67]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bdw-5557u/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][68]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bwr-2160/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][69]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][70]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][71]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][72]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-guc/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][73]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-snb-2600/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][74]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-cml-u2/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][75]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-ivb-3770/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][76]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-byt-j1900/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][77]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-elk-e7500/igt@runner@aborted.html
    - fi-cml-s:           NOTRUN -> [FAIL][78]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-cml-s/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][79]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-icl-y/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][80]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][81]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-skl-6700k2/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][82]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bsw-n3050/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][83]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-blb-e6850/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-tgl-u2:          [FAIL][84] ([i915#1233] / [i915#2110]) -> [FAIL][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-tgl-u2/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-tgl-u2/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_fence@basic-busy@vecs0:
    - {fi-ehl-1}:         [PASS][86] -> [DMESG-WARN][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-ehl-1/igt@gem_exec_fence@basic-busy@vecs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-ehl-1/igt@gem_exec_fence@basic-busy@vecs0.html
    - {fi-tgl-dsi}:       [PASS][88] -> [DMESG-WARN][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-tgl-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-tgl-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
    - {fi-kbl-7560u}:     [PASS][90] -> [DMESG-WARN][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-kbl-7560u/igt@gem_exec_fence@basic-busy@vecs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-7560u/igt@gem_exec_fence@basic-busy@vecs0.html

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][92]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-ehl-1}:         NOTRUN -> [FAIL][93]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-ehl-1/igt@runner@aborted.html
    - {fi-kbl-7560u}:     NOTRUN -> [FAIL][94]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-7560u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_18353 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-busy@vecs0:
    - fi-apl-guc:         [PASS][95] -> [DMESG-WARN][96] ([i915#1635])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bxt-dsi:         [PASS][97] -> [DMESG-WARN][98] ([i915#1635])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-bxt-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bxt-dsi/igt@gem_exec_fence@basic-busy@vecs0.html

  
#### Warnings ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-x1275:       [DMESG-WARN][99] ([i915#62] / [i915#92]) -> [DMESG-WARN][100] ([i915#62] / [i915#92] / [i915#95])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (44 -> 37)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8880 -> Patchwork_18353

  CI-20190529: 20190529
  CI_DRM_8880: 105bb2602f98f6acb503ad62a5b6a86e1f454ca5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5769: 4e5f76be680b65780204668e302026cf638decc9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18353: f887ba13ff85dd6c3bfa8fff2b06fb5562bdcbe7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f887ba13ff85 drm: Remove obsolete GEM and PRIME callbacks from struct drm_driver
57a3d52d4eaf drm/xlnx: Initialize DRM driver instance with CMA helper macro
e7063ad8ca7d drm/xen: Introduce GEM object functions
700a27560ff8 drm/vkms: Introduce GEM object functions
fff50ea99db8 drm/vgem: Introduce GEM object functions
082439f00666 drm/vc4: Introduce GEM object functions
dabc081c2725 drm/tegra: Introduce GEM object functions
67f82bee99a9 drm/rockchip: Convert to drm_gem_object_funcs
d35bbda1b7a0 drm/radeon: Introduce GEM object functions
9f951cff95de drm/pl111: Introduce GEM object functions
6db00555b27f drm/omapdrm: Introduce GEM object functions
8e0a96b9b934 drm/nouveau: Introduce GEM object functions
8901932a7d0b drm/msm: Introduce GEM object funcs
8f9c261ff43a drm/mediatek: Introduce GEM object functions
975a7cc97edf drm/i915: Introduce GEM object functions
bece754b7d5e drm/gma500: Introduce GEM object functions
5ac6227c35a6 drm/exynos: Introduce GEM object functions
419237bb45ec drm/etnaviv: Introduce GEM object functions
a6636204e871 drm/armada: Introduce GEM object functions
3432354b0aba drm/amdgpu: Introduce GEM object functions

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/index.html

--===============7921063712806388219==
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
<tr><td><b>Series:</b></td><td>Convert all remaining drivers to GEM object functions</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/80593/">https://patchwork.freedesktop.org/series/80593/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8880 -&gt; Patchwork_18353</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18353 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18353, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18353:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@rcs0:</p>
<ul>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-blb-e6850/igt@gem_exec_fence@basic-busy@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-blb-e6850/igt@gem_exec_fence@basic-busy@rcs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-pnv-d510/igt@gem_exec_fence@basic-busy@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-pnv-d510/igt@gem_exec_fence@basic-busy@rcs0.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@vcs0:</p>
<ul>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-elk-e7500/igt@gem_exec_fence@basic-busy@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-elk-e7500/igt@gem_exec_fence@basic-busy@vcs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-ilk-650/igt@gem_exec_fence@basic-busy@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-ilk-650/igt@gem_exec_fence@basic-busy@vcs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-byt-j1900/igt@gem_exec_fence@basic-busy@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-byt-j1900/igt@gem_exec_fence@basic-busy@vcs0.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@vecs0:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-hsw-4770/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-hsw-4770/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-cml-u2/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-cml-u2/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-skl-6700k2/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-skl-6700k2/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-cfl-8700k/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-cfl-8700k/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-tgl-u2/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-tgl-u2/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-skl-lmem/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-skl-lmem/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-cml-s/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-cml-s/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-bsw-kefka/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bsw-kefka/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-kbl-r/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-r/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-cfl-8109u/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-cfl-8109u/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-icl-y/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-icl-y/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-kbl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-bsw-nick/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bsw-nick/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-bdw-5557u/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bdw-5557u/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-kbl-7500u/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-7500u/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-skl-6600u/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-skl-6600u/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-skl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-skl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-ilk-650/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-pnv-d510/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-skl-6600u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bsw-nick/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-snb-2520m/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-lmem:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-skl-lmem/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-r/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bwr-2160/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-hsw-4770/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-snb-2600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-cml-u2/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-ivb-3770/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-byt-j1900/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-elk-e7500/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-cml-s/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-icl-y/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-skl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-blb-e6850/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1233">i915#1233</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2110</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-tgl-u2/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@vecs0:</p>
<ul>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-ehl-1/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-ehl-1/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-tgl-dsi/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-tgl-dsi/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-kbl-7560u/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-7560u/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-ehl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-kbl-7560u}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-7560u/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18353 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@vecs0:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-bxt-dsi/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-bxt-dsi/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8880/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18353/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 37)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8880 -&gt; Patchwork_18353</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8880: 105bb2602f98f6acb503ad62a5b6a86e1f454ca5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5769: 4e5f76be680b65780204668e302026cf638decc9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18353: f887ba13ff85dd6c3bfa8fff2b06fb5562bdcbe7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f887ba13ff85 drm: Remove obsolete GEM and PRIME callbacks from struct drm_driver<br />
57a3d52d4eaf drm/xlnx: Initialize DRM driver instance with CMA helper macro<br />
e7063ad8ca7d drm/xen: Introduce GEM object functions<br />
700a27560ff8 drm/vkms: Introduce GEM object functions<br />
fff50ea99db8 drm/vgem: Introduce GEM object functions<br />
082439f00666 drm/vc4: Introduce GEM object functions<br />
dabc081c2725 drm/tegra: Introduce GEM object functions<br />
67f82bee99a9 drm/rockchip: Convert to drm_gem_object_funcs<br />
d35bbda1b7a0 drm/radeon: Introduce GEM object functions<br />
9f951cff95de drm/pl111: Introduce GEM object functions<br />
6db00555b27f drm/omapdrm: Introduce GEM object functions<br />
8e0a96b9b934 drm/nouveau: Introduce GEM object functions<br />
8901932a7d0b drm/msm: Introduce GEM object funcs<br />
8f9c261ff43a drm/mediatek: Introduce GEM object functions<br />
975a7cc97edf drm/i915: Introduce GEM object functions<br />
bece754b7d5e drm/gma500: Introduce GEM object functions<br />
5ac6227c35a6 drm/exynos: Introduce GEM object functions<br />
419237bb45ec drm/etnaviv: Introduce GEM object functions<br />
a6636204e871 drm/armada: Introduce GEM object functions<br />
3432354b0aba drm/amdgpu: Introduce GEM object functions</p>

</body>
</html>

--===============7921063712806388219==--

--===============0302964547==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0302964547==--
