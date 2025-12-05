Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C439CA9237
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Dec 2025 20:49:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C3F410EBA4;
	Fri,  5 Dec 2025 19:49:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BC7B10EBA4;
 Fri,  5 Dec 2025 19:49:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3273749756042681584=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm=3A_Reduce_page_tables?=
 =?utf-8?q?_overhead_with_THP?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Lo=C3=AFc_Molinari?= <loic.molinari@collabora.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 05 Dec 2025 19:49:10 -0000
Message-ID: <176496415008.62152.5888782753296694861@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20251205182231.194072-1-loic.molinari@collabora.com>
In-Reply-To: <20251205182231.194072-1-loic.molinari@collabora.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============3273749756042681584==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Reduce page tables overhead with THP
URL   : https://patchwork.freedesktop.org/series/158591/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17641 -> Patchwork_158591v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_158591v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_158591v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/index.html

Participating hosts (45 -> 41)
------------------------------

  Missing    (4): fi-kbl-7567u bat-twl-2 fi-snb-2520m fi-skl-6600u 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_158591v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live:
    - fi-hsw-4770:        [PASS][1] -> [ABORT][2] +1 other test abort
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-hsw-4770/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-hsw-4770/igt@i915_selftest@live.html
    - fi-ivb-3770:        [PASS][3] -> [ABORT][4] +1 other test abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-ivb-3770/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-ivb-3770/igt@i915_selftest@live.html
    - bat-mtlp-8:         [PASS][5] -> [ABORT][6] +1 other test abort
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-mtlp-8/igt@i915_selftest@live.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-dg2-8:          [PASS][7] -> [ABORT][8] +1 other test abort
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-dg2-8/igt@i915_selftest@live.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-dg2-8/igt@i915_selftest@live.html
    - fi-kbl-guc:         [PASS][9] -> [ABORT][10] +1 other test abort
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-kbl-guc/igt@i915_selftest@live.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-kbl-guc/igt@i915_selftest@live.html
    - bat-adls-6:         [PASS][11] -> [ABORT][12] +1 other test abort
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-adls-6/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-adls-6/igt@i915_selftest@live.html
    - bat-jsl-1:          [PASS][13] -> [ABORT][14] +1 other test abort
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-jsl-1/igt@i915_selftest@live.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-jsl-1/igt@i915_selftest@live.html
    - fi-bsw-n3050:       [PASS][15] -> [ABORT][16] +1 other test abort
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-bsw-n3050/igt@i915_selftest@live.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-bsw-n3050/igt@i915_selftest@live.html
    - bat-arlh-3:         [PASS][17] -> [ABORT][18] +1 other test abort
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-arlh-3/igt@i915_selftest@live.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-arlh-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@hugepages:
    - fi-glk-j4005:       [PASS][19] -> [ABORT][20] +1 other test abort
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-glk-j4005/igt@i915_selftest@live@hugepages.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-glk-j4005/igt@i915_selftest@live@hugepages.html
    - bat-adlp-9:         [PASS][21] -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-adlp-9/igt@i915_selftest@live@hugepages.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-adlp-9/igt@i915_selftest@live@hugepages.html
    - bat-twl-1:          [PASS][23] -> [ABORT][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-twl-1/igt@i915_selftest@live@hugepages.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-twl-1/igt@i915_selftest@live@hugepages.html
    - bat-apl-1:          [PASS][25] -> [ABORT][26] +1 other test abort
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-apl-1/igt@i915_selftest@live@hugepages.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-apl-1/igt@i915_selftest@live@hugepages.html
    - bat-arls-5:         [PASS][27] -> [ABORT][28] +1 other test abort
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-arls-5/igt@i915_selftest@live@hugepages.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-arls-5/igt@i915_selftest@live@hugepages.html
    - bat-rplp-1:         [PASS][29] -> [ABORT][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-rplp-1/igt@i915_selftest@live@hugepages.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-rplp-1/igt@i915_selftest@live@hugepages.html
    - bat-arlh-2:         [PASS][31] -> [ABORT][32] +1 other test abort
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-arlh-2/igt@i915_selftest@live@hugepages.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-arlh-2/igt@i915_selftest@live@hugepages.html
    - fi-rkl-11600:       [PASS][33] -> [ABORT][34] +1 other test abort
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-rkl-11600/igt@i915_selftest@live@hugepages.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-rkl-11600/igt@i915_selftest@live@hugepages.html
    - bat-dg1-7:          [PASS][35] -> [ABORT][36] +1 other test abort
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-dg1-7/igt@i915_selftest@live@hugepages.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-dg1-7/igt@i915_selftest@live@hugepages.html
    - bat-dg2-9:          [PASS][37] -> [ABORT][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-dg2-9/igt@i915_selftest@live@hugepages.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-dg2-9/igt@i915_selftest@live@hugepages.html
    - fi-kbl-x1275:       [PASS][39] -> [ABORT][40] +1 other test abort
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html
    - bat-adlp-11:        [PASS][41] -> [ABORT][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-adlp-11/igt@i915_selftest@live@hugepages.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-adlp-11/igt@i915_selftest@live@hugepages.html
    - bat-rpls-4:         [PASS][43] -> [ABORT][44] +1 other test abort
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-rpls-4/igt@i915_selftest@live@hugepages.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-rpls-4/igt@i915_selftest@live@hugepages.html
    - fi-kbl-8809g:       [PASS][45] -> [ABORT][46] +1 other test abort
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-kbl-8809g/igt@i915_selftest@live@hugepages.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-kbl-8809g/igt@i915_selftest@live@hugepages.html
    - bat-jsl-5:          [PASS][47] -> [ABORT][48] +1 other test abort
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-jsl-5/igt@i915_selftest@live@hugepages.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-jsl-5/igt@i915_selftest@live@hugepages.html
    - bat-dg1-6:          [PASS][49] -> [ABORT][50] +1 other test abort
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-dg1-6/igt@i915_selftest@live@hugepages.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-dg1-6/igt@i915_selftest@live@hugepages.html
    - fi-tgl-1115g4:      [PASS][51] -> [ABORT][52] +1 other test abort
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-tgl-1115g4/igt@i915_selftest@live@hugepages.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-tgl-1115g4/igt@i915_selftest@live@hugepages.html
    - fi-cfl-guc:         [PASS][53] -> [ABORT][54] +1 other test abort
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-cfl-guc/igt@i915_selftest@live@hugepages.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-cfl-guc/igt@i915_selftest@live@hugepages.html
    - bat-mtlp-6:         [PASS][55] -> [ABORT][56] +1 other test abort
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-mtlp-6/igt@i915_selftest@live@hugepages.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-mtlp-6/igt@i915_selftest@live@hugepages.html
    - fi-cfl-8700k:       [PASS][57] -> [ABORT][58] +1 other test abort
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-cfl-8700k/igt@i915_selftest@live@hugepages.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-cfl-8700k/igt@i915_selftest@live@hugepages.html
    - bat-dg2-14:         [PASS][59] -> [ABORT][60] +1 other test abort
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-dg2-14/igt@i915_selftest@live@hugepages.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-dg2-14/igt@i915_selftest@live@hugepages.html
    - fi-bsw-nick:        [PASS][61] -> [ABORT][62] +1 other test abort
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-bsw-nick/igt@i915_selftest@live@hugepages.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-bsw-nick/igt@i915_selftest@live@hugepages.html
    - bat-kbl-2:          [PASS][63] -> [ABORT][64] +1 other test abort
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-kbl-2/igt@i915_selftest@live@hugepages.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-kbl-2/igt@i915_selftest@live@hugepages.html
    - bat-adlp-6:         [PASS][65] -> [ABORT][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-adlp-6/igt@i915_selftest@live@hugepages.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-adlp-6/igt@i915_selftest@live@hugepages.html
    - bat-atsm-1:         [PASS][67] -> [INCOMPLETE][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-atsm-1/igt@i915_selftest@live@hugepages.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-atsm-1/igt@i915_selftest@live@hugepages.html
    - bat-dg2-11:         [PASS][69] -> [ABORT][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-dg2-11/igt@i915_selftest@live@hugepages.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-dg2-11/igt@i915_selftest@live@hugepages.html
    - bat-mtlp-9:         [PASS][71] -> [ABORT][72] +1 other test abort
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-mtlp-9/igt@i915_selftest@live@hugepages.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-mtlp-9/igt@i915_selftest@live@hugepages.html
    - bat-arls-6:         [PASS][73] -> [ABORT][74] +1 other test abort
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-arls-6/igt@i915_selftest@live@hugepages.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-arls-6/igt@i915_selftest@live@hugepages.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-dg2-9:          [DMESG-FAIL][75] ([i915#12061]) -> [ABORT][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-dg2-9/igt@i915_selftest@live.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-dg2-9/igt@i915_selftest@live.html
    - bat-dg2-11:         [DMESG-FAIL][77] ([i915#12061]) -> [ABORT][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-dg2-11/igt@i915_selftest@live.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-dg2-11/igt@i915_selftest@live.html

  
New tests
---------

  New tests have been introduced between CI_DRM_17641 and Patchwork_158591v1:

### New IGT tests (8) ###

  * igt@i915_selftest@addfb25-x-tiled-legacy:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_selftest@addfb25-x-tiled-mismatch-legacy:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_selftest@bad-pitch-256:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_selftest@basic-eu-total:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_selftest@basic-llseek-bad:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_selftest@dsc-basic:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_selftest@inject-audio:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_selftest@second-client:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_158591v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-adlp-9:         [PASS][79] -> [ABORT][80] ([i915#14365])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-adlp-9/igt@i915_selftest@live.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-adlp-9/igt@i915_selftest@live.html
    - bat-twl-1:          [PASS][81] -> [ABORT][82] ([i915#14365])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-twl-1/igt@i915_selftest@live.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-twl-1/igt@i915_selftest@live.html
    - bat-rplp-1:         [PASS][83] -> [ABORT][84] ([i915#14365])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-rplp-1/igt@i915_selftest@live.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-rplp-1/igt@i915_selftest@live.html
    - bat-adlp-11:        [PASS][85] -> [ABORT][86] ([i915#14365])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-adlp-11/igt@i915_selftest@live.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-adlp-11/igt@i915_selftest@live.html
    - bat-adlp-6:         [PASS][87] -> [ABORT][88] ([i915#14365])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-adlp-6/igt@i915_selftest@live.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-adlp-6/igt@i915_selftest@live.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-tgl-1115g4:      [PASS][89] -> [FAIL][90] ([i915#14867])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-atsm-1:         [DMESG-FAIL][91] ([i915#12061] / [i915#13929]) -> [INCOMPLETE][92] ([i915#12061] / [i915#15157])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-atsm-1/igt@i915_selftest@live.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-atsm-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@mman:
    - bat-atsm-1:         [DMESG-FAIL][93] ([i915#13929]) -> [DMESG-FAIL][94] ([i915#14204])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-atsm-1/igt@i915_selftest@live@mman.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-atsm-1/igt@i915_selftest@live@mman.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
  [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
  [i915#14365]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365
  [i915#14867]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14867
  [i915#15157]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15157


Build changes
-------------

  * Linux: CI_DRM_17641 -> Patchwork_158591v1

  CI-20190529: 20190529
  CI_DRM_17641: abc20a831a03dc608256340159c23e01ee6b6ead @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8656: 1fa8aeb0848614e6204602c5fe2949e049f087c9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_158591v1: abc20a831a03dc608256340159c23e01ee6b6ead @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/index.html

--===============3273749756042681584==
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
<tr><td><b>Series:</b></td><td>drm: Reduce page tables overhead with THP</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/158591/">https://patchwork.freedesktop.org/series/158591/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17641 -&gt; Patchwork_158591v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_158591v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_158591v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/index.html</p>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Missing    (4): fi-kbl-7567u bat-twl-2 fi-snb-2520m fi-skl-6600u </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_158591v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-hsw-4770/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-hsw-4770/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-ivb-3770/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-ivb-3770/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-mtlp-8/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-dg2-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-dg2-8/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-kbl-guc/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-kbl-guc/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-adls-6/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-adls-6/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-jsl-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-jsl-1/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-bsw-n3050/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-bsw-n3050/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-arlh-3/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-glk-j4005/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-glk-j4005/igt@i915_selftest@live@hugepages.html">ABORT</a> +1 other test abort</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-adlp-9/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-adlp-9/igt@i915_selftest@live@hugepages.html">ABORT</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-twl-1/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-twl-1/igt@i915_selftest@live@hugepages.html">ABORT</a></li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-apl-1/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-apl-1/igt@i915_selftest@live@hugepages.html">ABORT</a> +1 other test abort</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-arls-5/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-arls-5/igt@i915_selftest@live@hugepages.html">ABORT</a> +1 other test abort</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-rplp-1/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-rplp-1/igt@i915_selftest@live@hugepages.html">ABORT</a></li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-arlh-2/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-arlh-2/igt@i915_selftest@live@hugepages.html">ABORT</a> +1 other test abort</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-rkl-11600/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-rkl-11600/igt@i915_selftest@live@hugepages.html">ABORT</a> +1 other test abort</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-dg1-7/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-dg1-7/igt@i915_selftest@live@hugepages.html">ABORT</a> +1 other test abort</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-dg2-9/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-dg2-9/igt@i915_selftest@live@hugepages.html">ABORT</a></li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html">ABORT</a> +1 other test abort</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-adlp-11/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-adlp-11/igt@i915_selftest@live@hugepages.html">ABORT</a></li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-rpls-4/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-rpls-4/igt@i915_selftest@live@hugepages.html">ABORT</a> +1 other test abort</li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-kbl-8809g/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-kbl-8809g/igt@i915_selftest@live@hugepages.html">ABORT</a> +1 other test abort</li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-jsl-5/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-jsl-5/igt@i915_selftest@live@hugepages.html">ABORT</a> +1 other test abort</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-dg1-6/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-dg1-6/igt@i915_selftest@live@hugepages.html">ABORT</a> +1 other test abort</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-tgl-1115g4/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-tgl-1115g4/igt@i915_selftest@live@hugepages.html">ABORT</a> +1 other test abort</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-cfl-guc/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-cfl-guc/igt@i915_selftest@live@hugepages.html">ABORT</a> +1 other test abort</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-mtlp-6/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-mtlp-6/igt@i915_selftest@live@hugepages.html">ABORT</a> +1 other test abort</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-cfl-8700k/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-cfl-8700k/igt@i915_selftest@live@hugepages.html">ABORT</a> +1 other test abort</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-dg2-14/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-dg2-14/igt@i915_selftest@live@hugepages.html">ABORT</a> +1 other test abort</li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-bsw-nick/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-bsw-nick/igt@i915_selftest@live@hugepages.html">ABORT</a> +1 other test abort</li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-kbl-2/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-kbl-2/igt@i915_selftest@live@hugepages.html">ABORT</a> +1 other test abort</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-adlp-6/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-adlp-6/igt@i915_selftest@live@hugepages.html">ABORT</a></li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-atsm-1/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-atsm-1/igt@i915_selftest@live@hugepages.html">INCOMPLETE</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-dg2-11/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-dg2-11/igt@i915_selftest@live@hugepages.html">ABORT</a></li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-mtlp-9/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-mtlp-9/igt@i915_selftest@live@hugepages.html">ABORT</a> +1 other test abort</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-arls-6/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-arls-6/igt@i915_selftest@live@hugepages.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-dg2-9/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-dg2-9/igt@i915_selftest@live.html">ABORT</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-dg2-11/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-dg2-11/igt@i915_selftest@live.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_17641 and Patchwork_158591v1:</p>
<h3>New IGT tests (8)</h3>
<ul>
<li>
<p>igt@i915_selftest@addfb25-x-tiled-legacy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@bad-pitch-256:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@basic-eu-total:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@basic-llseek-bad:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@dsc-basic:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@inject-audio:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@second-client:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_158591v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-adlp-9/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-adlp-9/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>)</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-twl-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-twl-1/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>)</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-rplp-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-rplp-1/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>)</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-adlp-11/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-adlp-11/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>)</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-adlp-6/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-adlp-6/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14867">i915#14867</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-atsm-1/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15157">i915#15157</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17641/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158591v1/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17641 -&gt; Patchwork_158591v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17641: abc20a831a03dc608256340159c23e01ee6b6ead @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8656: 1fa8aeb0848614e6204602c5fe2949e049f087c9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_158591v1: abc20a831a03dc608256340159c23e01ee6b6ead @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3273749756042681584==--
