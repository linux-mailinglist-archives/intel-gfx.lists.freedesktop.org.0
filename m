Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBC711DB8C
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 02:13:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8DD76E255;
	Fri, 13 Dec 2019 01:13:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1C6906E243;
 Fri, 13 Dec 2019 01:13:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 148DDA0138;
 Fri, 13 Dec 2019 01:13:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 13 Dec 2019 01:13:24 -0000
Message-ID: <157619960405.23800.1041780125371932418@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213001713.1741810-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191213001713.1741810-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/gt=3A_Mark_context-?=
 =?utf-8?q?=3Estate_vma_as_active_while_pinned?=
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

Series: series starting with [CI,1/2] drm/i915/gt: Mark context->state vma as active while pinned
URL   : https://patchwork.freedesktop.org/series/70860/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7554 -> Patchwork_15735
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15735 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15735, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15735:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-r:           [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-kbl-r/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-kbl-r/igt@gem_exec_suspend@basic-s0.html
    - fi-kbl-8809g:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-kbl-8809g/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-kbl-8809g/igt@gem_exec_suspend@basic-s0.html
    - fi-kbl-guc:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-kbl-guc/igt@gem_exec_suspend@basic-s0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-kbl-guc/igt@gem_exec_suspend@basic-s0.html
    - fi-skl-6600u:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-skl-6600u/igt@gem_exec_suspend@basic-s0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-skl-6600u/igt@gem_exec_suspend@basic-s0.html
    - fi-blb-e6850:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-blb-e6850/igt@gem_exec_suspend@basic-s0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-blb-e6850/igt@gem_exec_suspend@basic-s0.html
    - fi-hsw-4770r:       NOTRUN -> [INCOMPLETE][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-hsw-4770r/igt@gem_exec_suspend@basic-s0.html
    - fi-cfl-8700k:       [PASS][12] -> [INCOMPLETE][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-cfl-8700k/igt@gem_exec_suspend@basic-s0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-cfl-8700k/igt@gem_exec_suspend@basic-s0.html
    - fi-ivb-3770:        [PASS][14] -> [INCOMPLETE][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-ivb-3770/igt@gem_exec_suspend@basic-s0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-ivb-3770/igt@gem_exec_suspend@basic-s0.html
    - fi-whl-u:           [PASS][16] -> [INCOMPLETE][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-whl-u/igt@gem_exec_suspend@basic-s0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-whl-u/igt@gem_exec_suspend@basic-s0.html
    - fi-cfl-guc:         [PASS][18] -> [INCOMPLETE][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-cfl-guc/igt@gem_exec_suspend@basic-s0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-cfl-guc/igt@gem_exec_suspend@basic-s0.html
    - fi-hsw-4770:        [PASS][20] -> [INCOMPLETE][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-hsw-4770/igt@gem_exec_suspend@basic-s0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-hsw-4770/igt@gem_exec_suspend@basic-s0.html
    - fi-kbl-7500u:       [PASS][22] -> [INCOMPLETE][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-kbl-7500u/igt@gem_exec_suspend@basic-s0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-kbl-7500u/igt@gem_exec_suspend@basic-s0.html
    - fi-kbl-soraka:      [PASS][24] -> [INCOMPLETE][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
    - fi-snb-2520m:       [PASS][26] -> [INCOMPLETE][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-snb-2520m/igt@gem_exec_suspend@basic-s0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-snb-2520m/igt@gem_exec_suspend@basic-s0.html
    - fi-hsw-peppy:       [PASS][28] -> [INCOMPLETE][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-hsw-peppy/igt@gem_exec_suspend@basic-s0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-hsw-peppy/igt@gem_exec_suspend@basic-s0.html
    - fi-ilk-650:         [PASS][30] -> [INCOMPLETE][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-ilk-650/igt@gem_exec_suspend@basic-s0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-ilk-650/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-bwr-2160:        [PASS][32] -> [INCOMPLETE][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][34] ([i915#62] / [i915#92] / [i915#95]) -> [INCOMPLETE][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  
Known issues
------------

  Here are the changes found in Patchwork_15735 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-skl-lmem:        [PASS][36] -> [INCOMPLETE][37] ([i915#198])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-skl-lmem/igt@gem_exec_suspend@basic-s0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-skl-lmem/igt@gem_exec_suspend@basic-s0.html
    - fi-bsw-nick:        [PASS][38] -> [INCOMPLETE][39] ([i915#392])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html
    - fi-skl-6770hq:      [PASS][40] -> [INCOMPLETE][41] ([i915#198])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-skl-6770hq/igt@gem_exec_suspend@basic-s0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-skl-6770hq/igt@gem_exec_suspend@basic-s0.html
    - fi-bdw-5557u:       [PASS][42] -> [INCOMPLETE][43] ([i915#146])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-bdw-5557u/igt@gem_exec_suspend@basic-s0.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-bdw-5557u/igt@gem_exec_suspend@basic-s0.html
    - fi-bsw-kefka:       [PASS][44] -> [INCOMPLETE][45] ([i915#392])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html
    - fi-apl-guc:         [PASS][46] -> [INCOMPLETE][47] ([fdo#103927])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html
    - fi-skl-6700k2:      [PASS][48] -> [INCOMPLETE][49] ([i915#198])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0.html
    - fi-icl-y:           [PASS][50] -> [INCOMPLETE][51] ([i915#140])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-icl-y/igt@gem_exec_suspend@basic-s0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-icl-y/igt@gem_exec_suspend@basic-s0.html
    - fi-bsw-n3050:       [PASS][52] -> [INCOMPLETE][53] ([i915#392])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0.html
    - fi-skl-guc:         [PASS][54] -> [INCOMPLETE][55] ([i915#198])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-skl-guc/igt@gem_exec_suspend@basic-s0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-skl-guc/igt@gem_exec_suspend@basic-s0.html
    - fi-icl-u3:          [PASS][56] -> [INCOMPLETE][57] ([i915#140])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-icl-u3/igt@gem_exec_suspend@basic-s0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-icl-u3/igt@gem_exec_suspend@basic-s0.html
    - fi-cml-s:           [PASS][58] -> [INCOMPLETE][59] ([i915#283])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
    - fi-byt-j1900:       [PASS][60] -> [INCOMPLETE][61] ([i915#45])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-byt-j1900/igt@gem_exec_suspend@basic-s0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-byt-j1900/igt@gem_exec_suspend@basic-s0.html
    - fi-bxt-dsi:         [PASS][62] -> [INCOMPLETE][63] ([fdo#103927])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-bxt-dsi/igt@gem_exec_suspend@basic-s0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-bxt-dsi/igt@gem_exec_suspend@basic-s0.html
    - fi-icl-guc:         [PASS][64] -> [INCOMPLETE][65] ([i915#140])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-icl-guc/igt@gem_exec_suspend@basic-s0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-icl-guc/igt@gem_exec_suspend@basic-s0.html
    - fi-cml-u2:          [PASS][66] -> [INCOMPLETE][67] ([i915#283])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-cml-u2/igt@gem_exec_suspend@basic-s0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-cml-u2/igt@gem_exec_suspend@basic-s0.html
    - fi-pnv-d510:        [PASS][68] -> [INCOMPLETE][69] ([i915#299])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-pnv-d510/igt@gem_exec_suspend@basic-s0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-pnv-d510/igt@gem_exec_suspend@basic-s0.html
    - fi-glk-dsi:         [PASS][70] -> [INCOMPLETE][71] ([i915#58] / [k.org#198133])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-glk-dsi/igt@gem_exec_suspend@basic-s0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-glk-dsi/igt@gem_exec_suspend@basic-s0.html
    - fi-icl-u2:          [PASS][72] -> [INCOMPLETE][73] ([i915#140])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-icl-u2/igt@gem_exec_suspend@basic-s0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-icl-u2/igt@gem_exec_suspend@basic-s0.html
    - fi-elk-e7500:       [PASS][74] -> [INCOMPLETE][75] ([i915#66])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-elk-e7500/igt@gem_exec_suspend@basic-s0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-elk-e7500/igt@gem_exec_suspend@basic-s0.html
    - fi-snb-2600:        [PASS][76] -> [INCOMPLETE][77] ([i915#82])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-snb-2600/igt@gem_exec_suspend@basic-s0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-snb-2600/igt@gem_exec_suspend@basic-s0.html
    - fi-byt-n2820:       [PASS][78] -> [INCOMPLETE][79] ([i915#45])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-byt-n2820/igt@gem_exec_suspend@basic-s0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-byt-n2820/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-gdg-551:         [PASS][80] -> [INCOMPLETE][81] ([i915#172])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-gdg-551/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/fi-gdg-551/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (52 -> 46)
------------------------------

  Additional (1): fi-hsw-4770r 
  Missing    (7): fi-icl-1065g7 fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7554 -> Patchwork_15735

  CI-20190529: 20190529
  CI_DRM_7554: b8870a9cb78bb11f21414804940fadc47ac848dd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5346: 466b0e6cbcbaccff012b484d1fd7676364b37b93 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15735: 557f1ef9f865e7a0a68e0f492a6a0f37fce90f8d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

557f1ef9f865 drm/i915/gt: Mark ring->vma as active while pinned
8bcac6718bba drm/i915/gt: Mark context->state vma as active while pinned

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15735/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
