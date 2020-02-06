Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57155153CE4
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 03:10:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEEBC6F997;
	Thu,  6 Feb 2020 02:10:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C34B86F997;
 Thu,  6 Feb 2020 02:10:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BB031A0096;
 Thu,  6 Feb 2020 02:10:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@intel.com>
Date: Thu, 06 Feb 2020 02:10:45 -0000
Message-ID: <158095504576.14483.8256289789253450291@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200205223627.5680-1-andi@etezian.org>
In-Reply-To: <20200205223627.5680-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_add_basic_selftests_for_rc6_=28rev6=29?=
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

Series: drm/i915/selftests: add basic selftests for rc6 (rev6)
URL   : https://patchwork.freedesktop.org/series/69825/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7871 -> Patchwork_16446
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16446 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16446, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16446:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gt_pm:
    - fi-cfl-8700k:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-cfl-8700k/igt@i915_selftest@live_gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-cfl-8700k/igt@i915_selftest@live_gt_pm.html
    - fi-icl-u2:          [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-icl-u2/igt@i915_selftest@live_gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-icl-u2/igt@i915_selftest@live_gt_pm.html
    - fi-bsw-nick:        [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-bsw-nick/igt@i915_selftest@live_gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-bsw-nick/igt@i915_selftest@live_gt_pm.html
    - fi-icl-y:           [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-icl-y/igt@i915_selftest@live_gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-icl-y/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-x1275:       [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-kbl-x1275/igt@i915_selftest@live_gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-kbl-x1275/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-guc:         [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-kbl-guc/igt@i915_selftest@live_gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-kbl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-skl-guc:         [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-skl-guc/igt@i915_selftest@live_gt_pm.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-skl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-icl-u3:          [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-icl-u3/igt@i915_selftest@live_gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-icl-u3/igt@i915_selftest@live_gt_pm.html
    - fi-glk-dsi:         [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-glk-dsi/igt@i915_selftest@live_gt_pm.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-glk-dsi/igt@i915_selftest@live_gt_pm.html
    - fi-bsw-kefka:       [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-bsw-kefka/igt@i915_selftest@live_gt_pm.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-bsw-kefka/igt@i915_selftest@live_gt_pm.html
    - fi-hsw-4770r:       [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-hsw-4770r/igt@i915_selftest@live_gt_pm.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-hsw-4770r/igt@i915_selftest@live_gt_pm.html
    - fi-icl-guc:         [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-icl-guc/igt@i915_selftest@live_gt_pm.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-icl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-byt-n2820:       NOTRUN -> [DMESG-FAIL][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-byt-n2820/igt@i915_selftest@live_gt_pm.html
    - fi-bsw-n3050:       [PASS][26] -> [DMESG-FAIL][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-bsw-n3050/igt@i915_selftest@live_gt_pm.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-bsw-n3050/igt@i915_selftest@live_gt_pm.html
    - fi-whl-u:           [PASS][28] -> [DMESG-FAIL][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-whl-u/igt@i915_selftest@live_gt_pm.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-whl-u/igt@i915_selftest@live_gt_pm.html
    - fi-skl-6770hq:      [PASS][30] -> [DMESG-FAIL][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-skl-6770hq/igt@i915_selftest@live_gt_pm.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-skl-6770hq/igt@i915_selftest@live_gt_pm.html
    - fi-cfl-guc:         [PASS][32] -> [DMESG-FAIL][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-cfl-guc/igt@i915_selftest@live_gt_pm.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-cfl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-hsw-4770:        [PASS][34] -> [DMESG-FAIL][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-hsw-4770/igt@i915_selftest@live_gt_pm.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-hsw-4770/igt@i915_selftest@live_gt_pm.html
    - fi-bxt-dsi:         [PASS][36] -> [DMESG-FAIL][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-bxt-dsi/igt@i915_selftest@live_gt_pm.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-bxt-dsi/igt@i915_selftest@live_gt_pm.html
    - fi-skl-6600u:       [PASS][38] -> [DMESG-FAIL][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-skl-6600u/igt@i915_selftest@live_gt_pm.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-skl-6600u/igt@i915_selftest@live_gt_pm.html
    - fi-cml-u2:          [PASS][40] -> [DMESG-FAIL][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-cml-u2/igt@i915_selftest@live_gt_pm.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-cml-u2/igt@i915_selftest@live_gt_pm.html
    - fi-icl-dsi:         [PASS][42] -> [DMESG-FAIL][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-icl-dsi/igt@i915_selftest@live_gt_pm.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-icl-dsi/igt@i915_selftest@live_gt_pm.html
    - fi-apl-guc:         [PASS][44] -> [DMESG-FAIL][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-apl-guc/igt@i915_selftest@live_gt_pm.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-apl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-8809g:       [PASS][46] -> [DMESG-FAIL][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-kbl-8809g/igt@i915_selftest@live_gt_pm.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-kbl-8809g/igt@i915_selftest@live_gt_pm.html
    - fi-snb-2520m:       [PASS][48] -> [DMESG-FAIL][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-snb-2520m/igt@i915_selftest@live_gt_pm.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-snb-2520m/igt@i915_selftest@live_gt_pm.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live_gt_pm:
    - {fi-ehl-1}:         [DMESG-FAIL][50] ([i915#801]) -> [DMESG-FAIL][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-ehl-1/igt@i915_selftest@live_gt_pm.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-ehl-1/igt@i915_selftest@live_gt_pm.html
    - {fi-tgl-u}:         [PASS][52] -> [DMESG-FAIL][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-tgl-u/igt@i915_selftest@live_gt_pm.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-tgl-u/igt@i915_selftest@live_gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_16446 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_getparams_basic@basic-subslice-total:
    - fi-tgl-y:           [PASS][54] -> [DMESG-WARN][55] ([CI#94] / [i915#402])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][56] -> [DMESG-FAIL][57] ([fdo#108569])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-icl-y/igt@i915_selftest@live_execlists.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gt_pm:
    - fi-tgl-y:           [PASS][58] -> [DMESG-FAIL][59] ([CI#94])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-tgl-y/igt@i915_selftest@live_gt_pm.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-tgl-y/igt@i915_selftest@live_gt_pm.html

  * igt@i915_selftest@live_gtt:
    - fi-kbl-x1275:       [PASS][60] -> [TIMEOUT][61] ([fdo#112271])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-kbl-x1275/igt@i915_selftest@live_gtt.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-kbl-x1275/igt@i915_selftest@live_gtt.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [INCOMPLETE][62] ([i915#45]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][64] ([CI#94]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_gtt:
    - fi-icl-guc:         [TIMEOUT][66] ([fdo#112271]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-icl-guc/igt@i915_selftest@live_gtt.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-icl-guc/igt@i915_selftest@live_gtt.html

  * igt@kms_addfb_basic@bad-pitch-128:
    - fi-tgl-y:           [DMESG-WARN][68] ([CI#94] / [i915#402]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-128.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-128.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#801]: https://gitlab.freedesktop.org/drm/intel/issues/801


Participating hosts (45 -> 38)
------------------------------

  Additional (2): fi-bwr-2160 fi-ilk-650 
  Missing    (9): fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-ivb-3770 fi-cfl-8109u fi-snb-2600 fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7871 -> Patchwork_16446

  CI-20190529: 20190529
  CI_DRM_7871: c9b0237ee7ffb1bbb62f864f0b2d7b290ee1313d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5419: 44913a91e77434b03001bb9ea53216cd03c476e6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16446: 3418233c6fd72e9da91f5725a562c71493dbb079 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3418233c6fd7 drm/i915/selftests: add basic selftests for rc6

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16446/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
