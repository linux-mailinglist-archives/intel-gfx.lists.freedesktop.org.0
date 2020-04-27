Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB88A1BAA0B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 18:24:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FE916E33A;
	Mon, 27 Apr 2020 16:24:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 65B796E338;
 Mon, 27 Apr 2020 16:24:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5E918A011A;
 Mon, 27 Apr 2020 16:24:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 27 Apr 2020 16:24:15 -0000
Message-ID: <158800465535.26357.453635845101353687@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200427152032.4328-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200427152032.4328-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/execlists=3A_Verify_we_don=27t_submit_two_identical_tags?=
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

Series: drm/i915/execlists: Verify we don't submit two identical tags
URL   : https://patchwork.freedesktop.org/series/76558/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8373 -> Patchwork_17480
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17480 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17480, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17480:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@blt:
    - fi-cml-u2:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-cml-u2/igt@i915_selftest@live@blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-cml-u2/igt@i915_selftest@live@blt.html
    - fi-whl-u:           [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-whl-u/igt@i915_selftest@live@blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-whl-u/igt@i915_selftest@live@blt.html
    - fi-bxt-dsi:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-bxt-dsi/igt@i915_selftest@live@blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-bxt-dsi/igt@i915_selftest@live@blt.html
    - fi-cfl-8700k:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-cfl-8700k/igt@i915_selftest@live@blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-cfl-8700k/igt@i915_selftest@live@blt.html
    - fi-skl-6600u:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-skl-6600u/igt@i915_selftest@live@blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-skl-6600u/igt@i915_selftest@live@blt.html
    - fi-icl-u2:          [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-icl-u2/igt@i915_selftest@live@blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-icl-u2/igt@i915_selftest@live@blt.html
    - fi-icl-y:           [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-icl-y/igt@i915_selftest@live@blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-icl-y/igt@i915_selftest@live@blt.html
    - fi-kbl-8809g:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-kbl-8809g/igt@i915_selftest@live@blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-kbl-8809g/igt@i915_selftest@live@blt.html
    - fi-kbl-r:           [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-kbl-r/igt@i915_selftest@live@blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-kbl-r/igt@i915_selftest@live@blt.html
    - fi-skl-guc:         [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-skl-guc/igt@i915_selftest@live@blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-skl-guc/igt@i915_selftest@live@blt.html
    - fi-bdw-5557u:       [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-bdw-5557u/igt@i915_selftest@live@blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-bdw-5557u/igt@i915_selftest@live@blt.html
    - fi-kbl-7500u:       [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-kbl-7500u/igt@i915_selftest@live@blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-kbl-7500u/igt@i915_selftest@live@blt.html
    - fi-kbl-x1275:       [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-kbl-x1275/igt@i915_selftest@live@blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-kbl-x1275/igt@i915_selftest@live@blt.html
    - fi-kbl-guc:         [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-kbl-guc/igt@i915_selftest@live@blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-kbl-guc/igt@i915_selftest@live@blt.html
    - fi-tgl-y:           [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-tgl-y/igt@i915_selftest@live@blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-tgl-y/igt@i915_selftest@live@blt.html
    - fi-skl-lmem:        [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-skl-lmem/igt@i915_selftest@live@blt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-skl-lmem/igt@i915_selftest@live@blt.html
    - fi-icl-guc:         [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-icl-guc/igt@i915_selftest@live@blt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-icl-guc/igt@i915_selftest@live@blt.html
    - fi-cfl-guc:         [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-cfl-guc/igt@i915_selftest@live@blt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-cfl-guc/igt@i915_selftest@live@blt.html
    - fi-skl-6700k2:      [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-skl-6700k2/igt@i915_selftest@live@blt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-skl-6700k2/igt@i915_selftest@live@blt.html

  * igt@i915_selftest@live@gt_contexts:
    - fi-cfl-8109u:       [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-cfl-8109u/igt@i915_selftest@live@gt_contexts.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-cfl-8109u/igt@i915_selftest@live@gt_contexts.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@blt:
    - {fi-kbl-7560u}:     NOTRUN -> [INCOMPLETE][41]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-kbl-7560u/igt@i915_selftest@live@blt.html
    - {fi-tgl-u}:         [PASS][42] -> [INCOMPLETE][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-tgl-u/igt@i915_selftest@live@blt.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-tgl-u/igt@i915_selftest@live@blt.html
    - {fi-tgl-dsi}:       [PASS][44] -> [INCOMPLETE][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-tgl-dsi/igt@i915_selftest@live@blt.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-tgl-dsi/igt@i915_selftest@live@blt.html
    - {fi-ehl-1}:         [PASS][46] -> [INCOMPLETE][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-ehl-1/igt@i915_selftest@live@blt.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-ehl-1/igt@i915_selftest@live@blt.html

  
Known issues
------------

  Here are the changes found in Patchwork_17480 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][48] -> [FAIL][49] ([i915#579])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@blt:
    - fi-bsw-nick:        [PASS][50] -> [INCOMPLETE][51] ([i915#392])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-bsw-nick/igt@i915_selftest@live@blt.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-bsw-nick/igt@i915_selftest@live@blt.html
    - fi-bsw-kefka:       [PASS][52] -> [INCOMPLETE][53] ([i915#392])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-bsw-kefka/igt@i915_selftest@live@blt.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-bsw-kefka/igt@i915_selftest@live@blt.html
    - fi-bsw-n3050:       [PASS][54] -> [INCOMPLETE][55] ([i915#392])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-bsw-n3050/igt@i915_selftest@live@blt.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-bsw-n3050/igt@i915_selftest@live@blt.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-soraka:      [PASS][56] -> [INCOMPLETE][57] ([CI#80])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-kbl-soraka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [PASS][58] -> [INCOMPLETE][59] ([i915#1591])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-8809g:       [PASS][60] -> [DMESG-FAIL][61] ([i915#1791])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-kbl-8809g/igt@i915_selftest@live@gt_pm.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-kbl-8809g/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-7500u:       [PASS][62] -> [DMESG-FAIL][63] ([i915#1791])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-kbl-7500u/igt@i915_selftest@live@gt_pm.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-kbl-7500u/igt@i915_selftest@live@gt_pm.html
    - fi-cml-u2:          [PASS][64] -> [DMESG-FAIL][65] ([i915#1791])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-cml-u2/igt@i915_selftest@live@gt_pm.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-cml-u2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - fi-apl-guc:         [PASS][66] -> [INCOMPLETE][67] ([i915#1505])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-apl-guc/igt@i915_selftest@live@hangcheck.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-apl-guc/igt@i915_selftest@live@hangcheck.html
    - fi-glk-dsi:         [PASS][68] -> [INCOMPLETE][69] ([i915#58] / [k.org#198133])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-glk-dsi/igt@i915_selftest@live@hangcheck.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-glk-dsi/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-bwr-2160:        [INCOMPLETE][70] ([i915#489]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-bwr-2160/igt@i915_selftest@live@gt_lrc.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-bwr-2160/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-x1275:       [DMESG-FAIL][72] ([i915#1791]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-kbl-x1275/igt@i915_selftest@live@gt_pm.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-kbl-x1275/igt@i915_selftest@live@gt_pm.html
    - fi-icl-u2:          [DMESG-FAIL][74] -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
    - fi-skl-lmem:        [DMESG-FAIL][76] ([i915#1791]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-skl-lmem/igt@i915_selftest@live@gt_pm.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-skl-lmem/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [FAIL][78] -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][80] ([i915#227]) -> [PASS][81] +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [i915#1505]: https://gitlab.freedesktop.org/drm/intel/issues/1505
  [i915#1591]: https://gitlab.freedesktop.org/drm/intel/issues/1591
  [i915#1791]: https://gitlab.freedesktop.org/drm/intel/issues/1791
  [i915#227]: https://gitlab.freedesktop.org/drm/intel/issues/227
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (49 -> 44)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8373 -> Patchwork_17480

  CI-20190529: 20190529
  CI_DRM_8373: 9d63a10e83b2d271007e281fe875d6f650a1849e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5612: c8dc1fd926a550308b971ca7d83fe0a927a38152 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17480: 5294fc9c09c54b7e651eb3454fec93c9d6921675 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5294fc9c09c5 drm/i915/execlists: Verify we don't submit two identical tags

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17480/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
