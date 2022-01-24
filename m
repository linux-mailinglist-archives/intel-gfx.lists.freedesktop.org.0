Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8435E499CE1
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 23:14:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C98A10E17C;
	Mon, 24 Jan 2022 22:14:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7EE4110E17C;
 Mon, 24 Jan 2022 22:14:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7AB23A0BCB;
 Mon, 24 Jan 2022 22:14:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6614097014389316459=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Date: Mon, 24 Jan 2022 22:14:46 -0000
Message-ID: <164306248645.1345.7878563613901347810@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220124130328.2376-1-christian.koenig@amd.com>
In-Reply-To: <20220124130328.2376-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/11=5D_drm/radeon=3A_use_ttm=5Fresource?=
 =?utf-8?q?=5Fmanager=5Fdebug?=
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

--===============6614097014389316459==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/11] drm/radeon: use ttm_resource_manager_debug
URL   : https://patchwork.freedesktop.org/series/99249/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11129 -> Patchwork_22083
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22083 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22083, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/index.html

Participating hosts (48 -> 44)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22083:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy@all:
    - fi-ilk-650:         [PASS][1] -> [FAIL][2] +14 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-ilk-650/igt@gem_busy@busy@all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-ilk-650/igt@gem_busy@busy@all.html
    - fi-snb-2520m:       [PASS][3] -> [FAIL][4] +6 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-snb-2520m/igt@gem_busy@busy@all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-snb-2520m/igt@gem_busy@busy@all.html

  * igt@gem_exec_fence@basic-await@bcs0:
    - fi-cml-u2:          [PASS][5] -> [FAIL][6] +18 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-cml-u2/igt@gem_exec_fence@basic-await@bcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-cml-u2/igt@gem_exec_fence@basic-await@bcs0.html

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-elk-e7500:       [PASS][7] -> [FAIL][8] +12 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-elk-e7500/igt@gem_exec_fence@basic-await@vcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-elk-e7500/igt@gem_exec_fence@basic-await@vcs0.html
    - fi-glk-j4005:       [PASS][9] -> [FAIL][10] +18 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-glk-j4005/igt@gem_exec_fence@basic-await@vcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-glk-j4005/igt@gem_exec_fence@basic-await@vcs0.html
    - fi-kbl-7567u:       [PASS][11] -> [FAIL][12] +20 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-kbl-7567u/igt@gem_exec_fence@basic-await@vcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-kbl-7567u/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@gem_exec_fence@basic-await@vcs1:
    - fi-bdw-gvtdvm:      [PASS][13] -> [FAIL][14] +20 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-await@vcs1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-await@vcs1.html

  * igt@gem_exec_fence@basic-await@vecs0:
    - fi-kbl-guc:         [PASS][15] -> [FAIL][16] +16 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-kbl-guc/igt@gem_exec_fence@basic-await@vecs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-kbl-guc/igt@gem_exec_fence@basic-await@vecs0.html
    - fi-kbl-x1275:       [PASS][17] -> [FAIL][18] +18 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-kbl-x1275/igt@gem_exec_fence@basic-await@vecs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-kbl-x1275/igt@gem_exec_fence@basic-await@vecs0.html

  * igt@gem_exec_fence@basic-busy@rcs0:
    - fi-bsw-n3050:       [PASS][19] -> [FAIL][20] +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@rcs0.html
    - fi-bsw-nick:        [PASS][21] -> [FAIL][22] +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bsw-nick/igt@gem_exec_fence@basic-busy@rcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bsw-nick/igt@gem_exec_fence@basic-busy@rcs0.html

  * igt@gem_exec_fence@basic-busy@vcs0:
    - fi-skl-6700k2:      [PASS][23] -> [FAIL][24] +18 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-skl-6700k2/igt@gem_exec_fence@basic-busy@vcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-skl-6700k2/igt@gem_exec_fence@basic-busy@vcs0.html
    - fi-ivb-3770:        [PASS][25] -> [FAIL][26] +18 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html
    - fi-kbl-soraka:      [PASS][27] -> [FAIL][28] +18 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@vcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@vcs0.html
    - fi-bsw-kefka:       [PASS][29] -> [FAIL][30] +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bsw-kefka/igt@gem_exec_fence@basic-busy@vcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bsw-kefka/igt@gem_exec_fence@basic-busy@vcs0.html

  * igt@gem_exec_fence@basic-busy@vecs0:
    - fi-icl-u2:          [PASS][31] -> [FAIL][32] +6 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-icl-u2/igt@gem_exec_fence@basic-busy@vecs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-icl-u2/igt@gem_exec_fence@basic-busy@vecs0.html

  * igt@gem_exec_fence@basic-wait@bcs0:
    - bat-dg1-6:          [PASS][33] -> [FAIL][34] +22 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-dg1-6/igt@gem_exec_fence@basic-wait@bcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/bat-dg1-6/igt@gem_exec_fence@basic-wait@bcs0.html
    - fi-icl-u2:          [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-icl-u2/igt@gem_exec_fence@basic-wait@bcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-icl-u2/igt@gem_exec_fence@basic-wait@bcs0.html

  * igt@gem_exec_fence@basic-wait@rcs0:
    - bat-dg1-5:          [PASS][37] -> [FAIL][38] +24 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-dg1-5/igt@gem_exec_fence@basic-wait@rcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/bat-dg1-5/igt@gem_exec_fence@basic-wait@rcs0.html

  * igt@gem_exec_fence@basic-wait@vcs0:
    - fi-rkl-11600:       [PASS][39] -> [FAIL][40] +20 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-rkl-11600/igt@gem_exec_fence@basic-wait@vcs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-rkl-11600/igt@gem_exec_fence@basic-wait@vcs0.html
    - fi-kbl-7500u:       [PASS][41] -> [FAIL][42] +18 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-kbl-7500u/igt@gem_exec_fence@basic-wait@vcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-kbl-7500u/igt@gem_exec_fence@basic-wait@vcs0.html
    - fi-cfl-8109u:       [PASS][43] -> [FAIL][44] +22 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-cfl-8109u/igt@gem_exec_fence@basic-wait@vcs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-cfl-8109u/igt@gem_exec_fence@basic-wait@vcs0.html
    - fi-skl-guc:         [PASS][45] -> [FAIL][46] +18 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-skl-guc/igt@gem_exec_fence@basic-wait@vcs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-skl-guc/igt@gem_exec_fence@basic-wait@vcs0.html

  * igt@gem_exec_fence@basic-wait@vecs0:
    - fi-bdw-5557u:       [PASS][47] -> [FAIL][48] +20 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bdw-5557u/igt@gem_exec_fence@basic-wait@vecs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bdw-5557u/igt@gem_exec_fence@basic-wait@vecs0.html
    - fi-kbl-8809g:       [PASS][49] -> [FAIL][50] +16 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-kbl-8809g/igt@gem_exec_fence@basic-wait@vecs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-kbl-8809g/igt@gem_exec_fence@basic-wait@vecs0.html

  * igt@gem_exec_fence@nb-await@bcs0:
    - bat-adlp-4:         [PASS][51] -> [FAIL][52] +22 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-adlp-4/igt@gem_exec_fence@nb-await@bcs0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/bat-adlp-4/igt@gem_exec_fence@nb-await@bcs0.html
    - fi-rkl-guc:         [PASS][53] -> [FAIL][54] +20 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-rkl-guc/igt@gem_exec_fence@nb-await@bcs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-rkl-guc/igt@gem_exec_fence@nb-await@bcs0.html

  * igt@gem_exec_fence@nb-await@rcs0:
    - fi-cfl-8700k:       [PASS][55] -> [FAIL][56] +18 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-cfl-8700k/igt@gem_exec_fence@nb-await@rcs0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-cfl-8700k/igt@gem_exec_fence@nb-await@rcs0.html

  * igt@gem_exec_fence@nb-await@vcs0:
    - fi-skl-6600u:       [PASS][57] -> [FAIL][58] +14 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-skl-6600u/igt@gem_exec_fence@nb-await@vcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-skl-6600u/igt@gem_exec_fence@nb-await@vcs0.html

  * igt@gem_exec_fence@nb-await@vecs0:
    - fi-glk-dsi:         [PASS][59] -> [FAIL][60] +18 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-glk-dsi/igt@gem_exec_fence@nb-await@vecs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-glk-dsi/igt@gem_exec_fence@nb-await@vecs0.html

  * igt@gem_wait@busy@all:
    - fi-snb-2600:        [PASS][61] -> [FAIL][62] +6 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-snb-2600/igt@gem_wait@busy@all.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-snb-2600/igt@gem_wait@busy@all.html
    - fi-bwr-2160:        [PASS][63] -> [FAIL][64] +4 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bwr-2160/igt@gem_wait@busy@all.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bwr-2160/igt@gem_wait@busy@all.html

  * igt@gem_wait@wait@all:
    - fi-bxt-dsi:         [PASS][65] -> [FAIL][66] +18 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bxt-dsi/igt@gem_wait@wait@all.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bxt-dsi/igt@gem_wait@wait@all.html
    - fi-hsw-4770:        [PASS][67] -> [FAIL][68] +22 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-hsw-4770/igt@gem_wait@wait@all.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-hsw-4770/igt@gem_wait@wait@all.html
    - fi-blb-e6850:       [PASS][69] -> [FAIL][70] +8 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-blb-e6850/igt@gem_wait@wait@all.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-blb-e6850/igt@gem_wait@wait@all.html

  * igt@i915_selftest@live@evict:
    - bat-dg1-5:          [PASS][71] -> [INCOMPLETE][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-dg1-5/igt@i915_selftest@live@evict.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/bat-dg1-5/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@gtt:
    - bat-dg1-6:          [PASS][73] -> [INCOMPLETE][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-dg1-6/igt@i915_selftest@live@gtt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/bat-dg1-6/igt@i915_selftest@live@gtt.html

  * igt@kms_busy@basic@modeset:
    - fi-cfl-guc:         [PASS][75] -> [FAIL][76] +18 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-cfl-guc/igt@kms_busy@basic@modeset.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-cfl-guc/igt@kms_busy@basic@modeset.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_fence@basic-await@rcs0:
    - {fi-ehl-2}:         [PASS][77] -> [FAIL][78] +20 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-ehl-2/igt@gem_exec_fence@basic-await@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-ehl-2/igt@gem_exec_fence@basic-await@rcs0.html

  * igt@gem_exec_fence@basic-busy@vecs0:
    - {fi-jsl-1}:         [PASS][79] -> [FAIL][80] +20 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html

  * igt@gem_exec_fence@basic-wait@bcs0:
    - {bat-jsl-2}:        [PASS][81] -> [FAIL][82] +20 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-jsl-2/igt@gem_exec_fence@basic-wait@bcs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/bat-jsl-2/igt@gem_exec_fence@basic-wait@bcs0.html

  * igt@gem_exec_fence@basic-wait@rcs0:
    - {bat-adlp-6}:       [PASS][83] -> [FAIL][84] +22 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-adlp-6/igt@gem_exec_fence@basic-wait@rcs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/bat-adlp-6/igt@gem_exec_fence@basic-wait@rcs0.html

  * igt@gem_exec_fence@nb-await@rcs0:
    - {fi-tgl-dsi}:       [PASS][85] -> [FAIL][86] +24 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-tgl-dsi/igt@gem_exec_fence@nb-await@rcs0.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-tgl-dsi/igt@gem_exec_fence@nb-await@rcs0.html

  * igt@gem_exec_fence@nb-await@vcs0:
    - {bat-jsl-1}:        [PASS][87] -> [FAIL][88] +20 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-jsl-1/igt@gem_exec_fence@nb-await@vcs0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/bat-jsl-1/igt@gem_exec_fence@nb-await@vcs0.html

  * igt@gem_exec_fence@nb-await@vcs1:
    - {bat-rpls-1}:       NOTRUN -> [FAIL][89] +22 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/bat-rpls-1/igt@gem_exec_fence@nb-await@vcs1.html

  * igt@i915_selftest@live@execlists:
    - {bat-jsl-1}:        [PASS][90] -> [INCOMPLETE][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-jsl-1/igt@i915_selftest@live@execlists.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/bat-jsl-1/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@guc_multi_lrc:
    - {bat-jsl-2}:        [PASS][92] -> [INCOMPLETE][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-jsl-2/igt@i915_selftest@live@guc_multi_lrc.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/bat-jsl-2/igt@i915_selftest@live@guc_multi_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_22083 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-hsw-4770:        NOTRUN -> [SKIP][94] ([fdo#109271] / [fdo#109315]) +17 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-hsw-4770/igt@amdgpu/amd_basic@semaphore.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-bsw-n3050:       [PASS][95] -> [DMESG-FAIL][96] ([i915#1610])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@bcs0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@bcs0.html
    - fi-bsw-nick:        [PASS][97] -> [DMESG-FAIL][98] ([i915#1610])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bsw-nick/igt@gem_exec_fence@basic-busy@bcs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bsw-nick/igt@gem_exec_fence@basic-busy@bcs0.html
    - fi-bsw-kefka:       [PASS][99] -> [DMESG-FAIL][100] ([i915#1610])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bsw-kefka/igt@gem_exec_fence@basic-busy@bcs0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bsw-kefka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-skl-6600u:       NOTRUN -> [FAIL][101] ([i915#4547])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-bdw-5557u:       [PASS][102] -> [INCOMPLETE][103] ([i915#146])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@runner@aborted:
    - fi-icl-u2:          NOTRUN -> [FAIL][104] ([i915#2722] / [i915#4312])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-icl-u2/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][105] ([i915#3690] / [i915#4312])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bsw-n3050/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][106] ([i915#3690] / [i915#4312])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bsw-kefka/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][107] ([i915#4312])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-skl-6600u/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][108] ([i915#3690] / [i915#4312])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bsw-nick/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-tgl-dsi}:       [DMESG-FAIL][109] ([i915#541]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][111] ([i915#3303]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Build changes
-------------

  * Linux: CI_DRM_11129 -> Patchwork_22083

  CI-20190529: 20190529
  CI_DRM_11129: 0b83d3cf9f9eab03ec804d56ac2686320a64f3ee @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6330: f73008bac9a8db0779264b170f630483e9165764 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22083: 8a7ed5aee6752ea69f9f74da6b0d8296093d3030 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8a7ed5aee675 drm/vmwgfx: remove vmw_wait_dma_fence
5b0a478c7391 drm/i915: use dma_fence extractor functions
51cb2edeadac drm/amdgpu: use dma_fence_chain_contained
bef780ab04c3 dma-buf: add dma_fence_chain_contained helper
dfa23eb99c11 dma-buf: Add dma_fence_array_for_each (v2)
ece7651171f3 dma-buf: warn about containers in dma_resv object
edbef78ca254 dma-buf: Warn about dma_fence_chain container rules v2
da6a598d08b2 dma-buf: warn about dma_fence_array container rules v2
5647bdbd9dd6 dma-buf: consolidate dma_fence subclass checking

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/index.html

--===============6614097014389316459==
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
<tr><td><b>Series:</b></td><td>series starting with [01/11] drm/radeon: use ttm_resource_manager_debug</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99249/">https://patchwork.freedesktop.org/series/99249/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11129 -&gt; Patchwork_22083</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22083 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22083, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/index.html</p>
<h2>Participating hosts (48 -&gt; 44)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22083:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_busy@busy@all:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-ilk-650/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-ilk-650/igt@gem_busy@busy@all.html">FAIL</a> +14 similar issues</p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-snb-2520m/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-snb-2520m/igt@gem_busy@busy@all.html">FAIL</a> +6 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@bcs0:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-cml-u2/igt@gem_exec_fence@basic-await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-cml-u2/igt@gem_exec_fence@basic-await@bcs0.html">FAIL</a> +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vcs0:</p>
<ul>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-elk-e7500/igt@gem_exec_fence@basic-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-elk-e7500/igt@gem_exec_fence@basic-await@vcs0.html">FAIL</a> +12 similar issues</p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-glk-j4005/igt@gem_exec_fence@basic-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-glk-j4005/igt@gem_exec_fence@basic-await@vcs0.html">FAIL</a> +18 similar issues</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-kbl-7567u/igt@gem_exec_fence@basic-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-kbl-7567u/igt@gem_exec_fence@basic-await@vcs0.html">FAIL</a> +20 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vcs1:</p>
<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-await@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-await@vcs1.html">FAIL</a> +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vecs0:</p>
<ul>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-kbl-guc/igt@gem_exec_fence@basic-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-kbl-guc/igt@gem_exec_fence@basic-await@vecs0.html">FAIL</a> +16 similar issues</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-kbl-x1275/igt@gem_exec_fence@basic-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-kbl-x1275/igt@gem_exec_fence@basic-await@vecs0.html">FAIL</a> +18 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@rcs0:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@rcs0.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bsw-nick/igt@gem_exec_fence@basic-busy@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bsw-nick/igt@gem_exec_fence@basic-busy@rcs0.html">FAIL</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@vcs0:</p>
<ul>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-skl-6700k2/igt@gem_exec_fence@basic-busy@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-skl-6700k2/igt@gem_exec_fence@basic-busy@vcs0.html">FAIL</a> +18 similar issues</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html">FAIL</a> +18 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@vcs0.html">FAIL</a> +18 similar issues</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bsw-kefka/igt@gem_exec_fence@basic-busy@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bsw-kefka/igt@gem_exec_fence@basic-busy@vcs0.html">FAIL</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@vecs0:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-icl-u2/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-icl-u2/igt@gem_exec_fence@basic-busy@vecs0.html">FAIL</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@bcs0:</p>
<ul>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-dg1-6/igt@gem_exec_fence@basic-wait@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/bat-dg1-6/igt@gem_exec_fence@basic-wait@bcs0.html">FAIL</a> +22 similar issues</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-icl-u2/igt@gem_exec_fence@basic-wait@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-icl-u2/igt@gem_exec_fence@basic-wait@bcs0.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@rcs0:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-dg1-5/igt@gem_exec_fence@basic-wait@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/bat-dg1-5/igt@gem_exec_fence@basic-wait@rcs0.html">FAIL</a> +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@vcs0:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-rkl-11600/igt@gem_exec_fence@basic-wait@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-rkl-11600/igt@gem_exec_fence@basic-wait@vcs0.html">FAIL</a> +20 similar issues</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-kbl-7500u/igt@gem_exec_fence@basic-wait@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-kbl-7500u/igt@gem_exec_fence@basic-wait@vcs0.html">FAIL</a> +18 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-cfl-8109u/igt@gem_exec_fence@basic-wait@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-cfl-8109u/igt@gem_exec_fence@basic-wait@vcs0.html">FAIL</a> +22 similar issues</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-skl-guc/igt@gem_exec_fence@basic-wait@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-skl-guc/igt@gem_exec_fence@basic-wait@vcs0.html">FAIL</a> +18 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@vecs0:</p>
<ul>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bdw-5557u/igt@gem_exec_fence@basic-wait@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bdw-5557u/igt@gem_exec_fence@basic-wait@vecs0.html">FAIL</a> +20 similar issues</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-kbl-8809g/igt@gem_exec_fence@basic-wait@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-kbl-8809g/igt@gem_exec_fence@basic-wait@vecs0.html">FAIL</a> +16 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@bcs0:</p>
<ul>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-adlp-4/igt@gem_exec_fence@nb-await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/bat-adlp-4/igt@gem_exec_fence@nb-await@bcs0.html">FAIL</a> +22 similar issues</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-rkl-guc/igt@gem_exec_fence@nb-await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-rkl-guc/igt@gem_exec_fence@nb-await@bcs0.html">FAIL</a> +20 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@rcs0:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-cfl-8700k/igt@gem_exec_fence@nb-await@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-cfl-8700k/igt@gem_exec_fence@nb-await@rcs0.html">FAIL</a> +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vcs0:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-skl-6600u/igt@gem_exec_fence@nb-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-skl-6600u/igt@gem_exec_fence@nb-await@vcs0.html">FAIL</a> +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vecs0:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-glk-dsi/igt@gem_exec_fence@nb-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-glk-dsi/igt@gem_exec_fence@nb-await@vecs0.html">FAIL</a> +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy@all:</p>
<ul>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-snb-2600/igt@gem_wait@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-snb-2600/igt@gem_wait@busy@all.html">FAIL</a> +6 similar issues</p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bwr-2160/igt@gem_wait@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bwr-2160/igt@gem_wait@busy@all.html">FAIL</a> +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait@all:</p>
<ul>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bxt-dsi/igt@gem_wait@wait@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bxt-dsi/igt@gem_wait@wait@all.html">FAIL</a> +18 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-hsw-4770/igt@gem_wait@wait@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-hsw-4770/igt@gem_wait@wait@all.html">FAIL</a> +22 similar issues</p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-blb-e6850/igt@gem_wait@wait@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-blb-e6850/igt@gem_wait@wait@all.html">FAIL</a> +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-dg1-5/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/bat-dg1-5/igt@i915_selftest@live@evict.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-dg1-6/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/bat-dg1-6/igt@i915_selftest@live@gtt.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-cfl-guc/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-cfl-guc/igt@kms_busy@basic@modeset.html">FAIL</a> +18 similar issues</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_fence@basic-await@rcs0:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-ehl-2/igt@gem_exec_fence@basic-await@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-ehl-2/igt@gem_exec_fence@basic-await@rcs0.html">FAIL</a> +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@vecs0:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html">FAIL</a> +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@bcs0:</p>
<ul>
<li>{bat-jsl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-jsl-2/igt@gem_exec_fence@basic-wait@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/bat-jsl-2/igt@gem_exec_fence@basic-wait@bcs0.html">FAIL</a> +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@rcs0:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-adlp-6/igt@gem_exec_fence@basic-wait@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/bat-adlp-6/igt@gem_exec_fence@basic-wait@rcs0.html">FAIL</a> +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@rcs0:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-tgl-dsi/igt@gem_exec_fence@nb-await@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-tgl-dsi/igt@gem_exec_fence@nb-await@rcs0.html">FAIL</a> +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vcs0:</p>
<ul>
<li>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-jsl-1/igt@gem_exec_fence@nb-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/bat-jsl-1/igt@gem_exec_fence@nb-await@vcs0.html">FAIL</a> +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vcs1:</p>
<ul>
<li>{bat-rpls-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/bat-rpls-1/igt@gem_exec_fence@nb-await@vcs1.html">FAIL</a> +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-jsl-1/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/bat-jsl-1/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_multi_lrc:</p>
<ul>
<li>{bat-jsl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-jsl-2/igt@i915_selftest@live@guc_multi_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/bat-jsl-2/igt@i915_selftest@live@guc_multi_lrc.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22083 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-hsw-4770/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@bcs0.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bsw-nick/igt@gem_exec_fence@basic-busy@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bsw-nick/igt@gem_exec_fence@basic-busy@bcs0.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bsw-kefka/igt@gem_exec_fence@basic-busy@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bsw-kefka/igt@gem_exec_fence@basic-busy@bcs0.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22083/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11129 -&gt; Patchwork_22083</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11129: 0b83d3cf9f9eab03ec804d56ac2686320a64f3ee @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6330: f73008bac9a8db0779264b170f630483e9165764 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22083: 8a7ed5aee6752ea69f9f74da6b0d8296093d3030 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8a7ed5aee675 drm/vmwgfx: remove vmw_wait_dma_fence<br />
5b0a478c7391 drm/i915: use dma_fence extractor functions<br />
51cb2edeadac drm/amdgpu: use dma_fence_chain_contained<br />
bef780ab04c3 dma-buf: add dma_fence_chain_contained helper<br />
dfa23eb99c11 dma-buf: Add dma_fence_array_for_each (v2)<br />
ece7651171f3 dma-buf: warn about containers in dma_resv object<br />
edbef78ca254 dma-buf: Warn about dma_fence_chain container rules v2<br />
da6a598d08b2 dma-buf: warn about dma_fence_array container rules v2<br />
5647bdbd9dd6 dma-buf: consolidate dma_fence subclass checking</p>

</body>
</html>

--===============6614097014389316459==--
