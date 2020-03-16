Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB6F18746E
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 22:02:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 421536E4EA;
	Mon, 16 Mar 2020 21:02:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0C8B06E22D;
 Mon, 16 Mar 2020 21:02:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 03B07A47DA;
 Mon, 16 Mar 2020 21:02:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 16 Mar 2020 21:02:13 -0000
Message-ID: <158439253398.18995.8983912400953496585@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200316114237.5436-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200316114237.5436-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/15=5D_drm/i915=3A_Move_GGTT_fence_regis?=
 =?utf-8?q?ters_under_gt/?=
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

Series: series starting with [01/15] drm/i915: Move GGTT fence registers under gt/
URL   : https://patchwork.freedesktop.org/series/74740/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8137 -> Patchwork_16979
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16979 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16979, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16979:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_tiled_blits@basic:
    - fi-gdg-551:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-gdg-551/igt@gem_tiled_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-gdg-551/igt@gem_tiled_blits@basic.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-ilk-650/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-pnv-d510/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-snb-2520m/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-hsw-4770/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-elk-e7500/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-blb-e6850/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16979 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-x1275:       [PASS][9] -> [INCOMPLETE][10] ([i915#530])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
    - fi-bsw-kefka:       [PASS][11] -> [INCOMPLETE][12] ([i915#530])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-bsw-kefka/igt@gem_exec_gttfill@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-bsw-kefka/igt@gem_exec_gttfill@basic.html
    - fi-snb-2600:        [PASS][13] -> [INCOMPLETE][14] ([i915#530] / [i915#82])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-snb-2600/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-snb-2600/igt@gem_exec_gttfill@basic.html
    - fi-tgl-y:           [PASS][15] -> [INCOMPLETE][16] ([CI#94] / [fdo#111593] / [i915#530])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-tgl-y/igt@gem_exec_gttfill@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-tgl-y/igt@gem_exec_gttfill@basic.html
    - fi-cfl-8109u:       [PASS][17] -> [INCOMPLETE][18] ([i915#530])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html
    - fi-kbl-8809g:       [PASS][19] -> [INCOMPLETE][20] ([i915#530])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
    - fi-icl-y:           [PASS][21] -> [INCOMPLETE][22] ([i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-icl-y/igt@gem_exec_gttfill@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-icl-y/igt@gem_exec_gttfill@basic.html
    - fi-kbl-r:           [PASS][23] -> [INCOMPLETE][24] ([i915#530])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-kbl-r/igt@gem_exec_gttfill@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-kbl-r/igt@gem_exec_gttfill@basic.html
    - fi-bdw-5557u:       [PASS][25] -> [INCOMPLETE][26] ([i915#530])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
    - fi-skl-guc:         [PASS][27] -> [INCOMPLETE][28] ([i915#530])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-skl-guc/igt@gem_exec_gttfill@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-skl-guc/igt@gem_exec_gttfill@basic.html
    - fi-blb-e6850:       [PASS][29] -> [INCOMPLETE][30] ([i915#530])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-blb-e6850/igt@gem_exec_gttfill@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-blb-e6850/igt@gem_exec_gttfill@basic.html
    - fi-hsw-4770:        [PASS][31] -> [INCOMPLETE][32] ([i915#530])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-hsw-4770/igt@gem_exec_gttfill@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-hsw-4770/igt@gem_exec_gttfill@basic.html
    - fi-kbl-7500u:       [PASS][33] -> [INCOMPLETE][34] ([i915#530])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html
    - fi-pnv-d510:        [PASS][35] -> [INCOMPLETE][36] ([i915#299] / [i915#530])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
    - fi-kbl-guc:         [PASS][37] -> [INCOMPLETE][38] ([i915#530])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-kbl-guc/igt@gem_exec_gttfill@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-kbl-guc/igt@gem_exec_gttfill@basic.html
    - fi-icl-dsi:         [PASS][39] -> [INCOMPLETE][40] ([i915#530])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-icl-dsi/igt@gem_exec_gttfill@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-icl-dsi/igt@gem_exec_gttfill@basic.html
    - fi-cml-u2:          [PASS][41] -> [INCOMPLETE][42] ([i915#283] / [i915#530])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-cml-u2/igt@gem_exec_gttfill@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-cml-u2/igt@gem_exec_gttfill@basic.html
    - fi-skl-6600u:       [PASS][43] -> [INCOMPLETE][44] ([i915#530])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-skl-6600u/igt@gem_exec_gttfill@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-skl-6600u/igt@gem_exec_gttfill@basic.html
    - fi-ivb-3770:        [PASS][45] -> [INCOMPLETE][46] ([i915#530])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-ivb-3770/igt@gem_exec_gttfill@basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-ivb-3770/igt@gem_exec_gttfill@basic.html
    - fi-icl-u2:          [PASS][47] -> [INCOMPLETE][48] ([i915#530])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-icl-u2/igt@gem_exec_gttfill@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-icl-u2/igt@gem_exec_gttfill@basic.html
    - fi-byt-j1900:       [PASS][49] -> [INCOMPLETE][50] ([i915#45] / [i915#530])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-byt-j1900/igt@gem_exec_gttfill@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-byt-j1900/igt@gem_exec_gttfill@basic.html
    - fi-snb-2520m:       [PASS][51] -> [INCOMPLETE][52] ([i915#530])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-snb-2520m/igt@gem_exec_gttfill@basic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-snb-2520m/igt@gem_exec_gttfill@basic.html
    - fi-elk-e7500:       [PASS][53] -> [INCOMPLETE][54] ([i915#530] / [i915#66])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-elk-e7500/igt@gem_exec_gttfill@basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-elk-e7500/igt@gem_exec_gttfill@basic.html
    - fi-skl-lmem:        [PASS][55] -> [INCOMPLETE][56] ([i915#530])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-skl-lmem/igt@gem_exec_gttfill@basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-skl-lmem/igt@gem_exec_gttfill@basic.html
    - fi-apl-guc:         [PASS][57] -> [INCOMPLETE][58] ([fdo#103927] / [i915#530])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-apl-guc/igt@gem_exec_gttfill@basic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-apl-guc/igt@gem_exec_gttfill@basic.html
    - fi-cml-s:           [PASS][59] -> [INCOMPLETE][60] ([i915#283] / [i915#530])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-cml-s/igt@gem_exec_gttfill@basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-cml-s/igt@gem_exec_gttfill@basic.html
    - fi-cfl-guc:         [PASS][61] -> [INCOMPLETE][62] ([i915#530])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-cfl-guc/igt@gem_exec_gttfill@basic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-cfl-guc/igt@gem_exec_gttfill@basic.html
    - fi-icl-guc:         [PASS][63] -> [INCOMPLETE][64] ([i915#530])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-icl-guc/igt@gem_exec_gttfill@basic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-icl-guc/igt@gem_exec_gttfill@basic.html
    - fi-skl-6700k2:      [PASS][65] -> [INCOMPLETE][66] ([i915#530])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-skl-6700k2/igt@gem_exec_gttfill@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-skl-6700k2/igt@gem_exec_gttfill@basic.html
    - fi-bsw-n3050:       [PASS][67] -> [INCOMPLETE][68] ([i915#530])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html
    - fi-ilk-650:         [PASS][69] -> [INCOMPLETE][70] ([i915#530])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-ilk-650/igt@gem_exec_gttfill@basic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-ilk-650/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@basic:
    - fi-bxt-dsi:         [PASS][71] -> [INCOMPLETE][72] ([fdo#103927] / [i915#530])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-bxt-dsi/igt@gem_exec_parallel@basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-bxt-dsi/igt@gem_exec_parallel@basic.html
    - fi-bsw-nick:        [PASS][73] -> [INCOMPLETE][74] ([i915#392] / [i915#530])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-bsw-nick/igt@gem_exec_parallel@basic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-bsw-nick/igt@gem_exec_parallel@basic.html
    - fi-glk-dsi:         [PASS][75] -> [INCOMPLETE][76] ([i915#530] / [i915#58] / [k.org#198133])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-glk-dsi/igt@gem_exec_parallel@basic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-glk-dsi/igt@gem_exec_parallel@basic.html
    - fi-kbl-soraka:      [PASS][77] -> [INCOMPLETE][78] ([i915#530])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-kbl-soraka/igt@gem_exec_parallel@basic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-kbl-soraka/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_parallel@contexts:
    - fi-hsw-peppy:       [PASS][79] -> [INCOMPLETE][80] ([i915#530])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-hsw-peppy/igt@gem_exec_parallel@contexts.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-hsw-peppy/igt@gem_exec_parallel@contexts.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][81] ([i915#1209]) -> [FAIL][82] ([i915#1186])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-kbl-8809g/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [i915#1186]: https://gitlab.freedesktop.org/drm/intel/issues/1186
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (48 -> 43)
------------------------------

  Additional (2): fi-skl-6770hq fi-tgl-dsi 
  Missing    (7): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-8700k fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8137 -> Patchwork_16979

  CI-20190529: 20190529
  CI_DRM_8137: 5786b5e77cc17a1b494b9bdf3c3f29eedc2e2e7d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5510: e100092d50105463f58db531fa953c70cc58bb10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16979: 671fabf9545bb6dad721ee49407b7d10e63890c9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

671fabf9545b drm/i915/gem: Bind the fence async for execbuf
dbdbd5f98bb5 drm/i915/gem: Asynchronous GTT unbinding
10bf1fdc1a47 drm/i915/gem: Separate the ww_mutex walker into its own list
c447dbfb9f9e drm/i915/gem: Split eb_vma into its own allocation
16a27ae3ea5b drm/i915: Export a preallocate variant of i915_active_acquire()
0e046d2c468f drm/i915/gem: Assign context id for async work
6e568cc647bc drm/i915: Immediately execute the fenced work
ca73a0e0d45c drm/i915/gem: Drop cached obj->bind_count
68777e6d26ac drm/i915/gt: Make fence revocation unequivocal
047943aa26dd drm/i915/gt: Store the fence details on the fence
fb9609af3e59 drm/i915/gt: Only wait for GPU activity before unbinding a GGTT fence
11c6a912a6f4 drm/i915/gt: Allocate i915_fence_reg array
ec7d53e3657f drm/i915: Remove manual save/resume of fence register state
eb984adc50b0 drm/i915/gt: Pull restoration of GGTT fences underneath the GT
2bf8a0072a07 drm/i915: Move GGTT fence registers under gt/

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16979/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
