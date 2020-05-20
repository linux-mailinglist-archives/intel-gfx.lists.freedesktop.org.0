Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5B71DB5D1
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 16:01:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF49189DED;
	Wed, 20 May 2020 14:00:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D8EA489DED;
 Wed, 20 May 2020 14:00:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D2D0BA47E9;
 Wed, 20 May 2020 14:00:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 20 May 2020 14:00:55 -0000
Message-ID: <158998325583.30687.17510279685403110298@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200520130030.1014994-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200520130030.1014994-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/23=5D_Revert_=22drm/i915/gem=3A_Drop_re?=
 =?utf-8?q?location_slowpath=22=2E?=
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

Series: series starting with [01/23] Revert "drm/i915/gem: Drop relocation slowpath".
URL   : https://patchwork.freedesktop.org/series/77472/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8511 -> Patchwork_17730
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17730 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17730, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17730:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-lmem:        [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_busy@basic@flip:
    - fi-bwr-2160:        [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-bwr-2160/igt@kms_busy@basic@flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-bwr-2160/igt@kms_busy@basic@flip.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-pnv-d510/igt@runner@aborted.html
    - fi-gdg-551:         NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-gdg-551/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-snb-2520m/igt@runner@aborted.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-byt-n2820/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-ivb-3770/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-byt-j1900/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-elk-e7500/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-blb-e6850/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@i915_selftest@live@gem_execbuf}:
    - fi-skl-6600u:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-skl-6600u/igt@i915_selftest@live@gem_execbuf.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-skl-6600u/igt@i915_selftest@live@gem_execbuf.html
    - fi-cfl-8109u:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-cfl-8109u/igt@i915_selftest@live@gem_execbuf.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-cfl-8109u/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-7500u:       [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-kbl-7500u/igt@i915_selftest@live@gem_execbuf.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-kbl-7500u/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-guc:         [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-kbl-guc/igt@i915_selftest@live@gem_execbuf.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-kbl-guc/igt@i915_selftest@live@gem_execbuf.html
    - fi-bsw-nick:        [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-8809g:       [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-kbl-8809g/igt@i915_selftest@live@gem_execbuf.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-kbl-8809g/igt@i915_selftest@live@gem_execbuf.html
    - fi-icl-y:           [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-icl-y/igt@i915_selftest@live@gem_execbuf.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-icl-y/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-r:           NOTRUN -> [INCOMPLETE][29]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-kbl-r/igt@i915_selftest@live@gem_execbuf.html
    - fi-blb-e6850:       [PASS][30] -> [INCOMPLETE][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-blb-e6850/igt@i915_selftest@live@gem_execbuf.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-blb-e6850/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-x1275:       [PASS][32] -> [INCOMPLETE][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-kbl-x1275/igt@i915_selftest@live@gem_execbuf.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-kbl-x1275/igt@i915_selftest@live@gem_execbuf.html
    - fi-bsw-kefka:       [PASS][34] -> [INCOMPLETE][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-bsw-kefka/igt@i915_selftest@live@gem_execbuf.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-bsw-kefka/igt@i915_selftest@live@gem_execbuf.html
    - fi-cml-s:           [PASS][36] -> [INCOMPLETE][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-cml-s/igt@i915_selftest@live@gem_execbuf.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-cml-s/igt@i915_selftest@live@gem_execbuf.html
    - fi-tgl-y:           [PASS][38] -> [INCOMPLETE][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-tgl-y/igt@i915_selftest@live@gem_execbuf.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-tgl-y/igt@i915_selftest@live@gem_execbuf.html
    - fi-cfl-guc:         [PASS][40] -> [INCOMPLETE][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-cfl-guc/igt@i915_selftest@live@gem_execbuf.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-cfl-guc/igt@i915_selftest@live@gem_execbuf.html
    - {fi-ehl-1}:         [PASS][42] -> [INCOMPLETE][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-ehl-1/igt@i915_selftest@live@gem_execbuf.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-ehl-1/igt@i915_selftest@live@gem_execbuf.html
    - fi-bsw-n3050:       [PASS][44] -> [INCOMPLETE][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html
    - fi-ivb-3770:        [PASS][46] -> [INCOMPLETE][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-ivb-3770/igt@i915_selftest@live@gem_execbuf.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-ivb-3770/igt@i915_selftest@live@gem_execbuf.html
    - fi-skl-lmem:        [PASS][48] -> [INCOMPLETE][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-skl-lmem/igt@i915_selftest@live@gem_execbuf.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-skl-lmem/igt@i915_selftest@live@gem_execbuf.html
    - fi-ilk-650:         [PASS][50] -> [INCOMPLETE][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-ilk-650/igt@i915_selftest@live@gem_execbuf.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-ilk-650/igt@i915_selftest@live@gem_execbuf.html
    - fi-cml-u2:          [PASS][52] -> [INCOMPLETE][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-cml-u2/igt@i915_selftest@live@gem_execbuf.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-cml-u2/igt@i915_selftest@live@gem_execbuf.html
    - fi-icl-guc:         [PASS][54] -> [INCOMPLETE][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-icl-guc/igt@i915_selftest@live@gem_execbuf.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-icl-guc/igt@i915_selftest@live@gem_execbuf.html
    - fi-cfl-8700k:       [PASS][56] -> [INCOMPLETE][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-cfl-8700k/igt@i915_selftest@live@gem_execbuf.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-cfl-8700k/igt@i915_selftest@live@gem_execbuf.html
    - fi-bxt-dsi:         [PASS][58] -> [INCOMPLETE][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-bxt-dsi/igt@i915_selftest@live@gem_execbuf.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-bxt-dsi/igt@i915_selftest@live@gem_execbuf.html
    - {fi-tgl-u}:         [PASS][60] -> [INCOMPLETE][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-tgl-u/igt@i915_selftest@live@gem_execbuf.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-tgl-u/igt@i915_selftest@live@gem_execbuf.html
    - fi-skl-6700k2:      [PASS][62] -> [INCOMPLETE][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-skl-6700k2/igt@i915_selftest@live@gem_execbuf.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-skl-6700k2/igt@i915_selftest@live@gem_execbuf.html
    - fi-icl-u2:          [PASS][64] -> [INCOMPLETE][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-icl-u2/igt@i915_selftest@live@gem_execbuf.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-icl-u2/igt@i915_selftest@live@gem_execbuf.html
    - {fi-tgl-dsi}:       [PASS][66] -> [INCOMPLETE][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-tgl-dsi/igt@i915_selftest@live@gem_execbuf.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-tgl-dsi/igt@i915_selftest@live@gem_execbuf.html
    - fi-snb-2520m:       [PASS][68] -> [INCOMPLETE][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html
    - fi-whl-u:           [PASS][70] -> [INCOMPLETE][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-whl-u/igt@i915_selftest@live@gem_execbuf.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-whl-u/igt@i915_selftest@live@gem_execbuf.html
    - fi-apl-guc:         [PASS][72] -> [INCOMPLETE][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-apl-guc/igt@i915_selftest@live@gem_execbuf.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-apl-guc/igt@i915_selftest@live@gem_execbuf.html
    - fi-skl-guc:         [PASS][74] -> [INCOMPLETE][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-skl-guc/igt@i915_selftest@live@gem_execbuf.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-skl-guc/igt@i915_selftest@live@gem_execbuf.html
    - fi-bdw-5557u:       [PASS][76] -> [INCOMPLETE][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-bdw-5557u/igt@i915_selftest@live@gem_execbuf.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-bdw-5557u/igt@i915_selftest@live@gem_execbuf.html
    - fi-bwr-2160:        [PASS][78] -> [INCOMPLETE][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-bwr-2160/igt@i915_selftest@live@gem_execbuf.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-bwr-2160/igt@i915_selftest@live@gem_execbuf.html

  
Known issues
------------

  Here are the changes found in Patchwork_17730 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [SKIP][80] ([fdo#109271]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-r:           [FAIL][82] ([i915#1569] / [i915#192] / [i915#193] / [i915#194]) -> [FAIL][83] ([i915#1423] / [i915#656])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-kbl-r/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/fi-kbl-r/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (48 -> 44)
------------------------------

  Missing    (4): fi-byt-clapper fi-byt-squawks fi-bsw-cyan fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_8511 -> Patchwork_17730

  CI-20190529: 20190529
  CI_DRM_8511: 504ee538bd65abff745914a6f0b7aad62bbc1d11 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5664: 404e2fa06b9c5986dec3fa210234fe8b034b157e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17730: 6c8bb714a08795448cab1124c0d118a1b6237ad8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6c8bb714a087 drm/i915: Ensure we hold the pin mutex
15cd0b3c8561 drm/i915: Add ww locking to pin_to_display_plane
dd51ae3087a8 drm/i915: Add ww locking to vm_fault_gtt
a1c6650bd9c8 drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
cb9f17485972 drm/i915: Use ww pinning for intel_context_create_request()
dd08b28e8648 drm/i915/selftests: Fix locking inversion in lrc selftest.
30c1a144d8d8 drm/i915: Dirty hack to fix selftests locking inversion
99b1d3502005 drm/i915: Convert i915_perf to ww locking as well
5a24cea35c94 drm/i915: Kill last user of intel_context_create_request outside of selftests
12ec08c8537e drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
105f0b34fcf5 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
8e0a6a165baf drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
b5516731f269 drm/i915: Pin engine before pinning all objects, v4.
b428669fca95 drm/i915: Nuke arguments to eb_pin_engine
a42f3dac28b8 drm/i915: Add ww context handling to context_barrier_task
710f752755c1 drm/i915: Use ww locking in intel_renderstate.
1e76b4db6002 drm/i915: Use per object locking in execbuf, v10.
351faedf629a drm/i915/gem: Make eb_add_lut interruptible wait on object lock.
0959c95aca1a Revert "drm/i915/gem: Split eb_vma into its own allocation"
0d1389fe4823 drm/i915: Parse command buffer earlier in eb_relocate(slow)
a468a7cf573c drm/i915: Remove locking from i915_gem_object_prepare_read/write
72f5c5b30070 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
e8a9ca7ebbde Revert "drm/i915/gem: Drop relocation slowpath".

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
