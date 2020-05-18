Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5902F1D7B2B
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 16:24:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA3E289C21;
	Mon, 18 May 2020 14:24:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CD5AD89C21;
 Mon, 18 May 2020 14:24:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C63AFA432F;
 Mon, 18 May 2020 14:24:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 18 May 2020 14:24:54 -0000
Message-ID: <158981189480.31688.8591583626163303534@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200514154006.4761-1-jani.nikula@intel.com>
In-Reply-To: <20200514154006.4761-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915/params=3A_don=27t_expose_i?=
 =?utf-8?q?nject=5Fprobe=5Ffailure_in_debugfs_=28rev2=29?=
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

Series: series starting with [1/4] drm/i915/params: don't expose inject_probe_failure in debugfs (rev2)
URL   : https://patchwork.freedesktop.org/series/77272/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8494 -> Patchwork_17689
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17689 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17689, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17689:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-kbl-8809g:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-kbl-8809g/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-kbl-8809g/boot.html
    - fi-icl-y:           [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-icl-y/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-icl-y/boot.html
    - fi-icl-u2:          [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-icl-u2/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-icl-u2/boot.html
    - fi-cfl-8109u:       [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-cfl-8109u/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-cfl-8109u/boot.html
    - fi-skl-6600u:       [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-skl-6600u/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-skl-6600u/boot.html
    - fi-cfl-8700k:       [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-cfl-8700k/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-cfl-8700k/boot.html
    - fi-icl-dsi:         [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-icl-dsi/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-icl-dsi/boot.html
    - fi-whl-u:           [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-whl-u/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-whl-u/boot.html
    - fi-cml-u2:          [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-cml-u2/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-cml-u2/boot.html
    - fi-skl-6700k2:      [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-skl-6700k2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-skl-6700k2/boot.html
    - fi-cfl-guc:         [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-cfl-guc/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-cfl-guc/boot.html
    - fi-kbl-soraka:      [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-kbl-soraka/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-kbl-soraka/boot.html
    - fi-icl-guc:         [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-icl-guc/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-icl-guc/boot.html
    - fi-cml-s:           [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-cml-s/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-cml-s/boot.html
    - fi-skl-lmem:        [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-skl-lmem/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-skl-lmem/boot.html
    - fi-glk-dsi:         [PASS][31] -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-glk-dsi/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-glk-dsi/boot.html
    - fi-tgl-y:           [PASS][33] -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-tgl-y/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-tgl-y/boot.html
    - fi-kbl-guc:         [PASS][35] -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-kbl-guc/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-kbl-guc/boot.html
    - fi-kbl-x1275:       [PASS][37] -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-kbl-x1275/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-kbl-x1275/boot.html
    - fi-kbl-7500u:       [PASS][39] -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-kbl-7500u/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-kbl-7500u/boot.html
    - fi-skl-guc:         [PASS][41] -> [FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-skl-guc/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-skl-guc/boot.html
    - fi-kbl-r:           [PASS][43] -> [FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-kbl-r/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-kbl-r/boot.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * boot:
    - {fi-tgl-dsi}:       [PASS][45] -> [FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-tgl-dsi/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-tgl-dsi/boot.html
    - {fi-tgl-u}:         [PASS][47] -> [FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-tgl-u/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-tgl-u/boot.html
    - {fi-kbl-7560u}:     NOTRUN -> [FAIL][49]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-kbl-7560u/boot.html
    - {fi-ehl-1}:         [PASS][50] -> [FAIL][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-ehl-1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-ehl-1/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-process:
    - fi-ivb-3770:        [PASS][52] -> [FAIL][53] +11 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-ivb-3770/igt@gem_close_race@basic-process.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-ivb-3770/igt@gem_close_race@basic-process.html

  * igt@gem_close_race@basic-threads:
    - fi-bwr-2160:        [PASS][54] -> [FAIL][55] +8 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-bwr-2160/igt@gem_close_race@basic-threads.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bwr-2160/igt@gem_close_race@basic-threads.html

  * igt@gem_ctx_create@basic:
    - fi-elk-e7500:       [PASS][56] -> [FAIL][57] +11 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-elk-e7500/igt@gem_ctx_create@basic.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-elk-e7500/igt@gem_ctx_create@basic.html
    - fi-bsw-n3050:       [PASS][58] -> [FAIL][59] +9 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-bsw-n3050/igt@gem_ctx_create@basic.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bsw-n3050/igt@gem_ctx_create@basic.html

  * igt@gem_exec_basic@basic:
    - fi-snb-2520m:       NOTRUN -> [FAIL][60]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-snb-2520m/igt@gem_exec_basic@basic.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][61] +4 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-pnv-d510/igt@gem_exec_basic@basic.html
    - fi-snb-2600:        NOTRUN -> [FAIL][62]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-snb-2600/igt@gem_exec_basic@basic.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][63]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bwr-2160/igt@gem_exec_basic@basic.html
    - fi-gdg-551:         NOTRUN -> [FAIL][64]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-gdg-551/igt@gem_exec_basic@basic.html

  * igt@gem_exec_create@basic:
    - fi-bsw-kefka:       [PASS][65] -> [FAIL][66] +9 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-bsw-kefka/igt@gem_exec_create@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bsw-kefka/igt@gem_exec_create@basic.html
    - fi-gdg-551:         [PASS][67] -> [FAIL][68] +6 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-gdg-551/igt@gem_exec_create@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-gdg-551/igt@gem_exec_create@basic.html

  * igt@gem_exec_fence@basic-await:
    - fi-bsw-nick:        NOTRUN -> [FAIL][69] +4 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bsw-nick/igt@gem_exec_fence@basic-await.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][70] +4 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-byt-j1900/igt@gem_exec_fence@basic-await.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][71] +4 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-elk-e7500/igt@gem_exec_fence@basic-await.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][72] +4 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-blb-e6850/igt@gem_exec_fence@basic-await.html

  * igt@gem_exec_fence@basic-busy:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][73] +4 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bsw-kefka/igt@gem_exec_fence@basic-busy.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][74] +4 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bdw-5557u/igt@gem_exec_fence@basic-busy.html

  * igt@gem_exec_fence@basic-wait:
    - fi-ivb-3770:        NOTRUN -> [FAIL][75] +4 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-ivb-3770/igt@gem_exec_fence@basic-wait.html
    - fi-ilk-650:         NOTRUN -> [FAIL][76] +4 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-ilk-650/igt@gem_exec_fence@basic-wait.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][77] +4 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bsw-n3050/igt@gem_exec_fence@basic-wait.html

  * igt@gem_exec_fence@nb-await:
    - fi-byt-n2820:       NOTRUN -> [FAIL][78] +4 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-byt-n2820/igt@gem_exec_fence@nb-await.html

  * igt@gem_exec_gttfill@basic:
    - fi-snb-2600:        [PASS][79] -> [FAIL][80] +11 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-snb-2600/igt@gem_exec_gttfill@basic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-snb-2600/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-bsw-nick:        [PASS][81] -> [FAIL][82] +9 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bdw-5557u:       [PASS][83] -> [FAIL][84] +10 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_sync@basic-all:
    - fi-byt-n2820:       [PASS][85] -> [FAIL][86] +10 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-byt-n2820/igt@gem_sync@basic-all.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-byt-n2820/igt@gem_sync@basic-all.html
    - fi-ilk-650:         [PASS][87] -> [FAIL][88] +11 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-ilk-650/igt@gem_sync@basic-all.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-ilk-650/igt@gem_sync@basic-all.html

  * igt@gem_sync@basic-each:
    - fi-pnv-d510:        [PASS][89] -> [FAIL][90] +9 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-pnv-d510/igt@gem_sync@basic-each.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-pnv-d510/igt@gem_sync@basic-each.html

  * igt@i915_module_load@reload:
    - fi-blb-e6850:       [PASS][91] -> [FAIL][92] +9 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-blb-e6850/igt@i915_module_load@reload.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-blb-e6850/igt@i915_module_load@reload.html
    - fi-byt-j1900:       [PASS][93] -> [FAIL][94] +11 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-byt-j1900/igt@i915_module_load@reload.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-byt-j1900/igt@i915_module_load@reload.html
    - fi-snb-2520m:       [PASS][95] -> [FAIL][96] +11 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-snb-2520m/igt@i915_module_load@reload.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-snb-2520m/igt@i915_module_load@reload.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-bsw-kefka:       [SKIP][97] ([fdo#109271]) -> [FAIL][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-bsw-kefka/igt@gem_exec_gttfill@basic.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bsw-kefka/igt@gem_exec_gttfill@basic.html
    - fi-gdg-551:         [SKIP][99] ([fdo#109271]) -> [FAIL][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-gdg-551/igt@gem_exec_gttfill@basic.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-gdg-551/igt@gem_exec_gttfill@basic.html
    - fi-bsw-nick:        [SKIP][101] ([fdo#109271]) -> [FAIL][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-bsw-nick/igt@gem_exec_gttfill@basic.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bsw-nick/igt@gem_exec_gttfill@basic.html
    - fi-bwr-2160:        [SKIP][103] ([fdo#109271]) -> [FAIL][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-bwr-2160/igt@gem_exec_gttfill@basic.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bwr-2160/igt@gem_exec_gttfill@basic.html
    - fi-bsw-n3050:       [SKIP][105] ([fdo#109271]) -> [FAIL][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_busy@busy}:
    - fi-snb-2520m:       NOTRUN -> [FAIL][107] +3 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-snb-2520m/igt@gem_busy@busy.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][108] +3 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bdw-5557u/igt@gem_busy@busy.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][109] +3 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-pnv-d510/igt@gem_busy@busy.html

  * {igt@gem_exec_parallel@engines}:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][110] +3 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bsw-kefka/igt@gem_exec_parallel@engines.html
    - fi-ilk-650:         NOTRUN -> [FAIL][111] +3 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-ilk-650/igt@gem_exec_parallel@engines.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][112] +3 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bsw-n3050/igt@gem_exec_parallel@engines.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][113] +3 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-byt-n2820/igt@gem_exec_parallel@engines.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][114] +3 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-elk-e7500/igt@gem_exec_parallel@engines.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][115] +3 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-ivb-3770/igt@gem_exec_parallel@engines.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][116] +3 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-byt-j1900/igt@gem_exec_parallel@engines.html

  * {igt@gem_exec_store@basic}:
    - fi-snb-2600:        [PASS][117] -> [FAIL][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-snb-2600/igt@gem_exec_store@basic.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-snb-2600/igt@gem_exec_store@basic.html
    - fi-bsw-kefka:       [PASS][119] -> [FAIL][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-bsw-kefka/igt@gem_exec_store@basic.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bsw-kefka/igt@gem_exec_store@basic.html
    - fi-bsw-n3050:       [PASS][121] -> [FAIL][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-bsw-n3050/igt@gem_exec_store@basic.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bsw-n3050/igt@gem_exec_store@basic.html
    - fi-ilk-650:         [PASS][123] -> [FAIL][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-ilk-650/igt@gem_exec_store@basic.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-ilk-650/igt@gem_exec_store@basic.html
    - fi-elk-e7500:       [PASS][125] -> [FAIL][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-elk-e7500/igt@gem_exec_store@basic.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-elk-e7500/igt@gem_exec_store@basic.html
    - fi-byt-n2820:       [PASS][127] -> [FAIL][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-byt-n2820/igt@gem_exec_store@basic.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-byt-n2820/igt@gem_exec_store@basic.html
    - fi-ivb-3770:        [PASS][129] -> [FAIL][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-ivb-3770/igt@gem_exec_store@basic.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-ivb-3770/igt@gem_exec_store@basic.html
    - fi-snb-2520m:       [PASS][131] -> [FAIL][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-snb-2520m/igt@gem_exec_store@basic.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-snb-2520m/igt@gem_exec_store@basic.html
    - fi-byt-j1900:       [PASS][133] -> [FAIL][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-byt-j1900/igt@gem_exec_store@basic.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-byt-j1900/igt@gem_exec_store@basic.html
    - fi-pnv-d510:        [PASS][135] -> [FAIL][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-pnv-d510/igt@gem_exec_store@basic.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-pnv-d510/igt@gem_exec_store@basic.html
    - fi-bdw-5557u:       [PASS][137] -> [FAIL][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-bdw-5557u/igt@gem_exec_store@basic.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bdw-5557u/igt@gem_exec_store@basic.html
    - fi-blb-e6850:       [PASS][139] -> [FAIL][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-blb-e6850/igt@gem_exec_store@basic.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-blb-e6850/igt@gem_exec_store@basic.html
    - fi-bwr-2160:        [SKIP][141] ([fdo#109271]) -> [FAIL][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-bwr-2160/igt@gem_exec_store@basic.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bwr-2160/igt@gem_exec_store@basic.html
    - fi-gdg-551:         [SKIP][143] ([fdo#109271]) -> [FAIL][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-gdg-551/igt@gem_exec_store@basic.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-gdg-551/igt@gem_exec_store@basic.html
    - fi-bsw-nick:        [PASS][145] -> [FAIL][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-bsw-nick/igt@gem_exec_store@basic.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bsw-nick/igt@gem_exec_store@basic.html

  * {igt@gem_wait@wait}:
    - fi-gdg-551:         NOTRUN -> [FAIL][147] +3 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-gdg-551/igt@gem_wait@wait.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][148] +3 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bsw-nick/igt@gem_wait@wait.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][149] +3 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bwr-2160/igt@gem_wait@wait.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][150] +3 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-blb-e6850/igt@gem_wait@wait.html
    - fi-snb-2600:        NOTRUN -> [FAIL][151] +3 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-snb-2600/igt@gem_wait@wait.html

  
Known issues
------------

  Here are the changes found in Patchwork_17689 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-apl-guc:         [PASS][152] -> [FAIL][153] ([i915#348])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-apl-guc/boot.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-apl-guc/boot.html
    - fi-bxt-dsi:         [PASS][154] -> [FAIL][155] ([i915#1529])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-bxt-dsi/boot.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bxt-dsi/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@i915_hangman@error-state-basic:
    - fi-byt-n2820:       [PASS][156] -> [SKIP][157] ([fdo#109271]) +1 similar issue
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-byt-n2820/igt@i915_hangman@error-state-basic.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-byt-n2820/igt@i915_hangman@error-state-basic.html
    - fi-bwr-2160:        [PASS][158] -> [SKIP][159] ([fdo#109271]) +1 similar issue
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-bwr-2160/igt@i915_hangman@error-state-basic.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bwr-2160/igt@i915_hangman@error-state-basic.html
    - fi-bdw-5557u:       [PASS][160] -> [SKIP][161] ([fdo#109271]) +1 similar issue
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-bdw-5557u/igt@i915_hangman@error-state-basic.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bdw-5557u/igt@i915_hangman@error-state-basic.html
    - fi-snb-2520m:       [PASS][162] -> [SKIP][163] ([fdo#109271]) +1 similar issue
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-snb-2520m/igt@i915_hangman@error-state-basic.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-snb-2520m/igt@i915_hangman@error-state-basic.html
    - fi-bsw-nick:        [PASS][164] -> [SKIP][165] ([fdo#109271])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-bsw-nick/igt@i915_hangman@error-state-basic.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bsw-nick/igt@i915_hangman@error-state-basic.html
    - fi-gdg-551:         [PASS][166] -> [SKIP][167] ([fdo#109271]) +1 similar issue
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-gdg-551/igt@i915_hangman@error-state-basic.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-gdg-551/igt@i915_hangman@error-state-basic.html
    - fi-bsw-kefka:       [PASS][168] -> [SKIP][169] ([fdo#109271]) +1 similar issue
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-bsw-kefka/igt@i915_hangman@error-state-basic.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bsw-kefka/igt@i915_hangman@error-state-basic.html
    - fi-blb-e6850:       [PASS][170] -> [SKIP][171] ([fdo#109271]) +1 similar issue
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-blb-e6850/igt@i915_hangman@error-state-basic.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-blb-e6850/igt@i915_hangman@error-state-basic.html
    - fi-bsw-n3050:       [PASS][172] -> [SKIP][173] ([fdo#109271])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-bsw-n3050/igt@i915_hangman@error-state-basic.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-bsw-n3050/igt@i915_hangman@error-state-basic.html
    - fi-snb-2600:        [PASS][174] -> [SKIP][175] ([fdo#109271]) +1 similar issue
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-snb-2600/igt@i915_hangman@error-state-basic.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-snb-2600/igt@i915_hangman@error-state-basic.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - fi-ilk-650:         [PASS][176] -> [SKIP][177] ([fdo#109271]) +1 similar issue
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-ilk-650/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-ilk-650/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - fi-ivb-3770:        [PASS][178] -> [SKIP][179] ([fdo#109271]) +1 similar issue
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-ivb-3770/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-ivb-3770/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - fi-byt-j1900:       [PASS][180] -> [SKIP][181] ([fdo#109271]) +1 similar issue
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-byt-j1900/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-byt-j1900/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - fi-elk-e7500:       [PASS][182] -> [SKIP][183] ([fdo#109271]) +1 similar issue
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-elk-e7500/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-elk-e7500/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - fi-pnv-d510:        [PASS][184] -> [SKIP][185] ([fdo#109271]) +1 similar issue
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-pnv-d510/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/fi-pnv-d510/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1529]: https://gitlab.freedesktop.org/drm/intel/issues/1529
  [i915#348]: https://gitlab.freedesktop.org/drm/intel/issues/348


Participating hosts (51 -> 45)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8494 -> Patchwork_17689

  CI-20190529: 20190529
  CI_DRM_8494: 3d15348fde9b998e754da0b0655baf02b98e7f17 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5657: 649eae5c905a7460b44305800f95db83a6dd47cb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17689: 7918634c08d48d721c119df99c45f57217c86ea4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7918634c08d4 drm/i915/params: switch to device specific parameters
0e5029451f95 drm/i915/params: prevent changing module params runtime
f371da7198c1 drm/i915/params: fix i915.fake_lmem_start module param sysfs permissions
0df592070475 drm/i915/params: don't expose inject_probe_failure in debugfs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17689/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
