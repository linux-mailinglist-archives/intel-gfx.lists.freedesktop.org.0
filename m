Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE76D17144A
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 10:45:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17D266EC77;
	Thu, 27 Feb 2020 09:45:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B8DD96EC75;
 Thu, 27 Feb 2020 09:45:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A63B7A0099;
 Thu, 27 Feb 2020 09:45:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 27 Feb 2020 09:45:09 -0000
Message-ID: <158279670965.29657.7285672513879059156@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/20=5D_drm/i915=3A_Skip_barriers_inside_?=
 =?utf-8?q?waits?=
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

Series: series starting with [01/20] drm/i915: Skip barriers inside waits
URL   : https://patchwork.freedesktop.org/series/73999/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8013 -> Patchwork_16729
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16729 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16729, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16729:

### IGT changes ###

#### Possible regressions ####

  * igt@core_auth@basic-auth:
    - fi-kbl-r:           [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-kbl-r/igt@core_auth@basic-auth.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-kbl-r/igt@core_auth@basic-auth.html
    - fi-bwr-2160:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-bwr-2160/igt@core_auth@basic-auth.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-bwr-2160/igt@core_auth@basic-auth.html
    - fi-bdw-5557u:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-bdw-5557u/igt@core_auth@basic-auth.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-bdw-5557u/igt@core_auth@basic-auth.html
    - fi-skl-guc:         [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-skl-guc/igt@core_auth@basic-auth.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-skl-guc/igt@core_auth@basic-auth.html
    - fi-kbl-8809g:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-kbl-8809g/igt@core_auth@basic-auth.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-kbl-8809g/igt@core_auth@basic-auth.html
    - fi-kbl-guc:         [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-kbl-guc/igt@core_auth@basic-auth.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-kbl-guc/igt@core_auth@basic-auth.html
    - fi-icl-dsi:         [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-icl-dsi/igt@core_auth@basic-auth.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-icl-dsi/igt@core_auth@basic-auth.html
    - fi-kbl-7500u:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-kbl-7500u/igt@core_auth@basic-auth.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-kbl-7500u/igt@core_auth@basic-auth.html
    - fi-skl-6600u:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-skl-6600u/igt@core_auth@basic-auth.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-skl-6600u/igt@core_auth@basic-auth.html
    - fi-icl-u2:          [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-icl-u2/igt@core_auth@basic-auth.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-icl-u2/igt@core_auth@basic-auth.html
    - fi-hsw-4770:        [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-hsw-4770/igt@core_auth@basic-auth.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-hsw-4770/igt@core_auth@basic-auth.html
    - fi-cfl-8700k:       [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-cfl-8700k/igt@core_auth@basic-auth.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-cfl-8700k/igt@core_auth@basic-auth.html
    - fi-snb-2520m:       [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-snb-2520m/igt@core_auth@basic-auth.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-snb-2520m/igt@core_auth@basic-auth.html
    - fi-skl-lmem:        [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-skl-lmem/igt@core_auth@basic-auth.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-skl-lmem/igt@core_auth@basic-auth.html
    - fi-skl-6700k2:      [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-skl-6700k2/igt@core_auth@basic-auth.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-skl-6700k2/igt@core_auth@basic-auth.html
    - fi-ivb-3770:        [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-ivb-3770/igt@core_auth@basic-auth.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-ivb-3770/igt@core_auth@basic-auth.html
    - fi-cfl-guc:         [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-cfl-guc/igt@core_auth@basic-auth.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-cfl-guc/igt@core_auth@basic-auth.html
    - fi-icl-guc:         [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-icl-guc/igt@core_auth@basic-auth.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-icl-guc/igt@core_auth@basic-auth.html
    - fi-ilk-650:         [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-ilk-650/igt@core_auth@basic-auth.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-ilk-650/igt@core_auth@basic-auth.html
    - fi-kbl-soraka:      [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-kbl-soraka/igt@core_auth@basic-auth.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-kbl-soraka/igt@core_auth@basic-auth.html
    - fi-bsw-n3050:       [PASS][41] -> [INCOMPLETE][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-bsw-n3050/igt@core_auth@basic-auth.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-bsw-n3050/igt@core_auth@basic-auth.html
    - fi-hsw-peppy:       [PASS][43] -> [INCOMPLETE][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-hsw-peppy/igt@core_auth@basic-auth.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-hsw-peppy/igt@core_auth@basic-auth.html
    - fi-hsw-4770r:       [PASS][45] -> [INCOMPLETE][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-hsw-4770r/igt@core_auth@basic-auth.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-hsw-4770r/igt@core_auth@basic-auth.html
    - fi-kbl-x1275:       [PASS][47] -> [INCOMPLETE][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-kbl-x1275/igt@core_auth@basic-auth.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-kbl-x1275/igt@core_auth@basic-auth.html
    - fi-icl-y:           [PASS][49] -> [INCOMPLETE][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-icl-y/igt@core_auth@basic-auth.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-icl-y/igt@core_auth@basic-auth.html
    - fi-bsw-nick:        [PASS][51] -> [INCOMPLETE][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-bsw-nick/igt@core_auth@basic-auth.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-bsw-nick/igt@core_auth@basic-auth.html
    - fi-cfl-8109u:       [PASS][53] -> [INCOMPLETE][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-cfl-8109u/igt@core_auth@basic-auth.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-cfl-8109u/igt@core_auth@basic-auth.html
    - fi-blb-e6850:       [PASS][55] -> [INCOMPLETE][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-blb-e6850/igt@core_auth@basic-auth.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-blb-e6850/igt@core_auth@basic-auth.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@core_auth@basic-auth:
    - {fi-kbl-7560u}:     NOTRUN -> [INCOMPLETE][57]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-kbl-7560u/igt@core_auth@basic-auth.html
    - {fi-tgl-dsi}:       [PASS][58] -> [INCOMPLETE][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-tgl-dsi/igt@core_auth@basic-auth.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-tgl-dsi/igt@core_auth@basic-auth.html
    - {fi-tgl-u}:         [PASS][60] -> [INCOMPLETE][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-tgl-u/igt@core_auth@basic-auth.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-tgl-u/igt@core_auth@basic-auth.html
    - {fi-ehl-1}:         [PASS][62] -> [INCOMPLETE][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-ehl-1/igt@core_auth@basic-auth.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-ehl-1/igt@core_auth@basic-auth.html

  
Known issues
------------

  Here are the changes found in Patchwork_16729 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - fi-byt-j1900:       [PASS][64] -> [INCOMPLETE][65] ([i915#45])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-byt-j1900/igt@core_auth@basic-auth.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-byt-j1900/igt@core_auth@basic-auth.html
    - fi-pnv-d510:        [PASS][66] -> [INCOMPLETE][67] ([i915#299])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-pnv-d510/igt@core_auth@basic-auth.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-pnv-d510/igt@core_auth@basic-auth.html
    - fi-apl-guc:         [PASS][68] -> [INCOMPLETE][69] ([fdo#103927])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-apl-guc/igt@core_auth@basic-auth.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-apl-guc/igt@core_auth@basic-auth.html
    - fi-cml-u2:          [PASS][70] -> [INCOMPLETE][71] ([i915#283])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-cml-u2/igt@core_auth@basic-auth.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-cml-u2/igt@core_auth@basic-auth.html
    - fi-bxt-dsi:         [PASS][72] -> [INCOMPLETE][73] ([fdo#103927])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-bxt-dsi/igt@core_auth@basic-auth.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-bxt-dsi/igt@core_auth@basic-auth.html
    - fi-byt-n2820:       [PASS][74] -> [INCOMPLETE][75] ([i915#45])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-byt-n2820/igt@core_auth@basic-auth.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-byt-n2820/igt@core_auth@basic-auth.html
    - fi-elk-e7500:       [PASS][76] -> [INCOMPLETE][77] ([i915#66])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-elk-e7500/igt@core_auth@basic-auth.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-elk-e7500/igt@core_auth@basic-auth.html
    - fi-cml-s:           [PASS][78] -> [INCOMPLETE][79] ([i915#283])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-cml-s/igt@core_auth@basic-auth.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-cml-s/igt@core_auth@basic-auth.html
    - fi-snb-2600:        [PASS][80] -> [INCOMPLETE][81] ([i915#82])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-snb-2600/igt@core_auth@basic-auth.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-snb-2600/igt@core_auth@basic-auth.html
    - fi-tgl-y:           [PASS][82] -> [INCOMPLETE][83] ([CI#94])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-tgl-y/igt@core_auth@basic-auth.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-tgl-y/igt@core_auth@basic-auth.html
    - fi-gdg-551:         [PASS][84] -> [INCOMPLETE][85] ([i915#172])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-gdg-551/igt@core_auth@basic-auth.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-gdg-551/igt@core_auth@basic-auth.html
    - fi-glk-dsi:         [PASS][86] -> [INCOMPLETE][87] ([i915#58] / [k.org#198133])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-glk-dsi/igt@core_auth@basic-auth.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/fi-glk-dsi/igt@core_auth@basic-auth.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (51 -> 45)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8013 -> Patchwork_16729

  CI-20190529: 20190529
  CI_DRM_8013: ddbaa8ebcf171da63385dccb8a6b4d0209c2f6fb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5471: 668afe52887a164ee6a12fd1c898bc1c9086cf3e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16729: 1091026375756085f64dd88c011703d2b020be68 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

109102637575 drm/i915/execlists: Reduce preempt-to-busy roundtrip delay
fff3931b5bef drm/i915/execlists: Check the sentinel is alone in the ELSP
462b6fb118f9 drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
6dded72da559 drm/i915/gt: Declare when we enabled timeslicing
e88a1a284017 drm/i915/selftests: Add request throughput measurement to perf
558c7595b054 drm/i915/selftests: Be a little more lenient for reset workers
481fd56c20dc drm/i915/selftests: Wait for the kernel context switch
7c5ae8cee59f drm/i915/selftests: Check recovery from corrupted LRC
37b9d01ab40f drm/i915/selftests: Verify LRC isolation
b4dae8ef2ab9 drm/i915: Protect i915_request_await_start from early waits
eb47d53f2699 drm/i915/gt: Pull marking vm as closed underneath the vm->mutex
1e35652986b0 drm/i915/gt: Reset queue_priority_hint after wedging
ea172d1def13 drm/i915/selftests: Disable heartbeat around manual pulse tests
8139afa5553c drm/i915/gem: Check that the context wasn't closed during setup
645f9d790e24 drm/i915/gt: Prevent allocation on a banned context
6ea5a0b4ac2e drm/i915/gem: Consolidate ctx->engines[] release
620ed478d877 drm/i915/perf: Wait for lrc_reconfigure on disable
99d09399016d drm/i915/perf: Manually acquire engine-wakeref around use of kernel_context
c38fa802dbde drm/i915/perf: Mark up the racy use of perf->exclusive_stream
7e51c69c481c drm/i915: Skip barriers inside waits

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16729/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
