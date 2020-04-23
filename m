Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1103D1B5B03
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 14:03:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 768976E4F1;
	Thu, 23 Apr 2020 12:03:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 589996E444;
 Thu, 23 Apr 2020 12:03:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 51808A432F;
 Thu, 23 Apr 2020 12:03:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 23 Apr 2020 12:03:49 -0000
Message-ID: <158764342930.26748.3617337029796521714@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200423101523.30015-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200423101523.30015-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Verify_context_isolation_=28rev3=29?=
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

Series: drm/i915/selftests: Verify context isolation (rev3)
URL   : https://patchwork.freedesktop.org/series/76339/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8351 -> Patchwork_17437
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17437 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17437, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17437:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-tgl-y:           [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-tgl-y/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-tgl-y/igt@i915_selftest@live@gem_contexts.html
    - fi-icl-u2:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-icl-u2/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-icl-u2/igt@i915_selftest@live@gem_contexts.html
    - fi-icl-y:           [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-icl-y/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-icl-y/igt@i915_selftest@live@gem_contexts.html
    - fi-icl-guc:         [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-icl-guc/igt@i915_selftest@live@gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-icl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-bdw-5557u:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gem_contexts:
    - {fi-tgl-dsi}:       [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html
    - {fi-tgl-u}:         [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-tgl-u/igt@i915_selftest@live@gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-tgl-u/igt@i915_selftest@live@gem_contexts.html
    - {fi-ehl-1}:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-ehl-1/igt@i915_selftest@live@gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-ehl-1/igt@i915_selftest@live@gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_17437 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-skl-6600u:       [PASS][17] -> [INCOMPLETE][18] ([i915#1591])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html
    - fi-bsw-kefka:       [PASS][19] -> [INCOMPLETE][20] ([i915#392])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html
    - fi-apl-guc:         [PASS][21] -> [INCOMPLETE][22] ([i915#1591])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-apl-guc/igt@i915_selftest@live@gem_contexts.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-apl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-glk-dsi:         [PASS][23] -> [INCOMPLETE][24] ([i915#1591] / [i915#58] / [k.org#198133])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-glk-dsi/igt@i915_selftest@live@gem_contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-glk-dsi/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-6700k2:      [PASS][25] -> [INCOMPLETE][26] ([i915#1591])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-skl-6700k2/igt@i915_selftest@live@gem_contexts.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-skl-6700k2/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-8700k:       [PASS][27] -> [INCOMPLETE][28] ([i915#1591])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
    - fi-bsw-n3050:       [PASS][29] -> [INCOMPLETE][30] ([i915#392])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html
    - fi-whl-u:           [PASS][31] -> [INCOMPLETE][32] ([i915#1591])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-whl-u/igt@i915_selftest@live@gem_contexts.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-whl-u/igt@i915_selftest@live@gem_contexts.html
    - fi-cml-s:           [PASS][33] -> [INCOMPLETE][34] ([i915#1591])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-guc:         [PASS][35] -> [INCOMPLETE][36] ([i915#1591])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-guc:         [PASS][37] -> [INCOMPLETE][38] ([fdo#106070] / [i915#1591])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-bxt-dsi:         [PASS][39] -> [INCOMPLETE][40] ([i915#1591])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-bxt-dsi/igt@i915_selftest@live@gem_contexts.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-bxt-dsi/igt@i915_selftest@live@gem_contexts.html
    - fi-cml-u2:          [PASS][41] -> [INCOMPLETE][42] ([i915#1591])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-cml-u2/igt@i915_selftest@live@gem_contexts.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-cml-u2/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-8809g:       [PASS][43] -> [INCOMPLETE][44] ([i915#1591] / [i915#794])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-r:           [PASS][45] -> [INCOMPLETE][46] ([i915#1591] / [i915#794])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-kbl-r/igt@i915_selftest@live@gem_contexts.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-kbl-r/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-8109u:       [PASS][47] -> [INCOMPLETE][48] ([i915#1591])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-lmem:        [PASS][49] -> [INCOMPLETE][50] ([i915#1591])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-guc:         [PASS][51] -> [INCOMPLETE][52] ([i915#1591] / [i915#794])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-kbl-guc/igt@i915_selftest@live@gem_contexts.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-kbl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-bsw-nick:        [PASS][53] -> [INCOMPLETE][54] ([i915#392])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-7500u:       [PASS][55] -> [INCOMPLETE][56] ([i915#1591] / [i915#794])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-kbl-7500u/igt@i915_selftest@live@gem_contexts.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-kbl-7500u/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-x1275:       [PASS][57] -> [INCOMPLETE][58] ([i915#1591] / [i915#794])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-snb-2600:        [PASS][59] -> [FAIL][60] ([i915#1763])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-snb-2600/igt@i915_selftest@live@late_gt_pm.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-snb-2600/igt@i915_selftest@live@late_gt_pm.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_timelines:
    - fi-bwr-2160:        [INCOMPLETE][61] ([i915#489]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8351/fi-bwr-2160/igt@i915_selftest@live@gt_timelines.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/fi-bwr-2160/igt@i915_selftest@live@gt_timelines.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [i915#1591]: https://gitlab.freedesktop.org/drm/intel/issues/1591
  [i915#1763]: https://gitlab.freedesktop.org/drm/intel/issues/1763
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (50 -> 42)
------------------------------

  Missing    (8): fi-kbl-soraka fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8351 -> Patchwork_17437

  CI-20190529: 20190529
  CI_DRM_8351: 63580ab8ee4dc3b1b824be6637085ac6b2c8ba6d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5608: e7bcaf1dd251d454706c7cd64282f531aec50183 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17437: 7d2826951e5a63ae51fb66e29597402190b0137a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7d2826951e5a drm/i915/selftests: Verify context isolation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17437/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
