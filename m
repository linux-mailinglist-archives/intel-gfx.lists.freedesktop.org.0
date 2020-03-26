Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DE1194985
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 21:47:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD2626E923;
	Thu, 26 Mar 2020 20:47:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CB2F56E922;
 Thu, 26 Mar 2020 20:47:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C24A6A00CC;
 Thu, 26 Mar 2020 20:47:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 26 Mar 2020 20:47:49 -0000
Message-ID: <158525566976.23001.12430377345157563460@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200326164102.11129-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200326164102.11129-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Check_timeout_before_flush_and_cond_checks?=
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

Series: drm/i915/selftests: Check timeout before flush and cond checks
URL   : https://patchwork.freedesktop.org/series/75126/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8195 -> Patchwork_17100
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17100 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17100, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17100/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17100:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-skl-lmem:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-skl-lmem/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17100/fi-skl-lmem/igt@i915_selftest@live@execlists.html
    - fi-skl-guc:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-skl-guc/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17100/fi-skl-guc/igt@i915_selftest@live@execlists.html
    - fi-cfl-guc:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-cfl-guc/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17100/fi-cfl-guc/igt@i915_selftest@live@execlists.html
    - fi-bdw-5557u:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-bdw-5557u/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17100/fi-bdw-5557u/igt@i915_selftest@live@execlists.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@execlists:
    - {fi-ehl-1}:         [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-ehl-1/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17100/fi-ehl-1/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_17100 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-kbl-r:           [PASS][11] -> [INCOMPLETE][12] ([fdo#112175] / [fdo#112259])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-kbl-r/igt@i915_selftest@live@execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17100/fi-kbl-r/igt@i915_selftest@live@execlists.html
    - fi-apl-guc:         [PASS][13] -> [INCOMPLETE][14] ([fdo#103927] / [fdo#112175])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17100/fi-apl-guc/igt@i915_selftest@live@execlists.html
    - fi-kbl-x1275:       [PASS][15] -> [INCOMPLETE][16] ([fdo#112259])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17100/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
    - fi-skl-6600u:       [PASS][17] -> [INCOMPLETE][18] ([i915#1260])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-skl-6600u/igt@i915_selftest@live@execlists.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17100/fi-skl-6600u/igt@i915_selftest@live@execlists.html
    - fi-cml-s:           [PASS][19] -> [INCOMPLETE][20] ([i915#283])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-cml-s/igt@i915_selftest@live@execlists.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17100/fi-cml-s/igt@i915_selftest@live@execlists.html
    - fi-skl-6700k2:      [PASS][21] -> [INCOMPLETE][22] ([fdo#112175])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-skl-6700k2/igt@i915_selftest@live@execlists.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17100/fi-skl-6700k2/igt@i915_selftest@live@execlists.html
    - fi-icl-y:           [PASS][23] -> [INCOMPLETE][24] ([i915#140])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-icl-y/igt@i915_selftest@live@execlists.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17100/fi-icl-y/igt@i915_selftest@live@execlists.html
    - fi-bxt-dsi:         [PASS][25] -> [INCOMPLETE][26] ([fdo#103927])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17100/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
    - fi-cml-u2:          [PASS][27] -> [INCOMPLETE][28] ([fdo#112175] / [i915#283])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17100/fi-cml-u2/igt@i915_selftest@live@execlists.html
    - fi-kbl-guc:         [PASS][29] -> [INCOMPLETE][30] ([CI#80] / [fdo#112175] / [fdo#112259])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-kbl-guc/igt@i915_selftest@live@execlists.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17100/fi-kbl-guc/igt@i915_selftest@live@execlists.html
    - fi-kbl-7500u:       [PASS][31] -> [INCOMPLETE][32] ([fdo#112175] / [fdo#112259])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-kbl-7500u/igt@i915_selftest@live@execlists.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17100/fi-kbl-7500u/igt@i915_selftest@live@execlists.html
    - fi-kbl-8809g:       [PASS][33] -> [INCOMPLETE][34] ([CI#80] / [fdo#112175] / [fdo#112259])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-kbl-8809g/igt@i915_selftest@live@execlists.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17100/fi-kbl-8809g/igt@i915_selftest@live@execlists.html
    - fi-icl-guc:         [PASS][35] -> [INCOMPLETE][36] ([i915#140])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-icl-guc/igt@i915_selftest@live@execlists.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17100/fi-icl-guc/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-u2:          [INCOMPLETE][37] ([fdo#108569]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-icl-u2/igt@i915_selftest@live@hangcheck.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17100/fi-icl-u2/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-dsi:         [DMESG-FAIL][39] ([fdo#108569]) -> [INCOMPLETE][40] ([i915#140])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-icl-dsi/igt@i915_selftest@live@execlists.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17100/fi-icl-dsi/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][41] ([i915#1209]) -> [FAIL][42] ([i915#1485] / [i915#656])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-kbl-8809g/igt@runner@aborted.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17100/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#112175]: https://bugs.freedesktop.org/show_bug.cgi?id=112175
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#1260]: https://gitlab.freedesktop.org/drm/intel/issues/1260
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#1485]: https://gitlab.freedesktop.org/drm/intel/issues/1485
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#647]: https://gitlab.freedesktop.org/drm/intel/issues/647
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (49 -> 36)
------------------------------

  Missing    (13): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-glk-dsi fi-byt-squawks fi-bwr-2160 fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-kbl-7560u fi-byt-clapper fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8195 -> Patchwork_17100

  CI-20190529: 20190529
  CI_DRM_8195: bcb3db890b651ee74ca510bbc4dacebdaa65d311 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5539: e7aae12e37771a8b7796ba252574eb832a5839c3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17100: 2703f5dea94e21eca6b2ae84c1543c5f2d21ad45 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2703f5dea94e drm/i915/selftests: Check timeout before flush and cond checks

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17100/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
