Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1647EE551
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 17:40:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEF2710E63C;
	Thu, 16 Nov 2023 16:40:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD23410E63C;
 Thu, 16 Nov 2023 16:40:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 98DF6AADDA;
 Thu, 16 Nov 2023 16:40:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6496346268956247044=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Thu, 16 Nov 2023 16:40:16 -0000
Message-ID: <170015281661.3091.8038418623579838730@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231116113859.4151950-1-jouni.hogander@intel.com>
In-Reply-To: <20231116113859.4151950-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUHJl?=
 =?utf-8?q?pare_intel=5Ffb_for_Xe_=28rev2=29?=
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

--===============6496346268956247044==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Prepare intel_fb for Xe (rev2)
URL   : https://patchwork.freedesktop.org/series/126507/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13884 -> Patchwork_126507v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126507v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126507v2, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/index.html

Participating hosts (39 -> 35)
------------------------------

  Additional (1): bat-dg2-9 
  Missing    (5): bat-kbl-2 bat-dg1-5 bat-dg2-8 fi-snb-2520m bat-rpls-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126507v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg2-9:          NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@migrate:
    - fi-hsw-4770:        [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-hsw-4770/igt@i915_selftest@live@migrate.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-hsw-4770/igt@i915_selftest@live@migrate.html

  * igt@kms_addfb_basic@addfb25-4-tiled:
    - fi-apl-guc:         [PASS][4] -> [FAIL][5] +1 other test fail
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-apl-guc/igt@kms_addfb_basic@addfb25-4-tiled.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-apl-guc/igt@kms_addfb_basic@addfb25-4-tiled.html
    - fi-pnv-d510:        [PASS][6] -> [FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-pnv-d510/igt@kms_addfb_basic@addfb25-4-tiled.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-pnv-d510/igt@kms_addfb_basic@addfb25-4-tiled.html
    - fi-kbl-x1275:       [PASS][8] -> [FAIL][9] +1 other test fail
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-kbl-x1275/igt@kms_addfb_basic@addfb25-4-tiled.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-kbl-x1275/igt@kms_addfb_basic@addfb25-4-tiled.html
    - fi-skl-6600u:       [PASS][10] -> [FAIL][11] +1 other test fail
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-skl-6600u/igt@kms_addfb_basic@addfb25-4-tiled.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-skl-6600u/igt@kms_addfb_basic@addfb25-4-tiled.html
    - fi-blb-e6850:       [PASS][12] -> [FAIL][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-blb-e6850/igt@kms_addfb_basic@addfb25-4-tiled.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-blb-e6850/igt@kms_addfb_basic@addfb25-4-tiled.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - bat-jsl-3:          [PASS][14] -> [FAIL][15] +1 other test fail
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-jsl-3/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-jsl-3/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-glk-j4005:       [PASS][16] -> [FAIL][17] +1 other test fail
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - bat-adlp-9:         [PASS][18] -> [FAIL][19] +2 other tests fail
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-adlp-9/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-adlp-9/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-skl-guc:         [PASS][20] -> [FAIL][21] +1 other test fail
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-skl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-skl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - bat-dg2-11:         [PASS][22] -> [FAIL][23] +2 other tests fail
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-dg2-11/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-11/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-cfl-8109u:       [PASS][24] -> [FAIL][25] +1 other test fail
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-cfl-8109u/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-cfl-8109u/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-kbl-7567u:       [PASS][26] -> [FAIL][27] +1 other test fail
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-kbl-7567u/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-kbl-7567u/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - bat-adln-1:         [PASS][28] -> [FAIL][29] +2 other tests fail
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-adln-1/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-adln-1/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-ivb-3770:        [PASS][30] -> [FAIL][31] +3 other tests fail
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-ivb-3770/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-ivb-3770/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-elk-e7500:       [PASS][32] -> [FAIL][33] +3 other tests fail
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-elk-e7500/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-elk-e7500/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-bsw-nick:        [PASS][34] -> [FAIL][35] +3 other tests fail
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-bsw-nick/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-bsw-nick/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-kbl-guc:         [PASS][36] -> [FAIL][37] +1 other test fail
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-kbl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-kbl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - bat-adlm-1:         [PASS][38] -> [FAIL][39] +2 other tests fail
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-adlm-1/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-adlm-1/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - bat-rplp-1:         [PASS][40] -> [FAIL][41] +2 other tests fail
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-rplp-1/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-rplp-1/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-ilk-650:         [PASS][42] -> [FAIL][43] +3 other tests fail
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-ilk-650/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-ilk-650/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-tgl-1115g4:      [PASS][44] -> [FAIL][45] +2 other tests fail
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-tgl-1115g4/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-tgl-1115g4/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-cfl-guc:         [PASS][46] -> [FAIL][47] +1 other test fail
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-cfl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-cfl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - bat-mtlp-6:         [PASS][48] -> [FAIL][49] +2 other tests fail
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-mtlp-6/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-mtlp-6/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-cfl-8700k:       [PASS][50] -> [FAIL][51] +1 other test fail
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-cfl-8700k/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-cfl-8700k/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-pnv-d510:        [PASS][52] -> [ABORT][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-pnv-d510/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-pnv-d510/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_addfb_basic@addfb25-y-tiled-legacy:
    - bat-dg2-9:          NOTRUN -> [FAIL][54] +2 other tests fail
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html
    - fi-hsw-4770:        [PASS][55] -> [FAIL][56] +3 other tests fail
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html
    - bat-mtlp-8:         [PASS][57] -> [FAIL][58] +2 other tests fail
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-yf-tiled-legacy:
    - bat-adlp-6:         [PASS][59] -> [FAIL][60] +2 other tests fail
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-adlp-6/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-adlp-6/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html
    - fi-rkl-11600:       [PASS][61] -> [FAIL][62] +2 other tests fail
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-rkl-11600/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-rkl-11600/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html
    - bat-adls-5:         [PASS][63] -> [FAIL][64] +2 other tests fail
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-adls-5/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-adls-5/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - {bat-dg2-14}:       [PASS][65] -> [FAIL][66] +2 other tests fail
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-dg2-14/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-14/igt@kms_addfb_basic@addfb25-bad-modifier.html

  
Known issues
------------

  Here are the changes found in Patchwork_126507v2 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-bsw-n3050:       [PASS][67] -> [FAIL][68] ([i915#8293])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-bsw-n3050/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-bsw-n3050/boot.html
    - bat-jsl-1:          [PASS][69] -> [FAIL][70] ([i915#8293])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-jsl-1/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-jsl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_mmap@basic:
    - bat-dg2-9:          NOTRUN -> [SKIP][71] ([i915#4083])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic:
    - bat-dg2-9:          NOTRUN -> [SKIP][72] ([i915#4077]) +2 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@gem_mmap_gtt@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-dg2-9:          NOTRUN -> [SKIP][73] ([i915#4079]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@gem_render_tiled_blits@basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg2-9:          NOTRUN -> [SKIP][74] ([i915#6621])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-glk-j4005:       [PASS][75] -> [DMESG-FAIL][76] ([i915#5334])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-dg2-9:          NOTRUN -> [SKIP][77] ([i915#5190])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg2-9:          NOTRUN -> [SKIP][78] ([i915#4215] / [i915#5190])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - bat-dg2-9:          NOTRUN -> [SKIP][79] ([i915#4212]) +6 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - bat-dg2-9:          NOTRUN -> [SKIP][80] ([i915#4212] / [i915#5608])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-dg2-9:          NOTRUN -> [SKIP][81] ([i915#4103] / [i915#4213] / [i915#5608]) +1 other test skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-dg2-9:          NOTRUN -> [SKIP][82] ([fdo#109285])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-dg2-9:          NOTRUN -> [SKIP][83] ([i915#5274])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-adlp-9:         NOTRUN -> [SKIP][84] ([i915#1845] / [i915#3546]) +3 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-dg2-9:          NOTRUN -> [SKIP][85] ([i915#3555] / [i915#4098])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-dg2-9:          NOTRUN -> [SKIP][86] ([i915#3708])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-dg2-9:          NOTRUN -> [SKIP][87] ([i915#3708] / [i915#4077]) +1 other test skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-write:
    - bat-dg2-9:          NOTRUN -> [SKIP][88] ([i915#3291] / [i915#3708]) +2 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][89] ([i915#5334]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [ABORT][91] ([i915#8668]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673


Build changes
-------------

  * Linux: CI_DRM_13884 -> Patchwork_126507v2

  CI-20190529: 20190529
  CI_DRM_13884: 9739fd04dfe62f6b46eb8f6af604decabb45a87b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7590: c484e1422184a3183d11f1595e53a6715574520f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_126507v2: 9739fd04dfe62f6b46eb8f6af604decabb45a87b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

0cf348958751 drm/i915/display: Split i915 specific code away from intel_fb.c
b407f4f02b33 drm/i915/display: Convert intel_fb_modifier_to_tiling as non-static
f3753e2d5ab5 drm/i915/display: use intel_bo_to_drm_bo in intel_fb.c

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/index.html

--===============6496346268956247044==
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
<tr><td><b>Series:</b></td><td>Prepare intel_fb for Xe (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126507/">https://patchwork.freedesktop.org/series/126507/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13884 -&gt; Patchwork_126507v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126507v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_126507v2, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/index.html</p>
<h2>Participating hosts (39 -&gt; 35)</h2>
<p>Additional (1): bat-dg2-9 <br />
  Missing    (5): bat-kbl-2 bat-dg1-5 bat-dg2-8 fi-snb-2520m bat-rpls-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_126507v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@i915_selftest@live@hangcheck.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-hsw-4770/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-hsw-4770/igt@i915_selftest@live@migrate.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-4-tiled:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-apl-guc/igt@kms_addfb_basic@addfb25-4-tiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-apl-guc/igt@kms_addfb_basic@addfb25-4-tiled.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-pnv-d510/igt@kms_addfb_basic@addfb25-4-tiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-pnv-d510/igt@kms_addfb_basic@addfb25-4-tiled.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-kbl-x1275/igt@kms_addfb_basic@addfb25-4-tiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-kbl-x1275/igt@kms_addfb_basic@addfb25-4-tiled.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-skl-6600u/igt@kms_addfb_basic@addfb25-4-tiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-skl-6600u/igt@kms_addfb_basic@addfb25-4-tiled.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-blb-e6850/igt@kms_addfb_basic@addfb25-4-tiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-blb-e6850/igt@kms_addfb_basic@addfb25-4-tiled.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-bad-modifier:</p>
<ul>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-jsl-3/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-jsl-3/igt@kms_addfb_basic@addfb25-bad-modifier.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-adlp-9/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-adlp-9/igt@kms_addfb_basic@addfb25-bad-modifier.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-skl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-skl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-dg2-11/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-11/igt@kms_addfb_basic@addfb25-bad-modifier.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-cfl-8109u/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-cfl-8109u/igt@kms_addfb_basic@addfb25-bad-modifier.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-kbl-7567u/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-kbl-7567u/igt@kms_addfb_basic@addfb25-bad-modifier.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-adln-1/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-adln-1/igt@kms_addfb_basic@addfb25-bad-modifier.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-ivb-3770/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-ivb-3770/igt@kms_addfb_basic@addfb25-bad-modifier.html">FAIL</a> +3 other tests fail</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-elk-e7500/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-elk-e7500/igt@kms_addfb_basic@addfb25-bad-modifier.html">FAIL</a> +3 other tests fail</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-bsw-nick/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-bsw-nick/igt@kms_addfb_basic@addfb25-bad-modifier.html">FAIL</a> +3 other tests fail</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-kbl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-kbl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-adlm-1/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-adlm-1/igt@kms_addfb_basic@addfb25-bad-modifier.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-rplp-1/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-rplp-1/igt@kms_addfb_basic@addfb25-bad-modifier.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-ilk-650/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-ilk-650/igt@kms_addfb_basic@addfb25-bad-modifier.html">FAIL</a> +3 other tests fail</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-tgl-1115g4/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-tgl-1115g4/igt@kms_addfb_basic@addfb25-bad-modifier.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-cfl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-cfl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-mtlp-6/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-mtlp-6/igt@kms_addfb_basic@addfb25-bad-modifier.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-cfl-8700k/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-cfl-8700k/igt@kms_addfb_basic@addfb25-bad-modifier.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-pnv-d510/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-pnv-d510/igt@kms_addfb_basic@addfb25-bad-modifier.html">ABORT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-legacy:</p>
<ul>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html">FAIL</a> +3 other tests fail</p>
</li>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html">FAIL</a> +2 other tests fail</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-yf-tiled-legacy:</p>
<ul>
<li>
<p>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-adlp-6/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-adlp-6/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-rkl-11600/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-rkl-11600/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-adls-5/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-adls-5/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">FAIL</a> +2 other tests fail</p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_addfb_basic@addfb25-bad-modifier:<ul>
<li>{bat-dg2-14}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-dg2-14/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-14/igt@kms_addfb_basic@addfb25-bad-modifier.html">FAIL</a> +2 other tests fail</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126507v2 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-bsw-n3050/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-bsw-n3050/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</p>
</li>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@kms_addfb_basic@tile-pitch-mismatch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-dg2-9/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13884 -&gt; Patchwork_126507v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13884: 9739fd04dfe62f6b46eb8f6af604decabb45a87b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7590: c484e1422184a3183d11f1595e53a6715574520f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_126507v2: 9739fd04dfe62f6b46eb8f6af604decabb45a87b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>0cf348958751 drm/i915/display: Split i915 specific code away from intel_fb.c<br />
b407f4f02b33 drm/i915/display: Convert intel_fb_modifier_to_tiling as non-static<br />
f3753e2d5ab5 drm/i915/display: use intel_bo_to_drm_bo in intel_fb.c</p>

</body>
</html>

--===============6496346268956247044==--
