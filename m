Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 901D21A0DE8
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 14:43:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80F6D6E866;
	Tue,  7 Apr 2020 12:43:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 164CE6E866;
 Tue,  7 Apr 2020 12:43:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0F319A008A;
 Tue,  7 Apr 2020 12:43:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 07 Apr 2020 12:43:50 -0000
Message-ID: <158626343003.26325.13147259700197175626@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1586252867.git.jani.nikula@intel.com>
In-Reply-To: <cover.1586252867.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_from_module_params_to_device_params_=28rev2=29?=
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

Series: drm/i915: from module params to device params (rev2)
URL   : https://patchwork.freedesktop.org/series/54414/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8264 -> Patchwork_17233
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17233 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17233, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17233:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-process:
    - fi-ivb-3770:        [PASS][1] -> [FAIL][2] +13 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-ivb-3770/igt@gem_close_race@basic-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-ivb-3770/igt@gem_close_race@basic-process.html

  * igt@gem_close_race@basic-threads:
    - fi-bwr-2160:        [PASS][3] -> [FAIL][4] +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-bwr-2160/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bwr-2160/igt@gem_close_race@basic-threads.html

  * igt@gem_ctx_create@basic:
    - fi-elk-e7500:       [PASS][5] -> [FAIL][6] +13 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-elk-e7500/igt@gem_ctx_create@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-elk-e7500/igt@gem_ctx_create@basic.html
    - fi-bsw-n3050:       [PASS][7] -> [FAIL][8] +12 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-bsw-n3050/igt@gem_ctx_create@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bsw-n3050/igt@gem_ctx_create@basic.html

  * igt@gem_exec_basic@basic:
    - fi-snb-2520m:       NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-snb-2520m/igt@gem_exec_basic@basic.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][10] +4 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-pnv-d510/igt@gem_exec_basic@basic.html
    - fi-snb-2600:        NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-snb-2600/igt@gem_exec_basic@basic.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bwr-2160/igt@gem_exec_basic@basic.html
    - fi-gdg-551:         NOTRUN -> [FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-gdg-551/igt@gem_exec_basic@basic.html

  * igt@gem_exec_create@basic:
    - fi-bsw-kefka:       [PASS][14] -> [FAIL][15] +12 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-bsw-kefka/igt@gem_exec_create@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bsw-kefka/igt@gem_exec_create@basic.html
    - fi-gdg-551:         [PASS][16] -> [FAIL][17] +6 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-gdg-551/igt@gem_exec_create@basic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-gdg-551/igt@gem_exec_create@basic.html

  * igt@gem_exec_fence@basic-await:
    - fi-bsw-nick:        NOTRUN -> [FAIL][18] +4 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bsw-nick/igt@gem_exec_fence@basic-await.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][19] +4 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-byt-j1900/igt@gem_exec_fence@basic-await.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][20] +4 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-hsw-4770/igt@gem_exec_fence@basic-await.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][21] +4 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-elk-e7500/igt@gem_exec_fence@basic-await.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][22] +4 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-blb-e6850/igt@gem_exec_fence@basic-await.html

  * igt@gem_exec_fence@basic-busy:
    - fi-hsw-peppy:       NOTRUN -> [FAIL][23] +4 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-hsw-peppy/igt@gem_exec_fence@basic-busy.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][24] +4 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bsw-kefka/igt@gem_exec_fence@basic-busy.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][25] +4 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bdw-5557u/igt@gem_exec_fence@basic-busy.html

  * igt@gem_exec_fence@basic-wait:
    - fi-ivb-3770:        NOTRUN -> [FAIL][26] +4 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-ivb-3770/igt@gem_exec_fence@basic-wait.html
    - fi-ilk-650:         NOTRUN -> [FAIL][27] +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-ilk-650/igt@gem_exec_fence@basic-wait.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][28] +4 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bsw-n3050/igt@gem_exec_fence@basic-wait.html

  * igt@gem_exec_fence@nb-await:
    - fi-byt-n2820:       NOTRUN -> [FAIL][29] +4 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-byt-n2820/igt@gem_exec_fence@nb-await.html

  * igt@gem_exec_gttfill@basic:
    - fi-snb-2600:        [PASS][30] -> [FAIL][31] +13 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-snb-2600/igt@gem_exec_gttfill@basic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-snb-2600/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic:
    - fi-hsw-peppy:       [PASS][32] -> [FAIL][33] +11 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-hsw-peppy/igt@gem_exec_suspend@basic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-hsw-peppy/igt@gem_exec_suspend@basic.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-bsw-nick:        [PASS][34] -> [FAIL][35] +11 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bdw-5557u:       [PASS][36] -> [FAIL][37] +12 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_sync@basic-all:
    - fi-byt-n2820:       [PASS][38] -> [FAIL][39] +12 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-byt-n2820/igt@gem_sync@basic-all.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-byt-n2820/igt@gem_sync@basic-all.html
    - fi-ilk-650:         [PASS][40] -> [FAIL][41] +13 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-ilk-650/igt@gem_sync@basic-all.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-ilk-650/igt@gem_sync@basic-all.html

  * igt@gem_sync@basic-each:
    - fi-pnv-d510:        [PASS][42] -> [FAIL][43] +11 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-pnv-d510/igt@gem_sync@basic-each.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-pnv-d510/igt@gem_sync@basic-each.html

  * igt@i915_module_load@reload:
    - fi-blb-e6850:       [PASS][44] -> [FAIL][45] +11 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-blb-e6850/igt@i915_module_load@reload.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-blb-e6850/igt@i915_module_load@reload.html
    - fi-byt-j1900:       [PASS][46] -> [FAIL][47] +13 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-byt-j1900/igt@i915_module_load@reload.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-byt-j1900/igt@i915_module_load@reload.html
    - fi-snb-2520m:       [PASS][48] -> [FAIL][49] +13 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-snb-2520m/igt@i915_module_load@reload.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-snb-2520m/igt@i915_module_load@reload.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-hsw-4770:        [PASS][50] -> [FAIL][51] +13 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-hsw-4770/igt@kms_force_connector_basic@force-load-detect.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-hsw-4770/igt@kms_force_connector_basic@force-load-detect.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-hsw-peppy:       [SKIP][52] ([fdo#109271]) -> [FAIL][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-hsw-peppy/igt@gem_exec_gttfill@basic.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-hsw-peppy/igt@gem_exec_gttfill@basic.html
    - fi-gdg-551:         [SKIP][54] ([fdo#109271]) -> [FAIL][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-gdg-551/igt@gem_exec_gttfill@basic.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-gdg-551/igt@gem_exec_gttfill@basic.html
    - fi-bsw-nick:        [SKIP][56] ([fdo#109271]) -> [FAIL][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-bsw-nick/igt@gem_exec_gttfill@basic.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bsw-nick/igt@gem_exec_gttfill@basic.html
    - fi-bwr-2160:        [SKIP][58] ([fdo#109271]) -> [FAIL][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-bwr-2160/igt@gem_exec_gttfill@basic.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bwr-2160/igt@gem_exec_gttfill@basic.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_busy@busy}:
    - fi-snb-2520m:       NOTRUN -> [FAIL][60] +3 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-snb-2520m/igt@gem_busy@busy.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][61] +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bdw-5557u/igt@gem_busy@busy.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][62] +3 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-pnv-d510/igt@gem_busy@busy.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][63] +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-hsw-4770/igt@gem_busy@busy.html

  * {igt@gem_exec_parallel@engines}:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][64] +3 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bsw-kefka/igt@gem_exec_parallel@engines.html
    - fi-ilk-650:         NOTRUN -> [FAIL][65] +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-ilk-650/igt@gem_exec_parallel@engines.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][66] +3 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bsw-n3050/igt@gem_exec_parallel@engines.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][67] +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-byt-n2820/igt@gem_exec_parallel@engines.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][68] +3 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-elk-e7500/igt@gem_exec_parallel@engines.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][69] +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-ivb-3770/igt@gem_exec_parallel@engines.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][70] +3 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-byt-j1900/igt@gem_exec_parallel@engines.html

  * {igt@gem_exec_store@basic}:
    - fi-snb-2600:        [PASS][71] -> [FAIL][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-snb-2600/igt@gem_exec_store@basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-snb-2600/igt@gem_exec_store@basic.html
    - fi-bsw-kefka:       [PASS][73] -> [FAIL][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-bsw-kefka/igt@gem_exec_store@basic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bsw-kefka/igt@gem_exec_store@basic.html
    - fi-bsw-n3050:       [PASS][75] -> [FAIL][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-bsw-n3050/igt@gem_exec_store@basic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bsw-n3050/igt@gem_exec_store@basic.html
    - fi-ilk-650:         [PASS][77] -> [FAIL][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-ilk-650/igt@gem_exec_store@basic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-ilk-650/igt@gem_exec_store@basic.html
    - fi-elk-e7500:       [PASS][79] -> [FAIL][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-elk-e7500/igt@gem_exec_store@basic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-elk-e7500/igt@gem_exec_store@basic.html
    - fi-byt-n2820:       [PASS][81] -> [FAIL][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-byt-n2820/igt@gem_exec_store@basic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-byt-n2820/igt@gem_exec_store@basic.html
    - fi-ivb-3770:        [PASS][83] -> [FAIL][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-ivb-3770/igt@gem_exec_store@basic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-ivb-3770/igt@gem_exec_store@basic.html
    - fi-snb-2520m:       [PASS][85] -> [FAIL][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-snb-2520m/igt@gem_exec_store@basic.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-snb-2520m/igt@gem_exec_store@basic.html
    - fi-byt-j1900:       [PASS][87] -> [FAIL][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-byt-j1900/igt@gem_exec_store@basic.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-byt-j1900/igt@gem_exec_store@basic.html
    - fi-pnv-d510:        [PASS][89] -> [FAIL][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-pnv-d510/igt@gem_exec_store@basic.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-pnv-d510/igt@gem_exec_store@basic.html
    - fi-hsw-4770:        [PASS][91] -> [FAIL][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-hsw-4770/igt@gem_exec_store@basic.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-hsw-4770/igt@gem_exec_store@basic.html
    - fi-bdw-5557u:       [PASS][93] -> [FAIL][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-bdw-5557u/igt@gem_exec_store@basic.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bdw-5557u/igt@gem_exec_store@basic.html
    - fi-blb-e6850:       [PASS][95] -> [FAIL][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-blb-e6850/igt@gem_exec_store@basic.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-blb-e6850/igt@gem_exec_store@basic.html
    - fi-bwr-2160:        [SKIP][97] ([fdo#109271]) -> [FAIL][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-bwr-2160/igt@gem_exec_store@basic.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bwr-2160/igt@gem_exec_store@basic.html
    - fi-gdg-551:         [SKIP][99] ([fdo#109271]) -> [FAIL][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-gdg-551/igt@gem_exec_store@basic.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-gdg-551/igt@gem_exec_store@basic.html
    - fi-bsw-nick:        [PASS][101] -> [FAIL][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-bsw-nick/igt@gem_exec_store@basic.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bsw-nick/igt@gem_exec_store@basic.html
    - fi-hsw-peppy:       [PASS][103] -> [FAIL][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-hsw-peppy/igt@gem_exec_store@basic.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-hsw-peppy/igt@gem_exec_store@basic.html

  * {igt@gem_wait@busy}:
    - fi-hsw-peppy:       NOTRUN -> [FAIL][105] +3 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-hsw-peppy/igt@gem_wait@busy.html

  * {igt@gem_wait@wait}:
    - fi-gdg-551:         NOTRUN -> [FAIL][106] +3 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-gdg-551/igt@gem_wait@wait.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][107] +3 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bsw-nick/igt@gem_wait@wait.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][108] +3 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bwr-2160/igt@gem_wait@wait.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][109] +3 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-blb-e6850/igt@gem_wait@wait.html
    - fi-snb-2600:        NOTRUN -> [FAIL][110] +3 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-snb-2600/igt@gem_wait@wait.html

  
Known issues
------------

  Here are the changes found in Patchwork_17233 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_hangman@error-state-basic:
    - fi-hsw-4770:        [PASS][111] -> [SKIP][112] ([fdo#109271]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-hsw-4770/igt@i915_hangman@error-state-basic.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-hsw-4770/igt@i915_hangman@error-state-basic.html
    - fi-byt-n2820:       [PASS][113] -> [SKIP][114] ([fdo#109271]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-byt-n2820/igt@i915_hangman@error-state-basic.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-byt-n2820/igt@i915_hangman@error-state-basic.html
    - fi-bwr-2160:        [PASS][115] -> [SKIP][116] ([fdo#109271]) +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-bwr-2160/igt@i915_hangman@error-state-basic.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bwr-2160/igt@i915_hangman@error-state-basic.html
    - fi-bdw-5557u:       [PASS][117] -> [SKIP][118] ([fdo#109271]) +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-bdw-5557u/igt@i915_hangman@error-state-basic.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bdw-5557u/igt@i915_hangman@error-state-basic.html
    - fi-snb-2520m:       [PASS][119] -> [SKIP][120] ([fdo#109271]) +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-snb-2520m/igt@i915_hangman@error-state-basic.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-snb-2520m/igt@i915_hangman@error-state-basic.html
    - fi-bsw-nick:        [PASS][121] -> [SKIP][122] ([fdo#109271])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-bsw-nick/igt@i915_hangman@error-state-basic.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bsw-nick/igt@i915_hangman@error-state-basic.html
    - fi-gdg-551:         [PASS][123] -> [SKIP][124] ([fdo#109271]) +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-gdg-551/igt@i915_hangman@error-state-basic.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-gdg-551/igt@i915_hangman@error-state-basic.html
    - fi-hsw-peppy:       [PASS][125] -> [SKIP][126] ([fdo#109271]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-hsw-peppy/igt@i915_hangman@error-state-basic.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-hsw-peppy/igt@i915_hangman@error-state-basic.html
    - fi-bsw-kefka:       [PASS][127] -> [SKIP][128] ([fdo#109271]) +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-bsw-kefka/igt@i915_hangman@error-state-basic.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bsw-kefka/igt@i915_hangman@error-state-basic.html
    - fi-blb-e6850:       [PASS][129] -> [SKIP][130] ([fdo#109271]) +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-blb-e6850/igt@i915_hangman@error-state-basic.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-blb-e6850/igt@i915_hangman@error-state-basic.html
    - fi-bsw-n3050:       [PASS][131] -> [SKIP][132] ([fdo#109271])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-bsw-n3050/igt@i915_hangman@error-state-basic.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bsw-n3050/igt@i915_hangman@error-state-basic.html
    - fi-snb-2600:        [PASS][133] -> [SKIP][134] ([fdo#109271]) +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-snb-2600/igt@i915_hangman@error-state-basic.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-snb-2600/igt@i915_hangman@error-state-basic.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-bsw-n3050:       [PASS][135] -> [FAIL][136] ([i915#49])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-bsw-n3050/igt@kms_frontbuffer_tracking@basic.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-bsw-n3050/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - fi-ilk-650:         [PASS][137] -> [SKIP][138] ([fdo#109271]) +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-ilk-650/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-ilk-650/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - fi-ivb-3770:        [PASS][139] -> [SKIP][140] ([fdo#109271]) +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-ivb-3770/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-ivb-3770/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - fi-byt-j1900:       [PASS][141] -> [SKIP][142] ([fdo#109271]) +1 similar issue
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-byt-j1900/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-byt-j1900/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - fi-elk-e7500:       [PASS][143] -> [SKIP][144] ([fdo#109271]) +1 similar issue
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-elk-e7500/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-elk-e7500/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - fi-pnv-d510:        [PASS][145] -> [SKIP][146] ([fdo#109271]) +1 similar issue
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-pnv-d510/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/fi-pnv-d510/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49


Participating hosts (53 -> 18)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_17233 prevented too many machines from booting.

  Missing    (35): fi-kbl-soraka fi-skl-6770hq fi-icl-u2 fi-apl-guc fi-icl-y fi-skl-lmem fi-icl-guc fi-icl-dsi fi-skl-6600u fi-cml-u2 fi-bxt-dsi fi-tgl-u fi-cml-s fi-glk-dsi fi-kbl-7500u fi-ctg-p8600 fi-tgl-y fi-skl-6700k2 fi-kbl-r fi-ilk-m540 fi-ehl-1 fi-tgl-dsi fi-skl-guc fi-cfl-8700k fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-whl-u fi-kbl-x1275 fi-cfl-8109u fi-kbl-8809g fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8264 -> Patchwork_17233

  CI-20190529: 20190529
  CI_DRM_8264: e0104585f880a64d4a9b40803cf4fb51ab499f7c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5573: 9c582425d6b4fc1de9fc2ffc8015cc6f0a0d3e98 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17233: 6fb0bc4cf092e0e2ca5688ed285ed347afd42883 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6fb0bc4cf092 drm/i915/params: switch to device specific parameters
9870a0bf570a drm/i915/params: prevent changing module params runtime
f9135c748581 drm/i915/params: don't expose inject_probe_failure in debugfs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17233/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
