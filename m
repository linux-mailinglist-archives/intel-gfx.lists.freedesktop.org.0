Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 432C416504F
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 21:55:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8646F6E86E;
	Wed, 19 Feb 2020 20:55:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EEDFC6E86E;
 Wed, 19 Feb 2020 20:55:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DBE49A47E1;
 Wed, 19 Feb 2020 20:55:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@intel.com>
Date: Wed, 19 Feb 2020 20:55:05 -0000
Message-ID: <158214570589.21061.18423586346229434215@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200219190223.16972-1-andi.shyti@intel.com>
In-Reply-To: <20200219190223.16972-1-andi.shyti@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_make_a_gt_sysfs_group_and_move_power_management_fil?=
 =?utf-8?b?ZXMgKHJldjUp?=
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

Series: drm/i915/gt: make a gt sysfs group and move power management files (rev5)
URL   : https://patchwork.freedesktop.org/series/73190/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7966 -> Patchwork_16630
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16630 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16630, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16630:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rps@basic-api:
    - fi-kbl-guc:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-kbl-guc/igt@i915_pm_rps@basic-api.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-kbl-guc/igt@i915_pm_rps@basic-api.html
    - fi-cfl-8109u:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-cfl-8109u/igt@i915_pm_rps@basic-api.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-cfl-8109u/igt@i915_pm_rps@basic-api.html
    - fi-hsw-4770r:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-hsw-4770r/igt@i915_pm_rps@basic-api.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-hsw-4770r/igt@i915_pm_rps@basic-api.html
    - fi-bsw-nick:        [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-bsw-nick/igt@i915_pm_rps@basic-api.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-bsw-nick/igt@i915_pm_rps@basic-api.html
    - fi-kbl-7500u:       [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-kbl-7500u/igt@i915_pm_rps@basic-api.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-kbl-7500u/igt@i915_pm_rps@basic-api.html
    - fi-hsw-peppy:       NOTRUN -> [DMESG-WARN][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-hsw-peppy/igt@i915_pm_rps@basic-api.html
    - fi-kbl-8809g:       [PASS][12] -> [DMESG-WARN][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-kbl-8809g/igt@i915_pm_rps@basic-api.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-kbl-8809g/igt@i915_pm_rps@basic-api.html
    - fi-kbl-r:           [PASS][14] -> [DMESG-WARN][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-kbl-r/igt@i915_pm_rps@basic-api.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-kbl-r/igt@i915_pm_rps@basic-api.html
    - fi-bsw-kefka:       [PASS][16] -> [DMESG-WARN][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-bsw-kefka/igt@i915_pm_rps@basic-api.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-bsw-kefka/igt@i915_pm_rps@basic-api.html
    - fi-glk-dsi:         [PASS][18] -> [DMESG-WARN][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-glk-dsi/igt@i915_pm_rps@basic-api.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-glk-dsi/igt@i915_pm_rps@basic-api.html
    - fi-icl-u3:          [PASS][20] -> [DMESG-WARN][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-icl-u3/igt@i915_pm_rps@basic-api.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-icl-u3/igt@i915_pm_rps@basic-api.html
    - fi-kbl-x1275:       [PASS][22] -> [DMESG-WARN][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-kbl-x1275/igt@i915_pm_rps@basic-api.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-kbl-x1275/igt@i915_pm_rps@basic-api.html
    - fi-cml-s:           [PASS][24] -> [DMESG-WARN][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-cml-s/igt@i915_pm_rps@basic-api.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-cml-s/igt@i915_pm_rps@basic-api.html
    - fi-snb-2600:        NOTRUN -> [DMESG-WARN][26]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-snb-2600/igt@i915_pm_rps@basic-api.html
    - fi-cfl-guc:         [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-cfl-guc/igt@i915_pm_rps@basic-api.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-cfl-guc/igt@i915_pm_rps@basic-api.html
    - fi-bsw-n3050:       [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-bsw-n3050/igt@i915_pm_rps@basic-api.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-bsw-n3050/igt@i915_pm_rps@basic-api.html
    - fi-ivb-3770:        [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-ivb-3770/igt@i915_pm_rps@basic-api.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-ivb-3770/igt@i915_pm_rps@basic-api.html
    - fi-skl-lmem:        NOTRUN -> [DMESG-WARN][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-skl-lmem/igt@i915_pm_rps@basic-api.html
    - fi-cml-u2:          [PASS][34] -> [DMESG-WARN][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-cml-u2/igt@i915_pm_rps@basic-api.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-cml-u2/igt@i915_pm_rps@basic-api.html
    - fi-icl-u2:          [PASS][36] -> [DMESG-WARN][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-icl-u2/igt@i915_pm_rps@basic-api.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-icl-u2/igt@i915_pm_rps@basic-api.html
    - fi-skl-6700k2:      [PASS][38] -> [DMESG-WARN][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-skl-6700k2/igt@i915_pm_rps@basic-api.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-skl-6700k2/igt@i915_pm_rps@basic-api.html
    - fi-icl-guc:         [PASS][40] -> [DMESG-WARN][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-icl-guc/igt@i915_pm_rps@basic-api.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-icl-guc/igt@i915_pm_rps@basic-api.html
    - fi-byt-n2820:       [PASS][42] -> [DMESG-WARN][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-byt-n2820/igt@i915_pm_rps@basic-api.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-byt-n2820/igt@i915_pm_rps@basic-api.html
    - fi-bxt-dsi:         [PASS][44] -> [DMESG-WARN][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-bxt-dsi/igt@i915_pm_rps@basic-api.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-bxt-dsi/igt@i915_pm_rps@basic-api.html
    - fi-cfl-8700k:       [PASS][46] -> [DMESG-WARN][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-cfl-8700k/igt@i915_pm_rps@basic-api.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-cfl-8700k/igt@i915_pm_rps@basic-api.html
    - fi-hsw-4770:        [PASS][48] -> [DMESG-WARN][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-hsw-4770/igt@i915_pm_rps@basic-api.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-hsw-4770/igt@i915_pm_rps@basic-api.html
    - fi-apl-guc:         [PASS][50] -> [DMESG-WARN][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-apl-guc/igt@i915_pm_rps@basic-api.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-apl-guc/igt@i915_pm_rps@basic-api.html
    - fi-icl-dsi:         [PASS][52] -> [DMESG-WARN][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-icl-dsi/igt@i915_pm_rps@basic-api.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-icl-dsi/igt@i915_pm_rps@basic-api.html
    - fi-snb-2520m:       [PASS][54] -> [DMESG-WARN][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-snb-2520m/igt@i915_pm_rps@basic-api.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-snb-2520m/igt@i915_pm_rps@basic-api.html
    - fi-bdw-5557u:       [PASS][56] -> [DMESG-WARN][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-bdw-5557u/igt@i915_pm_rps@basic-api.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-bdw-5557u/igt@i915_pm_rps@basic-api.html
    - fi-skl-6600u:       NOTRUN -> [DMESG-WARN][58]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-skl-6600u/igt@i915_pm_rps@basic-api.html
    - fi-skl-guc:         [PASS][59] -> [DMESG-WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-skl-guc/igt@i915_pm_rps@basic-api.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-skl-guc/igt@i915_pm_rps@basic-api.html
    - fi-icl-y:           [PASS][61] -> [DMESG-WARN][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-icl-y/igt@i915_pm_rps@basic-api.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-icl-y/igt@i915_pm_rps@basic-api.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rps@basic-api:
    - {fi-tgl-dsi}:       [PASS][63] -> [DMESG-WARN][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-tgl-dsi/igt@i915_pm_rps@basic-api.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-tgl-dsi/igt@i915_pm_rps@basic-api.html
    - {fi-tgl-u}:         [PASS][65] -> [DMESG-WARN][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-tgl-u/igt@i915_pm_rps@basic-api.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-tgl-u/igt@i915_pm_rps@basic-api.html

  
Known issues
------------

  Here are the changes found in Patchwork_16630 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [INCOMPLETE][67] ([i915#694] / [i915#816]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cml-s:           [DMESG-FAIL][69] ([i915#877]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_sanitycheck:
    - fi-icl-u3:          [DMESG-WARN][71] ([i915#585]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (49 -> 44)
------------------------------

  Additional (3): fi-skl-lmem fi-skl-6600u fi-snb-2600 
  Missing    (8): fi-ilk-m540 fi-ehl-1 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7966 -> Patchwork_16630

  CI-20190529: 20190529
  CI_DRM_7966: 014bfb094e0b4e80d7510dc5d6f45e5e73bbb419 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5451: 1c42f971d37a066da3e588783611ab08d5afbded @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16630: 1ad40388b0d20c8e70304993d396445413682d7b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1ad40388b0d2 drm/i915/gt: make a gt sysfs group and move power management files

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16630/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
