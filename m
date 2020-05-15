Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 220BE1D51F5
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 16:42:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A71926ECC6;
	Fri, 15 May 2020 14:41:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B0D9B6ECC6;
 Fri, 15 May 2020 14:41:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A9263A3C0D;
 Fri, 15 May 2020 14:41:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 15 May 2020 14:41:52 -0000
Message-ID: <158955371266.26210.11248795355622897804@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200514154006.4761-1-jani.nikula@intel.com>
In-Reply-To: <20200514154006.4761-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915/params=3A_don=27t_expose_i?=
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

Series: series starting with [1/4] drm/i915/params: don't expose inject_probe_failure in debugfs
URL   : https://patchwork.freedesktop.org/series/77272/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8488 -> Patchwork_17663
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17663 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17663, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17663:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-kbl-8809g:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-kbl-8809g/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-kbl-8809g/boot.html
    - fi-cfl-8109u:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-cfl-8109u/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-cfl-8109u/boot.html
    - fi-skl-6600u:       [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-skl-6600u/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-skl-6600u/boot.html
    - fi-cfl-8700k:       [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-cfl-8700k/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-cfl-8700k/boot.html
    - fi-cml-u2:          [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-cml-u2/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-cml-u2/boot.html
    - fi-skl-6700k2:      [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-skl-6700k2/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-skl-6700k2/boot.html
    - fi-cfl-guc:         [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-cfl-guc/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-cfl-guc/boot.html
    - fi-kbl-soraka:      [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-kbl-soraka/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-kbl-soraka/boot.html
    - fi-cml-s:           [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-cml-s/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-cml-s/boot.html
    - fi-skl-lmem:        [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-skl-lmem/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-skl-lmem/boot.html
    - fi-kbl-guc:         [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-kbl-guc/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-kbl-guc/boot.html
    - fi-kbl-x1275:       [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-kbl-x1275/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-kbl-x1275/boot.html
    - fi-kbl-7500u:       [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-kbl-7500u/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-kbl-7500u/boot.html
    - fi-skl-guc:         [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-skl-guc/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-skl-guc/boot.html
    - fi-kbl-r:           [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-kbl-r/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-kbl-r/boot.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * boot:
    - {fi-kbl-7560u}:     NOTRUN -> [FAIL][31]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-kbl-7560u/boot.html
    - {fi-ehl-1}:         [PASS][32] -> [FAIL][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-ehl-1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-ehl-1/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-process:
    - fi-ivb-3770:        [PASS][34] -> [FAIL][35] +11 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-ivb-3770/igt@gem_close_race@basic-process.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-ivb-3770/igt@gem_close_race@basic-process.html

  * igt@gem_close_race@basic-threads:
    - fi-bwr-2160:        [PASS][36] -> [FAIL][37] +8 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-bwr-2160/igt@gem_close_race@basic-threads.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bwr-2160/igt@gem_close_race@basic-threads.html

  * igt@gem_ctx_create@basic:
    - fi-elk-e7500:       [PASS][38] -> [FAIL][39] +11 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-elk-e7500/igt@gem_ctx_create@basic.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-elk-e7500/igt@gem_ctx_create@basic.html
    - fi-bsw-n3050:       [PASS][40] -> [FAIL][41] +9 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-bsw-n3050/igt@gem_ctx_create@basic.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bsw-n3050/igt@gem_ctx_create@basic.html

  * igt@gem_exec_basic@basic:
    - fi-snb-2520m:       NOTRUN -> [FAIL][42]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-snb-2520m/igt@gem_exec_basic@basic.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][43] +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-pnv-d510/igt@gem_exec_basic@basic.html
    - fi-snb-2600:        NOTRUN -> [FAIL][44]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-snb-2600/igt@gem_exec_basic@basic.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][45]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bwr-2160/igt@gem_exec_basic@basic.html
    - fi-gdg-551:         NOTRUN -> [FAIL][46]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-gdg-551/igt@gem_exec_basic@basic.html

  * igt@gem_exec_create@basic:
    - fi-bsw-kefka:       [PASS][47] -> [FAIL][48] +9 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-bsw-kefka/igt@gem_exec_create@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bsw-kefka/igt@gem_exec_create@basic.html
    - fi-gdg-551:         [PASS][49] -> [FAIL][50] +6 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-gdg-551/igt@gem_exec_create@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-gdg-551/igt@gem_exec_create@basic.html

  * igt@gem_exec_fence@basic-await:
    - fi-bsw-nick:        NOTRUN -> [FAIL][51] +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bsw-nick/igt@gem_exec_fence@basic-await.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][52] +4 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-byt-j1900/igt@gem_exec_fence@basic-await.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][53] +4 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-elk-e7500/igt@gem_exec_fence@basic-await.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][54] +4 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-blb-e6850/igt@gem_exec_fence@basic-await.html

  * igt@gem_exec_fence@basic-busy:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][55] +4 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bsw-kefka/igt@gem_exec_fence@basic-busy.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][56] +4 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bdw-5557u/igt@gem_exec_fence@basic-busy.html

  * igt@gem_exec_fence@basic-wait:
    - fi-ivb-3770:        NOTRUN -> [FAIL][57] +4 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-ivb-3770/igt@gem_exec_fence@basic-wait.html
    - fi-ilk-650:         NOTRUN -> [FAIL][58] +4 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-ilk-650/igt@gem_exec_fence@basic-wait.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][59] +4 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bsw-n3050/igt@gem_exec_fence@basic-wait.html

  * igt@gem_exec_fence@nb-await:
    - fi-byt-n2820:       NOTRUN -> [FAIL][60] +4 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-byt-n2820/igt@gem_exec_fence@nb-await.html

  * igt@gem_exec_gttfill@basic:
    - fi-snb-2600:        [PASS][61] -> [FAIL][62] +11 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-snb-2600/igt@gem_exec_gttfill@basic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-snb-2600/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-bsw-nick:        [PASS][63] -> [FAIL][64] +9 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bdw-5557u:       [PASS][65] -> [FAIL][66] +10 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_sync@basic-all:
    - fi-byt-n2820:       [PASS][67] -> [FAIL][68] +10 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-byt-n2820/igt@gem_sync@basic-all.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-byt-n2820/igt@gem_sync@basic-all.html
    - fi-ilk-650:         [PASS][69] -> [FAIL][70] +11 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-ilk-650/igt@gem_sync@basic-all.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-ilk-650/igt@gem_sync@basic-all.html

  * igt@gem_sync@basic-each:
    - fi-pnv-d510:        [PASS][71] -> [FAIL][72] +9 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-pnv-d510/igt@gem_sync@basic-each.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-pnv-d510/igt@gem_sync@basic-each.html

  * igt@i915_module_load@reload:
    - fi-blb-e6850:       [PASS][73] -> [FAIL][74] +9 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-blb-e6850/igt@i915_module_load@reload.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-blb-e6850/igt@i915_module_load@reload.html
    - fi-byt-j1900:       [PASS][75] -> [FAIL][76] +11 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-byt-j1900/igt@i915_module_load@reload.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-byt-j1900/igt@i915_module_load@reload.html
    - fi-snb-2520m:       [PASS][77] -> [FAIL][78] +11 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-snb-2520m/igt@i915_module_load@reload.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-snb-2520m/igt@i915_module_load@reload.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-bsw-kefka:       [SKIP][79] ([fdo#109271]) -> [FAIL][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-bsw-kefka/igt@gem_exec_gttfill@basic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bsw-kefka/igt@gem_exec_gttfill@basic.html
    - fi-gdg-551:         [SKIP][81] ([fdo#109271]) -> [FAIL][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-gdg-551/igt@gem_exec_gttfill@basic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-gdg-551/igt@gem_exec_gttfill@basic.html
    - fi-bsw-nick:        [SKIP][83] ([fdo#109271]) -> [FAIL][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-bsw-nick/igt@gem_exec_gttfill@basic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bsw-nick/igt@gem_exec_gttfill@basic.html
    - fi-bwr-2160:        [SKIP][85] ([fdo#109271]) -> [FAIL][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-bwr-2160/igt@gem_exec_gttfill@basic.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bwr-2160/igt@gem_exec_gttfill@basic.html
    - fi-bsw-n3050:       [SKIP][87] ([fdo#109271]) -> [FAIL][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_busy@busy}:
    - fi-snb-2520m:       NOTRUN -> [FAIL][89] +3 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-snb-2520m/igt@gem_busy@busy.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][90] +3 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bdw-5557u/igt@gem_busy@busy.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][91] +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-pnv-d510/igt@gem_busy@busy.html

  * {igt@gem_exec_parallel@engines}:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][92] +3 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bsw-kefka/igt@gem_exec_parallel@engines.html
    - fi-ilk-650:         NOTRUN -> [FAIL][93] +3 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-ilk-650/igt@gem_exec_parallel@engines.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][94] +3 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bsw-n3050/igt@gem_exec_parallel@engines.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][95] +3 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-byt-n2820/igt@gem_exec_parallel@engines.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][96] +3 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-elk-e7500/igt@gem_exec_parallel@engines.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][97] +3 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-ivb-3770/igt@gem_exec_parallel@engines.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][98] +3 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-byt-j1900/igt@gem_exec_parallel@engines.html

  * {igt@gem_exec_store@basic}:
    - fi-snb-2600:        [PASS][99] -> [FAIL][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-snb-2600/igt@gem_exec_store@basic.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-snb-2600/igt@gem_exec_store@basic.html
    - fi-bsw-kefka:       [PASS][101] -> [FAIL][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-bsw-kefka/igt@gem_exec_store@basic.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bsw-kefka/igt@gem_exec_store@basic.html
    - fi-bsw-n3050:       [PASS][103] -> [FAIL][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-bsw-n3050/igt@gem_exec_store@basic.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bsw-n3050/igt@gem_exec_store@basic.html
    - fi-ilk-650:         [PASS][105] -> [FAIL][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-ilk-650/igt@gem_exec_store@basic.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-ilk-650/igt@gem_exec_store@basic.html
    - fi-elk-e7500:       [PASS][107] -> [FAIL][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-elk-e7500/igt@gem_exec_store@basic.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-elk-e7500/igt@gem_exec_store@basic.html
    - fi-byt-n2820:       [PASS][109] -> [FAIL][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-byt-n2820/igt@gem_exec_store@basic.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-byt-n2820/igt@gem_exec_store@basic.html
    - fi-ivb-3770:        [PASS][111] -> [FAIL][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-ivb-3770/igt@gem_exec_store@basic.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-ivb-3770/igt@gem_exec_store@basic.html
    - fi-snb-2520m:       [PASS][113] -> [FAIL][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-snb-2520m/igt@gem_exec_store@basic.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-snb-2520m/igt@gem_exec_store@basic.html
    - fi-byt-j1900:       [PASS][115] -> [FAIL][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-byt-j1900/igt@gem_exec_store@basic.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-byt-j1900/igt@gem_exec_store@basic.html
    - fi-pnv-d510:        [PASS][117] -> [FAIL][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-pnv-d510/igt@gem_exec_store@basic.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-pnv-d510/igt@gem_exec_store@basic.html
    - fi-bdw-5557u:       [PASS][119] -> [FAIL][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-bdw-5557u/igt@gem_exec_store@basic.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bdw-5557u/igt@gem_exec_store@basic.html
    - fi-blb-e6850:       [PASS][121] -> [FAIL][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-blb-e6850/igt@gem_exec_store@basic.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-blb-e6850/igt@gem_exec_store@basic.html
    - fi-bwr-2160:        [SKIP][123] ([fdo#109271]) -> [FAIL][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-bwr-2160/igt@gem_exec_store@basic.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bwr-2160/igt@gem_exec_store@basic.html
    - fi-gdg-551:         [SKIP][125] ([fdo#109271]) -> [FAIL][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-gdg-551/igt@gem_exec_store@basic.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-gdg-551/igt@gem_exec_store@basic.html
    - fi-bsw-nick:        [PASS][127] -> [FAIL][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-bsw-nick/igt@gem_exec_store@basic.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bsw-nick/igt@gem_exec_store@basic.html

  * {igt@gem_wait@wait}:
    - fi-gdg-551:         NOTRUN -> [FAIL][129] +3 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-gdg-551/igt@gem_wait@wait.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][130] +3 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bsw-nick/igt@gem_wait@wait.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][131] +3 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bwr-2160/igt@gem_wait@wait.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][132] +3 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-blb-e6850/igt@gem_wait@wait.html
    - fi-snb-2600:        NOTRUN -> [FAIL][133] +3 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-snb-2600/igt@gem_wait@wait.html

  
Known issues
------------

  Here are the changes found in Patchwork_17663 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-apl-guc:         [PASS][134] -> [FAIL][135] ([i915#348])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-apl-guc/boot.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-apl-guc/boot.html
    - fi-icl-y:           [PASS][136] -> [FAIL][137] ([CI#80])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-icl-y/boot.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-icl-y/boot.html
    - fi-icl-u2:          [PASS][138] -> [FAIL][139] ([CI#80])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-icl-u2/boot.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-icl-u2/boot.html
    - fi-bxt-dsi:         [PASS][140] -> [FAIL][141] ([i915#1529])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-bxt-dsi/boot.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bxt-dsi/boot.html
    - fi-icl-dsi:         [PASS][142] -> [FAIL][143] ([CI#80])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-icl-dsi/boot.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-icl-dsi/boot.html
    - fi-whl-u:           [PASS][144] -> [FAIL][145] ([CI#80])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-whl-u/boot.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-whl-u/boot.html
    - fi-icl-guc:         [PASS][146] -> [FAIL][147] ([CI#80])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-icl-guc/boot.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-icl-guc/boot.html
    - fi-glk-dsi:         [PASS][148] -> [FAIL][149] ([CI#80])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-glk-dsi/boot.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-glk-dsi/boot.html
    - fi-tgl-y:           [PASS][150] -> [FAIL][151] ([CI#80])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-tgl-y/boot.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-tgl-y/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@i915_hangman@error-state-basic:
    - fi-byt-n2820:       [PASS][152] -> [SKIP][153] ([fdo#109271]) +1 similar issue
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-byt-n2820/igt@i915_hangman@error-state-basic.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-byt-n2820/igt@i915_hangman@error-state-basic.html
    - fi-bwr-2160:        [PASS][154] -> [SKIP][155] ([fdo#109271]) +1 similar issue
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-bwr-2160/igt@i915_hangman@error-state-basic.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bwr-2160/igt@i915_hangman@error-state-basic.html
    - fi-bdw-5557u:       [PASS][156] -> [SKIP][157] ([fdo#109271]) +1 similar issue
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-bdw-5557u/igt@i915_hangman@error-state-basic.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bdw-5557u/igt@i915_hangman@error-state-basic.html
    - fi-snb-2520m:       [PASS][158] -> [SKIP][159] ([fdo#109271]) +1 similar issue
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-snb-2520m/igt@i915_hangman@error-state-basic.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-snb-2520m/igt@i915_hangman@error-state-basic.html
    - fi-bsw-nick:        [PASS][160] -> [SKIP][161] ([fdo#109271])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-bsw-nick/igt@i915_hangman@error-state-basic.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bsw-nick/igt@i915_hangman@error-state-basic.html
    - fi-gdg-551:         [PASS][162] -> [SKIP][163] ([fdo#109271]) +1 similar issue
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-gdg-551/igt@i915_hangman@error-state-basic.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-gdg-551/igt@i915_hangman@error-state-basic.html
    - fi-bsw-kefka:       [PASS][164] -> [SKIP][165] ([fdo#109271]) +1 similar issue
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-bsw-kefka/igt@i915_hangman@error-state-basic.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bsw-kefka/igt@i915_hangman@error-state-basic.html
    - fi-blb-e6850:       [PASS][166] -> [SKIP][167] ([fdo#109271]) +1 similar issue
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-blb-e6850/igt@i915_hangman@error-state-basic.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-blb-e6850/igt@i915_hangman@error-state-basic.html
    - fi-bsw-n3050:       [PASS][168] -> [SKIP][169] ([fdo#109271])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-bsw-n3050/igt@i915_hangman@error-state-basic.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-bsw-n3050/igt@i915_hangman@error-state-basic.html
    - fi-snb-2600:        [PASS][170] -> [SKIP][171] ([fdo#109271]) +1 similar issue
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-snb-2600/igt@i915_hangman@error-state-basic.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-snb-2600/igt@i915_hangman@error-state-basic.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - fi-ilk-650:         [PASS][172] -> [SKIP][173] ([fdo#109271]) +1 similar issue
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-ilk-650/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-ilk-650/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - fi-ivb-3770:        [PASS][174] -> [SKIP][175] ([fdo#109271]) +1 similar issue
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-ivb-3770/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-ivb-3770/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - fi-byt-j1900:       [PASS][176] -> [SKIP][177] ([fdo#109271]) +1 similar issue
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-byt-j1900/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-byt-j1900/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - fi-elk-e7500:       [PASS][178] -> [SKIP][179] ([fdo#109271]) +1 similar issue
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-elk-e7500/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-elk-e7500/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - fi-pnv-d510:        [PASS][180] -> [SKIP][181] ([fdo#109271]) +1 similar issue
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-pnv-d510/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/fi-pnv-d510/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1529]: https://gitlab.freedesktop.org/drm/intel/issues/1529
  [i915#348]: https://gitlab.freedesktop.org/drm/intel/issues/348


Participating hosts (51 -> 45)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8488 -> Patchwork_17663

  CI-20190529: 20190529
  CI_DRM_8488: d40ec60813532e485e9c63623c91babf556cfbe3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5655: 2cc4c1edc3065590f9917930b6d049a90c4a38fd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17663: 58176290571070ce48b311da1ba7c2b1e7a1eead @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

581762905710 drm/i915/params: switch to device specific parameters
ed04031bb3e1 drm/i915/params: prevent changing module params runtime
5bfd76f34ce0 drm/i915/params: fix i915.fake_lmem_start module param sysfs permissions
e80307f07467 drm/i915/params: don't expose inject_probe_failure in debugfs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17663/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
