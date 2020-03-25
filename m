Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB371924E0
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 11:01:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E59B8897F3;
	Wed, 25 Mar 2020 10:01:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 219E3897E7;
 Wed, 25 Mar 2020 10:01:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1C621A011B;
 Wed, 25 Mar 2020 10:01:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 25 Mar 2020 10:01:24 -0000
Message-ID: <158513048409.29633.4050304865208076012@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200325092728.3880-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200325092728.3880-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Measure_the_energy_consumed_while_in_RC6_=28?=
 =?utf-8?q?rev6=29?=
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

Series: drm/i915/selftests: Measure the energy consumed while in RC6 (rev6)
URL   : https://patchwork.freedesktop.org/series/75035/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8185 -> Patchwork_17080
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17080 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17080, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17080:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_pm:
    - fi-cfl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-cfl-guc/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/fi-cfl-guc/igt@i915_selftest@live@gt_pm.html
    - fi-skl-6700k2:      NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/fi-skl-6700k2/igt@i915_selftest@live@gt_pm.html
    - fi-skl-guc:         [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-skl-guc/igt@i915_selftest@live@gt_pm.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/fi-skl-guc/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-x1275:       [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-kbl-x1275/igt@i915_selftest@live@gt_pm.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/fi-kbl-x1275/igt@i915_selftest@live@gt_pm.html
    - fi-skl-6600u:       [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-skl-6600u/igt@i915_selftest@live@gt_pm.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/fi-skl-6600u/igt@i915_selftest@live@gt_pm.html
    - fi-cfl-8109u:       [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-cfl-8109u/igt@i915_selftest@live@gt_pm.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/fi-cfl-8109u/igt@i915_selftest@live@gt_pm.html
    - fi-skl-lmem:        [PASS][12] -> [INCOMPLETE][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-skl-lmem/igt@i915_selftest@live@gt_pm.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/fi-skl-lmem/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-8809g:       [PASS][14] -> [INCOMPLETE][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-kbl-8809g/igt@i915_selftest@live@gt_pm.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/fi-kbl-8809g/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-r:           [PASS][16] -> [INCOMPLETE][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-kbl-r/igt@i915_selftest@live@gt_pm.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/fi-kbl-r/igt@i915_selftest@live@gt_pm.html
    - fi-bdw-5557u:       [PASS][18] -> [INCOMPLETE][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-bdw-5557u/igt@i915_selftest@live@gt_pm.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/fi-bdw-5557u/igt@i915_selftest@live@gt_pm.html
    - fi-icl-guc:         [PASS][20] -> [DMESG-FAIL][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-icl-guc/igt@i915_selftest@live@gt_pm.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/fi-icl-guc/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-soraka:      [PASS][22] -> [INCOMPLETE][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-7500u:       NOTRUN -> [INCOMPLETE][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/fi-kbl-7500u/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-guc:         [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-kbl-guc/igt@i915_selftest@live@gt_pm.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/fi-kbl-guc/igt@i915_selftest@live@gt_pm.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_pm:
    - {fi-kbl-7560u}:     NOTRUN -> [INCOMPLETE][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/fi-kbl-7560u/igt@i915_selftest@live@gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_17080 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_pm:
    - fi-cml-s:           [PASS][28] -> [INCOMPLETE][29] ([i915#283])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-cml-s/igt@i915_selftest@live@gt_pm.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/fi-cml-s/igt@i915_selftest@live@gt_pm.html
    - fi-glk-dsi:         [PASS][30] -> [INCOMPLETE][31] ([i915#58] / [k.org#198133])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-glk-dsi/igt@i915_selftest@live@gt_pm.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/fi-glk-dsi/igt@i915_selftest@live@gt_pm.html
    - fi-apl-guc:         [PASS][32] -> [INCOMPLETE][33] ([fdo#103927])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-apl-guc/igt@i915_selftest@live@gt_pm.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/fi-apl-guc/igt@i915_selftest@live@gt_pm.html
    - fi-cml-u2:          [PASS][34] -> [INCOMPLETE][35] ([i915#283])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-cml-u2/igt@i915_selftest@live@gt_pm.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/fi-cml-u2/igt@i915_selftest@live@gt_pm.html
    - fi-bxt-dsi:         [PASS][36] -> [INCOMPLETE][37] ([fdo#103927])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-bxt-dsi/igt@i915_selftest@live@gt_pm.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/fi-bxt-dsi/igt@i915_selftest@live@gt_pm.html

  
#### Possible fixes ####

  * igt@i915_pm_backlight@basic-brightness:
    - fi-icl-dsi:         [INCOMPLETE][38] -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-icl-dsi/igt@i915_pm_backlight@basic-brightness.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/fi-icl-dsi/igt@i915_pm_backlight@basic-brightness.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][40] ([i915#1209]) -> [FAIL][41] ([i915#656])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-kbl-8809g/igt@runner@aborted.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (45 -> 42)
------------------------------

  Additional (4): fi-byt-j1900 fi-kbl-7560u fi-skl-6700k2 fi-kbl-7500u 
  Missing    (7): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8185 -> Patchwork_17080

  CI-20190529: 20190529
  CI_DRM_8185: dbd2532fc5cf023b28bd631b51eea8452739b421 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5537: 190245120758e754813d76b2c6c613413a0dba29 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17080: e455401f5277e4e110d7941791b552ddc790991a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e455401f5277 drm/i915/selftests: Measure the energy consumed while in RC6

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17080/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
