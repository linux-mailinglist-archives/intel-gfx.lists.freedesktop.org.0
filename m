Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E06152624
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 06:52:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 885146F48F;
	Wed,  5 Feb 2020 05:52:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 916826F489;
 Wed,  5 Feb 2020 05:52:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6875AA0078;
 Wed,  5 Feb 2020 05:52:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@intel.com>
Date: Wed, 05 Feb 2020 05:52:36 -0000
Message-ID: <158088195642.17320.2488834194797116635@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200205000741.3648-1-andi@etezian.org>
In-Reply-To: <20200205000741.3648-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_add_basic_selftests_for_rc6_=28rev4=29?=
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

Series: drm/i915/selftests: add basic selftests for rc6 (rev4)
URL   : https://patchwork.freedesktop.org/series/69825/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7867 -> Patchwork_16424
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16424 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16424, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16424:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gt_pm:
    - fi-cfl-8700k:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-cfl-8700k/igt@i915_selftest@live_gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-cfl-8700k/igt@i915_selftest@live_gt_pm.html
    - fi-icl-u2:          [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-icl-u2/igt@i915_selftest@live_gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-icl-u2/igt@i915_selftest@live_gt_pm.html
    - fi-cfl-8109u:       [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-cfl-8109u/igt@i915_selftest@live_gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-cfl-8109u/igt@i915_selftest@live_gt_pm.html
    - fi-bsw-nick:        [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-bsw-nick/igt@i915_selftest@live_gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-bsw-nick/igt@i915_selftest@live_gt_pm.html
    - fi-icl-y:           [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-icl-y/igt@i915_selftest@live_gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-icl-y/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-7500u:       NOTRUN -> [DMESG-FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-kbl-7500u/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-x1275:       [PASS][12] -> [DMESG-FAIL][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-kbl-x1275/igt@i915_selftest@live_gt_pm.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-kbl-x1275/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-guc:         [PASS][14] -> [DMESG-FAIL][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-kbl-guc/igt@i915_selftest@live_gt_pm.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-kbl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-skl-guc:         [PASS][16] -> [DMESG-FAIL][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-skl-guc/igt@i915_selftest@live_gt_pm.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-skl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-icl-u3:          [PASS][18] -> [DMESG-FAIL][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-icl-u3/igt@i915_selftest@live_gt_pm.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-icl-u3/igt@i915_selftest@live_gt_pm.html
    - fi-bdw-5557u:       NOTRUN -> [DMESG-FAIL][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-bdw-5557u/igt@i915_selftest@live_gt_pm.html
    - fi-glk-dsi:         [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-glk-dsi/igt@i915_selftest@live_gt_pm.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-glk-dsi/igt@i915_selftest@live_gt_pm.html
    - fi-hsw-4770r:       [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-hsw-4770r/igt@i915_selftest@live_gt_pm.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-hsw-4770r/igt@i915_selftest@live_gt_pm.html
    - fi-icl-guc:         [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-icl-guc/igt@i915_selftest@live_gt_pm.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-icl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-ivb-3770:        NOTRUN -> [DMESG-FAIL][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-ivb-3770/igt@i915_selftest@live_gt_pm.html
    - fi-skl-6700k2:      [PASS][28] -> [DMESG-FAIL][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-skl-6700k2/igt@i915_selftest@live_gt_pm.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-skl-6700k2/igt@i915_selftest@live_gt_pm.html
    - fi-skl-lmem:        [PASS][30] -> [DMESG-FAIL][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-skl-lmem/igt@i915_selftest@live_gt_pm.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-skl-lmem/igt@i915_selftest@live_gt_pm.html
    - fi-bsw-n3050:       NOTRUN -> [DMESG-FAIL][32]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-bsw-n3050/igt@i915_selftest@live_gt_pm.html
    - fi-whl-u:           [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-whl-u/igt@i915_selftest@live_gt_pm.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-whl-u/igt@i915_selftest@live_gt_pm.html
    - fi-skl-6770hq:      [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-skl-6770hq/igt@i915_selftest@live_gt_pm.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-skl-6770hq/igt@i915_selftest@live_gt_pm.html
    - fi-cfl-guc:         [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-cfl-guc/igt@i915_selftest@live_gt_pm.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-cfl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-hsw-4770:        [PASS][39] -> [DMESG-FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-hsw-4770/igt@i915_selftest@live_gt_pm.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-hsw-4770/igt@i915_selftest@live_gt_pm.html
    - fi-bxt-dsi:         [PASS][41] -> [DMESG-FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-bxt-dsi/igt@i915_selftest@live_gt_pm.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-bxt-dsi/igt@i915_selftest@live_gt_pm.html
    - fi-skl-6600u:       NOTRUN -> [DMESG-FAIL][43]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-skl-6600u/igt@i915_selftest@live_gt_pm.html
    - fi-cml-u2:          [PASS][44] -> [DMESG-FAIL][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-cml-u2/igt@i915_selftest@live_gt_pm.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-cml-u2/igt@i915_selftest@live_gt_pm.html
    - fi-icl-dsi:         [PASS][46] -> [DMESG-FAIL][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-icl-dsi/igt@i915_selftest@live_gt_pm.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-icl-dsi/igt@i915_selftest@live_gt_pm.html
    - fi-apl-guc:         [PASS][48] -> [DMESG-FAIL][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-apl-guc/igt@i915_selftest@live_gt_pm.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-apl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-8809g:       [PASS][50] -> [DMESG-FAIL][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-kbl-8809g/igt@i915_selftest@live_gt_pm.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-kbl-8809g/igt@i915_selftest@live_gt_pm.html
    - fi-snb-2520m:       [PASS][52] -> [DMESG-FAIL][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-snb-2520m/igt@i915_selftest@live_gt_pm.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-snb-2520m/igt@i915_selftest@live_gt_pm.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live_gt_pm:
    - {fi-ehl-1}:         [DMESG-FAIL][54] ([i915#801]) -> [DMESG-FAIL][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-ehl-1/igt@i915_selftest@live_gt_pm.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-ehl-1/igt@i915_selftest@live_gt_pm.html
    - {fi-tgl-u}:         [PASS][56] -> [DMESG-FAIL][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-tgl-u/igt@i915_selftest@live_gt_pm.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-tgl-u/igt@i915_selftest@live_gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_16424 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][58] -> [DMESG-FAIL][59] ([fdo#108569])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-icl-y/igt@i915_selftest@live_execlists.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [PASS][60] -> [INCOMPLETE][61] ([i915#424])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][62] ([fdo#112271] / [i915#1084]) -> [INCOMPLETE][63] ([i915#45])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][64] ([i915#725]) -> [DMESG-FAIL][65] ([i915#563])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#801]: https://gitlab.freedesktop.org/drm/intel/issues/801


Participating hosts (42 -> 41)
------------------------------

  Additional (5): fi-bdw-5557u fi-bsw-n3050 fi-kbl-7500u fi-ivb-3770 fi-skl-6600u 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-ctg-p8600 fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7867 -> Patchwork_16424

  CI-20190529: 20190529
  CI_DRM_7867: a4c409e48c6281538b1e375545dfb5989fa02063 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5418: 4028bd390b41925f6e26f6f11b31e05054652527 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16424: e8d4b1cddedd7a09c2f37354fab3a15a66704493 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e8d4b1cddedd drm/i915/selftests: add basic selftests for rc6

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16424/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
