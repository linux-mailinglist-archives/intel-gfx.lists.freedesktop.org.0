Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B00E7FCB7D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 01:37:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2867710E365;
	Wed, 29 Nov 2023 00:37:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 83ADE10E365;
 Wed, 29 Nov 2023 00:37:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C926A0169;
 Wed, 29 Nov 2023 00:37:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2872865039615250104=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Wed, 29 Nov 2023 00:37:25 -0000
Message-ID: <170121824547.12091.4142493054780349848@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231128-selftest_wait_for_active_idle_event-v1-1-e365cb8b2d87@intel.com>
In-Reply-To: <20231128-selftest_wait_for_active_idle_event-v1-1-e365cb8b2d87@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_wait_for_active_idle_event_in_i915=5Factive?=
 =?utf-8?q?=5Funlock=5Fwait?=
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

--===============2872865039615250104==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: wait for active idle event in i915_active_unlock_wait
URL   : https://patchwork.freedesktop.org/series/126978/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13940 -> Patchwork_126978v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126978v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126978v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/index.html

Participating hosts (39 -> 36)
------------------------------

  Missing    (3): bat-kbl-2 bat-adlp-6 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126978v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_contexts:
    - fi-ilk-650:         [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html
    - bat-jsl-1:          [PASS][3] -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-jsl-1/igt@i915_selftest@live@gt_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/bat-jsl-1/igt@i915_selftest@live@gt_contexts.html
    - fi-tgl-1115g4:      [PASS][5] -> [TIMEOUT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-tgl-1115g4/igt@i915_selftest@live@gt_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-tgl-1115g4/igt@i915_selftest@live@gt_contexts.html
    - fi-blb-e6850:       [PASS][7] -> [TIMEOUT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-blb-e6850/igt@i915_selftest@live@gt_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-blb-e6850/igt@i915_selftest@live@gt_contexts.html
    - fi-skl-6600u:       [PASS][9] -> [TIMEOUT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-skl-6600u/igt@i915_selftest@live@gt_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-skl-6600u/igt@i915_selftest@live@gt_contexts.html
    - fi-apl-guc:         [PASS][11] -> [TIMEOUT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-apl-guc/igt@i915_selftest@live@gt_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-apl-guc/igt@i915_selftest@live@gt_contexts.html
    - fi-pnv-d510:        [PASS][13] -> [TIMEOUT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-pnv-d510/igt@i915_selftest@live@gt_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-pnv-d510/igt@i915_selftest@live@gt_contexts.html
    - fi-glk-j4005:       [PASS][15] -> [TIMEOUT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-glk-j4005/igt@i915_selftest@live@gt_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-glk-j4005/igt@i915_selftest@live@gt_contexts.html
    - fi-skl-guc:         [PASS][17] -> [TIMEOUT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-skl-guc/igt@i915_selftest@live@gt_contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-skl-guc/igt@i915_selftest@live@gt_contexts.html
    - fi-kbl-7567u:       [PASS][19] -> [TIMEOUT][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-kbl-7567u/igt@i915_selftest@live@gt_contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-kbl-7567u/igt@i915_selftest@live@gt_contexts.html
    - fi-cfl-8700k:       [PASS][21] -> [TIMEOUT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-cfl-8700k/igt@i915_selftest@live@gt_contexts.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-cfl-8700k/igt@i915_selftest@live@gt_contexts.html
    - fi-bsw-nick:        [PASS][23] -> [TIMEOUT][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-bsw-nick/igt@i915_selftest@live@gt_contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-bsw-nick/igt@i915_selftest@live@gt_contexts.html
    - fi-rkl-11600:       [PASS][25] -> [TIMEOUT][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-rkl-11600/igt@i915_selftest@live@gt_contexts.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-rkl-11600/igt@i915_selftest@live@gt_contexts.html
    - bat-adls-5:         [PASS][27] -> [TIMEOUT][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-adls-5/igt@i915_selftest@live@gt_contexts.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/bat-adls-5/igt@i915_selftest@live@gt_contexts.html
    - fi-cfl-guc:         [PASS][29] -> [TIMEOUT][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-cfl-guc/igt@i915_selftest@live@gt_contexts.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-cfl-guc/igt@i915_selftest@live@gt_contexts.html
    - bat-jsl-3:          [PASS][31] -> [TIMEOUT][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-jsl-3/igt@i915_selftest@live@gt_contexts.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/bat-jsl-3/igt@i915_selftest@live@gt_contexts.html
    - fi-kbl-x1275:       [PASS][33] -> [TIMEOUT][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-kbl-x1275/igt@i915_selftest@live@gt_contexts.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-kbl-x1275/igt@i915_selftest@live@gt_contexts.html
    - fi-cfl-8109u:       [PASS][35] -> [TIMEOUT][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-cfl-8109u/igt@i915_selftest@live@gt_contexts.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-cfl-8109u/igt@i915_selftest@live@gt_contexts.html
    - fi-ivb-3770:        [PASS][37] -> [TIMEOUT][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-ivb-3770/igt@i915_selftest@live@gt_contexts.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-ivb-3770/igt@i915_selftest@live@gt_contexts.html
    - fi-elk-e7500:       [PASS][39] -> [TIMEOUT][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-elk-e7500/igt@i915_selftest@live@gt_contexts.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-elk-e7500/igt@i915_selftest@live@gt_contexts.html
    - fi-kbl-guc:         [PASS][41] -> [TIMEOUT][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-kbl-guc/igt@i915_selftest@live@gt_contexts.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-kbl-guc/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-cfl-8109u:       [PASS][43] -> [WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-kbl-7567u:       [PASS][45] -> [WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-cfl-8700k:       [PASS][47] -> [WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-cfl-8700k/igt@i915_suspend@basic-s2idle-without-i915.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-cfl-8700k/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-ivb-3770:        [PASS][49] -> [WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-ivb-3770/igt@i915_suspend@basic-s2idle-without-i915.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-ivb-3770/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-elk-e7500:       [PASS][51] -> [WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-elk-e7500/igt@i915_suspend@basic-s2idle-without-i915.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-elk-e7500/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-bsw-nick:        [PASS][53] -> [WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-bsw-nick/igt@i915_suspend@basic-s2idle-without-i915.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-bsw-nick/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-tgl-1115g4:      [PASS][55] -> [WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-tgl-1115g4/igt@i915_suspend@basic-s2idle-without-i915.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-tgl-1115g4/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-cfl-guc:         [PASS][57] -> [WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-cfl-guc/igt@i915_suspend@basic-s2idle-without-i915.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-cfl-guc/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-kbl-x1275:       [PASS][59] -> [WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-kbl-x1275/igt@i915_suspend@basic-s2idle-without-i915.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-kbl-x1275/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-kbl-guc:         [PASS][61] -> [WARN][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-kbl-guc/igt@i915_suspend@basic-s2idle-without-i915.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-kbl-guc/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-ilk-650:         [PASS][63] -> [WARN][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-ilk-650/igt@i915_suspend@basic-s2idle-without-i915.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-ilk-650/igt@i915_suspend@basic-s2idle-without-i915.html
    - bat-jsl-1:          [PASS][65] -> [WARN][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-jsl-1/igt@i915_suspend@basic-s2idle-without-i915.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/bat-jsl-1/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-blb-e6850:       [PASS][67] -> [WARN][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-blb-e6850/igt@i915_suspend@basic-s2idle-without-i915.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-blb-e6850/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-rkl-11600:       [PASS][69] -> [WARN][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-rkl-11600/igt@i915_suspend@basic-s2idle-without-i915.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-rkl-11600/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-skl-6600u:       [PASS][71] -> [WARN][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-skl-6600u/igt@i915_suspend@basic-s2idle-without-i915.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-skl-6600u/igt@i915_suspend@basic-s2idle-without-i915.html
    - bat-adls-5:         [PASS][73] -> [WARN][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-adls-5/igt@i915_suspend@basic-s2idle-without-i915.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/bat-adls-5/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-apl-guc:         [PASS][75] -> [WARN][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-apl-guc/igt@i915_suspend@basic-s2idle-without-i915.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-apl-guc/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-pnv-d510:        [PASS][77] -> [WARN][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-pnv-d510/igt@i915_suspend@basic-s2idle-without-i915.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-pnv-d510/igt@i915_suspend@basic-s2idle-without-i915.html
    - bat-jsl-3:          [PASS][79] -> [WARN][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-jsl-3/igt@i915_suspend@basic-s2idle-without-i915.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/bat-jsl-3/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-glk-j4005:       [PASS][81] -> [WARN][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-glk-j4005/igt@i915_suspend@basic-s2idle-without-i915.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-glk-j4005/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-skl-guc:         [PASS][83] -> [WARN][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-skl-guc/igt@i915_suspend@basic-s2idle-without-i915.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-skl-guc/igt@i915_suspend@basic-s2idle-without-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_126978v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-dg2-9:          [INCOMPLETE][85] ([i915#9275]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [DMESG-FAIL][87] ([i915#9717]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - bat-adlp-11:        [DMESG-WARN][89] ([i915#6868]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-modeset@b-dp6:
    - bat-adlp-11:        [FAIL][91] ([i915#6121]) -> [PASS][92] +3 other tests pass
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@b-dp6.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@b-dp6.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [FAIL][93] ([IGT#3]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  
  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
  [i915#9717]: https://gitlab.freedesktop.org/drm/intel/issues/9717


Build changes
-------------

  * Linux: CI_DRM_13940 -> Patchwork_126978v1

  CI-20190529: 20190529
  CI_DRM_13940: 901cb0fd3326a1c7d40bed6568db1d9e46a1f466 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7609: 72a759595100b8d167ca78cd2d62e9acd97e36bf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_126978v1: 901cb0fd3326a1c7d40bed6568db1d9e46a1f466 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

63988bbf2430 drm/i915/selftests: wait for active idle event in i915_active_unlock_wait

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/index.html

--===============2872865039615250104==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: wait for active idle event in i915_active_unlock_wait</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126978/">https://patchwork.freedesktop.org/series/126978/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13940 -&gt; Patchwork_126978v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126978v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_126978v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/index.html</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Missing    (3): bat-kbl-2 bat-adlp-6 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_126978v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html">TIMEOUT</a></p>
</li>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-jsl-1/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/bat-jsl-1/igt@i915_selftest@live@gt_contexts.html">TIMEOUT</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-tgl-1115g4/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-tgl-1115g4/igt@i915_selftest@live@gt_contexts.html">TIMEOUT</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-blb-e6850/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-blb-e6850/igt@i915_selftest@live@gt_contexts.html">TIMEOUT</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-skl-6600u/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-skl-6600u/igt@i915_selftest@live@gt_contexts.html">TIMEOUT</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-apl-guc/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-apl-guc/igt@i915_selftest@live@gt_contexts.html">TIMEOUT</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-pnv-d510/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-pnv-d510/igt@i915_selftest@live@gt_contexts.html">TIMEOUT</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-glk-j4005/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-glk-j4005/igt@i915_selftest@live@gt_contexts.html">TIMEOUT</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-skl-guc/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-skl-guc/igt@i915_selftest@live@gt_contexts.html">TIMEOUT</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-kbl-7567u/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-kbl-7567u/igt@i915_selftest@live@gt_contexts.html">TIMEOUT</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-cfl-8700k/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-cfl-8700k/igt@i915_selftest@live@gt_contexts.html">TIMEOUT</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-bsw-nick/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-bsw-nick/igt@i915_selftest@live@gt_contexts.html">TIMEOUT</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-rkl-11600/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-rkl-11600/igt@i915_selftest@live@gt_contexts.html">TIMEOUT</a></p>
</li>
<li>
<p>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-adls-5/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/bat-adls-5/igt@i915_selftest@live@gt_contexts.html">TIMEOUT</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-cfl-guc/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-cfl-guc/igt@i915_selftest@live@gt_contexts.html">TIMEOUT</a></p>
</li>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-jsl-3/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/bat-jsl-3/igt@i915_selftest@live@gt_contexts.html">TIMEOUT</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-kbl-x1275/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-kbl-x1275/igt@i915_selftest@live@gt_contexts.html">TIMEOUT</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-cfl-8109u/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-cfl-8109u/igt@i915_selftest@live@gt_contexts.html">TIMEOUT</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-ivb-3770/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-ivb-3770/igt@i915_selftest@live@gt_contexts.html">TIMEOUT</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-elk-e7500/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-elk-e7500/igt@i915_selftest@live@gt_contexts.html">TIMEOUT</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-kbl-guc/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-kbl-guc/igt@i915_selftest@live@gt_contexts.html">TIMEOUT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-cfl-8700k/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-cfl-8700k/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-ivb-3770/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-ivb-3770/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-elk-e7500/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-elk-e7500/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-bsw-nick/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-bsw-nick/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-tgl-1115g4/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-tgl-1115g4/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-cfl-guc/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-cfl-guc/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-kbl-x1275/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-kbl-x1275/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-kbl-guc/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-kbl-guc/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-ilk-650/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-ilk-650/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></p>
</li>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-jsl-1/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/bat-jsl-1/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-blb-e6850/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-blb-e6850/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-rkl-11600/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-rkl-11600/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-skl-6600u/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-skl-6600u/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></p>
</li>
<li>
<p>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-adls-5/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/bat-adls-5/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-apl-guc/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-apl-guc/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-pnv-d510/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-pnv-d510/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></p>
</li>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-jsl-3/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/bat-jsl-3/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-glk-j4005/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-glk-j4005/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-skl-guc/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-skl-guc/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126978v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-mtlp-8/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9717">i915#9717</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-dp6:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@b-dp6.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@b-dp6.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126978v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13940 -&gt; Patchwork_126978v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13940: 901cb0fd3326a1c7d40bed6568db1d9e46a1f466 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7609: 72a759595100b8d167ca78cd2d62e9acd97e36bf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_126978v1: 901cb0fd3326a1c7d40bed6568db1d9e46a1f466 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>63988bbf2430 drm/i915/selftests: wait for active idle event in i915_active_unlock_wait</p>

</body>
</html>

--===============2872865039615250104==--
