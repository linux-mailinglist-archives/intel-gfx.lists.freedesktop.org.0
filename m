Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCA37567AF
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jul 2023 17:21:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 986FD10E271;
	Mon, 17 Jul 2023 15:21:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F20CE10E26C;
 Mon, 17 Jul 2023 15:21:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EEEAAAA3D8;
 Mon, 17 Jul 2023 15:21:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1689068943744959343=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Janusz Krzysztofik" <janusz.krzysztofik@linux.intel.com>
Date: Mon, 17 Jul 2023 15:21:28 -0000
Message-ID: <168960728896.24537.15281124225067673852@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230717111746.17269-2-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20230717111746.17269-2-janusz.krzysztofik@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_premature_release_of_request=27s_reusable_memory_?=
 =?utf-8?b?KHJldjIp?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1689068943744959343==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix premature release of request's reusable memory (rev2)
URL   : https://patchwork.freedesktop.org/series/120170/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13390 -> Patchwork_120170v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_120170v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_120170v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/index.html

Participating hosts (41 -> 43)
------------------------------

  Additional (3): fi-kbl-soraka bat-atsm-1 fi-pnv-d510 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_120170v2:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy@all-engines:
    - bat-dg1-7:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-dg1-7/igt@gem_busy@busy@all-engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-dg1-7/igt@gem_busy@busy@all-engines.html
    - bat-dg2-9:          [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-dg2-9/igt@gem_busy@busy@all-engines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-dg2-9/igt@gem_busy@busy@all-engines.html

  * igt@gem_ctx_create@basic-files:
    - fi-cfl-8700k:       [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-cfl-8700k/igt@gem_ctx_create@basic-files.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-cfl-8700k/igt@gem_ctx_create@basic-files.html
    - bat-adls-5:         [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-adls-5/igt@gem_ctx_create@basic-files.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-adls-5/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_gttfill@basic:
    - bat-jsl-3:          [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-jsl-3/igt@gem_exec_gttfill@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-jsl-3/igt@gem_exec_gttfill@basic.html
    - fi-kbl-x1275:       [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
    - fi-ivb-3770:        [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-ivb-3770/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-ivb-3770/igt@gem_exec_gttfill@basic.html
    - bat-mtlp-8:         [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-mtlp-8/igt@gem_exec_gttfill@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-mtlp-8/igt@gem_exec_gttfill@basic.html
    - bat-dg2-8:          [PASS][17] -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-dg2-8/igt@gem_exec_gttfill@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-dg2-8/igt@gem_exec_gttfill@basic.html
    - bat-jsl-1:          [PASS][19] -> [ABORT][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-jsl-1/igt@gem_exec_gttfill@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-jsl-1/igt@gem_exec_gttfill@basic.html
    - fi-skl-6600u:       [PASS][21] -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-skl-6600u/igt@gem_exec_gttfill@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-skl-6600u/igt@gem_exec_gttfill@basic.html
    - fi-rkl-11600:       [PASS][23] -> [ABORT][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-rkl-11600/igt@gem_exec_gttfill@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-rkl-11600/igt@gem_exec_gttfill@basic.html
    - bat-dg1-5:          [PASS][25] -> [ABORT][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-dg1-5/igt@gem_exec_gttfill@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-dg1-5/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@engines@basic:
    - fi-kbl-7567u:       [PASS][27] -> [ABORT][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-kbl-7567u/igt@gem_exec_parallel@engines@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-kbl-7567u/igt@gem_exec_parallel@engines@basic.html
    - bat-adln-1:         [PASS][29] -> [ABORT][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-adln-1/igt@gem_exec_parallel@engines@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-adln-1/igt@gem_exec_parallel@engines@basic.html
    - fi-kbl-8809g:       [PASS][31] -> [ABORT][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-kbl-8809g/igt@gem_exec_parallel@engines@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-kbl-8809g/igt@gem_exec_parallel@engines@basic.html
    - fi-elk-e7500:       [PASS][33] -> [ABORT][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-elk-e7500/igt@gem_exec_parallel@engines@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-elk-e7500/igt@gem_exec_parallel@engines@basic.html
    - fi-bsw-nick:        [PASS][35] -> [ABORT][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-bsw-nick/igt@gem_exec_parallel@engines@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-bsw-nick/igt@gem_exec_parallel@engines@basic.html
    - fi-kbl-guc:         [PASS][37] -> [ABORT][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-kbl-guc/igt@gem_exec_parallel@engines@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-kbl-guc/igt@gem_exec_parallel@engines@basic.html
    - bat-adlm-1:         [PASS][39] -> [ABORT][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-adlm-1/igt@gem_exec_parallel@engines@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-adlm-1/igt@gem_exec_parallel@engines@basic.html
    - bat-rplp-1:         [PASS][41] -> [ABORT][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-rplp-1/igt@gem_exec_parallel@engines@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-rplp-1/igt@gem_exec_parallel@engines@basic.html
    - fi-ilk-650:         [PASS][43] -> [ABORT][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-ilk-650/igt@gem_exec_parallel@engines@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-ilk-650/igt@gem_exec_parallel@engines@basic.html
    - fi-tgl-1115g4:      [PASS][45] -> [ABORT][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-tgl-1115g4/igt@gem_exec_parallel@engines@basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-tgl-1115g4/igt@gem_exec_parallel@engines@basic.html
    - fi-bsw-n3050:       [PASS][47] -> [ABORT][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-bsw-n3050/igt@gem_exec_parallel@engines@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-bsw-n3050/igt@gem_exec_parallel@engines@basic.html
    - fi-cfl-guc:         [PASS][49] -> [INCOMPLETE][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-cfl-guc/igt@gem_exec_parallel@engines@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-cfl-guc/igt@gem_exec_parallel@engines@basic.html
    - bat-mtlp-6:         [PASS][51] -> [ABORT][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-mtlp-6/igt@gem_exec_parallel@engines@basic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-mtlp-6/igt@gem_exec_parallel@engines@basic.html
    - fi-hsw-4770:        [PASS][53] -> [ABORT][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-hsw-4770/igt@gem_exec_parallel@engines@basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-hsw-4770/igt@gem_exec_parallel@engines@basic.html
    - bat-rpls-2:         [PASS][55] -> [ABORT][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-rpls-2/igt@gem_exec_parallel@engines@basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-rpls-2/igt@gem_exec_parallel@engines@basic.html
    - fi-blb-e6850:       [PASS][57] -> [ABORT][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-blb-e6850/igt@gem_exec_parallel@engines@basic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-blb-e6850/igt@gem_exec_parallel@engines@basic.html
    - bat-rpls-1:         [PASS][59] -> [ABORT][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-rpls-1/igt@gem_exec_parallel@engines@basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-rpls-1/igt@gem_exec_parallel@engines@basic.html
    - bat-adlp-6:         [PASS][61] -> [ABORT][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-adlp-6/igt@gem_exec_parallel@engines@basic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-adlp-6/igt@gem_exec_parallel@engines@basic.html
    - fi-apl-guc:         [PASS][63] -> [ABORT][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-apl-guc/igt@gem_exec_parallel@engines@basic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-apl-guc/igt@gem_exec_parallel@engines@basic.html
    - fi-pnv-d510:        NOTRUN -> [ABORT][65]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-pnv-d510/igt@gem_exec_parallel@engines@basic.html
    - bat-atsm-1:         NOTRUN -> [ABORT][66]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-atsm-1/igt@gem_exec_parallel@engines@basic.html
    - fi-glk-j4005:       [PASS][67] -> [ABORT][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-glk-j4005/igt@gem_exec_parallel@engines@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-glk-j4005/igt@gem_exec_parallel@engines@basic.html
    - bat-adlp-9:         [PASS][69] -> [ABORT][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-adlp-9/igt@gem_exec_parallel@engines@basic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-adlp-9/igt@gem_exec_parallel@engines@basic.html
    - fi-skl-guc:         [PASS][71] -> [ABORT][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-skl-guc/igt@gem_exec_parallel@engines@basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-skl-guc/igt@gem_exec_parallel@engines@basic.html
    - fi-kbl-soraka:      NOTRUN -> [ABORT][73]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-kbl-soraka/igt@gem_exec_parallel@engines@basic.html
    - fi-cfl-8109u:       [PASS][74] -> [ABORT][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-cfl-8109u/igt@gem_exec_parallel@engines@basic.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-cfl-8109u/igt@gem_exec_parallel@engines@basic.html

  * igt@gem_exec_parallel@engines@contexts:
    - fi-kbl-guc:         [PASS][76] -> [DMESG-WARN][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-kbl-guc/igt@gem_exec_parallel@engines@contexts.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-kbl-guc/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_exec_parallel@engines@fds:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][78]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-kbl-soraka/igt@gem_exec_parallel@engines@fds.html

  * igt@gem_exec_parallel@engines@userptr:
    - fi-apl-guc:         [PASS][79] -> [DMESG-WARN][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-apl-guc/igt@gem_exec_parallel@engines@userptr.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-apl-guc/igt@gem_exec_parallel@engines@userptr.html
    - fi-pnv-d510:        NOTRUN -> [DMESG-WARN][81]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
    - fi-glk-j4005:       [PASS][82] -> [DMESG-WARN][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-glk-j4005/igt@gem_exec_parallel@engines@userptr.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-glk-j4005/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-guc:         [PASS][84] -> [DMESG-WARN][85] +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-7567u:       [PASS][86] -> [DMESG-WARN][87] +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-kbl-7567u/igt@gem_exec_parallel@engines@userptr.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-kbl-7567u/igt@gem_exec_parallel@engines@userptr.html
    - bat-adln-1:         [PASS][88] -> [INCOMPLETE][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-adln-1/igt@gem_exec_parallel@engines@userptr.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-adln-1/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-8809g:       [PASS][90] -> [DMESG-WARN][91] +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-kbl-8809g/igt@gem_exec_parallel@engines@userptr.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-kbl-8809g/igt@gem_exec_parallel@engines@userptr.html
    - fi-elk-e7500:       [PASS][92] -> [DMESG-WARN][93] +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html
    - fi-bsw-nick:        [PASS][94] -> [DMESG-WARN][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html
    - fi-tgl-1115g4:      [PASS][96] -> [INCOMPLETE][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-tgl-1115g4/igt@gem_exec_parallel@engines@userptr.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-tgl-1115g4/igt@gem_exec_parallel@engines@userptr.html
    - bat-atsm-1:         NOTRUN -> [DMESG-WARN][98]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-atsm-1/igt@gem_exec_parallel@engines@userptr.html
    - fi-hsw-4770:        [PASS][99] -> [DMESG-WARN][100] +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-8109u:       [PASS][101] -> [DMESG-WARN][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-guc:         [PASS][103] -> [INCOMPLETE][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html
    - fi-ilk-650:         [PASS][105] -> [DMESG-WARN][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html
    - fi-blb-e6850:       [PASS][107] -> [DMESG-WARN][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html
    - fi-bsw-n3050:       [PASS][109] -> [DMESG-WARN][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html

  * igt@i915_module_load@load:
    - bat-dg2-11:         [PASS][111] -> [ABORT][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-dg2-11/igt@i915_module_load@load.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-dg2-11/igt@i915_module_load@load.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_parallel@engines@basic:
    - {bat-dg2-14}:       [PASS][113] -> [ABORT][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-dg2-14/igt@gem_exec_parallel@engines@basic.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-dg2-14/igt@gem_exec_parallel@engines@basic.html
    - {bat-dg2-13}:       [PASS][115] -> [ABORT][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-dg2-13/igt@gem_exec_parallel@engines@basic.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-dg2-13/igt@gem_exec_parallel@engines@basic.html

  * igt@gem_exec_parallel@engines@userptr:
    - {bat-dg2-13}:       [PASS][117] -> [DMESG-WARN][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-dg2-13/igt@gem_exec_parallel@engines@userptr.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-dg2-13/igt@gem_exec_parallel@engines@userptr.html
    - {bat-dg2-14}:       [PASS][119] -> [DMESG-WARN][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-dg2-14/igt@gem_exec_parallel@engines@userptr.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-dg2-14/igt@gem_exec_parallel@engines@userptr.html

  
Known issues
------------

  Here are the changes found in Patchwork_120170v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - bat-adlp-11:        NOTRUN -> [ABORT][121] ([i915#8011])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-adlp-11/igt@core_auth@basic-auth.html

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][122] ([fdo#109271]) +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@engines@contexts:
    - fi-pnv-d510:        NOTRUN -> [SKIP][123] ([fdo#109271]) +5 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-pnv-d510/igt@gem_exec_parallel@engines@contexts.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - bat-adlp-11:        [ABORT][124] ([i915#4423]) -> [DMESG-WARN][125] ([i915#4423])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-adlp-11/igt@i915_module_load@load.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-adlp-11/igt@i915_module_load@load.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [Intel XE#486]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/486
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8879]: https://gitlab.freedesktop.org/drm/intel/issues/8879


Build changes
-------------

  * Linux: CI_DRM_13390 -> Patchwork_120170v2

  CI-20190529: 20190529
  CI_DRM_13390: 3d28151face410f5cafffdb42710041f889dc733 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7388: 7388
  Patchwork_120170v2: 3d28151face410f5cafffdb42710041f889dc733 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

c1375c85d1f7 drm/i915: Fix premature release of request's reusable memory

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/index.html

--===============1689068943744959343==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix premature release of request&#39;s reusable memory (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/120170/">https://patchwork.freedesktop.org/series/120170/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13390 -&gt; Patchwork_120170v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_120170v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_120170v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/index.html</p>
<h2>Participating hosts (41 -&gt; 43)</h2>
<p>Additional (3): fi-kbl-soraka bat-atsm-1 fi-pnv-d510 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_120170v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_busy@busy@all-engines:</p>
<ul>
<li>
<p>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-dg1-7/igt@gem_busy@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-dg1-7/igt@gem_busy@busy@all-engines.html">ABORT</a></p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-dg2-9/igt@gem_busy@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-dg2-9/igt@gem_busy@busy@all-engines.html">ABORT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-cfl-8700k/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-cfl-8700k/igt@gem_ctx_create@basic-files.html">ABORT</a></p>
</li>
<li>
<p>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-adls-5/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-adls-5/igt@gem_ctx_create@basic-files.html">ABORT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-jsl-3/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-jsl-3/igt@gem_exec_gttfill@basic.html">ABORT</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html">ABORT</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-ivb-3770/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-ivb-3770/igt@gem_exec_gttfill@basic.html">ABORT</a></p>
</li>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-mtlp-8/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-mtlp-8/igt@gem_exec_gttfill@basic.html">ABORT</a></p>
</li>
<li>
<p>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-dg2-8/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-dg2-8/igt@gem_exec_gttfill@basic.html">ABORT</a></p>
</li>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-jsl-1/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-jsl-1/igt@gem_exec_gttfill@basic.html">ABORT</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-skl-6600u/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-skl-6600u/igt@gem_exec_gttfill@basic.html">ABORT</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-rkl-11600/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-rkl-11600/igt@gem_exec_gttfill@basic.html">ABORT</a></p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-dg1-5/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-dg1-5/igt@gem_exec_gttfill@basic.html">ABORT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-kbl-7567u/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-kbl-7567u/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-adln-1/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-adln-1/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-kbl-8809g/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-kbl-8809g/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-elk-e7500/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-elk-e7500/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-bsw-nick/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-bsw-nick/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-kbl-guc/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-kbl-guc/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-adlm-1/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-adlm-1/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-rplp-1/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-rplp-1/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-ilk-650/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-ilk-650/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-tgl-1115g4/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-tgl-1115g4/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-bsw-n3050/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-bsw-n3050/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-cfl-guc/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-cfl-guc/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-mtlp-6/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-mtlp-6/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-hsw-4770/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-hsw-4770/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-rpls-2/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-rpls-2/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-blb-e6850/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-blb-e6850/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-rpls-1/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-rpls-1/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-adlp-6/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-adlp-6/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-apl-guc/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-apl-guc/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-pnv-d510/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-atsm-1/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-glk-j4005/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-glk-j4005/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-adlp-9/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-adlp-9/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-skl-guc/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-skl-guc/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-kbl-soraka/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-cfl-8109u/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-cfl-8109u/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-kbl-guc/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-kbl-guc/igt@gem_exec_parallel@engines@contexts.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-kbl-soraka/igt@gem_exec_parallel@engines@fds.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-apl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-apl-guc/igt@gem_exec_parallel@engines@userptr.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-glk-j4005/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-glk-j4005/igt@gem_exec_parallel@engines@userptr.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-skl-guc/igt@gem_exec_parallel@engines@userptr.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-kbl-7567u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-kbl-7567u/igt@gem_exec_parallel@engines@userptr.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-adln-1/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-adln-1/igt@gem_exec_parallel@engines@userptr.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-kbl-8809g/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-kbl-8809g/igt@gem_exec_parallel@engines@userptr.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-tgl-1115g4/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-tgl-1115g4/igt@gem_exec_parallel@engines@userptr.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-atsm-1/igt@gem_exec_parallel@engines@userptr.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html">DMESG-WARN</a> +2 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-dg2-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-dg2-11/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>
<p>{bat-dg2-14}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-dg2-14/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-dg2-14/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
<li>
<p>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-dg2-13/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-dg2-13/igt@gem_exec_parallel@engines@basic.html">ABORT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>
<p>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-dg2-13/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-dg2-13/igt@gem_exec_parallel@engines@userptr.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-dg2-14}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-dg2-14/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-dg2-14/igt@gem_exec_parallel@engines@userptr.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_120170v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-adlp-11/igt@core_auth@basic-auth.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/fi-pnv-d510/igt@gem_exec_parallel@engines@contexts.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13390/bat-adlp-11/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120170v2/bat-adlp-11/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13390 -&gt; Patchwork_120170v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13390: 3d28151face410f5cafffdb42710041f889dc733 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7388: 7388<br />
  Patchwork_120170v2: 3d28151face410f5cafffdb42710041f889dc733 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>c1375c85d1f7 drm/i915: Fix premature release of request's reusable memory</p>

</body>
</html>

--===============1689068943744959343==--
