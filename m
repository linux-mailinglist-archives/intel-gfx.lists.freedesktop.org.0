Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D10A1D88DA
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 22:08:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B07166E284;
	Mon, 18 May 2020 20:08:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 216146E48F;
 Mon, 18 May 2020 20:08:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1B2DDA0099;
 Mon, 18 May 2020 20:08:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 18 May 2020 20:08:06 -0000
Message-ID: <158983248607.31686.13556085682398794690@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200518164750.11113-1-jani.nikula@intel.com>
In-Reply-To: <20200518164750.11113-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/params=3A_don=27t_expose_i?=
 =?utf-8?q?nject=5Fprobe=5Ffailure_in_debugfs?=
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

Series: series starting with [1/3] drm/i915/params: don't expose inject_probe_failure in debugfs
URL   : https://patchwork.freedesktop.org/series/77366/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8497 -> Patchwork_17697
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17697 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17697, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17697:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-process:
    - fi-ivb-3770:        [PASS][1] -> [FAIL][2] +11 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-ivb-3770/igt@gem_close_race@basic-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-ivb-3770/igt@gem_close_race@basic-process.html

  * igt@gem_close_race@basic-threads:
    - fi-skl-6600u:       [PASS][3] -> [FAIL][4] +10 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-skl-6600u/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-skl-6600u/igt@gem_close_race@basic-threads.html
    - fi-skl-guc:         [PASS][5] -> [FAIL][6] +10 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-skl-guc/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-skl-guc/igt@gem_close_race@basic-threads.html
    - fi-bwr-2160:        [PASS][7] -> [FAIL][8] +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-bwr-2160/igt@gem_close_race@basic-threads.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-bwr-2160/igt@gem_close_race@basic-threads.html
    - fi-icl-y:           [PASS][9] -> [FAIL][10] +10 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-icl-y/igt@gem_close_race@basic-threads.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-icl-y/igt@gem_close_race@basic-threads.html

  * igt@gem_ctx_create@basic:
    - fi-cml-s:           [PASS][11] -> [FAIL][12] +10 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-cml-s/igt@gem_ctx_create@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-cml-s/igt@gem_ctx_create@basic.html
    - fi-elk-e7500:       [PASS][13] -> [FAIL][14] +11 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-elk-e7500/igt@gem_ctx_create@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-elk-e7500/igt@gem_ctx_create@basic.html
    - fi-skl-6700k2:      [PASS][15] -> [FAIL][16] +10 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-skl-6700k2/igt@gem_ctx_create@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-skl-6700k2/igt@gem_ctx_create@basic.html
    - fi-cfl-guc:         [PASS][17] -> [FAIL][18] +10 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-cfl-guc/igt@gem_ctx_create@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-cfl-guc/igt@gem_ctx_create@basic.html
    - fi-bsw-n3050:       [PASS][19] -> [FAIL][20] +9 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-bsw-n3050/igt@gem_ctx_create@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-bsw-n3050/igt@gem_ctx_create@basic.html

  * igt@gem_exec_basic@basic:
    - fi-kbl-x1275:       NOTRUN -> [FAIL][21] +4 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-kbl-x1275/igt@gem_exec_basic@basic.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-snb-2520m/igt@gem_exec_basic@basic.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][23] +4 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-pnv-d510/igt@gem_exec_basic@basic.html
    - fi-apl-guc:         NOTRUN -> [FAIL][24] +4 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-apl-guc/igt@gem_exec_basic@basic.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][25] +4 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-cfl-8700k/igt@gem_exec_basic@basic.html
    - fi-tgl-y:           NOTRUN -> [FAIL][26] +4 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-tgl-y/igt@gem_exec_basic@basic.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][27] +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-skl-6600u/igt@gem_exec_basic@basic.html
    - fi-icl-u2:          NOTRUN -> [FAIL][28] +4 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-icl-u2/igt@gem_exec_basic@basic.html
    - fi-snb-2600:        NOTRUN -> [FAIL][29]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-snb-2600/igt@gem_exec_basic@basic.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][30]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-bwr-2160/igt@gem_exec_basic@basic.html
    - fi-gdg-551:         NOTRUN -> [FAIL][31]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-gdg-551/igt@gem_exec_basic@basic.html

  * igt@gem_exec_create@basic:
    - fi-bsw-kefka:       [PASS][32] -> [FAIL][33] +9 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-bsw-kefka/igt@gem_exec_create@basic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-bsw-kefka/igt@gem_exec_create@basic.html
    - fi-gdg-551:         [PASS][34] -> [FAIL][35] +6 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-gdg-551/igt@gem_exec_create@basic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-gdg-551/igt@gem_exec_create@basic.html
    - fi-glk-dsi:         [PASS][36] -> [FAIL][37] +9 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-glk-dsi/igt@gem_exec_create@basic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-glk-dsi/igt@gem_exec_create@basic.html

  * igt@gem_exec_fence@basic-await:
    - fi-bsw-nick:        NOTRUN -> [FAIL][38] +4 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-bsw-nick/igt@gem_exec_fence@basic-await.html
    - fi-skl-lmem:        NOTRUN -> [FAIL][39] +4 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-skl-lmem/igt@gem_exec_fence@basic-await.html
    - fi-whl-u:           NOTRUN -> [FAIL][40] +4 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-whl-u/igt@gem_exec_fence@basic-await.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][41] +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-byt-j1900/igt@gem_exec_fence@basic-await.html
    - fi-cml-u2:          NOTRUN -> [FAIL][42] +4 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-cml-u2/igt@gem_exec_fence@basic-await.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][43] +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-elk-e7500/igt@gem_exec_fence@basic-await.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][44] +4 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-skl-6700k2/igt@gem_exec_fence@basic-await.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][45] +4 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-blb-e6850/igt@gem_exec_fence@basic-await.html

  * igt@gem_exec_fence@basic-busy:
    - fi-glk-dsi:         NOTRUN -> [FAIL][46] +4 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-glk-dsi/igt@gem_exec_fence@basic-busy.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][47] +4 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-bsw-kefka/igt@gem_exec_fence@basic-busy.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][48] +4 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-bdw-5557u/igt@gem_exec_fence@basic-busy.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][49] +4 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-kbl-soraka/igt@gem_exec_fence@basic-busy.html

  * igt@gem_exec_fence@basic-wait:
    - fi-icl-y:           NOTRUN -> [FAIL][50] +4 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-icl-y/igt@gem_exec_fence@basic-wait.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][51] +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-ivb-3770/igt@gem_exec_fence@basic-wait.html
    - fi-ilk-650:         NOTRUN -> [FAIL][52] +4 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-ilk-650/igt@gem_exec_fence@basic-wait.html
    - fi-skl-guc:         NOTRUN -> [FAIL][53] +4 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-skl-guc/igt@gem_exec_fence@basic-wait.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][54] +4 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-bsw-n3050/igt@gem_exec_fence@basic-wait.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][55] +4 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-cfl-guc/igt@gem_exec_fence@basic-wait.html
    - fi-cml-s:           NOTRUN -> [FAIL][56] +4 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-cml-s/igt@gem_exec_fence@basic-wait.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][57] +4 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-bxt-dsi/igt@gem_exec_fence@basic-wait.html

  * igt@gem_exec_fence@nb-await:
    - fi-cfl-8109u:       NOTRUN -> [FAIL][58] +4 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-cfl-8109u/igt@gem_exec_fence@nb-await.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][59] +4 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-kbl-7500u/igt@gem_exec_fence@nb-await.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][60] +4 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-kbl-guc/igt@gem_exec_fence@nb-await.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][61] +4 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-kbl-8809g/igt@gem_exec_fence@nb-await.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][62] +4 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-byt-n2820/igt@gem_exec_fence@nb-await.html
    - fi-icl-guc:         NOTRUN -> [FAIL][63] +4 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-icl-guc/igt@gem_exec_fence@nb-await.html
    - fi-kbl-r:           NOTRUN -> [FAIL][64] +4 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-kbl-r/igt@gem_exec_fence@nb-await.html

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-x1275:       [PASS][65] -> [FAIL][66] +9 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
    - fi-snb-2600:        [PASS][67] -> [FAIL][68] +11 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-snb-2600/igt@gem_exec_gttfill@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-snb-2600/igt@gem_exec_gttfill@basic.html
    - fi-tgl-y:           [PASS][69] -> [FAIL][70] +9 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-tgl-y/igt@gem_exec_gttfill@basic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-tgl-y/igt@gem_exec_gttfill@basic.html
    - fi-cfl-8109u:       [PASS][71] -> [FAIL][72] +10 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-r:           [PASS][73] -> [FAIL][74] +10 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-kbl-r/igt@gem_exec_suspend@basic-s0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-kbl-r/igt@gem_exec_suspend@basic-s0.html
    - fi-skl-lmem:        [PASS][75] -> [FAIL][76] +10 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-skl-lmem/igt@gem_exec_suspend@basic-s0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-skl-lmem/igt@gem_exec_suspend@basic-s0.html
    - fi-bsw-nick:        [PASS][77] -> [FAIL][78] +9 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-kbl-guc:         [PASS][79] -> [FAIL][80] +10 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-kbl-guc/igt@gem_exec_suspend@basic-s3.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-kbl-guc/igt@gem_exec_suspend@basic-s3.html
    - fi-kbl-8809g:       [PASS][81] -> [FAIL][82] +10 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-kbl-8809g/igt@gem_exec_suspend@basic-s3.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-kbl-8809g/igt@gem_exec_suspend@basic-s3.html
    - fi-bdw-5557u:       [PASS][83] -> [FAIL][84] +10 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html
    - fi-kbl-soraka:      [PASS][85] -> [FAIL][86] +9 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-kbl-soraka/igt@gem_exec_suspend@basic-s3.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-kbl-soraka/igt@gem_exec_suspend@basic-s3.html
    - fi-bxt-dsi:         [PASS][87] -> [FAIL][88] +9 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-bxt-dsi/igt@gem_exec_suspend@basic-s3.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-bxt-dsi/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_sync@basic-all:
    - fi-icl-guc:         [PASS][89] -> [FAIL][90] +10 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-icl-guc/igt@gem_sync@basic-all.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-icl-guc/igt@gem_sync@basic-all.html
    - fi-byt-n2820:       [PASS][91] -> [FAIL][92] +10 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-byt-n2820/igt@gem_sync@basic-all.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-byt-n2820/igt@gem_sync@basic-all.html
    - fi-ilk-650:         [PASS][93] -> [FAIL][94] +11 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-ilk-650/igt@gem_sync@basic-all.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-ilk-650/igt@gem_sync@basic-all.html

  * igt@gem_sync@basic-each:
    - fi-cml-u2:          [PASS][95] -> [FAIL][96] +10 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-cml-u2/igt@gem_sync@basic-each.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-cml-u2/igt@gem_sync@basic-each.html
    - fi-whl-u:           [PASS][97] -> [FAIL][98] +10 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-whl-u/igt@gem_sync@basic-each.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-whl-u/igt@gem_sync@basic-each.html
    - fi-cfl-8700k:       [PASS][99] -> [FAIL][100] +10 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-cfl-8700k/igt@gem_sync@basic-each.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-cfl-8700k/igt@gem_sync@basic-each.html
    - fi-pnv-d510:        [PASS][101] -> [FAIL][102] +9 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-pnv-d510/igt@gem_sync@basic-each.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-pnv-d510/igt@gem_sync@basic-each.html
    - fi-kbl-7500u:       [PASS][103] -> [FAIL][104] +10 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-kbl-7500u/igt@gem_sync@basic-each.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-kbl-7500u/igt@gem_sync@basic-each.html

  * igt@i915_hangman@error-state-basic:
    - fi-icl-guc:         [PASS][105] -> [SKIP][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-icl-guc/igt@i915_hangman@error-state-basic.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-icl-guc/igt@i915_hangman@error-state-basic.html
    - fi-tgl-y:           [PASS][107] -> [SKIP][108] +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-tgl-y/igt@i915_hangman@error-state-basic.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-tgl-y/igt@i915_hangman@error-state-basic.html
    - fi-cml-s:           [PASS][109] -> [SKIP][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-cml-s/igt@i915_hangman@error-state-basic.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-cml-s/igt@i915_hangman@error-state-basic.html

  * igt@i915_module_load@reload:
    - fi-icl-u2:          [PASS][111] -> [FAIL][112] +10 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-icl-u2/igt@i915_module_load@reload.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-icl-u2/igt@i915_module_load@reload.html
    - fi-blb-e6850:       [PASS][113] -> [FAIL][114] +9 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-blb-e6850/igt@i915_module_load@reload.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-blb-e6850/igt@i915_module_load@reload.html
    - fi-byt-j1900:       [PASS][115] -> [FAIL][116] +11 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-byt-j1900/igt@i915_module_load@reload.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-byt-j1900/igt@i915_module_load@reload.html
    - fi-apl-guc:         [PASS][117] -> [FAIL][118] +10 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-apl-guc/igt@i915_module_load@reload.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-apl-guc/igt@i915_module_load@reload.html
    - fi-snb-2520m:       [PASS][119] -> [FAIL][120] +11 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-snb-2520m/igt@i915_module_load@reload.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-snb-2520m/igt@i915_module_load@reload.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - fi-cml-u2:          [PASS][121] -> [SKIP][122] +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-cml-u2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-cml-u2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - fi-icl-u2:          [PASS][123] -> [SKIP][124] +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-icl-u2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-icl-u2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - fi-icl-y:           [PASS][125] -> [SKIP][126] +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-icl-y/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-icl-y/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-bsw-kefka:       [SKIP][127] ([fdo#109271]) -> [FAIL][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-bsw-kefka/igt@gem_exec_gttfill@basic.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-bsw-kefka/igt@gem_exec_gttfill@basic.html
    - fi-gdg-551:         [SKIP][129] ([fdo#109271]) -> [FAIL][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-gdg-551/igt@gem_exec_gttfill@basic.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-gdg-551/igt@gem_exec_gttfill@basic.html
    - fi-glk-dsi:         [SKIP][131] ([fdo#109271]) -> [FAIL][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-glk-dsi/igt@gem_exec_gttfill@basic.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-glk-dsi/igt@gem_exec_gttfill@basic.html
    - fi-bsw-nick:        [SKIP][133] ([fdo#109271]) -> [FAIL][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-bsw-nick/igt@gem_exec_gttfill@basic.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-bsw-nick/igt@gem_exec_gttfill@basic.html
    - fi-bwr-2160:        [SKIP][135] ([fdo#109271]) -> [FAIL][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-bwr-2160/igt@gem_exec_gttfill@basic.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-bwr-2160/igt@gem_exec_gttfill@basic.html
    - fi-bxt-dsi:         [SKIP][137] ([fdo#109271]) -> [FAIL][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-bxt-dsi/igt@gem_exec_gttfill@basic.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-bxt-dsi/igt@gem_exec_gttfill@basic.html
    - fi-kbl-soraka:      [SKIP][139] ([fdo#109271]) -> [FAIL][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html
    - fi-bsw-n3050:       [SKIP][141] ([fdo#109271]) -> [FAIL][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [FAIL][143] ([fdo#103375] / [i915#1592]) -> [FAIL][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_busy@busy}:
    - fi-cfl-8700k:       NOTRUN -> [FAIL][145] +3 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-cfl-8700k/igt@gem_busy@busy.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][146] +3 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-snb-2520m/igt@gem_busy@busy.html
    - fi-apl-guc:         NOTRUN -> [FAIL][147] +3 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-apl-guc/igt@gem_busy@busy.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][148] +3 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-bdw-5557u/igt@gem_busy@busy.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][149] +3 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-glk-dsi/igt@gem_busy@busy.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][150] +3 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-pnv-d510/igt@gem_busy@busy.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][151] +3 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-kbl-soraka/igt@gem_busy@busy.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][152] +3 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-kbl-x1275/igt@gem_busy@busy.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][153] +3 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-kbl-guc/igt@gem_busy@busy.html
    - fi-cml-u2:          NOTRUN -> [FAIL][154] +3 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-cml-u2/igt@gem_busy@busy.html

  * igt@gem_exec_basic@basic:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][155] +8 similar issues
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-tgl-dsi/igt@gem_exec_basic@basic.html

  * igt@gem_exec_create@basic:
    - {fi-ehl-1}:         [PASS][156] -> [FAIL][157] +11 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-ehl-1/igt@gem_exec_create@basic.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-ehl-1/igt@gem_exec_create@basic.html

  * igt@gem_exec_fence@basic-wait:
    - {fi-tgl-u}:         NOTRUN -> [FAIL][158] +8 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-tgl-u/igt@gem_exec_fence@basic-wait.html

  * igt@gem_exec_fence@nb-await:
    - {fi-ehl-1}:         NOTRUN -> [FAIL][159] +8 similar issues
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-ehl-1/igt@gem_exec_fence@nb-await.html

  * {igt@gem_exec_parallel@engines}:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][160] +3 similar issues
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-bsw-kefka/igt@gem_exec_parallel@engines.html
    - fi-ilk-650:         NOTRUN -> [FAIL][161] +3 similar issues
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-ilk-650/igt@gem_exec_parallel@engines.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][162] +3 similar issues
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-bsw-n3050/igt@gem_exec_parallel@engines.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][163] +3 similar issues
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-byt-n2820/igt@gem_exec_parallel@engines.html
    - fi-icl-guc:         NOTRUN -> [FAIL][164] +3 similar issues
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-icl-guc/igt@gem_exec_parallel@engines.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][165] +3 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-skl-6700k2/igt@gem_exec_parallel@engines.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][166] +3 similar issues
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-elk-e7500/igt@gem_exec_parallel@engines.html
    - fi-cml-s:           NOTRUN -> [FAIL][167] +3 similar issues
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-cml-s/igt@gem_exec_parallel@engines.html
    - fi-skl-lmem:        NOTRUN -> [FAIL][168] +3 similar issues
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-skl-lmem/igt@gem_exec_parallel@engines.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][169] +3 similar issues
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-bxt-dsi/igt@gem_exec_parallel@engines.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][170] +3 similar issues
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-ivb-3770/igt@gem_exec_parallel@engines.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][171] +3 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-byt-j1900/igt@gem_exec_parallel@engines.html
    - fi-whl-u:           NOTRUN -> [FAIL][172] +3 similar issues
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-whl-u/igt@gem_exec_parallel@engines.html

  * {igt@gem_exec_store@basic}:
    - fi-kbl-x1275:       [PASS][173] -> [FAIL][174]
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-kbl-x1275/igt@gem_exec_store@basic.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-kbl-x1275/igt@gem_exec_store@basic.html
    - fi-tgl-y:           [PASS][175] -> [FAIL][176]
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-tgl-y/igt@gem_exec_store@basic.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-tgl-y/igt@gem_exec_store@basic.html
    - fi-snb-2600:        [PASS][177] -> [FAIL][178]
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-snb-2600/igt@gem_exec_store@basic.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-snb-2600/igt@gem_exec_store@basic.html
    - fi-bsw-kefka:       [PASS][179] -> [FAIL][180]
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-bsw-kefka/igt@gem_exec_store@basic.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-bsw-kefka/igt@gem_exec_store@basic.html
    - fi-bsw-n3050:       [PASS][181] -> [FAIL][182]
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8497/fi-bsw-n3050/igt@gem_exec_store@basic.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/fi-bsw-n3050/igt@gem_exec_store@basic.html
    - fi-ilk-650:         [PASS][183] -> [FAIL][184]
   [183]: https://intel-gfx-ci.01.org/tree

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17697/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
